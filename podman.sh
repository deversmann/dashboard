podman run -p 3030:3030 -d \
    -e CTA_BUS_API_KEY=Sf3AdSCXnmnfgQB5Bgk5K9XMX \
    -e CTA_BUS_STOPS=1323,1249,11261,11149 \
    -e CTA_TRAIN_API_KEY=e73cc3527f19413099b0ebd4851f5a91 \
    -e CTA_TRAIN_STOPS=30197,30198,30235,30236 \
    -e WEATHER_LAT=41.85 \
    -e WEATHER_LON=-87.65 \
    -e OPEN_WEATHER_MAP_API_KEY=ba99a03f177b3f9e74166efd2950d95e \
    -e WEATHER_UNITS=imperial \
    -e WHOS_HOME_RESIDENTS='{"Amanda":"2a:59:74:13:57:b9","Damien":"5e:f9:24:fa:d0:3e","Deacon":"1a:99:1f:6a:7b:2e","Zac":"9e:78:92:f0:72:8d"}' \
    -e WHOS_HOME_NETWORK="192.168.50.0/24" \
    -e WIDGETS="b6abdc6122ab7c795c08c47608b3c171 6c5ccb54433bf13fc64273f4706d771b e0ffa81df3e25171f993b1bc40c91b18 f4dee0bb7dfec1d63f6de3338856d5c7 6e2f80b4812c5b9474f3" \
    -v /home/pi/dash/dashboards:/dashboards:z \
    deversmann/smashing


# open_weather_widget = b6abdc6122ab7c795c08c47608b3c171 
# cta_train_widget = 6c5ccb54433bf13fc64273f4706d771b 
# cta_bus_widget = e0ffa81df3e25171f993b1bc40c91b18 
# whos_home_widget = f4dee0bb7dfec1d63f6de3338856d5c7
# Dashing - 12 Hour Clock = 6e2f80b4812c5b9474f3


