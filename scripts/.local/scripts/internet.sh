# pinged="google.com"
# # pinged="127.0.0.1"
# 
# icon_dir="/dev/shm/internet"
# icon_file="net_icon"
# 
# 
# if [[ ! -d $icon_dir ]]
# then
# 	mkdir -p $icon_dir
#     touch "$icon_dir/$icon_dir"
# fi

# while true
# do
#     sleep 10s
#     operstat="$(cat /sys/class/net/w*/operstate 2>/dev/null)"
# 
#     # check if connected
#     if [ $operstat == "down" ] 
#     then
#         echo "" > "$icon_dir/$icon_file" 
#         continue
#     fi
# 
#     # check if an instance is already running
#     list=$(ps aux | grep $pinged | grep -v 'grep')
#     [[ -n $list ]] && exit
# 
# 
#     inte=$(ping -c 1 $pinged 2>/dev/null)
#     if [[ -n $inte ]]
#     then
#         # net_icon=' '
#         echo '' > "$icon_dir/$icon_file"
#     else
#         # net_icon=' '
#         echo '' > "$icon_dir/$icon_file"
#     fi
# 
# done
