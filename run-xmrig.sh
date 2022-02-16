RED="\e[31m"
GREEN="\e[32m"
ENDCOLOR="\e[0m"
YELLOW="\e[33m"
########
echo -e "${RED}Tool made by yash Deshmukh ${ENDCOLOR}" 
echo -e "${GREEN} follow on instagram www.instagram.com/yashdeshmukh01_07_04${ENDCOLOR}"
echo -e "${YELLOW}https://github.com/123yash8/xmrig-install-script-easy-for-linux/${ENDCOLOR}"
sudo apt update  
sudo apt-get install git build-essential cmake automake libtool autoconf  tmux -y
tmux
cd
 git clone https://github.com/xmrig/xmrig.git
 mkdir xmrig/build && cd xmrig/scripts
 ./build_deps.sh && cd ../build
 cmake .. -DXMRIG_DEPS=scripts/deps
 make -j$(nproc)
cd xmrig/build
chmod + x *
echo Your coin name please:-
read coin
echo your wallet address:-
read wallet
echo your worker name (put any no):-
read work
./xmrig -o rx.unmineable.com:3333 -u $coin:$wallet.$work#3c09-faja -p x
