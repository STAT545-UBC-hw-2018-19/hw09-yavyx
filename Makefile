all: report.html first_last_report.html organize

clean:
	rm -r data figures results reports 

organize:
	mkdir data
	mkdir figures
	mkdir results
	mkdir reports
	mv words.txt data
	mv histogram.png letter_count.png figures
	mv histogram.tsv letter_count.tsv first_last.tsv results
	mv report.md report.html first_last_report.md first_last_report.html reports

first_last_report.html: first_last_report.rmd first_last.tsv
	Rscript -e 'rmarkdown::render("$<")'
	
first_last.tsv: scripts/first_last.r words.txt
	Rscript $<

report.html: report.rmd histogram.tsv histogram.png letter_count.tsv letter_count.png
	Rscript -e 'rmarkdown::render("$<")'

histogram.png: histogram.tsv
	Rscript -e 'library(ggplot2); qplot(Length, Freq, data=read.delim("$<")); ggsave("$@")'
	rm Rplots.pdf

histogram.tsv: scripts/histogram.r words.txt
	Rscript $<
	
letter_count.tsv: scripts/letter_count.r words.txt
	Rscript $<
	rm Rplots.pdf

words.txt: /usr/share/dict/words
	cp $< $@

# words.txt:
#	Rscript -e 'download.file("http://svnweb.freebsd.org/base/head/share/dict/web2?view=co", destfile = "words.txt", quiet = TRUE)'
