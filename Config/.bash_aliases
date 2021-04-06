alias cctrans="trans :zh"
alias ccqv2ray="nohup Qv2ray > ~/test/nohup.out &"
#alias ccserial="sudo putty -load serial-1 &"
alias ccserial="sudo minicom -s /dev/ttyUSB0"

# esp32
alias ccidf='. $HOME/install/work/esp32_mi2x/esp-idf/export.sh'
alias ccidf_3='export PATH="$HOME/tool/xtensa-esp32-elf/bin:$PATH"'
alias ccflashing="python  ../esp-idf/components/esptool_py/esptool/esptool.py   --chip esp32 --port /dev/ttyUSB0 --baud 115200 --before default_reset --after hard_reset write_flash -z --flash_mode dio --flash_freq 40m --flash_size detect  0x10000"
alias ccflashingB="python  ../esp-idf/components/esptool_py/esptool/esptool.py   --chip esp32 --port /dev/ttyUSB0 --baud 115200 --before default_reset --after hard_reset write_flash -z --flash_mode dio --flash_freq 40m --flash_size detect  0x1f0000"
alias ccflashing_4M="python  ../esp-idf/components/esptool_py/esptool/esptool.py   --chip esp32 --port /dev/ttyUSB0 --baud 115200 --before default_reset --after hard_reset write_flash -z --flash_mode dio --flash_freq 40m --flash_size detect  0x0"
alias ccclion="nohup clion > ~/test/nohup.out &"
alias ccgate="cd /home/carlos/install/work/yiot_mesh_gateway/rtl819x-SDK-v3.4.11E-full-package/rtl819x"
alias ccesp="cd /home/carlos/install/work/esp32_mi2x/miio_project"
alias ccesp_tmp="cd /home/carlos/install/work/tmp/esp32_mi2x/miio_project"
alias ccuni="cd /home/carlos/install/work/commercial_lighting"
alias cc12="ssh cuixingang@192.168.0.12"
alias ccautobuild="ssh auto_build@192.168.0.12"
alias cc60="ssh cuixingang@192.168.0.60"
alias ccwrt="ssh  root@192.168.9.1"
alias ccopenthread="cd /home/carlos/install/work/openthread"

# python version switch
alias ccpython3="echo 0 | sudo update-alternatives --config python"
alias ccpython2="echo 1 | sudo update-alternatives --config python"

# sshfs
alias ccfw_build="sudo sshfs -o cache=yes,allow_other auto_build@192.168.0.12:/yeedata/fw_builds ~/hardware/fw_builds/"

# system tool
alias ccshutdown="sudo shutdown now"
alias ccjlinkview="JLinkRTTViewerExe &"
alias ccjlinkdownload="JFlashLiteExe &"


# component
alias ccmiio='sh -c "/home/carlos/install/tmp/wifi_device_debugger/wifi_device_debug.sh -m 1497724246 -p ls4810@@"'
alias ccmiioQA='sh -c "/home/carlos/install/tmp/wifi_device_debugger/wifi_device_debug.sh -m 268240019 -p Yeelink@2015"'

# git
alias ccpull='git pull --rebase'


# homekit
alias cckit_server='python2 /home/carlos/install/tool/homekit_factory_toolv30/homekit_server/src/homekit_http_server.py'
alias cckit_client='python2 /home/carlos/install/tool/homekit_factory_toolv30/homekit_download_client/src/homekit_download_client.py /dev/ttyUSB0'
alias cckit_check='python2 /home/carlos/install/tool/homekit_factory_toolv30/homekit_check_client/src/homekit_check_client.py'
