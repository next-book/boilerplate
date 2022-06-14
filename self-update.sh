#!/bin/bash


# Remove old folders

rm -rf layouts assets static


# Get current boilerplate code from repo

git clone https://github.com/next-book/boilerplate.git _current_bp


# Move new files into place

mv _current_bp/layouts layouts
mv _current_bp/assets assets
mv _current_bp/static static
mv _current_bp/README.* .
mv _current_bp/config.toml .
mv _current_bp/package.json .
mv _current_bp/package-lock.json .
mv _current_bp/webpack.config.js webpack.config.js
mv _current_bp/filters.js filters.js
mv _current_bp/calc-accent.mjs calc-accent.mjs
mv _current_bp/self-update.sh self-update.sh
mv _current_bp/.browserslistrc .browserslistrc
mv _current_bp/babel.config.json babel.config.json



# Remove imported repo dir

rm -rf _current_bp
