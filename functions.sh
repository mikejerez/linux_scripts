mcd () {
	mkdir -p "$1"
	cd "$1"
}

update () {
	sudo apt-get update
}

upgrade () {
	sudo apt-get upgrade -y
}
