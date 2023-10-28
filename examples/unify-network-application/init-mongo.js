db.getSiblingDB("unifi-db").createUser({user: "unifi", pwd: "unifi", roles: [{role: "readWrite", db: "unifi-db"}]});
db.getSiblingDB("unifi-db_stat").createUser({user: "unifi", pwd: "unifi", roles: [{role: "readWrite", db: "unifi-db_stat"}]});
