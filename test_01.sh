./snmpv3brute.py -p test_files/snmpv3_auth.pcapng -w test_files/dico.txt

hashes_type='md5 sha sha-224 sha-256 sha-384 sha-512 all rfc3414 rfc7860'
for hash in $hashes_type;
do
    ./snmpv3brute.py -p test_files/snmpv3_auth.pcapng -w test_files/dico.txt -a $hash
done
for hash in $hashes_type;
do
    ./snmpv3brute.py -p test_files/snmpv3_multi_master.pcapng -w test_files/dico.txt -a $hash
done