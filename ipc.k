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

0 / passing variables over IPC

.function: {[x] z::x} / in remote k instance - assigns x to global var z

array: 3 4 5
conn 4: ,(`.function;array) /I'm not 100% sure how this works

0 / passing table over IPC

length: 10000
table: +(`stock`date`price`vol)!(length rand `ibm`goog`hp;.z.D+/:length rand 16:00:00;100 + length rand 200; length rand 5000)
conn 4: ,(`.function;table)


0 / forking via https://groups.google.com/forum/#!searchin/shaktidb/http|sort:date/shaktidb/UG3waBNOMRE/sYbgNfcnAQAJ

anotherK:3:() / starts another k process
anotherK 4: "v: 0"
anotherK 4: "v: v + 1"
anotherK 4: "v"

http:4:() /fork hserve
http 4: "something"

