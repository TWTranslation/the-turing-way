#!/usr/bin/env bash
set -e # stopt script en cas d'erreur

créer un site 
bundle exec htmlproofer --allow-hash-href \
--assume-extension ./_site \
--url-ignore "/\/apple-touch*.*/,/\/images/logo/favicon.ico/,/#*/" \
--disable-external \
--only_4xx 

