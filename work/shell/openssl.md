# openssl

```text

#加密压缩
tar -czf - test | openssl enc -e -aes256 -out test.temp
openssl enc -d -aes256 -in test.temp | tar xz -C .
```



