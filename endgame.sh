#!/bin/bash

# $1 - url (https://in.bookmyshow.com/hyderabad/movies/avengers-endgame/ET00090482)
# $2 - keyword ("showtimes btn _cuatro")
# $3 - event (endgame_tickets_available)
# $4 - IFTTT key (hJg0yIw1CDDu65sbA0Oc9oIM4Sc4C2GJFrUKQ99b0jE)
# $5 - email (ved914980@gmail.com) [install mailutils first!]

page=`curl -s $1`
if grep -q "$2" <<< "$page"
then
	curl -s https://maker.ifttt.com/trigger/$3/with/key/$4;
	if [ -z "$5" ]
	then
		echo "No mail sent";
	else
		mail -s $1 < /dev/null $5
	fi
else
	echo "You'll need the Time Stone to get the tickets right now!";
fi



#Eg:
#/bin/bash ./endgame.sh https://in.bookmyshow.com/hyderabad/movies/avengers-endgame/ET00090482 "showtimes btn _cuatro" endgame_tickets_available hJg0yIw1CDDu65sbA0Oc9oIM4Sc4C2GJFrUKQ99b0jE vedant.v@darwinbox.io

