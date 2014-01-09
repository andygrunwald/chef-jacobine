#
# Cookbook Name:: typo3analytics
# Attributes:: default
#
# Copyright 2013, Andy Grunwald
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Application
default[:typo3analytics][:application_dir] = "/var/www/analysis"
default[:typo3analytics][:application_dir_user] = "vagrant"
default[:typo3analytics][:application_dir_group] = "vagrant"

default[:typo3analytics][:git_repository] = "https://github.com/andygrunwald/TYPO3-Analytics.git"
default[:typo3analytics][:git_revision] = "master"

# Composer
# User who will execute the update
default[:typo3analytics][:composer_update_user] = "root"

# Directory where downloaded data will be stored
default[:typo3analytics][:data_dir] = "/var/www/analysis-data/TYPO3"
default[:typo3analytics][:data_dir_user] = "vagrant"
default[:typo3analytics][:data_dir_group] = "vagrant"

# Directory to store the log files
default[:typo3analytics][:log_dir] = "/var/log/analysis"
default[:typo3analytics][:log_dir_user] = "vagrant"
default[:typo3analytics][:log_dir_group] = "vagrant"

# PHP settings
default[:typo3analytics][:php_bin] = "/usr/bin/php"

# MySQL settings
default[:typo3analytics][:mysql_bin] = "/usr/bin/mysql"
default[:typo3analytics][:mysql_host] = "localhost"

# MySQL user
default[:typo3analytics][:mysql_root][:username] = "root"
default[:typo3analytics][:mysql_root][:password] = ""

default[:typo3analytics][:mysql_user][:username] = "analysis"
default[:typo3analytics][:mysql_user][:password] = "analysis"
default[:typo3analytics][:mysql_user][:database] = "typo3"

# Gerrie settings
default[:typo3analytics][:gerrie_dir] = "/var/www/analysis/vendor/andygrunwald/gerrie"
default[:typo3analytics][:gerrie_configfile] = "/var/www/analysis/Config/gerrit-review.typo3.org.yml"

# SSH Keys
default[:typo3analytics][:ssh_keys_dir] = "/var/www/analysis/Config"

# Binaries
default[:typo3analytics][:console_bin] = "/var/www/analysis/console"

# System user
default[:typo3analytics][:analysis][:user] = "analysis"
default[:typo3analytics][:analysis][:group] = "www-data"
default[:typo3analytics][:analysis][:comment] = "System user to execute analysis processes"
default[:typo3analytics][:analysis][:shell] = "/bin/false"

# Supervisord
default[:typo3analytics][:supervisord][:user] = "analysis"

# Cron
default[:typo3analytics][:cron_user] = "vagrant"

# Website
default[:typo3analytics][:website][:dir] = "/var/www/analysis.local"
default[:typo3analytics][:website][:dir_user] = "vagrant"
default[:typo3analytics][:website][:dir_group] = "vagrant"
default[:typo3analytics][:website][:repository] = "https://github.com/andygrunwald/TYPO3-Analytics-Web.git"
default[:typo3analytics][:website][:revision] = "master"

default[:typo3analytics][:website][:ip] = "192.168.33.55"
default[:typo3analytics][:website][:sitename] = "analysis.local"
default[:typo3analytics][:website][:url] = "analysis.local"

default[:typo3analytics][:website][:mysql][:username] = "typo3_analysis"
default[:typo3analytics][:website][:mysql][:password] = "typo3_analysis"
default[:typo3analytics][:website][:mysql][:database] = "typo3_analysis"