MACHINE_TRANSLATION=https://github.com/episodeyang/deep_machine_translation.git

default:
	make install
install:
	pip install -r requirements.txt
pull:
	git pull
	make pull-machine_translation
push:
	git push origin
	make push-desktop-client-common

add-machine-translation:
	git subtree add --prefix machine_translation $(MACHINE_TRANSLATION) master
push-machine-translation:
	git subtree push --prefix machine_translation $(MACHINE_TRANSLATION) deep_summarization
pull-machine-translation:
	git subtree pull --prefix machine_translation $(MACHINE_TRANSLATION) master

