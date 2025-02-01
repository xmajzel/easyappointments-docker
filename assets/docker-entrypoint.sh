#!/bin/bash

# -----------------------------------------------------------------------------
# Easy!Appointments - Online Appointment Scheduler
#
# @package     EasyAppointments
# @author      A.Tselegidis <alextselegidis@gmail.com>
# @copyright   Copyright (c) Alex Tselegidis
# @license     https://opensource.org/licenses/GPL-3.0 - GPLv3
# @link        https://easyappointments.org
# -----------------------------------------------------------------------------

##
# Set up the currently cloned Easy!Appointments build.
#
# This script will perform the required actions so that Easy!Appointments is configured properly to work with the
# provided environment variables.
#
# Usage:
#  ./docker-entrypoint.sh
#

cp config-sample.php config.php

# General Settings
sed -i "s|const BASE_URL = 'http://localhost';|const BASE_URL = '$BASE_URL';|g" config.php
sed -i "s|const LANGUAGE = 'english';|const LANGUAGE = '$LANGUAGE';|g" config.php
sed -i "s|const DEBUG_MODE = false;|const DEBUG_MODE = $DEBUG_MODE;|g" config.php

# Database Settings
sed -i "s|const DB_HOST = 'mysql';|const DB_HOST = '$DB_HOST';|g" config.php
sed -i "s|const DB_NAME = 'easyappointments';|const DB_NAME = '$DB_NAME';|g" config.php
sed -i "s|const DB_USERNAME = 'user';|const DB_USERNAME = '$DB_USERNAME';|g" config.php
sed -i "s|const DB_PASSWORD = 'password';|const DB_PASSWORD = '$DB_PASSWORD';|g" config.php

# Google Sync Settings
sed -i "s|const GOOGLE_SYNC_FEATURE = false;|const GOOGLE_SYNC_FEATURE = '$GOOGLE_SYNC_FEATURE';|g" config.php
sed -i "s|const GOOGLE_CLIENT_ID = '';|const GOOGLE_CLIENT_ID = '$GOOGLE_CLIENT_ID';|g" config.php
sed -i "s|const GOOGLE_CLIENT_SECRET = '';|const GOOGLE_CLIENT_SECRET = '$GOOGLE_CLIENT_SECRET';|g" config.php

# Email Settings
sed -i "s|const EMAIL_PROTOCOL = '';|const EMAIL_PROTOCOL = '$EMAIL_PROTOCOL';|g" config.php
sed -i "s|const EMAIL_SMTP_DEBUG = '0';|const EMAIL_SMTP_DEBUG = '$EMAIL_SMTP_DEBUG';|g" config.php
sed -i "s|const EMAIL_SMTP_HOST = '';|const EMAIL_SMTP_HOST = '$EMAIL_SMTP_HOST';|g" config.php
sed -i "s|const EMAIL_SMTP_AUTH = FALSE;|const EMAIL_SMTP_AUTH = $EMAIL_SMTP_AUTH;|g" config.php
sed -i "s|const EMAIL_SMTP_USER = '';|const EMAIL_SMTP_USER = '$EMAIL_SMTP_USER';|g" config.php
sed -i "s|const EMAIL_SMTP_PASS = '';|const EMAIL_SMTP_PASS = '$EMAIL_SMTP_PASS';|g" config.php
sed -i "s|const EMAIL_SMTP_CRYPTO = '';|const EMAIL_SMTP_CRYPTO = '$EMAIL_SMTP_CRYPTO';|g" config.php
sed -i "s|const EMAIL_SMTP_PORT = '';|const EMAIL_SMTP_PORT = '$EMAIL_SMTP_PORT';|g" config.php
sed -i "s|const EMAIL_FROM_NAME = '';|const EMAIL_FROM_NAME = '$EMAIL_FROM_NAME';|g" config.php
sed -i "s|const EMAIL_FROM_ADDRESS = '';|const EMAIL_FROM_ADDRESS = '$EMAIL_FROM_ADDRESS';|g" config.php
sed -i "s|const EMAIL_REPLY_TO = '';|const EMAIL_REPLY_TO = '$EMAIL_REPLY_TO';|g" config.php
sed -i "s|const EMAIL_REPLY_TO_ADDRESS = '';|const EMAIL_REPLY_TO_ADDRESS = '$EMAIL_REPLY_TO_ADDRESS';|g" config.php

apache2-foreground
