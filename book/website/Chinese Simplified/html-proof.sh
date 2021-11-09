#!/usr/bin/env bash
设置-e # 错误时停止脚本

制作站点 
bundle exec htmlproofer --allow-hash-href \
--assume-extension ./_site \
--url-忽略 "/\/apple-touch*.*/,/\/images/logo/favigicon.ico/,/#*/"
--disable-external \
--only 4xx 

