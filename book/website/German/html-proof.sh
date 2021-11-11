#!/usr/bin/env bash
setze -e # Skript halten bei Fehler

erstelle Seite 
bundle exec htmlproofer --allow-hash-href \
--assume-Erweiterung ./_site \
--url-ignore "/\/apple-touch*.*/,/\/images/logo/favicon.ico/,/#*/" \
--extern deaktivieren \
--Nur 4xx 

