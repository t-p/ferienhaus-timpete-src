# Ferienhaus TimpeTe source code

## Howto deploy using docker 

1. Build site source

```bash
$ docker run --rm -it --volume="$PWD:/srv/jekyll" --volume="$PWD/vendor/bundle:/usr/local/bundle" jekyll/jekyll:3.8 jekyll build 
```

2. upload *_site* directory to S3
3. invalidate cache 

## Howto run locally
---

```bash
$ docker run --rm --volume="$PWD:/srv/jekyll" --volume="$PWD/vendor/bundle:/usr/local/bundle" -p 4000:4000 jekyll/jekyll:3.8 jekyll serve 
```

open http://localhost:4000