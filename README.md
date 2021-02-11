# endgame
A shell script that can be run periodically to scrape https://bookmyshow.com for a show's availability and uses IFTTT to send a notification when tickets are available. (Named after the movie it was originally written to scrape for, Avengers: Endgame :P)

## How to use:

\# $1 - url (Eg: https://in.bookmyshow.com/hyderabad/movies/avengers-endgame/ET00090482) \
\# $2 - keyword (Eg: "showtimes btn _cuatro") \
\# $3 - event (Eg: endgame_tickets_available) \
\# $4 - IFTTT key \
\# $5 - email (Eg: ved914980@gmail.com) [install mailutils first!] 

\# Example: \
 /bin/bash ./endgame.sh https://in.bookmyshow.com/hyderabad/movies/avengers-endgame/ET00090482 "showtimes btn _cuatro" endgame_tickets_available <IFTTT_key> ved914980@gmail.com
