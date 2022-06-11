#!/bin/bash


# Remove old files

rm -rf layouts assets static config.toml README.* package.json package-lock.json filters.js webpack.config.js


# Get current boilerplate code from repo

shopt -s dotglob
git clone https://github.com/next-book/boilerplate.git _current_bp


# Move new files into place

mv _current_bp/layouts layouts
mv _current_bp/assets assets
mv _current_bp/static static
mv _current_bp/README.* .
mv _current_bp/config.toml .
mv _current_bp/package.json .
mv _current_bp/package-lock.json .
mv _current_bp/filters.js filters.js
mv _current_bp/webpack.config.js webpack.config.js


# Remove imported repo dir

rm -rf _current_bp
