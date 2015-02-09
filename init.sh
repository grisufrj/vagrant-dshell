# -------------------------------------------------------------------
# Copyright (c) 2015 GRIS (www.gris.dcc.ufrj.br).  All Rights Reserved.
#
# This file is provided to you under the Apache License,
# Version 2.0 (the "License"); you may not use this file
# except in compliance with the License.  You may obtain
# a copy of the License at
#
#   http:#www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing,
# software distributed under the License is distributed on an
# "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
# KIND, either express or implied.  See the License for the
# specific language governing permissions and limitations
# under the License.
#
# -------------------------------------------------------------------
echo "=> Preparing system..."
sudo locale-gen UTF-8

echo "=> Updating repos..."
sudo apt-get -y update

echo "=> Install all of the necessary Python modules..."
sudo apt-get -y install python-crypto python-dpkt python-ipy python-pypcap python-pip
sudo pip install pygeoip

echo "=> Preparing MaxMind data files"

echo "===> Downloading GeoIP files..."
sudo mkdir -p /home/vagrant/
cp -r /vagrant/Dshell/* /home/vagrant/
wget -q -P /home/vagrant/share/GeoIP/ http://geolite.maxmind.com/download/geoip/database/GeoLiteCountry/GeoIP.dat.gz
wget -q -P /home/vagrant/share/GeoIP/ http://geolite.maxmind.com/download/geoip/database/GeoIPv6.dat.gz
wget -q -P /home/vagrant/share/GeoIP/ http://download.maxmind.com/download/geoip/database/asnum/GeoIPASNum.dat.gz
wget -q -P /home/vagrant/share/GeoIP/ http://download.maxmind.com/download/geoip/database/asnum/GeoIPASNumv6.dat.gz

echo "===> Decompress GeoIP files..."
cd /home/vagrant/share/GeoIP/
gzip -q -d GeoIP*

echo "=> Building Dshell..."
cd /home/vagrant/
make
