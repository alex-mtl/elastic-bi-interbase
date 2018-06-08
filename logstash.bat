docker kill logstash

docker rm logstash

docker run -d --name logstash -p 5044:5044^
 --link elastic:elastic^
 -v /c/users/a.kim/interbaseelk/logstash.yml:/usr/share/logstash/config/logstash.yml^
 -v /c/users/a.kim/interbaseelk/logstash.conf:/usr/share/logstash/pipeline/logstash.conf^
 -v /c/users/a.kim/interbaseelk/interclient.jar:/usr/share/logstash/logstash-core/lib/jars/interclient.jar^
 -v /c/users/a.kim/interbaseelk/jdbc.pass:/usr/share/logstash/jdbc.pass^
 docker.elastic.co/logstash/logstash:6.2.4