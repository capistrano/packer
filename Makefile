vagrant: capistrano-Debian_7.4_64.box
	-vagrant box remove $(basename $<)
	vagrant box add $(basename $<) $<

capistrano-Debian_7.4_64.box: capistrano-Debian_7.4_64.json $(wildcard script/*.sh) http/preseed.cfg
	packer build $<

clean:
	-rm harrow-Debian_64.box

.PHONY: clean
