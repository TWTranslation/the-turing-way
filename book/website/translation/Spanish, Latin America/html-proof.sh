#!/usr/bin/env bash
establecer -e # detener script en error

crear sitio 
bundle exec htmlTester --allow-hash-href \
---extensión-m./_sitio \
--url-ignore "/\/apple-touch*.*/,/\/images/logo/favicon.ico/,/#*/" \
--disable-external \
--solo_4xx 

