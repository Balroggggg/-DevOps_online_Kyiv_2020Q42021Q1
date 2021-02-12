#!/bin/bash

file=$1
site=""
num=0

mostSeenElem () {

declare -A count

for ip in $(cut -d" " -f"$1" $file); do
    (( 'count[$ip]++' ))
done

max=0
for ip in "${!count[@]}"; do
    if (( ${count[$ip]} > $max )); then
        max=${count[$ip]}
        max_ip=$ip
    fi
done
site=$max_ip
num=$max
echo "$max_ip		$max times"
}

numberOfRequestsFromEachIP () {

awk -F'[ "]+' '$7 == "'$site'" { ipcount[$1]++ }
    END { for (i in ipcount) {
        printf "%15s			%d\n", i, ipcount[i] } }' $file
}

findError404 () {
	awk '{ if (  $9 == "404" ) { print $7 } }' $file
}

timeMostRequests () {
	awk '{print $4}' $file | cut -c 2- | uniq -c | sort | tail -n 1

}

findSearchBot () {
	awk '{ if ( $NF ~ "bot" ) {print $1 "\t\t"$NF} }' $file
}
echo "Most seen IP		Times"

mostSeenElem 1

echo "Most requested page	Times"

mostSeenElem 7

echo "IP address requested page 	Times"

numberOfRequestsFromEachIP

echo "Non-existent pages clients referred to: "

findError404

echo "Time site get the most requests:"

timeMostRequests

echo "IP address	Search bot"

findSearchBot
