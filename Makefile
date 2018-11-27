all: report.html letter_count.tsv organize

clean:
	rm -f words.txt histogram.tsv histogram.png report.md report.html letter_count.tsv letter_count.png
	rm -r data figures results reports scripts
# rm -f figures data 

organize:
	mkdir data
	mkdir scripts
	mkdir figures
	mkdir results
	mkdir reports
	mv words.txt data
	mv histogram.r letter_count.r scripts
	mv histogram.png letter_count.png figures
	mv histogram.tsv letter_count.tsv results
	mv report.md report.html report.rmd reports

report.html: report.rmd histogram.tsv histogram.png letter_count.tsv letter_count.png
	Rscript -e 'rmarkdown::render("$<")'

histogram.png: histogram.tsv
	Rscript -e 'library(ggplot2); qplot(Length, Freq, data=read.delim("$<")); ggsave("$@")'
	rm Rplots.pdf

histogram.tsv: histogram.r words.txt
	Rscript $<
	
letter_count.tsv: letter_count.r words.txt
	Rscript $<
	rm Rplots.pdf

#letter_count.png: letter_count.r words.txt
#	Rscript $<
#	rm Rplots.pdf

words.txt: /usr/share/dict/words
	cp $< $@

# words.txt:
#	Rscript -e 'download.file("http://svnweb.freebsd.org/base/head/share/dict/web2?view=co", destfile = "words.txt", quiet = TRUE)'
