#!/bin/bash

echo -e "Beginning Pavlov VR update run on $(date)\n\n"

/home/steam/Steam/steamcmd.sh +force_install_dir /home/steam/pavlovserver +login anonymous +app_update 622970 -beta default +exit
/home/steam/Steam/steamcmd.sh +login anonymous +app_update 1007 +quit
cp "/home/steam/Steam/steamapps/common/Steamworks SDK Redist/linux64/steamclient.so" "/home/steam/.steam/sdk64/steamclient.so"
cp "/home/steam/Steam/steamapps/common/Steamworks SDK Redist/linux64/steamclient.so" "/home/steam/pavlovserver/Pavlov/Binaries/Linux/steamclient.so"
sudo rm /usr/lib/x86_64-linux-gnu/libc++.so
sudo ln -s /usr/lib/x86_64-linux-gnu/libc++.so.1 /usr/lib/x86_64-linux-gnu/libc++.so
chmod +x ~/pavlovserver/PavlovServer.sh

echo -e "Ending Pavlov VR update run on $(date)\n\n"
