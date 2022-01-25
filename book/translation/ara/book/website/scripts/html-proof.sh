#!/usr/bin/env bash
تعيين -e # إيقاف البرنامج النصي عند الخطأ

إنشاء موقع 
حزمة exec htmlproofer --allow-hash-href \
--افترض-ملحق./_الموقع \
--تجاهل url "/\/apple-touch*.*/,/\/images/logo/favicon.ico/,/#*/" \
--ديناص-خارجي \
--فقط_4xx 

