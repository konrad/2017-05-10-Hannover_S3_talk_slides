$pdf:
	xelatex 2017-05-10-Hannover_S3_talk_slide.tex

pdf_follow_changes:
	 latexmk -xelatex -pvc 2017-05-10-Hannover_S3_talk_slide.tex

clean:
	rm -f *aux *log *nav *snm *out *toc *pdf *.fdb_latexmk *.fls *.bbl *.blg *~


download_images:
	mkdir -p images

	# https://commons.wikimedia.org/wiki/File:Bertini_fresco_of_Galileo_Galilei_and_Doge_of_Venice.jpg
	wget -P images \
	   https://upload.wikimedia.org/wikipedia/commons/e/e7/Bertini_fresco_of_Galileo_Galilei_and_Doge_of_Venice.jpg

	# https://commons.wikimedia.org/wiki/File:Leeuwenhoek_simple_microscope_(copy),_Leyden,_1901-1930_Wellcome_L0057739.jpg
	wget -P images \
	   https://upload.wikimedia.org/wikipedia/commons/thumb/a/a0/Leeuwenhoek_simple_microscope_%28copy%29%2C_Leyden%2C_1901-1930_Wellcome_L0057739.jpg/2048px-Leeuwenhoek_simple_microscope_%28copy%29%2C_Leyden%2C_1901-1930_Wellcome_L0057739.jpg

