# reverse-proxy-example
Example of setting up a reverse proxy using Apache server with Python Flask as the proxied application

To run:

```
docker build -t apache .

docker run --rm -p 80:80  --name apache -it apache

# to reach Apache:
curl -i http://localhost/

# to reach Flask:
curl -i http://localhost/prefix_to_match/flask_app

# to get a redirect from Flask:
curl -i http://localhost/prefix_to_match/flask_redir

```