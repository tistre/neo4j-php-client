#!/bin/bash

export JAVA_HOME=/usr/lib/jvm/java-8-oracle
export JRE_HOME=/usr/lib/jvm/java-8-oracle

wget http://dist.neo4j.org/neo4j-enterprise-$NEO_VERSION-unix.tar.gz > null
mkdir neo
tar xzf neo4j-enterprise-$NEO_VERSION-unix.tar.gz -C neo --strip-components=1 > null
sed -i.bak '/\(dbms\.security\.auth_enabled=\).*/s/^#//g' ./neo/conf/neo4j.conf
neo/bin/neo4j start > null &