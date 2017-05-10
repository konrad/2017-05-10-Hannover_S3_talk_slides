pdf:
	xelatex 2017-05-10-Hannover_S3_talk_slides.tex

pdf_follow_changes:
	 latexmk -xelatex -pvc 2017-05-10-Hannover_S3_talk_slides.tex

clean:
	rm -f *aux *log *nav *snm *out *toc *pdf *.fdb_latexmk *.fls *.bbl *.blg *~


download_images:
	mkdir -p images

	# https://www.flickr.com/photos/nateone/3768979925/
	wget -c -O images/flickr_konrad_foerstner_4168966589.jpg \
	  https://farm3.staticflickr.com/2785/4168966589_18a2f7b771_o_d.jpg

	# http://www.everystockphoto.com/photo.php?imageId=2380666
	wget -c -O images/rural_school.jpg \
	  http://s3.amazonaws.com/estock/fspid8/438300/school-girl-geography-438364-o.jpg

	# CC-BY logo
	wget -c -O images/creative_commons_attribute.png \
	   http://mirrors.creativecommons.org/presskit/buttons/88x31/png/by.png

	# https://commons.wikimedia.org/wiki/File:Bertini_fresco_of_Galileo_Galilei_and_Doge_of_Venice.jpg
	wget -c -P images \
	   https://upload.wikimedia.org/wikipedia/commons/e/e7/Bertini_fresco_of_Galileo_Galilei_and_Doge_of_Venice.jpg

	# https://commons.wikimedia.org/wiki/File:Leeuwenhoek_simple_microscope_(copy),_Leyden,_1901-1930_Wellcome_L0057739.jpg
	wget -c -P images \
	   https://upload.wikimedia.org/wikipedia/commons/thumb/a/a0/Leeuwenhoek_simple_microscope_%28copy%29%2C_Leyden%2C_1901-1930_Wellcome_L0057739.jpg/1024px-Leeuwenhoek_simple_microscope_%28copy%29%2C_Leyden%2C_1901-1930_Wellcome_L0057739.jpg

	# https://unsplash.com/photos/IClZBVw5W5A
	wget -O images/Tools_by_Todd_Quackenbush.jpg \
	   https://images.unsplash.com/reserve/oIpwxeeSPy1cnwYpqJ1w_Dufer%20Collateral%20test.jpg
	mogrify -geometry 20% images/Tools_by_Todd_Quackenbush.jpg

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
	wget -c -P images \
	  http://www.dfg.de/zentralablage/bilder/dfg_im_profil/allianz/logo_allianz.png

	# https://www.flickr.com/photos/ogimogi/2223450729
	wget -c -O images/flickr_ogimogi_2223450729.jpg \
	  https://farm3.staticflickr.com/2336/2223450729_8761f4a0dd_b_d.jpg

	# https://www.flickr.com/photos/nateone/3768979925/
	wget -c -O images/flickr_nateone_3768979925.jpg \
	  https://farm3.staticflickr.com/2448/3768979925_3abc142dbd_b_d.jpg

	# https://commons.wikimedia.org/wiki/File:Paris_Tuileries_Garden_Facepalm_statue.jpg
	wget -c -P images/ \
	  https://upload.wikimedia.org/wikipedia/commons/3/3b/Paris_Tuileries_Garden_Facepalm_statue.jpg

	# https://www.pexels.com/photo/people-coffee-meeting-team-7096/
	wget -P images/ \
	   https://static.pexels.com/photos/7096/people-woman-coffee-meeting.jpg
	mogrify -geometry 40% images/people-woman-coffee-meeting.jpg

	# https://commons.wikimedia.org/wiki/File:Pierre_P%C3%A9nicaud_-_Plaque_with_Acrobats_-_Walters_44189.jpg
	wget -P images/ \
	  https://upload.wikimedia.org/wikipedia/commons/thumb/4/4c/Pierre_P%C3%A9nicaud_-_Plaque_with_Acrobats_-_Walters_44189.jpg/1024px-Pierre_P%C3%A9nicaud_-_Plaque_with_Acrobats_-_Walters_44189.jpg
