#!/bin/sh
docker kill logstash
docker rm logstash
docker run -d --name logstash -p 5044:5044 \
 -v $(pwd)/config/logstash-gc.yml:/usr/share/logstash/config/logstash.yml \
 -v $(pwd)/config/logstash-gc.conf:/usr/share/logstash/pipeline/logstash.conf \
docker.elastic.co/logstash/logstash:6.2.4