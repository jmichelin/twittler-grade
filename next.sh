#!/usr/bin/env bash
Students=( 'leemichelle' 'Mikaylahasal' 'MikeTemme' 'minak66' 'pat-doyle' 'rockyd8' 'sean-bellinger' 'Stephaniee2' 'stevenchung213' 'sveta0112' 'taylorhasal' 'datusername1' 'vyoung415' 'vintg' 'vvek87' )
for i in "${Students[@]}"; do
    mkdir $i
    cd $i
    git init
    echo "Updating code for user $i"
    git remote add $i git@github.com:$i/hrext-twittler
    echo "Git remote added"
    git fetch $i master
    echo "Master fetched"
    git reset --hard $i/master
    cd ..
done