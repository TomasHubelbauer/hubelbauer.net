# Note that the output of the command used here gives different results based on
# whether it has run on the pipeline agent or my Mac, but it always gives the
# same output on the same machine. I have used the pipeline agent output here as
# that's where it needs to run correctly and I can always change it for local
# debugging if need be.
PATTERN="CONNECTED(00000003)
---
Certificate chain
 0 s:CN = hubelbauer.net
   i:C = US, O = Let's Encrypt, CN = R3
   a:PKEY: rsaEncryption, 2048 (bit); sigalg: RSA-SHA256
   v:NotBefore: Nov  1 14:58:23 2022 GMT; NotAfter: Jan 30 14:58:22 2023 GMT
-----BEGIN CERTIFICATE-----
Certificate:
    Data:
        Version: 3 (0x2)
        Serial Number:
            03:84:91:a8:26:52:06:ae:52:07:e2:79:21:81:a6:74:3a:ce
        Signature Algorithm: sha256WithRSAEncryption
        Issuer: C = US, O = Let's Encrypt, CN = R3
        Validity
            Not Before: Nov  1 14:58:23 2022 GMT
            Not After : Jan 30 14:58:22 2023 GMT
        Subject: CN = hubelbauer.net
        Subject Public Key Info:
            Public Key Algorithm: rsaEncryption
                Public-Key: (2048 bit)
                Modulus:
                    00:ab:c7:1b:0c:ed:c6:01:f8:ea:a9:b3:cf:08:17:
                    4f:a2:cb:7c:34:c4:66:12:e6:ef:f3:98:17:79:c9:
                    65:ee:66:4c:1f:9a:92:7d:33:ee:07:fa:2e:15:62:
                    f7:b4:f3:1f:d5:4f:2e:b1:67:a8:49:42:bf:e3:cc:
                    9a:b7:30:46:c2:68:f5:28:a9:64:69:6f:4c:4b:64:
                    24:c9:dc:ed:46:9f:a4:1f:c2:ef:6f:36:d0:bc:69:
                    27:b8:e2:d6:18:70:40:2c:b4:f5:ee:8f:f7:0d:8c:
                    6e:03:92:e7:5d:d6:3e:bc:bb:c9:5b:28:10:a0:5a:
                    f6:37:f5:e1:9e:15:23:72:6e:8e:69:01:09:a4:8c:
                    a4:c9:d7:db:05:01:90:48:4b:90:20:8c:38:7a:0a:
                    60:74:79:18:26:30:8e:60:0b:17:b9:24:a0:80:df:
                    3f:14:00:d3:09:e7:34:47:35:63:7c:54:d2:a0:9d:
                    e1:57:d1:cb:13:d3:3c:30:24:97:8e:ea:34:00:9f:
                    cc:6c:0c:6a:f7:54:bc:5e:60:dc:46:31:c2:09:de:
                    d9:c3:e3:63:1e:8f:1c:c5:90:90:e8:da:86:be:7d:
                    f1:c3:1f:1a:86:69:9b:0b:e0:b2:0c:47:08:c8:92:
                    59:2b:66:2f:fa:a1:38:a1:2f:10:65:f6:97:fd:16:
                    87:33
                Exponent: 65537 (0x10001)
        X509v3 extensions:
            X509v3 Key Usage: critical
                Digital Signature, Key Encipherment
            X509v3 Extended Key Usage: 
                TLS Web Server Authentication, TLS Web Client Authentication
            X509v3 Basic Constraints: critical
                CA:FALSE
            X509v3 Subject Key Identifier: 
                63:4E:15:85:56:5A:A4:94:02:C2:16:42:A4:A5:97:9A:38:02:57:97
            X509v3 Authority Key Identifier: 
                14:2E:B3:17:B7:58:56:CB:AE:50:09:40:E6:1F:AF:9D:8B:14:C2:C6
            Authority Information Access: 
                OCSP - URI:http://r3.o.lencr.org
                CA Issuers - URI:http://r3.i.lencr.org/
            X509v3 Subject Alternative Name: 
                DNS:hubelbauer.net, DNS:www.hubelbauer.net
            X509v3 Certificate Policies: 
                Policy: 2.23.140.1.2.1
                Policy: 1.3.6.1.4.1.44947.1.1.1
                  CPS: http://cps.letsencrypt.org
            CT Precertificate SCTs: 
                Signed Certificate Timestamp:
                    Version   : v1 (0x0)
                    Log ID    : AD:F7:BE:FA:7C:FF:10:C8:8B:9D:3D:9C:1E:3E:18:6A:
                                B4:67:29:5D:CF:B1:0C:24:CA:85:86:34:EB:DC:82:8A
                    Timestamp : Nov  1 15:58:23.892 2022 GMT
                    Extensions: none
                    Signature : ecdsa-with-SHA256
                                30:44:02:20:2C:20:5B:60:30:3C:75:94:75:16:24:68:
                                13:4D:F4:0B:12:69:73:8A:AA:88:D5:6F:B5:F6:17:1B:
                                AB:7C:78:04:02:20:15:64:63:1E:2A:91:53:3A:58:0C:
                                C7:47:0B:5C:AE:11:2B:C4:36:01:80:ED:8C:31:82:82:
                                29:C7:6A:D9:5F:0A
                Signed Certificate Timestamp:
                    Version   : v1 (0x0)
                    Log ID    : B7:3E:FB:24:DF:9C:4D:BA:75:F2:39:C5:BA:58:F4:6C:
                                5D:FC:42:CF:7A:9F:35:C4:9E:1D:09:81:25:ED:B4:99
                    Timestamp : Nov  1 15:58:24.347 2022 GMT
                    Extensions: none
                    Signature : ecdsa-with-SHA256
                                30:45:02:21:00:CD:8F:BE:DD:D7:4F:B6:94:3D:AC:DE:
                                4E:E0:4B:0E:D8:6E:ED:B1:1E:F2:D9:69:4A:4F:00:82:
                                BE:75:B2:32:9B:02:20:73:14:C7:20:54:54:9A:66:85:
                                B9:20:4D:27:C1:50:DF:42:40:18:D4:4E:90:F7:95:0F:
                                C4:C4:C0:10:05:5A:20
    Signature Algorithm: sha256WithRSAEncryption
    Signature Value:
        15:fa:f0:83:db:fe:b0:92:80:06:b7:9d:b1:e0:0e:45:f3:eb:
        33:3c:1c:3b:be:16:ff:3a:12:0a:69:eb:e5:ca:c8:de:e0:8e:
        48:74:79:0d:88:7f:0d:d2:d5:12:76:9d:29:0b:ae:81:38:e1:
        ce:a6:7f:f8:f5:79:36:b6:1a:fc:4a:3b:0e:a8:0b:d9:a6:2c:
        d1:e5:03:31:e1:50:7a:54:9f:be:d7:8c:2b:03:7c:ec:d1:73:
        c9:00:1e:0e:7a:db:b5:f8:b8:53:eb:e0:9c:d0:8e:fc:2a:52:
        2e:c6:e0:c9:cf:a1:23:27:34:08:2c:bd:ee:66:b6:0b:71:01:
        98:25:50:50:1d:ff:df:b8:73:90:ae:2f:23:d4:5b:b9:d5:3a:
        3a:8d:a8:8e:be:08:f8:7e:11:28:d7:c4:a0:43:35:d4:4a:11:
        bc:81:04:f0:0c:00:d6:f3:58:08:0c:8d:65:7d:a4:27:79:71:
        c1:e2:20:da:67:6e:fa:d4:06:72:77:f0:a2:2b:e1:df:01:cd:
        45:5f:a5:80:bb:e6:ab:ef:cd:aa:7c:9c:b2:70:47:27:44:ec:
        3a:f8:ac:84:0d:d7:c2:d9:10:21:a5:9c:9f:f9:af:1f:9c:4a:
        d5:26:c9:9f:d7:55:62:4e:29:a7:5b:a6:33:d0:4e:1a:5b:fa:
        37:fd:59:74
-----END CERTIFICATE-----
 1 s:C = US, O = Let's Encrypt, CN = R3
   i:C = US, O = Internet Security Research Group, CN = ISRG Root X1
   a:PKEY: rsaEncryption, 2048 (bit); sigalg: RSA-SHA256
   v:NotBefore: Sep  4 00:00:00 2020 GMT; NotAfter: Sep 15 16:00:00 2025 GMT
-----BEGIN CERTIFICATE-----
Certificate:
    Data:
        Version: 3 (0x2)
        Serial Number:
            91:2b:08:4a:cf:0c:18:a7:53:f6:d6:2e:25:a7:5f:5a
        Signature Algorithm: sha256WithRSAEncryption
        Issuer: C = US, O = Internet Security Research Group, CN = ISRG Root X1
        Validity
            Not Before: Sep  4 00:00:00 2020 GMT
            Not After : Sep 15 16:00:00 2025 GMT
        Subject: C = US, O = Let's Encrypt, CN = R3
        Subject Public Key Info:
            Public Key Algorithm: rsaEncryption
                Public-Key: (2048 bit)
                Modulus:
                    00:bb:02:15:28:cc:f6:a0:94:d3:0f:12:ec:8d:55:
                    92:c3:f8:82:f1:99:a6:7a:42:88:a7:5d:26:aa:b5:
                    2b:b9:c5:4c:b1:af:8e:6b:f9:75:c8:a3:d7:0f:47:
                    94:14:55:35:57:8c:9e:a8:a2:39:19:f5:82:3c:42:
                    a9:4e:6e:f5:3b:c3:2e:db:8d:c0:b0:5c:f3:59:38:
                    e7:ed:cf:69:f0:5a:0b:1b:be:c0:94:24:25:87:fa:
                    37:71:b3:13:e7:1c:ac:e1:9b:ef:db:e4:3b:45:52:
                    45:96:a9:c1:53:ce:34:c8:52:ee:b5:ae:ed:8f:de:
                    60:70:e2:a5:54:ab:b6:6d:0e:97:a5:40:34:6b:2b:
                    d3:bc:66:eb:66:34:7c:fa:6b:8b:8f:57:29:99:f8:
                    30:17:5d:ba:72:6f:fb:81:c5:ad:d2:86:58:3d:17:
                    c7:e7:09:bb:f1:2b:f7:86:dc:c1:da:71:5d:d4:46:
                    e3:cc:ad:25:c1:88:bc:60:67:75:66:b3:f1:18:f7:
                    a2:5c:e6:53:ff:3a:88:b6:47:a5:ff:13:18:ea:98:
                    09:77:3f:9d:53:f9:cf:01:e5:f5:a6:70:17:14:af:
                    63:a4:ff:99:b3:93:9d:dc:53:a7:06:fe:48:85:1d:
                    a1:69:ae:25:75:bb:13:cc:52:03:f5:ed:51:a1:8b:
                    db:15
                Exponent: 65537 (0x10001)
        X509v3 extensions:
            X509v3 Key Usage: critical
                Digital Signature, Certificate Sign, CRL Sign
            X509v3 Extended Key Usage: 
                TLS Web Client Authentication, TLS Web Server Authentication
            X509v3 Basic Constraints: critical
                CA:TRUE, pathlen:0
            X509v3 Subject Key Identifier: 
                14:2E:B3:17:B7:58:56:CB:AE:50:09:40:E6:1F:AF:9D:8B:14:C2:C6
            X509v3 Authority Key Identifier: 
                79:B4:59:E6:7B:B6:E5:E4:01:73:80:08:88:C8:1A:58:F6:E9:9B:6E
            Authority Information Access: 
                CA Issuers - URI:http://x1.i.lencr.org/
            X509v3 CRL Distribution Points: 
                Full Name:
                  URI:http://x1.c.lencr.org/
            X509v3 Certificate Policies: 
                Policy: 2.23.140.1.2.1
                Policy: 1.3.6.1.4.1.44947.1.1.1
    Signature Algorithm: sha256WithRSAEncryption
    Signature Value:
        85:ca:4e:47:3e:a3:f7:85:44:85:bc:d5:67:78:b2:98:63:ad:
        75:4d:1e:96:3d:33:65:72:54:2d:81:a0:ea:c3:ed:f8:20:bf:
        5f:cc:b7:70:00:b7:6e:3b:f6:5e:94:de:e4:20:9f:a6:ef:8b:
        b2:03:e7:a2:b5:16:3c:91:ce:b4:ed:39:02:e7:7c:25:8a:47:
        e6:65:6e:3f:46:f4:d9:f0:ce:94:2b:ee:54:ce:12:bc:8c:27:
        4b:b8:c1:98:2f:a2:af:cd:71:91:4a:08:b7:c8:b8:23:7b:04:
        2d:08:f9:08:57:3e:83:d9:04:33:0a:47:21:78:09:82:27:c3:
        2a:c8:9b:b9:ce:5c:f2:64:c8:c0:be:79:c0:4f:8e:6d:44:0c:
        5e:92:bb:2e:f7:8b:10:e1:e8:1d:44:29:db:59:20:ed:63:b9:
        21:f8:12:26:94:93:57:a0:1d:65:04:c1:0a:22:ae:10:0d:43:
        97:a1:18:1f:7e:e0:e0:86:37:b5:5a:b1:bd:30:bf:87:6e:2b:
        2a:ff:21:4e:1b:05:c3:f5:18:97:f0:5e:ac:c3:a5:b8:6a:f0:
        2e:bc:3b:33:b9:ee:4b:de:cc:fc:e4:af:84:0b:86:3f:c0:55:
        43:36:f6:68:e1:36:17:6a:8e:99:d1:ff:a5:40:a7:34:b7:c0:
        d0:63:39:35:39:75:6e:f2:ba:76:c8:93:02:e9:a9:4b:6c:17:
        ce:0c:02:d9:bd:81:fb:9f:b7:68:d4:06:65:b3:82:3d:77:53:
        f8:8e:79:03:ad:0a:31:07:75:2a:43:d8:55:97:72:c4:29:0e:
        f7:c4:5d:4e:c8:ae:46:84:30:d7:f2:85:5f:18:a1:79:bb:e7:
        5e:70:8b:07:e1:86:93:c3:b9:8f:dc:61:71:25:2a:af:df:ed:
        25:50:52:68:8b:92:dc:e5:d6:b5:e3:da:7d:d0:87:6c:84:21:
        31:ae:82:f5:fb:b9:ab:c8:89:17:3d:e1:4c:e5:38:0e:f6:bd:
        2b:bd:96:81:14:eb:d5:db:3d:20:a7:7e:59:d3:e2:f8:58:f9:
        5b:b8:48:cd:fe:5c:4f:16:29:fe:1e:55:23:af:c8:11:b0:8d:
        ea:7c:93:90:17:2f:fd:ac:a2:09:47:46:3f:f0:e9:b0:b7:ff:
        28:4d:68:32:d6:67:5e:1e:69:a3:93:b8:f5:9d:8b:2f:0b:d2:
        52:43:a6:6f:32:57:65:4d:32:81:df:38:53:85:5d:7e:5d:66:
        29:ea:b8:dd:e4:95:b5:cd:b5:56:12:42:cd:c4:4e:c6:25:38:
        44:50:6d:ec:ce:00:55:18:fe:e9:49:64:d4:4e:ca:97:9c:b4:
        5b:c0:73:a8:ab:b8:47:c2
-----END CERTIFICATE-----
 2 s:C = US, O = Internet Security Research Group, CN = ISRG Root X1
   i:O = Digital Signature Trust Co., CN = DST Root CA X3
   a:PKEY: rsaEncryption, 4096 (bit); sigalg: RSA-SHA256
   v:NotBefore: Jan 20 19:14:03 2021 GMT; NotAfter: Sep 30 18:14:03 2024 GMT
-----BEGIN CERTIFICATE-----
Certificate:
    Data:
        Version: 3 (0x2)
        Serial Number:
            40:01:77:21:37:d4:e9:42:b8:ee:76:aa:3c:64:0a:b7
        Signature Algorithm: sha256WithRSAEncryption
        Issuer: O = Digital Signature Trust Co., CN = DST Root CA X3
        Validity
            Not Before: Jan 20 19:14:03 2021 GMT
            Not After : Sep 30 18:14:03 2024 GMT
        Subject: C = US, O = Internet Security Research Group, CN = ISRG Root X1
        Subject Public Key Info:
            Public Key Algorithm: rsaEncryption
                Public-Key: (4096 bit)
                Modulus:
                    00:ad:e8:24:73:f4:14:37:f3:9b:9e:2b:57:28:1c:
                    87:be:dc:b7:df:38:90:8c:6e:3c:e6:57:a0:78:f7:
                    75:c2:a2:fe:f5:6a:6e:f6:00:4f:28:db:de:68:86:
                    6c:44:93:b6:b1:63:fd:14:12:6b:bf:1f:d2:ea:31:
                    9b:21:7e:d1:33:3c:ba:48:f5:dd:79:df:b3:b8:ff:
                    12:f1:21:9a:4b:c1:8a:86:71:69:4a:66:66:6c:8f:
                    7e:3c:70:bf:ad:29:22:06:f3:e4:c0:e6:80:ae:e2:
                    4b:8f:b7:99:7e:94:03:9f:d3:47:97:7c:99:48:23:
                    53:e8:38:ae:4f:0a:6f:83:2e:d1:49:57:8c:80:74:
                    b6:da:2f:d0:38:8d:7b:03:70:21:1b:75:f2:30:3c:
                    fa:8f:ae:dd:da:63:ab:eb:16:4f:c2:8e:11:4b:7e:
                    cf:0b:e8:ff:b5:77:2e:f4:b2:7b:4a:e0:4c:12:25:
                    0c:70:8d:03:29:a0:e1:53:24:ec:13:d9:ee:19:bf:
                    10:b3:4a:8c:3f:89:a3:61:51:de:ac:87:07:94:f4:
                    63:71:ec:2e:e2:6f:5b:98:81:e1:89:5c:34:79:6c:
                    76:ef:3b:90:62:79:e6:db:a4:9a:2f:26:c5:d0:10:
                    e1:0e:de:d9:10:8e:16:fb:b7:f7:a8:f7:c7:e5:02:
                    07:98:8f:36:08:95:e7:e2:37:96:0d:36:75:9e:fb:
                    0e:72:b1:1d:9b:bc:03:f9:49:05:d8:81:dd:05:b4:
                    2a:d6:41:e9:ac:01:76:95:0a:0f:d8:df:d5:bd:12:
                    1f:35:2f:28:17:6c:d2:98:c1:a8:09:64:77:6e:47:
                    37:ba:ce:ac:59:5e:68:9d:7f:72:d6:89:c5:06:41:
                    29:3e:59:3e:dd:26:f5:24:c9:11:a7:5a:a3:4c:40:
                    1f:46:a1:99:b5:a7:3a:51:6e:86:3b:9e:7d:72:a7:
                    12:05:78:59:ed:3e:51:78:15:0b:03:8f:8d:d0:2f:
                    05:b2:3e:7b:4a:1c:4b:73:05:12:fc:c6:ea:e0:50:
                    13:7c:43:93:74:b3:ca:74:e7:8e:1f:01:08:d0:30:
                    d4:5b:71:36:b4:07:ba:c1:30:30:5c:48:b7:82:3b:
                    98:a6:7d:60:8a:a2:a3:29:82:cc:ba:bd:83:04:1b:
                    a2:83:03:41:a1:d6:05:f1:1b:c2:b6:f0:a8:7c:86:
                    3b:46:a8:48:2a:88:dc:76:9a:76:bf:1f:6a:a5:3d:
                    19:8f:eb:38:f3:64:de:c8:2b:0d:0a:28:ff:f7:db:
                    e2:15:42:d4:22:d0:27:5d:e1:79:fe:18:e7:70:88:
                    ad:4e:e6:d9:8b:3a:c6:dd:27:51:6e:ff:bc:64:f5:
                    33:43:4f
                Exponent: 65537 (0x10001)
        X509v3 extensions:
            X509v3 Basic Constraints: critical
                CA:TRUE
            X509v3 Key Usage: critical
                Certificate Sign, CRL Sign
            Authority Information Access: 
                CA Issuers - URI:http://apps.identrust.com/roots/dstrootcax3.p7c
            X509v3 Authority Key Identifier: 
                C4:A7:B1:A4:7B:2C:71:FA:DB:E1:4B:90:75:FF:C4:15:60:85:89:10
            X509v3 Certificate Policies: 
                Policy: 2.23.140.1.2.1
                Policy: 1.3.6.1.4.1.44947.1.1.1
                  CPS: http://cps.root-x1.letsencrypt.org
            X509v3 CRL Distribution Points: 
                Full Name:
                  URI:http://crl.identrust.com/DSTROOTCAX3CRL.crl
            X509v3 Subject Key Identifier: 
                79:B4:59:E6:7B:B6:E5:E4:01:73:80:08:88:C8:1A:58:F6:E9:9B:6E
    Signature Algorithm: sha256WithRSAEncryption
    Signature Value:
        0a:73:00:6c:96:6e:ff:0e:52:d0:ae:dd:8c:e7:5a:06:ad:2f:
        a8:e3:8f:bf:c9:0a:03:15:50:c2:e5:6c:42:bb:6f:9b:f4:b4:
        4f:c2:44:88:08:75:cc:eb:07:9b:14:62:6e:78:de:ec:27:ba:
        39:5c:f5:a2:a1:6e:56:94:70:10:53:b1:bb:e4:af:d0:a2:c3:
        2b:01:d4:96:f4:c5:20:35:33:f9:d8:61:36:e0:71:8d:b4:b8:
        b5:aa:82:45:95:c0:f2:a9:23:28:e7:d6:a1:cb:67:08:da:a0:
        43:2c:aa:1b:93:1f:c9:de:f5:ab:69:5d:13:f5:5b:86:58:22:
        ca:4d:55:e4:70:67:6d:c2:57:c5:46:39:41:cf:8a:58:83:58:
        6d:99:fe:57:e8:36:0e:f0:0e:23:aa:fd:88:97:d0:e3:5c:0e:
        94:49:b5:b5:17:35:d2:2e:bf:4e:85:ef:18:e0:85:92:eb:06:
        3b:6c:29:23:09:60:dc:45:02:4c:12:18:3b:e9:fb:0e:de:dc:
        44:f8:58:98:ae:ea:bd:45:45:a1:88:5d:66:ca:fe:10:e9:6f:
        82:c8:11:42:0d:fb:e9:ec:e3:86:00:de:9d:10:e3:38:fa:a4:
        7d:b1:d8:e8:49:82:84:06:9b:2b:e8:6b:4f:01:0c:38:77:2e:
        f9:dd:e7:39
-----END CERTIFICATE-----
---
Server certificate
subject=CN = hubelbauer.net
issuer=C = US, O = Let's Encrypt, CN = R3
---
No client certificate CA names sent
Peer signing digest: SHA256
Peer signature type: RSA-PSS
Server Temp Key: X25519, 253 bits
---
SSL handshake has read 4593 bytes and written 396 bytes
Verification: OK
---
New, TLSv1.3, Cipher is TLS_AES_256_GCM_SHA384
Server public key is 2048 bit
Secure Renegotiation IS NOT supported
Compression: NONE
Expansion: NONE
No ALPN negotiated
Early data was not sent
Verify return code: 0 (ok)
---
---
Post-Handshake New Session Ticket arrived:
SSL-Session:

---
read R BLOCK
"

# Send the `echo` to `openssl s_client`` otherwise it will wait for user input
# Remove `SSL-Session` section items as they vary across runs and are irrelevant
RAW=`echo | openssl s_client -showcerts -connect hubelbauer.net:443 | grep -v "^    "`

OUTPUT=''

# Convert BASE64 lines of certificate information into textual representation
while IFS= read -r LINE; do
  # Recognize start of BASE64 line set and mark the state variable tracking it
  if [[ "$LINE" == "-----BEGIN CERTIFICATE-----" ]]; then
    # Reset the temporary certificate file cert.crt - marker will be added below
    echo "" > cert.crt

    # Print the original line to the output to delineate the start of the cert
    OUTPUT+="$LINE
"

    # Mark the state signifying reading the BASE64 line set without printing it
    BASE64=1
  fi

  # Recognize end of BASE64 line set and dump the BASE64 text translation out
  if [[ "$LINE" == "-----END CERTIFICATE-----" ]]; then
    # Add the end of the certificate marker to the temporary certificate file
    echo "$LINE" >> cert.crt

    # Run the command to convert the lines to certificate textual representation
    # Use `-noout` to make sure the certificate BASE64 is not in the output too
    TEXT=`openssl x509 -in cert.crt -text -noout`

    # Print the output of the `openssl -text` command to replace the BASE64 text
    OUTPUT+="$TEXT
"

    # Delete the certificate temporary file to leave the FS tidy after our run
    rm cert.crt

    # Unmark the state tracking that we're in the BASE64 block of the text
    unset BASE64
  fi

  # Redirect the BASE64 lines to the temporary certificate content file cert.crt
  if [[ $BASE64 ]]; then
    echo "$LINE" >> cert.crt

    # Ignore the last statement in the loop to not print the BASE64 lines out
    continue
  fi

  OUTPUT+="$LINE
"
done <<< "$RAW"

echo "Output:"
echo "$OUTPUT" | tee output
echo

echo "Pattern:"
echo "$PATTERN" | tee pattern
echo

if [ "$OUTPUT" == "$PATTERN" ]; then
  echo "Match!"
else
  echo "Not a match!"
  exit 1
fi
