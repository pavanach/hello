#!/bin/sh

# make sure you have the same or newer jdk install
mvn clean package -Djdk.version=1.8

docker build . -t target/hello

docker run -it --rm \
    --publish 8080:8080 \
    --log-driver=splunk \
    --log-opt splunk-token=d5c032da-03af-4edc-b4d8-828b6521b6fb \
    --log-opt splunk-url=https://MACPRO104.local:8088 \
    --log-opt splunk-insecureskipverify=true \
    --log-opt splunk-sourcetype=_json \
    --log-opt splunk-index=http_log_event_collector_pavan_idx \
    --log-opt tag="{{.Name}}/{{.FullID}}" \
    --name hello \
    target/hello