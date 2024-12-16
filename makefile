update-packwiz:
	go install github.com/packwiz/packwiz@latest
	go install github.com/Merith-TK/packwiz-wrapper/cmd/pw@main
	@echo "Packwiz has been Updated"
export:
	-mkdir -p .build/
	cd versions/forge && pw batch mr export
	-mv versions/forge/*/*.mrpack .build
	cd versions/neoforge && pw batch mr export
	-mv versions/neoforge/*/*.mrpack .build
update:
	cd versions/forge && pw batch update -a
	cd versions/neoforge && pw batch update -a
refresh:
	cd versions/forge && pw batch refresh
	cd versions/neoforge && pw batch refresh
serve:
	cd versions/forge/* && pw serve
	cd versions/neoforge/* && pw serve
