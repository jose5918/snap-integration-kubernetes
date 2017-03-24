#
# http://www.apache.org/licenses/LICENSE-2.0.txt
# Copyright 2017 Intel Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# log_level for the snap daemon. Supported values are
# 1 - Debug, 2 - Info, 3 - Warning, 4 - Error, 5 - Fatal.
# Default value is 3.
log_level: {{ .Values.config.log_level }}

# Gomaxprocs sets the number of cores to use on the system
# for snapteld to use. Default for gomaxprocs is 1
gomaxprocs: {{ .Values.config.gomaxprocs }}

# Control sections for configuration settings for the plugin
# control module of snapteld.
control:
  # auto_discover_path sets a directory to auto load plugins on the start
  # of the snap daemon
  auto_discover_path: /opt/snap/autoload 

  # cache_expiration sets the time interval for the plugin cache to use before
  # expiring collection results from collect plugins. Default value is 500ms
  # cache_expiration: 500ms

  # max_running_plugins sets the size of the available plugin pool for each
  # plugin loaded in the system. Default value is 3
  # max_running_plugins: 3

  # keyring_paths sets the directory(s) to search for keyring files for signed
  # plugins. This can be a comma separated list of directories
  # keyring_paths: /etc/snap/keyrings

  # plugin_trust_level sets the plugin trust level for snapteld. The default state
  # for plugin trust level is enabled (1). When enabled, only signed plugins that can
  # be verified will be loaded into snapteld. Signatures are verifed from
  # keyring files specided in keyring_path. Plugin trust can be disabled (0) which
  # will allow loading of all plugins whether signed or not. The warning state allows
  # for loading of signed and unsigned plugins. Warning messages will be displayed if
  # an unsigned plugin is loaded. Any signed plugins that can not be verified will
  # not be loaded. Valid values are 0 - Off, 1 - Enabled, 2 - Warning
  plugin_trust_level: 0

  # plugins section contains plugin config settings that will be applied for
  # plugins across tasks.
  # plugins:

# scheduler configuration settings contains all settings for scheduler
# module
# scheduler:
  # work_manager_queue_size sets the size of the worker queue inside snapteld scheduler.
  # Default value is 25.
  # work_manager_queue_size: 25

  # work_manager_pool_size sets the size of the worker pool inside snapteld scheduler.
  # Default value is 4.
  # work_manager_pool_size: 4

# rest sections contains all the configuration items for the REST API server.
# restapi:
  # enable controls enabling or disabling the REST API for snapteld. Default value is enabled.
  # enable: true

  # https enables HTTPS for the REST API. If no default certificate and key are provided, then
  # the REST API will generate a private and public key to use for communication. Default
  # value is false
  # https: false

  # rest_auth enables authentication for the REST API. Default value is false
  # rest_auth: false

  # rest_auth_password sets the password to use for the REST API. Currently user and password
  # combinations are not supported.
  # rest_auth_password: changeme

  # rest_certificate is the path to the certificate to use for REST API when HTTPS is also enabled.
  # rest_certificate: /etc/snap/cert.pem

  # rest_key is the path to the private key for the certificate in use by the REST API
  # when HTTPs is enabled.
  # rest_key: /etc/snap/cert.key

  # port sets the port to start the REST API server on. Default is 8181
# port: 8181