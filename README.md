# tls-utils

Tools included:
* certigo: github.com/square/certigo

## Usage
Create a file called domains.conf and mount the folder containing it under /data
domains.conf will contain a list of domains (one per line)
Sample domains.conf
```
github.com
```

Check certificate validity
```
docker run --rm -t -v /tmp/data:/data:ro serbangilvitu/tls-utils:1.0.0 ./check-certificate-validity.sh
```