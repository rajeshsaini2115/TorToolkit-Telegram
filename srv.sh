wget $SAFILE -O sa.json && \
wget $CONFIG -O .config/rclone/rclone.conf && \
rclone serve http $NAME: --addr :$PORT --user $USER \
                                       --pass $PASS \
                                       --vfs-cache-mode writes \
                                       --vfs-read-chunk-size 128M \
                                       --vfs-read-chunk-size-limit 1G
# For more, visit: https://rclone.org/commands/rclone_serve_http/ and https://rclone.org/flags/
