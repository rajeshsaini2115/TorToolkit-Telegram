wget $SAFILE -O sa.json && \
wget $CONFIG -O .config/rclone/rclone.conf && \
rclone serve http $NAME: --addr :$PORT --buffer-size 128M \
                                       --vfs-cache-mode writes \
                                       --vfs-read-chunk-size 256M \
                                       --user $USER --pass $PASS \
                                       --vfs-read-chunk-size-limit 2G
# For more, visit: https://rclone.org/commands/rclone_serve_http/ and https://rclone.org/flags/
