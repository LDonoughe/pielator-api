# Pielator API

## Overview
Translation API for Proto-Indo-European (PIE)

## Setup
install asdf plugins for postgres, nodejs, ruby

install yarn

```
asdf install
createdb `whoami`
bundle
rails db:setup
```

## Run
to run server:
`rails server`

# Running via Docker
For secure db credentials, please create `production.env` with `RAILS_ENV`, `PIELATOR_DB_USERNAME`, and `PIELATOR_DB_PASSWORD`
To setup:
`docker-compose up`

To stop:
`docker-compose down`

## Sources and Resources:
https://academiaprisca.org/en/resources/flexie-a-conjugator-of-modern-indo-european-verbs/
https://academiaprisca.org/en/resources/a-grammar-of-modern-indo-european/
https://indo-european.info/dictionary-translator/list.inc.php/Indo-European/English/0/
https://indogermanisch.org/woerterbuch-uebersetzer/list.inc.php/Indogermanisch/Deutsch/0/
