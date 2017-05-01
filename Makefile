$pdf:
	xelatex 2017-05-10-Hannover_S3_talk_slide.tex

pdf_follow_changes:
	 latexmk -xelatex -pvc 2017-05-10-Hannover_S3_talk_slide.tex

clean:
	rm -f *aux *log *nav *snm *out *toc *pdf *.fdb_latexmk *.fls *.bbl *.blg *~


download_images:
	mkdir -p images

	# https://commons.wikimedia.org/wiki/File:Bertini_fresco_of_Galileo_Galilei_and_Doge_of_Venice.jpg
	wget -c -P images \
	   https://upload.wikimedia.org/wikipedia/commons/e/e7/Bertini_fresco_of_Galileo_Galilei_and_Doge_of_Venice.jpg

	# https://commons.wikimedia.org/wiki/File:Leeuwenhoek_simple_microscope_(copy),_Leyden,_1901-1930_Wellcome_L0057739.jpg
	wget -c -P images \
	   https://upload.wikimedia.org/wikipedia/commons/thumb/a/a0/Leeuwenhoek_simple_microscope_%28copy%29%2C_Leyden%2C_1901-1930_Wellcome_L0057739.jpg/2048px-Leeuwenhoek_simple_microscope_%28copy%29%2C_Leyden%2C_1901-1930_Wellcome_L0057739.jpg

	# https://unsplash.com/photos/IClZBVw5W5A
	wget -O images/Tools_by_Todd_Quackenbush.jpg \
	   https://images.unsplash.com/reserve/oIpwxeeSPy1cnwYpqJ1w_Dufer%20Collateral%20test.jpg
	mogrify -geometry 10% images/Tools_by_Todd_Quackenbush.jpg

	# https://www.flickr.com/photos/80030261@N06/9955408263
	wget -O images/Flickr_National_Eye_Institute_9955408263.jpg \
	   https://farm6.staticflickr.com/5486/9955408263_37f35028b4_k_d.jpg

	# https://commons.wikimedia.org/wiki/File:A_view_of_the_server_room_at_The_National_Archives.jpg
	wget -c -P images \
	   https://upload.wikimedia.org/wikipedia/commons/thumb/e/e0/A_view_of_the_server_room_at_The_National_Archives.jpg/1024px-A_view_of_the_server_room_at_The_National_Archives.jpg

	# https://unsplash.com/photos/vrbZVyX2k4I
	wget -O images/Sprout_by_Markus-Spiske.jpg \
	  https://images.unsplash.com/photo-1466692476868-aef1dfb1e735?dl=markus-spiske-104913.jpg
	mogrify -geometry 10% images/Sprout_by_Markus-Spiske.jpg

	# This one is NOT CC-BY conform! => Not checked in into the repo
	wget -P imges \
	  http://www.dfg.de/zentralablage/bilder/dfg_im_profil/allianz/logo_allianz.png
