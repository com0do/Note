alias cctrans="trans :zh"
alias ccqv2ray="nohup Qv2ray > ~/test/nohup.out &"
#alias ccserial="sudo putty -load serial-1 &"
alias ccserial="sudo minicom -s /dev/ttyUSB0"

#alias esp_p1_app2='sudo python /home/rex/YeelightWorkspace/esp32_mi2x/esp-idf/components/esptool_py/esptool/esptool.py --chip esp32 --port /dev/ttyUSB1 --baud 921600 --before default_reset --after hard_reset write_flash -z --flash_mode dio --flash_freq 40m --flash_size detect 0x10000 miio_app_crc.bin 0x1f0000 miio_app_crc.bin'
#sudo python /home/rex/YeelightWorkspace/esp32_mi2x/esp-idf/components/esptool_py/esptool/esptool.py --chip esp32 --port /dev/ttyUSB2 --baud 921600 --before default_reset --after hard_reset --flash_mode dio --flash_freq 40m read_flash 0x3e4000 0x4000 homekit_bin.bin

# esp32
alias ccidf='. $HOME/install/work/esp32_mi2x/esp-idf/export.sh'
alias ccidf_3='export PATH="$HOME/tools/xtensa-esp32-elf/bin:$PATH" && source p2/bin/activate'
alias ccflashing="python  ../esp-idf/components/esptool_py/esptool/esptool.py   --chip esp32 --port /dev/ttyUSB0 --baud 115200 --before default_reset --after hard_reset write_flash -z --flash_mode dio --flash_freq 40m --flash_size detect  0x10000"
alias ccflashingB="python  ../esp-idf/components/esptool_py/esptool/esptool.py   --chip esp32 --port /dev/ttyUSB0 --baud 115200 --before default_reset --after hard_reset write_flash -z --flash_mode dio --flash_freq 40m --flash_size detect  0x1f0000"
alias ccflashing_4M="python  ../esp-idf/components/esptool_py/esptool/esptool.py   --chip esp32 --port /dev/ttyUSB0 --baud 115200 --before default_reset --after hard_reset write_flash -z --flash_mode dio --flash_freq 40m --flash_size detect  0x0"
alias cchomekitRead="python  ../esp-idf/components/esptool_py/esptool/esptool.py   --chip esp32 --port /dev/ttyUSB0 --baud 115200 --before default_reset --after hard_reset read_flash 0x3e4000 0x4000"
alias cchomekitWrite="python  ../esp-idf/components/esptool_py/esptool/esptool.py   --chip esp32 --port /dev/ttyUSB0 --baud 115200 --before default_reset --after hard_reset write_flash -z --flash_mode dio --flash_freq 40m --flash_size detect  0x3e4000"

# directory
alias ccclion="nohup clion > ~/test/nohup.out &"
alias ccgate="cd /home/carlos/install/work/yiot_mesh_gateway/rtl819x-SDK-v3.4.11E-full-package/rtl819x"
alias ccesp="cd /home/carlos/install/work/esp32_mi2x/miio_project"
alias ccesp_tmp="cd /home/carlos/install/work/tmp/esp32_mi2x/miio_project"
alias ccuni="cd /home/carlos/install/work/commercial_lighting"

# ssh
alias cc12="ssh cuixingang@192.168.0.12"
alias ccautobuild="ssh auto_build@192.168.0.12"
alias cc60="ssh cuixingang@192.168.0.60"
alias ccwrt="ssh  root@192.168.9.1"
alias ccopenthread="cd /home/carlos/install/work/openthread"
alias cchc32='git clone ssh://pub_git@192.168.1.96:24396/home/pub_git/hc32f460'


# python version switch
alias ccpythonv="python --version"
#alias ccpython2="echo 1 | sudo update-alternatives --config python"
alias ccpython2='virtualenv  -p /usr/bin/python2.7 p2 --system-site-package && source p2/bin/activate'
#alias ccpython3="echo 0 | sudo update-alternatives --config python"

# alias
alias ccalias="vi ~/.bash_aliases"
alias ccbashrc='source ~/.bashrc'

# PATH
alias ccpath="echo $PATH|tr : \\\n"
alias ccgcc='export PATH="$HOME/tools/gcc-arm-none-eabi-7-2018-q2-update/bin:$PATH"'

# pyocd
alias ccocd='pyocd flash -t hc32f460xe'

# sshfs
alias ccfw_build="sudo sshfs -o cache=yes,allow_other auto_build@192.168.0.12:/yeedata/fw_builds ~/hardware/fw_builds/"

# system tool
alias ccshutdown="sudo shutdown now"
alias ccjlinkview="JLinkRTTViewerExe &"
alias ccjlinkdownload="JFlashLiteExe &"


# component
alias ccmiio='sh -c "/home/carlos/tools/wifi_device_debugger/wifi_device_debug.sh -m 1497724246 -p ls4810@@"'
alias ccmiioQA='sh -c "/home/carlos/tools/wifi_device_debugger/wifi_device_debug.sh -m 268240019 -p Yeelink@2015"'
alias ccmiioceil='sh -c "/home/carlos/tools/wifi_device_debugger/wifi_device_debug.sh -m 2552423690 -p 87987261."'

# git
alias ccpull='git pull --rebase'


# homekit
alias cckit_server='cd /home/carlos/install/tools/homekit_factory_toolv30/homekit_server/src/'
alias cckit_client='cd /home/carlos/install/tools/homekit_factory_toolv30/homekit_download_client/src/ '
alias cckit_check='cd /home/carlos/install/tools/homekit_factory_toolv30/homekit_check_client/src/'


# token
alias cctoken='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'
