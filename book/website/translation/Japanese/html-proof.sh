#!/usr/bin/env bash
-e # halt script on error

サイトを作る 
bundle exec htmlproofer --allow-hash-href \
--assume-extension ./_site \
--url-ignore "/\/apple-touch*.*/,//images/logo/favicon.ico/,/#*/" \
--disable-external \
--only_4xx 

