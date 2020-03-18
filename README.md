# Docker xmrig Monero Ocean

Run MoneroOcean's custom XMRig Fork using Docker.

This image clones `https://github.com/MoneroOcean/xmrig` and builds it according to instructions.

## Usage

```shell
sudo chmod +x install.sh

./install.sh
```

## Docker Compose example

```yaml
version: "3.7"

services:
  xmrig-mo:
    image: lchaia/xmrig-mo:v5.0.0-mo1
    container_name: xmrig
    deploy:
      resources:
        limits:
          cpus: '0.50'
          memory: 4096M
        reservations: #DEJA FIJO EL MINO A USAR
          cpus: '0.25'
          memory: 2048M
    build:
      context: ./src
    command: --coin monero --url gulf.moneroocean.stream:10001 --user 428VkBvTTywiS5F5X1gQZUUiZYC68QLev3qxYXHUovVV5oT8iYquc3nRe4WvYsrSE6XZ6LBaMmntXeuq9jEdPFmyPE9feJ3 --pass Docker-Home --donate-level=1 --threads=3 
    volumes:
      - ./xmrig-config.json:/xmrig/config.json
```

## Copyrights

Code from this repository is released under MIT license.
xmrig code is released under GPL-3/MIT

## Donations

Please consider [donating to the xmrig team](https://github.com/xmrig/xmrig#donations).
Also consider donating to MoneroOcean Pool, or mining on it (Zero fees!)

## Disclaimer

I'm not associated to MoneroOcean or XMRig in anyway.
# docker-xmrig
# docker-xmrig
