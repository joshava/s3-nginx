# s3-nginx

[![License][license_md]][license]
[![Travis CI][travis_ci]][travis]
[![Docker Pull][docker_pull]][docker]
[![Docker Star][docker_star]][docker]
[![Docker Size][docker_size]][docker]
[![Docker Layer][docker_layer]][docker]

Nginx proxy for public S3 bucket.

## Usage

```bash
sudo docker run --rm -e DOMAIN=example.com joshava/s3-nginx
```

[docker]: https://hub.docker.com/r/joshava/s3-nginx
[docker_pull]: https://img.shields.io/docker/pulls/joshava/s3-nginx.svg
[docker_star]: https://img.shields.io/docker/stars/joshava/s3-nginx.svg
[docker_size]: https://img.shields.io/microbadger/image-size/joshava/s3-nginx.svg
[docker_layer]: https://img.shields.io/microbadger/layers/joshava/s3-nginx.svg
[license]: https://github.com/joshava/s3-nginx/blob/master/LICENSE
[license_md]: https://img.shields.io/github/license/joshava/s3-nginx.svg
[travis]: https://travis-ci.org/joshava/s3-nginx
[travis_ci]: https://img.shields.io/travis/joshava/s3-nginx.svg
