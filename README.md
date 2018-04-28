# kiwi-application
Application for the kiwi's weekend in the cloud

Build the docker image with following command:

```
docker build -t <IMAGE_NAME> .
```

Run it like this:

```
docker run --name <CONTAINER_NAME> -d -p 8443:443 <IMAGE_NAME> 
```

Access it like this:
https://localhost:8443


Private key and self-signed were created as outlined in [Let's Encrypt](https://letsencrypt.org/docs/certificates-for-localhost/) docs:

```
openssl req -x509 -out localhost.crt -keyout localhost.key \
  -newkey rsa:2048 -nodes -sha256 \
  -subj '/CN=localhost' -extensions EXT -config <( \
   printf "[dn]\nCN=localhost\n[req]\ndistinguished_name = dn\n[EXT]\nsubjectAltName=DNS:localhost\nkeyUsage=digitalSignature\nextendedKeyUsage=serverAuth")
   ```
   
  When using Chrome you may need to enable following property in order to access https websites backed with self-signed certificates on localhost:
   ```
   chrome://flags/#allow-insecure-localhost
   ```
   
   Firefox works just fine
   
