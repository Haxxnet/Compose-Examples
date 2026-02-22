#!/bin/bash
set -e

: "${MONGO_USER:?Missing MONGO_USER}"
: "${MONGO_PASS:?Missing MONGO_PASS}"
: "${MONGO_DBNAME:?Missing MONGO_DBNAME}"

mongo --quiet <<EOF
db.getSiblingDB("${MONGO_DBNAME}").createUser({
  user: "${MONGO_USER}",
  pwd:  "${MONGO_PASS}",
  roles: [{ role: "readWrite", db: "${MONGO_DBNAME}" }]
});

db.getSiblingDB("${MONGO_DBNAME}_stat").createUser({
  user: "${MONGO_USER}",
  pwd:  "${MONGO_PASS}",
  roles: [{ role: "readWrite", db: "${MONGO_DBNAME}_stat" }]
});
EOF
