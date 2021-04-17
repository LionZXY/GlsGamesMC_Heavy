#!/bin/sh
HOST="https://games.glitchless.ru/api/minecraft/users"


java -Dminecraft.api.auth.host=$HOST \
	  -Dminecraft.api.account.host=$HOST \
	    -Dminecraft.api.session.host=$HOST \
	      -Dminecraft.api.services.host="https://games.glitchless.ru/api/minecraft/" \
                  -jar -Xmx${MC_RAM} -XX:+UseG1GC -XX:+UnlockExperimentalVMOptions -XX:MaxGCPauseMillis=100 -XX:+DisableExplicitGC -XX:TargetSurvivorRatio=90 -XX:G1NewSizePercent=50 -XX:G1MaxNewSizePercent=80 -XX:G1MixedGCLiveThresholdPercent=50 -XX:+AlwaysPreTouch forge-1.16.5-36.0.43.jar nogui
