# mar/28/2020 01:05:21 by RouterOS 5.26
# software id = U00W-Q1GK
#
/ppp profile
set 0 change-tcp-mss=yes local-address=192.168.101.1 name=default only-one=\
    default remote-address=users_pool1 use-compression=default \
    use-encryption=default use-ipv6=yes use-mpls=default use-vj-compression=\
    default
add change-tcp-mss=default local-address=192.168.101.1 name=30MB only-one=yes \
    rate-limit=10485760/31457280 remote-address=users_pool1 use-compression=\
    default use-encryption=default use-ipv6=no use-mpls=default \
    use-vj-compression=default
add change-tcp-mss=default local-address=192.168.101.1 name=2MB only-one=yes \
    rate-limit=2097152/2097152 remote-address=users_pool1 use-compression=\
    default use-encryption=default use-ipv6=yes use-mpls=default \
    use-vj-compression=default
add change-tcp-mss=default local-address=192.168.101.1 name=20MB only-one=yes \
    rate-limit=20971520/20971520 remote-address=users_pool1 use-compression=\
    default use-encryption=default use-ipv6=no use-mpls=default \
    use-vj-compression=default
add change-tcp-mss=default local-address=192.168.101.1 name=dynamic_IP \
    only-one=yes rate-limit=10485760/31457280 remote-address=users_pool1 \
    use-compression=default use-encryption=default use-ipv6=default use-mpls=\
    default use-vj-compression=default
add change-tcp-mss=default local-address=192.168.101.1 name=50MB only-one=yes \
    rate-limit=10485760/52428800 remote-address=users_pool1 use-compression=\
    default use-encryption=default use-ipv6=no use-mpls=default \
    use-vj-compression=default
add change-tcp-mss=default local-address=192.168.101.1 name=60m only-one=yes \
    rate-limit=10485760/62914560 remote-address=users_pool1 use-compression=\
    default use-encryption=default use-ipv6=no use-mpls=default \
    use-vj-compression=default
add change-tcp-mss=default local-address=192.168.101.1 name=80m only-one=yes \
    rate-limit=10485760/83886080 remote-address=users_pool1 session-timeout=\
    0s use-compression=default use-encryption=default use-ipv6=no use-mpls=\
    default use-vj-compression=default
add change-tcp-mss=default local-address=192.168.101.1 name=80m/80m only-one=\
    yes rate-limit=83886080/83886080 remote-address=users_pool1 \
    use-compression=default use-encryption=default use-ipv6=yes use-mpls=\
    default use-vj-compression=default
add change-tcp-mss=default local-address=192.168.101.1 name=100/100m \
    only-one=yes rate-limit=104857600/104857600 remote-address=users_pool1 \
    use-compression=default use-encryption=default use-ipv6=yes use-mpls=\
    default use-vj-compression=default
add change-tcp-mss=default local-address=192.168.101.1 name=100m only-one=yes \
    rate-limit=20971520/104857600 remote-address=users_pool1 use-compression=\
    default use-encryption=default use-ipv6=yes use-mpls=default \
    use-vj-compression=default
set 11 change-tcp-mss=yes name=default-encryption only-one=default \
    remote-ipv6-prefix-pool=none use-compression=default use-encryption=yes \
    use-ipv6=yes use-mpls=default use-vj-compression=default
/ppp aaa
set accounting=no interim-update=0s use-radius=no
/ppp secret
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=Admin \
    password=Admin256 profile=default remote-address=192.168.101.4 routes="" \
    service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    Belousova10129 password=36677 profile=80m routes="" service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    Belousova10132 password=20524 profile=50MB routes="" service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    Belousova1079 password=93277 profile=80m routes="" service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    Belousova1245 password=48235 profile=80m routes="" service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    Belousova349 password=24843 profile=80m routes="" service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    Belousova10-35 password=563468 profile=80m routes="" service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    Oktyabrskaya25418 password=563469 profile=60m routes="" service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    Belousova10_77 password=56345 profile=60m routes="" service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    Belousova1244 password=7253 profile=80m routes="" service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    Belousova1075 password=72549 profile=60m routes="" service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    Gorkogo23_8 password=97810 profile=80m routes="" service=pppoe
add caller-id="" comment=0956365651 disabled=yes limit-bytes-in=0 \
    limit-bytes-out=0 name=Gorkogo18_33 password=7393620 profile=80m routes=\
    "" service=pppoe
add caller-id="" disabled=yes limit-bytes-in=0 limit-bytes-out=0 name=\
    Gorkogo2342 password=68297 profile=30MB routes="" service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    Gorkogo2722 password=14203 profile=60m routes="" service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    Pushkinskaya297_59 password=58455 profile=80m routes="" service=pppoe
add caller-id="" disabled=yes limit-bytes-in=0 limit-bytes-out=0 name=\
    Leningradskaya29_52 password=8390510 profile=80m routes="" service=pppoe
add caller-id="" comment=0501048586 disabled=no limit-bytes-in=0 \
    limit-bytes-out=0 name=Gorkogo2316 password=23744 profile=20MB routes="" \
    service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    Gorkogo23_20 password=63574 profile=50MB routes="" service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    Gorkogo2345 password=62974 profile=60m routes="" service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    Gorkogo2347 password=73425 profile=50MB routes="" service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    Gorkogo23_38 password=65317 profile=60m routes="" service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    Gorkogo2946 password=46671 profile=50MB routes="" service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    International46431 password=33556 profile=60m routes="" service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    Gorkogo29_54 password=21877 profile=80m routes="" service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    International464_30 password=66723 profile=80m routes="" service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    International4645 password=44191 profile=80m routes="" service=pppoe
add caller-id="" comment=0661099406 disabled=no limit-bytes-in=0 \
    limit-bytes-out=0 name=Oktyabrskaya276_5 password=44092 profile=60m \
    routes="" service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    Kuznechnaya1410 password=79548 profile=60m routes="" service=pppoe
add caller-id="" comment=0660855356 disabled=no limit-bytes-in=0 \
    limit-bytes-out=0 name=Leningradskaya2143 password=79543 profile=60m \
    routes="" service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    Leningradskaya25_24 password=79550 profile=50MB routes="" service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    Leningradskaya2012 password=88878 profile=80m routes="" service=pppoe
add caller-id="" comment=0669505658 disabled=no limit-bytes-in=0 \
    limit-bytes-out=0 name=Gorkogo25_60 password=76954 profile=80m routes="" \
    service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    Leningradskaya199 password=31264 profile=60m routes="" service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    Oktyabrskaya29912 password=81250 profile=80m routes="" service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    Oktyabrskaya25215 password=62039 profile=80m routes="" service=pppoe
add caller-id="" comment=007488726 disabled=no limit-bytes-in=0 \
    limit-bytes-out=0 name=Oktyabrskaya25217 password=5331 profile=60m \
    routes="" service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    Oktyabrskaya2545 password=93901 profile=80m routes="" service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    Oktyabrskaya2546 password=93900 profile=80m routes="" service=pppoe
add caller-id="" comment=0500400293 disabled=no limit-bytes-in=0 \
    limit-bytes-out=0 name=Oktyabrskaya288_74 password=93901 profile=80m \
    routes="" service=pppoe
add caller-id="" comment=0506103597 disabled=no limit-bytes-in=0 \
    limit-bytes-out=0 name=Trudovaya43058 password=73456 profile=80m routes=\
    "" service=pppoe
add caller-id="" comment=0954486081 disabled=no limit-bytes-in=0 \
    limit-bytes-out=0 name=Petrovskogo9_27 password=93922 profile=80m routes=\
    "" service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    Oktyabrskaya28057 password=93925 profile=50MB routes="" service=pppoe
add caller-id="" comment=0681308591 disabled=no limit-bytes-in=0 \
    limit-bytes-out=0 name=Oktyabrskaya282_10 password=10942 profile=80m \
    routes="" service=pppoe
add caller-id="" comment=0951459296 disabled=no limit-bytes-in=0 \
    limit-bytes-out=0 name=Oktyabrskaya2824 password=99746 profile=80m \
    routes="" service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    Gorkogo2330 password=79802 profile=60m routes="" service=pppoe
add caller-id="" comment=0991139899 disabled=no limit-bytes-in=0 \
    limit-bytes-out=0 name=Shevchenko233_52 password=6468825 profile=80m \
    routes="" service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    Oktyabrskaya28216 password=64689 profile=60m routes="" service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    Oktyabrskaya2882 password=27047 profile=60m routes="" service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    Oktyabrskaya28838 password=70705 profile=60m routes="" service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    Oktyabrskaya28856 password=60723 profile=50MB routes="" service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    Oktyabrskaya29928 password=97450 profile=60m routes="" service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    Oktyabrskaya33313 password=8952 profile=80m routes="" service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    Oktyabrskaya33329 password=26086 profile=50MB routes="" service=pppoe
add caller-id="" comment=0503264586 disabled=no limit-bytes-in=0 \
    limit-bytes-out=0 name=Oktyabrskaya299_25 password=9695830 profile=80m \
    routes="" service=pppoe
add caller-id="" disabled=yes limit-bytes-in=0 limit-bytes-out=0 name=\
    Oktyabrskaya276_8 password=99058 profile=80m routes="" service=pppoe
add caller-id="" disabled=yes limit-bytes-in=0 limit-bytes-out=0 name=\
    Petrovskogo9_57 password=33694 profile=60m routes="" service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    Petrovskogo2050 password=78643 profile=50MB routes="" service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    Petrovskogo13_54 password=75746 profile=80m routes="" service=pppoe
add caller-id="" comment=0506456035 disabled=no limit-bytes-in=0 \
    limit-bytes-out=0 name=Pushkinskaya297_46 password=84179 profile=80m \
    routes="" service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    Petrovskogo956 password=82892 profile=50MB routes="" service=pppoe
add caller-id="" comment=0956494187 disabled=no limit-bytes-in=0 \
    limit-bytes-out=0 name=Proletarskaya322_30 password=740823 profile=80m \
    routes="" service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    Gorkogo2024 password=21988 profile=80m routes="" service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    Proletarskaya32258 password=21987 profile=80m routes="" service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    Pugacheva381 password=76550 profile=50MB routes="" service=pppoe
add caller-id="" comment=0990271460 disabled=no limit-bytes-in=0 \
    limit-bytes-out=0 name=Proletarskaya322_38 password=703658 profile=80m \
    routes="" service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    Trudovaya398_52 password=96958 profile=80m/80m routes="" service=pppoe
add caller-id="" comment=0664090545 disabled=yes limit-bytes-in=0 \
    limit-bytes-out=0 name=Belousova3_53 password=312084567 profile=80m \
    routes="" service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    Belousova6_6 password=235684 profile=80m routes="" service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    Pushkinskaya2957 password=32220 profile=50MB routes="" service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    Pervomayskaya291_16 password=236420 profile=80m routes="" service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    Trudovaya43069 password=48695 profile=80m routes="" service=pppoe
add caller-id="" comment="006204873 0996028540" disabled=no limit-bytes-in=0 \
    limit-bytes-out=0 name=Trudovaya398_70 password=48696 profile=80m routes=\
    "" service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    Trudovaya44950 password=15361 profile=2MB routes="" service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    Trudovaya449_32 password=57580 profile=50MB routes="" service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    Trudovaya46914 password=57581 profile=50MB routes="" service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    Belousova125 password=67090 profile=80m routes="" service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    Shevchenko233_36 password=79418 profile=50MB routes="" service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=test_set \
    password=test_set profile=default routes="" service=pppoe
add caller-id="" comment=0991151840 disabled=no limit-bytes-in=0 \
    limit-bytes-out=0 name=Trudovaya398_51 password=637815 profile=80m/80m \
    routes="" service=pppoe
add caller-id="" disabled=yes limit-bytes-in=0 limit-bytes-out=0 name=\
    Gorkogo25_3 password=6478901 profile=80m routes="" service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    Belousova46 password=3564 profile=60m routes="" service=pppoe
add caller-id="" comment=0637822945 disabled=no limit-bytes-in=0 \
    limit-bytes-out=0 name=Belousova10_6 password=54687 profile=80m routes="" \
    service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    Gorkogo25_18 password=45678 profile=60m routes="" service=pppoe
add caller-id="" comment=0660291063 disabled=no limit-bytes-in=0 \
    limit-bytes-out=0 name=Trudovaya400_51 password=45485 profile=80m routes=\
    "" service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    Pushkinskaya2913 password=54687 profile=50MB routes="" service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    Trudovaya430_1 password=48235 profile=50MB routes="" service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    Belousova1225 password=8577 profile=60m routes="" service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    Oktyabrskaya28427 password=324565 profile=60m routes="" service=pppoe
add caller-id="" comment=0501768685 disabled=no limit-bytes-in=0 \
    limit-bytes-out=0 name=Gorkogo29_77 password=785298 profile=80m routes="" \
    service=pppoe
add caller-id="" comment=0504604071 disabled=no limit-bytes-in=0 \
    limit-bytes-out=0 name=Trudovaya447_34 password=34356 profile=80m routes=\
    "" service=pppoe
add caller-id="" comment=0508316378 disabled=no limit-bytes-in=0 \
    limit-bytes-out=0 name=Pervomayskaya291_40 password=367825 profile=80m \
    routes="" service=pppoe
add caller-id="" comment=0508688793 disabled=no limit-bytes-in=0 \
    limit-bytes-out=0 name=Gorkogo18_65 password=65783 profile=80m routes="" \
    service=pppoe
add caller-id="" disabled=yes limit-bytes-in=0 limit-bytes-out=0 name=\
    Belousova6_37 password=1897 profile=80m routes="" service=pppoe
add caller-id="" comment=0508005442 disabled=no limit-bytes-in=0 \
    limit-bytes-out=0 name=Belousova8_18 password=2374 profile=80m routes="" \
    service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    International46434 password=63781 profile=80m routes="" service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    Pugacheva386 password=43687 profile=60m routes="" service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    Pushkinskaya2756 password=45231 profile=60m routes="" service=pppoe
add caller-id="" comment=0664090545 disabled=no limit-bytes-in=0 \
    limit-bytes-out=0 name=Belousova8_9 password=360919 profile=80m routes="" \
    service=pppoe
add caller-id="" comment=0954398343 disabled=no limit-bytes-in=0 \
    limit-bytes-out=0 name=Trudovaya430_57 password=45567 profile=80m routes=\
    "" service=pppoe
add caller-id="" comment=0667603412 disabled=no limit-bytes-in=0 \
    limit-bytes-out=0 name=Leningradskaya29_65 password=3246810 profile=50MB \
    routes="" service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    Pervomayskaya291_48 password=015093 profile=80m routes="" service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    Pushkinskaya295_12 password=4578 profile=50MB routes="" service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    Petrovskogo11_88 password=390015 profile=80m routes="" service=pppoe
add caller-id="" comment=0950625312 disabled=no limit-bytes-in=0 \
    limit-bytes-out=0 name=Proletarskaya322_2 password=49020 profile=80m \
    routes="" service=pppoe
add caller-id="" disabled=yes limit-bytes-in=0 limit-bytes-out=0 name=\
    Gorkogo251 password=2344 profile=80m routes="" service=pppoe
add caller-id="" comment=0660351978 disabled=no limit-bytes-in=0 \
    limit-bytes-out=0 name=Gorkogo20_31 password=232938144 profile=80m \
    routes="" service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    Trudovaya430_50 password=45579 profile=80m routes="" service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    Gorkogo23_18 password=98126 profile=80m routes="" service=pppoe
add caller-id="" comment=0956907179 disabled=no limit-bytes-in=0 \
    limit-bytes-out=0 name=Pushkinskaya297_23 password=225651723 profile=80m \
    routes="" service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    Gorkogo25_34 password=569201 profile=80m routes="" service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    Belousova52 password=38964 profile=50MB routes="" service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    International464_43 password=72964 profile=80m routes="" service=pppoe
add caller-id="" comment=0501370868 disabled=no limit-bytes-in=0 \
    limit-bytes-out=0 name=Trudovaya398_49 password=63780910 profile=80m \
    routes="" service=pppoe
add caller-id="" comment=0990192523 disabled=no limit-bytes-in=0 \
    limit-bytes-out=0 name=Belousova4_34 password=8736 profile=80m routes="" \
    service=pppoe
add caller-id="" comment="0668951547, 0959222565" disabled=no limit-bytes-in=\
    0 limit-bytes-out=0 name=Belousova8_59 password=56243 profile=80m routes=\
    "" service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    Petrovskogo11_63 password=53791 profile=80m routes="" service=pppoe
add caller-id="" comment=0667684450 disabled=no limit-bytes-in=0 \
    limit-bytes-out=0 name=Oktyabrskaya288_53 password=36952 profile=80m \
    routes="" service=pppoe
add caller-id="" comment=0959083999 disabled=no limit-bytes-in=0 \
    limit-bytes-out=0 name=Shevchenko233_33 password=45632 profile=100m \
    routes="" service=pppoe
add caller-id="" comment=0660026894 disabled=no limit-bytes-in=0 \
    limit-bytes-out=0 name=Petrovskogo13_15 password=63788763 profile=100m \
    routes="" service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    Belousova10_47 password=51936 profile=80m routes="" service=pppoe
add caller-id="" comment="0506436878, cod 12" disabled=no limit-bytes-in=0 \
    limit-bytes-out=0 name=Pervomayskaya291_37 password=72165 profile=80m \
    routes="" service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    Belousova5_8 password=46927 profile=80m routes="" service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    Belousova12_68 password=192168 profile=80m routes="" service=pppoe
add caller-id="" comment=0990230806 disabled=no limit-bytes-in=0 \
    limit-bytes-out=0 name=Oktyabrskaya288_75 password=68145 profile=80m \
    routes="" service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    Belousova10_130 password=154263 profile=80m routes="" service=pppoe
add caller-id="" comment="0996700528, 0509974627" disabled=no limit-bytes-in=\
    0 limit-bytes-out=0 name=Oktyabrskaya282_51 password=335128 profile=80m \
    routes="" service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    Oktyabrskaya278_11 password=322978 profile=80m routes="" service=pppoe
add caller-id="" comment=0501635323 disabled=yes limit-bytes-in=0 \
    limit-bytes-out=0 name=Belousova6_56 password=45386 profile=80m routes="" \
    service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=Pulsar \
    password=music profile=20MB routes="" service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    Oktyabrskaya288_87 password=72641 profile=80m routes="" service=pppoe
add caller-id="" comment=0950940769 disabled=no limit-bytes-in=0 \
    limit-bytes-out=0 name=Gorkogo25_30 password=34565490 profile=80m routes=\
    "" service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    Belousova6_31 password=369047 profile=80m routes="" service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    Petrovskogo9_24 password=236730 profile=80m routes="" service=pppoe
add caller-id="" comment=0668364646 disabled=no limit-bytes-in=0 \
    limit-bytes-out=0 name=Oktyabrskaya284_3 password=154263 profile=80m \
    routes="" service=pppoe
add caller-id="" comment=0508016371 disabled=yes limit-bytes-in=0 \
    limit-bytes-out=0 name=Gorkogo20_72 password=51687422 profile=80m routes=\
    "" service=pppoe
add caller-id="" comment=0508624276 disabled=no limit-bytes-in=0 \
    limit-bytes-out=0 name=Oktyabrskaya299_29 password=74222711 profile=80m \
    routes="" service=pppoe
add caller-id="" comment=0952036958 disabled=no limit-bytes-in=0 \
    limit-bytes-out=0 name=Trudovaya430_43 password=654789 profile=80m \
    routes="" service=pppoe
add caller-id="" comment=0990427620 disabled=yes limit-bytes-in=0 \
    limit-bytes-out=0 name=Petrovskogo11_32 password=2169354 profile=80m \
    routes="" service=pppoe
add caller-id="" comment=0957400239 disabled=no limit-bytes-in=0 \
    limit-bytes-out=0 name=Oktyabrskaya278_15 password=347098 profile=80m \
    routes="" service=pppoe
add caller-id="" comment=0997311369 disabled=no limit-bytes-in=0 \
    limit-bytes-out=0 name=Gorkogo20_15 password=573642 profile=80m routes="" \
    service=pppoe
add caller-id="" comment=0502479755 disabled=yes limit-bytes-in=0 \
    limit-bytes-out=0 name=Oktyabrskaya274_9 password=6846439 profile=80m \
    routes="" service=pppoe
add caller-id="" comment=0951720005 disabled=no limit-bytes-in=0 \
    limit-bytes-out=0 name=Belousova12_47 password=50340832 profile=80m \
    routes="" service=pppoe
add caller-id="" comment=0667913907 disabled=no limit-bytes-in=0 \
    limit-bytes-out=0 name=Gorkogo29_53 password=70130345 profile=80m routes=\
    "" service=pppoe
add caller-id="" comment=0501078387 disabled=no limit-bytes-in=0 \
    limit-bytes-out=0 name=Oktyabrskaya278_33 password=5556348 profile=80m \
    routes="" service=pppoe
add caller-id="" comment=0668601768 disabled=no limit-bytes-in=0 \
    limit-bytes-out=0 name=Leningradskaya25_55 password=458094 profile=80m \
    routes="" service=pppoe
add caller-id="" comment=0994794184 disabled=no limit-bytes-in=0 \
    limit-bytes-out=0 name=Oktyabrskaya254_4 password=015806 profile=80m/80m \
    routes="" service=pppoe
add caller-id="" comment=0955499356 disabled=no limit-bytes-in=0 \
    limit-bytes-out=0 name=Oktyabrskaya252_28 password=5349165 profile=80m \
    routes="" service=pppoe
add caller-id="" comment=0954640151 disabled=no limit-bytes-in=0 \
    limit-bytes-out=0 name=Pushkinskaya297_47 password=581279 profile=80m \
    routes="" service=pppoe
add caller-id="" comment=0509898153 disabled=no limit-bytes-in=0 \
    limit-bytes-out=0 name=Belousova12_67 password=629402 profile=80m routes=\
    "" service=pppoe
add caller-id="" comment=2994541180 disabled=no limit-bytes-in=0 \
    limit-bytes-out=0 name=Gorkogo29_52 password=382567 profile=80m routes="" \
    service=pppoe
add caller-id="" comment=0501956828 disabled=no limit-bytes-in=0 \
    limit-bytes-out=0 name=Belousova1_27 password=472580 profile=80m routes=\
    "" service=pppoe
add caller-id="" comment=0995073936 disabled=no limit-bytes-in=0 \
    limit-bytes-out=0 name=Petrovskogo22_12 password=539641 profile=80m \
    routes="" service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    Leningradskaya21_28 password=193247 profile=80m routes="" service=pppoe
add caller-id="" comment=0990177066 disabled=no limit-bytes-in=0 \
    limit-bytes-out=0 name=Belousova8_11 password=409201 profile=80m routes=\
    "" service=pppoe
add caller-id="" comment=0951267753 disabled=no limit-bytes-in=0 \
    limit-bytes-out=0 name=Petrovskogo11_89 password=376218 profile=80m \
    routes="" service=pppoe
add caller-id="" comment=0639224088 disabled=no limit-bytes-in=0 \
    limit-bytes-out=0 name=Belousova4_13 password=723056 profile=80m routes=\
    "" service=pppoe
add caller-id="" comment=0958339185 disabled=no limit-bytes-in=0 \
    limit-bytes-out=0 name=Trudovaya449_33 password=012583 profile=80m \
    routes="" service=pppoe
add caller-id="" comment=0957540891 disabled=no limit-bytes-in=0 \
    limit-bytes-out=0 name=Oktyabrskaya288_26 password=414260 profile=80m \
    routes="" service=pppoe
add caller-id="" comment=0953808051 disabled=no limit-bytes-in=0 \
    limit-bytes-out=0 name=Belousova12_17 password=030204 profile=80m routes=\
    "" service=pppoe
add caller-id="" comment=0661385587 disabled=yes limit-bytes-in=0 \
    limit-bytes-out=0 name=Oktyabrskaya252_35 password=379208 profile=80m \
    routes="" service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    Leningradskaya23_16 password=735642 profile=80m routes="" service=pppoe
add caller-id="" comment=0506204873 disabled=no limit-bytes-in=0 \
    limit-bytes-out=0 name=Petrovskogo26_21 password=672106 profile=80m \
    routes="" service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    Belousova6_43 password=418934 profile=80m routes="" service=pppoe
add caller-id="" comment=0999424069 disabled=no limit-bytes-in=0 \
    limit-bytes-out=0 name=Oktyabrskaya280_16 password=376276 profile=80m \
    routes="" service=pppoe
add caller-id="" comment=0666077638 disabled=no limit-bytes-in=0 \
    limit-bytes-out=0 name=Oktyabrskaya282_58 password=439070 profile=80m \
    routes="" service=pppoe
add caller-id="" comment=0997296877 disabled=yes limit-bytes-in=0 \
    limit-bytes-out=0 name=Trudovaya390_34 password=412911 profile=80m \
    routes="" service=pppoe
add caller-id="" comment=0509549054 disabled=no limit-bytes-in=0 \
    limit-bytes-out=0 name=Oktyabrskaya276_66 password=513412 profile=80m \
    routes="" service=pppoe
add caller-id="" comment=0507647619 disabled=no limit-bytes-in=0 \
    limit-bytes-out=0 name=Gorkogo20_14 password=637891 profile=80m routes="" \
    service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    Shop_Liliya288 password=580475 profile=80m/80m routes="" service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    Oktyabrskaya284_6 password=468912 profile=80m routes="" service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    Belousova14_32 password=357951 profile=80m routes="" service=pppoe
add caller-id="" disabled=yes limit-bytes-in=0 limit-bytes-out=0 name=\
    Belousova3_28 password=258963 profile=80m routes="" service=pppoe
add caller-id="" comment=0633617332 disabled=yes limit-bytes-in=0 \
    limit-bytes-out=0 name=Gorkogo18_4 password=164676 profile=80m routes="" \
    service=pppoe
add caller-id="" comment=0664563850 disabled=no limit-bytes-in=0 \
    limit-bytes-out=0 name=Belousova1_37 password=285936 profile=80m routes=\
    "" service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    Belousova6_16 password=259634 profile=80m routes="" service=pppoe
add caller-id="" comment=0661098294 disabled=no limit-bytes-in=0 \
    limit-bytes-out=0 name=Belousova12_40 password=9874569 profile=80m \
    routes="" service=pppoe
add caller-id="" comment=0955819684 disabled=no limit-bytes-in=0 \
    limit-bytes-out=0 name=Petrovskogo20_18 password=342987 profile=80m \
    routes="" service=pppoe
add caller-id="" comment=0502205782 disabled=no limit-bytes-in=0 \
    limit-bytes-out=0 name=Trudovaya469_30 password=322233 profile=80m \
    routes="" service=pppoe
add caller-id="" comment=0958686296 disabled=no limit-bytes-in=0 \
    limit-bytes-out=0 name=International464_49 password=2637891 profile=80m \
    routes="" service=pppoe
add caller-id="" comment=0505593488 disabled=no limit-bytes-in=0 \
    limit-bytes-out=0 name=Belousova4_29 password=05597 profile=80m routes="" \
    service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    Belousova4_24 password=038024 profile=80m/80m routes="" service=pppoe
add caller-id="" comment=0993097482 disabled=no limit-bytes-in=0 \
    limit-bytes-out=0 name=Belousova4_26 password=555679 profile=80m/80m \
    routes="" service=pppoe
add caller-id="" comment="0954712 0994481352" disabled=no limit-bytes-in=0 \
    limit-bytes-out=0 name=Belousova5_60 password=80193823 profile=80m \
    routes="" service=pppoe
add caller-id="" comment="099721546 0507636001" disabled=no limit-bytes-in=0 \
    limit-bytes-out=0 name=Leningradskaya21_66 password=19025001 profile=80m \
    routes="" service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    Gorkogo18_44 password=28963 profile=80m routes="" service=pppoe
add caller-id="" comment=0509667211 disabled=no limit-bytes-in=0 \
    limit-bytes-out=0 name=Oktyabrskaya288_58 password=786321 profile=80m \
    routes="" service=pppoe
add caller-id="" disabled=yes limit-bytes-in=0 limit-bytes-out=0 name=\
    Trudovaya430_88 password=551003 profile=80m routes="" service=pppoe
add caller-id="" comment=0507098704 disabled=no limit-bytes-in=0 \
    limit-bytes-out=0 name=Gorkogo25_23 password=1404551 profile=80m routes=\
    "" service=pppoe
add caller-id="" comment=0668884131 disabled=no limit-bytes-in=0 \
    limit-bytes-out=0 name=Gorkogo23_32 password=27401156 profile=80m routes=\
    "" service=pppoe
add caller-id="" comment=0955265101 disabled=no limit-bytes-in=0 \
    limit-bytes-out=0 name=Belousova3_10 password=651104 profile=80m routes=\
    "" service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    Shop_Shana_Gorkogo_18 password=670999459 profile=80m/80m routes="" \
    service=pppoe
add caller-id="" comment=0507482948 disabled=no limit-bytes-in=0 \
    limit-bytes-out=0 name=Petrovskogo28_26 password=041165 profile=80m \
    routes="" service=pppoe
add caller-id="" comment=0993403527 disabled=no limit-bytes-in=0 \
    limit-bytes-out=0 name=Gorkogo29_28 password=954999 profile=80m routes="" \
    service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    Belousova10_64 password=195895 profile=80m routes="" service=pppoe
add caller-id="" comment="0660597060 0997139592" disabled=no limit-bytes-in=0 \
    limit-bytes-out=0 name=Pushkinskaya297_67 password=053800 profile=80m \
    routes="" service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    Gorkogo25_17 password=767928 profile=80m routes="" service=pppoe
add caller-id="" disabled=yes limit-bytes-in=0 limit-bytes-out=0 name=\
    International464_35 password=638605 profile=80m routes="" service=pppoe
add caller-id="" comment=0506447977 disabled=no limit-bytes-in=0 \
    limit-bytes-out=0 name=Belousova8_4 password=5534826 profile=80m routes=\
    "" service=pppoe
add caller-id="" comment=0954562328 disabled=no limit-bytes-in=0 \
    limit-bytes-out=0 name=Belousova14_34 password=895218 profile=80m routes=\
    "" service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    Leningradskaya23_24 password=432553 profile=80m routes="" service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    Trudovaya430_34 password=742570 profile=80m routes="" service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    International464_40 password=160570 profile=80m routes="" service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    Gorkogo25_50 password=075061 profile=80m routes="" service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    Oktyabrskaya272_21 password=784018 profile=80m routes="" service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    Petrovskogo9_22 password=631660 profile=80m routes="" service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    Oktyabrskaya288_47 password=65178 profile=80m routes="" service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    Belousova6_11 password=60727 profile=80m routes="" service=pppoe
add caller-id="" comment=0509377041 disabled=no limit-bytes-in=0 \
    limit-bytes-out=0 name=Pervomayskaya291_13 password=901168 profile=80m \
    routes="" service=pppoe
add caller-id="" comment=0506964099 disabled=no limit-bytes-in=0 \
    limit-bytes-out=0 name=Belousova6_29 password=201861 profile=80m routes=\
    "" service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    test_set_1 password=test_set_1 profile=default routes="" service=pppoe
add caller-id="" comment=0996837367 disabled=no limit-bytes-in=0 \
    limit-bytes-out=0 name=Leningradskaya20_24 password=560372 profile=80m \
    routes="" service=pppoe
add caller-id="" comment=0509128034 disabled=no limit-bytes-in=0 \
    limit-bytes-out=0 name=Leningradskaya23_5 password=199725 profile=80m \
    routes="" service=pppoe
add caller-id="" comment=0502247590 disabled=no limit-bytes-in=0 \
    limit-bytes-out=0 name=Oktyabrskaya299_22 password=562809 profile=80m \
    routes="" service=pppoe
add caller-id="" comment=0952247199 disabled=no limit-bytes-in=0 \
    limit-bytes-out=0 name=Leningradskaya21_31 password=915372 profile=80m \
    routes="" service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    Petrovskogo11_82 password=403357 profile=80m routes="" service=pppoe
add caller-id="" comment=0507121755 disabled=no limit-bytes-in=0 \
    limit-bytes-out=0 name=Belousova6_46 password=246281 profile=80m routes=\
    "" service=pppoe
add caller-id="" comment=09511466675 disabled=no limit-bytes-in=0 \
    limit-bytes-out=0 name=Oktyabrskaya284_56 password=810299 profile=80m \
    routes="" service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    Oktyabrskaya280_76 password=235057 profile=80m routes="" service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    Gorkogo20_64 password=271915 profile=80m routes="" service=pppoe
add caller-id="" disabled=no limit-bytes-in=0 limit-bytes-out=0 name=\
    Trudovaya430_19 password=891452 profile=80m routes="" service=pppoe
