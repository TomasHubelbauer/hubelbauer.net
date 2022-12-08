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
-----BEGIN CERTIFICATE-----
MIIFNTCCBB2gAwIBAgISA4SRqCZSBq5SB+J5IYGmdDrOMA0GCSqGSIb3DQEBCwUA
MDIxCzAJBgNVBAYTAlVTMRYwFAYDVQQKEw1MZXQncyBFbmNyeXB0MQswCQYDVQQD
EwJSMzAeFw0yMjExMDExNDU4MjNaFw0yMzAxMzAxNDU4MjJaMBkxFzAVBgNVBAMT
Dmh1YmVsYmF1ZXIubmV0MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA
q8cbDO3GAfjqqbPPCBdPost8NMRmEubv85gXecll7mZMH5qSfTPuB/ouFWL3tPMf
1U8usWeoSUK/48yatzBGwmj1KKlkaW9MS2QkydztRp+kH8LvbzbQvGknuOLWGHBA
LLT17o/3DYxuA5LnXdY+vLvJWygQoFr2N/XhnhUjcm6OaQEJpIykydfbBQGQSEuQ
IIw4egpgdHkYJjCOYAsXuSSggN8/FADTCec0RzVjfFTSoJ3hV9HLE9M8MCSXjuo0
AJ/MbAxq91S8XmDcRjHCCd7Zw+NjHo8cxZCQ6NqGvn3xwx8ahmmbC+CyDEcIyJJZ
K2Yv+qE4oS8QZfaX/RaHMwIDAQABo4ICXDCCAlgwDgYDVR0PAQH/BAQDAgWgMB0G
A1UdJQQWMBQGCCsGAQUFBwMBBggrBgEFBQcDAjAMBgNVHRMBAf8EAjAAMB0GA1Ud
DgQWBBRjThWFVlqklALCFkKkpZeaOAJXlzAfBgNVHSMEGDAWgBQULrMXt1hWy65Q
CUDmH6+dixTCxjBVBggrBgEFBQcBAQRJMEcwIQYIKwYBBQUHMAGGFWh0dHA6Ly9y
My5vLmxlbmNyLm9yZzAiBggrBgEFBQcwAoYWaHR0cDovL3IzLmkubGVuY3Iub3Jn
LzAtBgNVHREEJjAkgg5odWJlbGJhdWVyLm5ldIISd3d3Lmh1YmVsYmF1ZXIubmV0
MEwGA1UdIARFMEMwCAYGZ4EMAQIBMDcGCysGAQQBgt8TAQEBMCgwJgYIKwYBBQUH
AgEWGmh0dHA6Ly9jcHMubGV0c2VuY3J5cHQub3JnMIIBAwYKKwYBBAHWeQIEAgSB
9ASB8QDvAHUArfe++nz/EMiLnT2cHj4YarRnKV3PsQwkyoWGNOvcgooAAAGEM+pM
lAAABAMARjBEAiAsIFtgMDx1lHUWJGgTTfQLEmlziqqI1W+19hcbq3x4BAIgFWRj
HiqRUzpYDMdHC1yuESvENgGA7YwxgoIpx2rZXwoAdgC3Pvsk35xNunXyOcW6WPRs
XfxCz3qfNcSeHQmBJe20mQAAAYQz6k5bAAAEAwBHMEUCIQDNj77d10+2lD2s3k7g
Sw7Ybu2xHvLZaUpPAIK+dbIymwIgcxTHIFRUmmaFuSBNJ8FQ30JAGNROkPeVD8TE
wBAFWiAwDQYJKoZIhvcNAQELBQADggEBABX68IPb/rCSgAa3nbHgDkXz6zM8HDu+
Fv86Egpp6+XKyN7gjkh0eQ2Ifw3S1RJ2nSkLroE44c6mf/j1eTa2GvxKOw6oC9mm
LNHlAzHhUHpUn77XjCsDfOzRc8kAHg5627X4uFPr4JzQjvwqUi7G4MnPoSMnNAgs
ve5mtgtxAZglUFAd/9+4c5CuLyPUW7nVOjqNqI6+CPh+ESjXxKBDNdRKEbyBBPAM
ANbzWAgMjWV9pCd5ccHiINpnbvrUBnJ38KIr4d8BzUVfpYC75qvvzap8nLJwRydE
7Dr4rIQN18LZECGlnJ/5rx+cStUmyZ/XVWJOKadbpjPQThpb+jf9WXQ=
-----END CERTIFICATE-----
 1 s:C = US, O = Let's Encrypt, CN = R3
   i:C = US, O = Internet Security Research Group, CN = ISRG Root X1
-----BEGIN CERTIFICATE-----
MIIFFjCCAv6gAwIBAgIRAJErCErPDBinU/bWLiWnX1owDQYJKoZIhvcNAQELBQAw
TzELMAkGA1UEBhMCVVMxKTAnBgNVBAoTIEludGVybmV0IFNlY3VyaXR5IFJlc2Vh
cmNoIEdyb3VwMRUwEwYDVQQDEwxJU1JHIFJvb3QgWDEwHhcNMjAwOTA0MDAwMDAw
WhcNMjUwOTE1MTYwMDAwWjAyMQswCQYDVQQGEwJVUzEWMBQGA1UEChMNTGV0J3Mg
RW5jcnlwdDELMAkGA1UEAxMCUjMwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEK
AoIBAQC7AhUozPaglNMPEuyNVZLD+ILxmaZ6QoinXSaqtSu5xUyxr45r+XXIo9cP
R5QUVTVXjJ6oojkZ9YI8QqlObvU7wy7bjcCwXPNZOOftz2nwWgsbvsCUJCWH+jdx
sxPnHKzhm+/b5DtFUkWWqcFTzjTIUu61ru2P3mBw4qVUq7ZtDpelQDRrK9O8Zutm
NHz6a4uPVymZ+DAXXbpyb/uBxa3Shlg9F8fnCbvxK/eG3MHacV3URuPMrSXBiLxg
Z3Vms/EY96Jc5lP/Ooi2R6X/ExjqmAl3P51T+c8B5fWmcBcUr2Ok/5mzk53cU6cG
/kiFHaFpriV1uxPMUgP17VGhi9sVAgMBAAGjggEIMIIBBDAOBgNVHQ8BAf8EBAMC
AYYwHQYDVR0lBBYwFAYIKwYBBQUHAwIGCCsGAQUFBwMBMBIGA1UdEwEB/wQIMAYB
Af8CAQAwHQYDVR0OBBYEFBQusxe3WFbLrlAJQOYfr52LFMLGMB8GA1UdIwQYMBaA
FHm0WeZ7tuXkAXOACIjIGlj26ZtuMDIGCCsGAQUFBwEBBCYwJDAiBggrBgEFBQcw
AoYWaHR0cDovL3gxLmkubGVuY3Iub3JnLzAnBgNVHR8EIDAeMBygGqAYhhZodHRw
Oi8veDEuYy5sZW5jci5vcmcvMCIGA1UdIAQbMBkwCAYGZ4EMAQIBMA0GCysGAQQB
gt8TAQEBMA0GCSqGSIb3DQEBCwUAA4ICAQCFyk5HPqP3hUSFvNVneLKYY611TR6W
PTNlclQtgaDqw+34IL9fzLdwALduO/ZelN7kIJ+m74uyA+eitRY8kc607TkC53wl
ikfmZW4/RvTZ8M6UK+5UzhK8jCdLuMGYL6KvzXGRSgi3yLgjewQtCPkIVz6D2QQz
CkcheAmCJ8MqyJu5zlzyZMjAvnnAT45tRAxekrsu94sQ4egdRCnbWSDtY7kh+BIm
lJNXoB1lBMEKIq4QDUOXoRgffuDghje1WrG9ML+Hbisq/yFOGwXD9RiX8F6sw6W4
avAuvDszue5L3sz85K+EC4Y/wFVDNvZo4TYXao6Z0f+lQKc0t8DQYzk1OXVu8rp2
yJMC6alLbBfODALZvYH7n7do1AZls4I9d1P4jnkDrQoxB3UqQ9hVl3LEKQ73xF1O
yK5GhDDX8oVfGKF5u+decIsH4YaTw7mP3GFxJSqv3+0lUFJoi5Lc5da149p90Ids
hCExroL1+7mryIkXPeFM5TgO9r0rvZaBFOvV2z0gp35Z0+L4WPlbuEjN/lxPFin+
HlUjr8gRsI3qfJOQFy/9rKIJR0Y/8Omwt/8oTWgy1mdeHmmjk7j1nYsvC9JSQ6Zv
MldlTTKB3zhThV1+XWYp6rjd5JW1zbVWEkLNxE7GJThEUG3szgBVGP7pSWTUTsqX
nLRbwHOoq7hHwg==
-----END CERTIFICATE-----
 2 s:C = US, O = Internet Security Research Group, CN = ISRG Root X1
   i:O = Digital Signature Trust Co., CN = DST Root CA X3
-----BEGIN CERTIFICATE-----
MIIFYDCCBEigAwIBAgIQQAF3ITfU6UK47naqPGQKtzANBgkqhkiG9w0BAQsFADA/
MSQwIgYDVQQKExtEaWdpdGFsIFNpZ25hdHVyZSBUcnVzdCBDby4xFzAVBgNVBAMT
DkRTVCBSb290IENBIFgzMB4XDTIxMDEyMDE5MTQwM1oXDTI0MDkzMDE4MTQwM1ow
TzELMAkGA1UEBhMCVVMxKTAnBgNVBAoTIEludGVybmV0IFNlY3VyaXR5IFJlc2Vh
cmNoIEdyb3VwMRUwEwYDVQQDEwxJU1JHIFJvb3QgWDEwggIiMA0GCSqGSIb3DQEB
AQUAA4ICDwAwggIKAoICAQCt6CRz9BQ385ueK1coHIe+3LffOJCMbjzmV6B493XC
ov71am72AE8o295ohmxEk7axY/0UEmu/H9LqMZshftEzPLpI9d1537O4/xLxIZpL
wYqGcWlKZmZsj348cL+tKSIG8+TA5oCu4kuPt5l+lAOf00eXfJlII1PoOK5PCm+D
LtFJV4yAdLbaL9A4jXsDcCEbdfIwPPqPrt3aY6vrFk/CjhFLfs8L6P+1dy70sntK
4EwSJQxwjQMpoOFTJOwT2e4ZvxCzSow/iaNhUd6shweU9GNx7C7ib1uYgeGJXDR5
bHbvO5BieebbpJovJsXQEOEO3tkQjhb7t/eo98flAgeYjzYIlefiN5YNNnWe+w5y
sR2bvAP5SQXYgd0FtCrWQemsAXaVCg/Y39W9Eh81LygXbNKYwagJZHduRze6zqxZ
Xmidf3LWicUGQSk+WT7dJvUkyRGnWqNMQB9GoZm1pzpRboY7nn1ypxIFeFntPlF4
FQsDj43QLwWyPntKHEtzBRL8xurgUBN8Q5N0s8p0544fAQjQMNRbcTa0B7rBMDBc
SLeCO5imfWCKoqMpgsy6vYMEG6KDA0Gh1gXxG8K28Kh8hjtGqEgqiNx2mna/H2ql
PRmP6zjzZN7IKw0KKP/32+IVQtQi0Cdd4Xn+GOdwiK1O5tmLOsbdJ1Fu/7xk9TND
TwIDAQABo4IBRjCCAUIwDwYDVR0TAQH/BAUwAwEB/zAOBgNVHQ8BAf8EBAMCAQYw
SwYIKwYBBQUHAQEEPzA9MDsGCCsGAQUFBzAChi9odHRwOi8vYXBwcy5pZGVudHJ1
c3QuY29tL3Jvb3RzL2RzdHJvb3RjYXgzLnA3YzAfBgNVHSMEGDAWgBTEp7Gkeyxx
+tvhS5B1/8QVYIWJEDBUBgNVHSAETTBLMAgGBmeBDAECATA/BgsrBgEEAYLfEwEB
ATAwMC4GCCsGAQUFBwIBFiJodHRwOi8vY3BzLnJvb3QteDEubGV0c2VuY3J5cHQu
b3JnMDwGA1UdHwQ1MDMwMaAvoC2GK2h0dHA6Ly9jcmwuaWRlbnRydXN0LmNvbS9E
U1RST09UQ0FYM0NSTC5jcmwwHQYDVR0OBBYEFHm0WeZ7tuXkAXOACIjIGlj26Ztu
MA0GCSqGSIb3DQEBCwUAA4IBAQAKcwBslm7/DlLQrt2M51oGrS+o44+/yQoDFVDC
5WxCu2+b9LRPwkSICHXM6webFGJueN7sJ7o5XPWioW5WlHAQU7G75K/QosMrAdSW
9MUgNTP52GE24HGNtLi1qoJFlcDyqSMo59ahy2cI2qBDLKobkx/J3vWraV0T9VuG
WCLKTVXkcGdtwlfFRjlBz4pYg1htmf5X6DYO8A4jqv2Il9DjXA6USbW1FzXSLr9O
he8Y4IWS6wY7bCkjCWDcRQJMEhg76fsO3txE+FiYruq9RUWhiF1myv4Q6W+CyBFC
Dfvp7OOGAN6dEOM4+qR9sdjoSYKEBpsr6GtPAQw4dy753ec5
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
SSL handshake has read 4593 bytes and written 386 bytes
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
read R BLOCK"

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
    OUTPUT+="$LINE\n"

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
    OUTPUT+="$TEXT\n"

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

  OUTPUT+="$LINE\n"
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
