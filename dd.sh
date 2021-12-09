#!/bin/bash

blue(){
    echo -e "\033[34m\033[01m$1\033[0m"
}
green(){
    echo -e "\033[32m\033[01m$1\033[0m"
}
yellow(){
    echo -e "\033[33m\033[01m$1\033[0m"
}
red(){
    echo -e "\033[31m\033[01m$1\033[0m"
}
dd_d10(){
	bash <(wget --no-check-certificate -qO- 'https://raw.githubusercontent.com/MoeClub/Note/master/InstallNET.sh') -d 10 -v 64 -a
}
dd_d11(){
	bash <(wget --no-check-certificate -qO- 'https://raw.githubusercontent.com/MoeClub/Note/master/InstallNET.sh') -d 11 -v 64 -a
}
dd_d9(){
	bash <(wget --no-check-certificate -qO- 'https://raw.githubusercontent.com/MoeClub.club/Note/master/InstallNET.sh') -d 9 -v 64 -a
}
dd_u18(){
	bash <(wget --no-check-certificate -qO- 'https://raw.githubusercontent.com/MoeClub.club/Note/master/InstallNET.sh') -u 18.04 -v 64 -a
}
dd_u20(){
	bash <(wget --no-check-certificate -qO- 'https://raw.githubusercontent.com/MoeClub.club/Note/master/InstallNET.sh') -u 20.04 -v 64 -a
}
dd_c6(){
	bash <(wget --no-check-certificate -qO- 'https://raw.githubusercontent.com/MoeClub.club/Note/master/InstallNET.sh') -c 6.10 -v 64 -a
}

start_menu(){
    clear
	green "=========================================================="
         blue " 本脚本支持：CentOS7+ / Debian9+ / Ubuntu16.04+"
	 blue " 网站：https://m.233hhh.top "
	 blue " 脚本：  bash <(curl -sL https://git.io/JDLe5) "
	 blue " 或者:   wget -N --no-check-certificate https://raw.githubusercontent.com/wuliao1223/dd/main/dd.sh && bash dd.sh "
	 blue " DD linux 常见系统 "
     blue " 此脚本源于网络，仅仅只是汇聚脚本功能，方便大家使用而已！"
      red " 默认密码: MoeClub.org "
	green "=========================================================="
	yellow " 1. Debian 10 "
	yellow " 2. Debian 11 "
	yellow " 3. Debian 9  "
	yellow " 4. Unbuntu 18 "
	yellow " 5. Unbuntu 20 "
	yellow " 6. Centos 6.10 "
		red " 0. 退出脚本 "
	 echo
    read -p "请输入数字:" num
    case "$num" in
	1)
	dd_d10
	;;
	2)
	dd_d11
	;;
	3)
	dd_d9
	;;
	4)
	dd_u18
	;;
	5)
	dd_u20
	;;
	6)
	dd_c6
	;;
	0)
	exit 0
	;;
	*)
    clear
    echo "请输入正确数字"
    sleep 2s
    start_menu
    ;;
       esac
} 
start_menu
