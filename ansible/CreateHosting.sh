#/bin/bash
#

INTANCE_ID=$(cat .env_instance)

echo $INTANCE_ID


function CreateHostNewCloud(){
cat <<EOF >> ../Deploy/hosts
[NewCloud]
EOF

}

