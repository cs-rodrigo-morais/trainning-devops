#!/usr/bin/env bash

export PATH="$PATH"

CONT_NAME_JENKINS="csrmorais/cs-jenkins"
CONT_NAME_GITLAB="gitlab/gitlab-ce"

CONTAINERS=( "$CONT_NAME_JENKINS" "$CONT_NAME_GITLAB" )

function baixa_cont(){
	for c in "${CONTAINERS[@]}"; do
		docker pull $c
	done
}

function exec_cont(){
	for c in "${CONTAINERS[@]}"; do
		if [ $c == $CONT_NAME_JENKINS ]; then
			docker run -d -p 8080:8080 -p 50000:50000 $c
		elif [ $c == $CONT_NAME_GITLAB ]; then
			docker run --detach \
			    --hostname localhost \
				  --publish 443:443 --publish 80:80 --publish 2222:22 \
					--name gitlabrodrigo \
					--restart always \
					--volume /srv-gitlab/config:/etc/gitlab \
					--volume /srv-gitlab/logs:/var/log/gitlab \
					--volume /srv-gitlab/data:/var/opt/gitlab \
				$c
				fi
	done
}

baixa_cont
exec_cont
