sudo apt update && apt-get install git build-essential cmake automake libtool autoconf tmux -y
 git clone https://github.com/xmrig/xmrig.git
 mkdir xmrig/build && cd xmrig/scripts
 ./build_deps.sh && cd ../build
 cmake .. -DXMRIG_DEPS=scripts/deps
 make -j$(nproc)
 tmux
 #change your wallet address  between ":" and"."
/root/xmrig/build/./xmrig -o rx.unmineable.com:3333 -u TRX:TYrw2FwmFpqzzxTs96Qpm59z42s23S6vVV.6red#3c09-faja -p x
