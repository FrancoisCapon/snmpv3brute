(venv) > time ./snmpv3brute.py -p ../06.pcap -w ../en-rootmedict.txt -a all
                                ____  _                _       
                               |___ \| |              | |      
  ___ _ __  _ __ ___  _ ____   ____) | |__  _ __ _   _| |_ ___ 
 / __| '_ \| '_ ` _ \| '_ \ \ / /__ <| '_ \| '__| | | | __/ _ \
 \__ \ | | | | | | | | |_) \ V /___) | |_) | |  | |_| | ||  __/
 |___/_| |_|_| |_| |_| .__/ \_/|____/|_.__/|_|   \__,_|\__\___|
                     | |        by Scott Thomas                
                     |_|           for Applied Risk            
                                                               
Looking for SNMPv3 packets in ../06.pcap...

Tasks to be processed:
 ID   IP address      Username
---- --------------- ----------
 01   192.168.1.207   user

Results:
 ID   IP address      Username   Alg   Password
---- --------------- ---------- ----- ----------
 01   192.168.1.207   user       MD5   4dm1n (22.25s)

  time python3 ./snmpv3brute.py -p ../06.pcap -w ../en-rootmedict.txt -a all
                                ____  _                _       
                               |___ \| |              | |      
  ___ _ __  _ __ ___  _ ____   ____) | |__  _ __ _   _| |_ ___ 
 / __| '_ \| '_ ` _ \| '_ \ \ / /__ <| '_ \| '__| | | | __/ _ \
 \__ \ | | | | | | | | |_) \ V /___) | |_) | |  | |_| | ||  __/
 |___/_| |_|_| |_| |_| .__/ \_/|____/|_.__/|_|   \__,_|\__\___|
                     | |        by Scott Thomas                
                     |_|           for Applied Risk            
                                                               
Looking for SNMPv3 packets in ../06.pcap...

Tasks to be processed:
 ID   IP address      Username
---- --------------- ----------
 01   192.168.1.207   user

Results:
 ID   IP address      Username   Alg   Password
---- --------------- ---------- ----- ----------
 01   192.168.1.207   user       MD5   4dm1n (60.81s)


60 vs 22 secondes

## test files

(venv) > ./snmpv3brute.py -p test_files/snmpv3.pcapng -w test_files/dico.txt -a all
                                ____  _                _       
                               |___ \| |              | |      
  ___ _ __  _ __ ___  _ ____   ____) | |__  _ __ _   _| |_ ___ 
 / __| '_ \| '_ ` _ \| '_ \ \ / /__ <| '_ \| '__| | | | __/ _ \
 \__ \ | | | | | | | | |_) \ V /___) | |_) | |  | |_| | ||  __/
 |___/_| |_|_| |_| |_| .__/ \_/|____/|_.__/|_|   \__,_|\__\___|
                     | |        by Scott Thomas                
                     |_|           for Applied Risk            
                                                               
Looking for SNMPv3 packets in test_files/snmpv3.pcapng...

Tasks to be processed:
 ID   IP address     Username
---- -------------- -----------
 01   172.16.240.1   snmp_user

Results:
 ID   IP address     Username    Alg   Password
---- -------------- ----------- ----- ----------
 01   172.16.240.1   snmp_user   MD5   snmp_password (3.80s)

 Results:
 ID   IP address     Username    Alg   Password
---- -------------- ----------- ----- ----------
 01   172.16.240.1   snmp_user   MD5   snmp_password (11.07s)

snmpv3.pcapng
3.8 vs 11 s 

## multi

```

Looking for SNMPv3 packets in test_files/snmpv3_multi_master.pcapng...

Tasks to be processed:
 ID   IP address     Username
---- -------------- ------------
 01   172.16.240.1   snmp_user
 02   172.16.241.1   snmp_user
 03   172.16.242.1   snmp_user2
 04   172.16.243.1   snmp_user
 05   172.16.244.1   snmp_user4
 06   172.16.245.1   snmp_user
 07   172.16.245.1   admin

Results:
 ID   IP address     Username     Alg   Password
---- -------------- ------------ ----- ----------
 01   172.16.240.1   snmp_user    SHA   snmp_password (3.67s)
 02   172.16.241.1   snmp_user    SHA   private1 (3.70s)
 03   172.16.242.1   snmp_user2   MD5   private1 (0.01s)
 04   172.16.243.1   snmp_user    N/A   Not found (7.68s)
 05   172.16.244.1   snmp_user4   SHA   password (5.68s)
 06   172.16.245.1   snmp_user    SHA   snmp_password (0.00s)
 07   172.16.245.1   admin        SHA   admin123 (5.61s)

Results:
 ID   IP address     Username     Alg   Password
---- -------------- ------------ ----- ----------
 01   172.16.240.1   snmp_user    SHA   snmp_password (12.92s)
 02   172.16.241.1   snmp_user    SHA   private1 (16.46s)
 03   172.16.242.1   snmp_user2   MD5   private1 (0.02s)
 04   172.16.243.1   snmp_user    N/A   Not found (25.34s)
 05   172.16.244.1   snmp_user4   SHA   password (16.96s)
 06   172.16.245.1   snmp_user    SHA   snmp_password (0.01s)
 07   172.16.245.1   admin        SHA   admin123 (18.51s)

-a rfc3414
Results:
 ID   IP address     Username     Alg   Password
---- -------------- ------------ ----- ----------
 01   172.16.240.1   snmp_user    SHA   snmp_password (3.80s)
 02   172.16.241.1   snmp_user    SHA   private1 (3.75s)
 03   172.16.242.1   snmp_user2   MD5   private1 (0.01s)
 04   172.16.243.1   snmp_user    N/A   Not found (7.03s)
 05   172.16.244.1   snmp_user4   SHA   password (5.50s)
 06   172.16.245.1   snmp_user    SHA   snmp_password (0.00s)
 07   172.16.245.1   admin        SHA   admin123 (5.78s)

```

 facteur 3 à 4


  Tu verras que digest() est environ 10 à 30 % plus rapide, selon la machine.