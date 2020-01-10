
+(`a`b`c)!(10#1;10#2;10#3)

length: 1000
table: +(`stock`date`price`vol)!(length rand `ibm`goog`hp;.z.D+/:length rand 16:00:00;100 + length rand 200; length rand 5000)

@ table /type

table2: +(`stock`date`price`vol)!(length rand `ibm`goog`hp;.z.D+/:length rand 16:00:00;100 + length rand 200; length rand 5000)

combinedTable: table,table2 /upsert?

select `stock from combinedTable

combinedTableWithKeys: `date`price key combinedTable

combinedTableWithKeys
