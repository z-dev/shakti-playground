/ first run a seperate k -p 4567

conn: 3: 4567
conn 4: "life: 42"
conn 4: "life"


0 / hardcore from the big man https://groups.google.com/forum/#!searchin/shaktidb/http|sort:date/shaktidb/jh1MazSymjs/mN93ObK1AgAJ

n:1000000

conn 4: "v: 0"
incrementVNtimes: n#,("v: v + 1")
conn 4: incrementVNtimes;
"finished"
conn 4: "v"


0 / forking via https://groups.google.com/forum/#!searchin/shaktidb/http|sort:date/shaktidb/UG3waBNOMRE/sYbgNfcnAQAJ

anotherK:3:() / starts another k process
anotherK 4: "v: 0"
anotherK 4: "v: v + 1"
anotherK 4: "v"

http:4:() /fork hserve
http 4: "something"
