@echo off

REM ### НАСТРОЙКИ ###

set SERVER_JAR=forge-1.12.2-14.23.5.2838-universal.jar

set MIN_RAM=500M
set MAX_RAM=6800M

set MIN_RAM2=7500M
set MAX_RAM2=4G

set JAVA_PARAMETERS=-XX:+UseG1GC -Dsun.rmi.dgc.server.gcInterval=2147483646 -XX:+UnlockExperimentalVMOptions -XX:G1NewSizePercent=20 -XX:G1ReservePercent=20 -XX:MaxGCPauseMillis=50 -XX:G1HeapRegionSize=32M -Dfml.readTimeout=180

set JAVA_PARAMETERS2=-XX:+UseG1GC -Dsun.rmi.dgc.server.gcInterval=2147483646 -XX:+UnlockExperimentalVMOptions -XX:G1NewSizePercent=20 -XX:G1ReservePercent=20 -XX:MaxGCPauseMillis=100 -XX:G1HeapRegionSize=32M -Dfml.readTimeout=180 -XX:+UnlockCommercialFeatures -XX:+AggressiveOpts -XX:+UseThreadPriorities -Djava.net.preferIPv4Stack=true -XX:+OptimizeStringConcat -XX:+UseFastAccessorMethods -Xrs -XX:+UseCompressedOops -XX:UseSSE=4 -XX:ParallelGCThreads=8 -DJINTEGRA_NATIVE_MODE -DJINTEGRA_COINIT_VALUE=0 -Dsun.io.useCanonCaches=false -Djline.terminal=jline.UnsupportedTerminal -XX:ThreadPriorityPolicy=42 -XX:CompileThreshold=1500 -XX:+TieredCompilation -XX:TargetSurvivorRatio=90 -XX:MaxTenuringThreshold=15

set JAVA_PARAMETERS3=-D64 -XX:MaxPermSize=512M -XX:+UnlockCommercialFeatures -XX:+UseLargePages -XX:+AggressiveOpts -XX:+UseAdaptiveSizePolicy -XX:+UnlockExperimentalVMOptions -XX:+UseG1GC -XX:UseSSE=4 -XX:+DisableExplicitGC -XX:MaxGCPauseMillis=100 -XX:parallelGCThreads=8 -DJINTEGRA_NATIVE_MODE -DJINTEGRA_COINIT_VALUE=0 -Dsun.io.useCanonCaches=false -Djline.terminal=jline.UnsupportedTerminal -XX:ThreadPriorityPolicy=42 -XX:CompileThreshold=1500 -XX:+TieredCompilation -XX:TargetSurvivorRatio=90 -XX:MaxTenuringThreshold=15 -XX:+UnlockExperimentalVMOptions -XX:+UseAdaptiveGCBoundary -XX:permSize=256M -XX:+UseGCOverheadLimit -XX:+UseBiasedLocking -Xnoclassgc -Xverify:none -XX:+UseThreadPriorities -Djava.net.preferIPv4Stack=true -XX:+UseStringCache -XX:+OptimizeStringConcat -XX:+UseFastAccessorMethods -Xrs -XX:+UseCompressedOops

REM ### ЗАПУСК ###
echo Запуск сервера DAERCRAFT...
java -server -Xms%MIN_RAM% -Xmx%MAX_RAM% %JAVA_PARAMETERS% -jar %SERVER_JAR% nogui
