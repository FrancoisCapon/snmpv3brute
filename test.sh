./snmpv3brute.py -p test_files/snmpv3_auth.pcapng -w test_files/dico.txt

for hash in md5 sha sha-224 sha-256 sha-384 sha-512 all rfc3414 rfc7860;
do
    echo $hash
    ./snmpv3brute.py -p test_files/snmpv3_auth.pcapng -w test_files/dico.txt -a $hash
done