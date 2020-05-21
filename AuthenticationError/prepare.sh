#!/bin/bash

# Prepare WP plugin
wget -O wp-like-button.1.6.0.zip https://www.exploit-db.com/apps/cc8d8e3096ea8fb5216c153d8941a4d3-wp-like-button.1.6.0.zip
mkdir plugins
unzip -d plugins/ wp-like-button.1.6.0.zip

