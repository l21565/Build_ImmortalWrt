#Modify the default configuration of kernel
#for sym in OVERLAY_FS EXT4_FS EXT4_FS_POSIX_ACL VETH BRIDGE MACVLAN; do
#    if grep -q "^# CONFIG_${sym} is not set" target/linux/rockchip/armv8/config-default; then
#        sed -i "s/^# CONFIG_${sym} is not set$/CONFIG_${sym}=y/" target/linux/rockchip/armv8/config-default
#        echo "→ config-default: ${sym} is not set → y"
#    elif grep -q "^CONFIG_${sym}=n" target/linux/rockchip/armv8/config-default; then
#        sed -i "s/^CONFIG_${sym}=n/CONFIG_${sym}=y/" target/linux/rockchip/armv8/config-default
#        echo "→ config-default: ${sym}=n → y"
#    elif grep -q "^CONFIG_${sym}=y" target/linux/rockchip/armv8/config-default; then
#        echo "→ config-default: ${sym}=y already"
#    else
#        echo "CONFIG_${sym}=y" >> target/linux/rockchip/armv8/config-default
#        echo "→ config-default: appended ${sym}=y"
#    fi
#done
