!#/bin/bash

die(){

	exit 1
}

export HISTIGNORE="expect*";

expect -c "
	spawn electron-forge import .
	expect "continue"
	send \"y\r\"
	expect "babel"
	send \"n\r\"
	expect "start"
	send \"y\r\"
	expect "package"
	send \"y\r\"
	expect "make"
	send \"y\r\"
	expect eof
"

export HISTIGNORE=="";
