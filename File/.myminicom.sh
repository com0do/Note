

com_raw() {
    ports_USB=$(ls /dev/ttyUSB*)
    ports_ACM=$(ls /dev/ttyACM* 2>/dev/null)
    ports="$ports_USB $ports_ACM"
    select port in $ports; do
        if [ "$port" ]; then
            echo "You select the choice '$port'"
            
            log_file=minicom_${port##*/}_$(date +%Y%m%d-%H%M%S)
            if [[ "$port" == *USB0 ]] ;then port=_dev_mesh ;fi
            minicom  "$port" -c on -C /home/carlos/test/log/"$log_file".log "$@"
            break;
        else
            echo "Invalid selection"
        fi
    done
}

com()
{
    ports_conf=$(ls /etc/minicom/*)
    select port in $ports_conf; do
        if [ "$port" ]; then
            echo "You select config: '${port##*.}'"
            log_file=minicom_${port##*_}_$(date +%Y%m%d-%H%M%S)
            minicom "${port##*.}" -c on -C /home/carlos/test/log/"$log_file".log
            break;
        else
            echo "Invalid selection"
        fi
    done
}

ccbuild()
{
    if [ $# -ne 2 ] ; then echo "usage: ccbuild project_name" ; fi
    #pushd /home/carlos/install/work/esp32_mi2x/miio_project
    ./yeelight_gen_default.sh $1 $2 && cp -fr builds/application*.bin /var/www/carlos.com/html
	#popd	
}


ccvm()
{
	local vm_linux_name="7eaffe62-ea65-495a-8b06-86fb03262a06"
	local vm_win10_name="58105d52-f542-4b59-8007-f4e1249953e8"
    local vm_array=(${vm_linux_name} )	
	for vm in "${!vm_array[@]}"; do
		/usr/bin/VBoxHeadless --startvm ${vm_array[$vm]} &
	done
}

