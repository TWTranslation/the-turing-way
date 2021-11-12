#!/usr/bin/env bash
definir -e # script de parada no erro

fazer site 
bundle exec htmlproofer --allow-hash-href \
--assume-extension ./_site \
--url-ignore "/\/apple-touch*.*/,/\/images/logo/favicon.ico/,/#*/" \
--disable-externo \
-apenas_4xx 

