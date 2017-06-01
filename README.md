# Docker image for GA4GH reference server with 1000 Genomes Project data

## Running image

``` bash
docker run --detach --name ga4gh-1kgenomes --publish 80:80 --rm welliton/ga4gh-1kgenomes
```

## Buiding this image

``` bash
git clone git@github.com:labbcb/docker-ga4gh-1kgenomes.git
cd docker-ga4gh-1kgenomes/
# run download_data.sh script in data/ directory
docker build -t welliton/ga4gh-1kgenomes .
```