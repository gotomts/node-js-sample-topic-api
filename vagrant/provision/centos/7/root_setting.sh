#!/bin/bash -eu

echo -------------------------------------------------
echo
echo                    変数
echo
echo -------------------------------------------------

BASE_DIR=/vagrant/provision/centos/7

echo -------------------------------------------------
echo
echo                    基本
echo
echo -------------------------------------------------

. $BASE_DIR/_base.sh

echo -------------------------------------------------
echo
echo                    MySQL
echo
echo -------------------------------------------------

. $BASE_DIR/_mysql8.sh

echo -------------------------------------------------
echo
echo                    Node.js
echo
echo -------------------------------------------------

. $BASE_DIR/_node.sh

echo -------------------------------------------------
echo
echo                    クリア
echo
echo -------------------------------------------------

yum clean all
history -c
