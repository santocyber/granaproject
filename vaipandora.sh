#! /bin/sh

### BEGIN INIT INFO
# Provides:             vaipandora
# Required-Start:       $remote_fs $syslog
# Required-Stop:        $remote_fs $syslog
# Default-Start:        2 3 4 5
# Default-Stop:         
# Short-Description:    OpenBSD Secure Shell server
### END INIT INFO
#driver ubuntu
#https://community.amd.com/t5/drivers-software/can-t-install-amdgpu-drivers-on-ubuntu-20-04-1-5-4-0-56-generic/td-p/426676/page/13
#https://devtalk.blender.org/t/guide-install-amd-opencl-on-pop-os-ubuntu-some-derivates/13458/28
#sudo update-rc.d vaipandora defaults
#sudo systemctl enable vaipandora
#Miners
#cpu miner
#/cpuminer -o stratum+tcp://scrypt.eu.nicehash.com:3333 -O 39AH3vvQk9V6HTHo4uvVcZLRmbXCSFGvKd:x
#/cpuminer -o stratum+tcp://cryptonightr.eu.nicehash.com:3375 -O 39AH3vvQk9V6HTHo4uvVcZLRmbXCSFGvKd:x -a cryptolight
#ethdcrminer64 -epool  stratum+tcp://daggerhashimoto.br.nicehash.com:3353 -ewal 39AH3vvQk9V6HTHo4uvVcZLRmbXCSFGvKd.pandora -esm 3 -epsw x -tt 50 -dcri 30 -allpools 1 -ttli 50 -fanmax 80 -estale 0  &
#./nanominer -algo ethash -wallet 39AH3vvQk9V6HTHo4uvVcZLRmbXCSFGvKd -coin eth -pool1 stratum+tcp://daggerhashimoto.br.nicehash.com:3353 -rigName nanominer -email miner@mirako.org -algo randomx -wallet 39AH3vvQk9V6HTHo4uvVcZLRmbXCSFGvKd -coin xmr -pool1 stratum+tcp://cryptonightr.eu.nicehash.com:3375 -rigName nanominer -email miner@mirako.org 
 

####################INSTALANDO DEPENDENCIAS UBUNTU

#apt
# apt purge linux-generic-hwe-20.04 linux-headers-5.8.0-38-generic linux-headers-generic-hwe-20.04 linux-modules-extra-5.8.0-38-generic linux-modules-5.8.0-38-generic linux-image-generic-hwe-20.04 linux-hwe-5.8-headers-5.8.0-38 linux-image-5.8.0-38-generic
#apt install linux-modules-extra-5.4.0-62-generic linux-headers-generic linux-headers-5.4.0-62-generic linux-image-generic linux-modules-5.4.0-62-generic linux-headers-5.4.0-62 linux-image-5.4.0-62-generic linux-generic


#libclang-common-10-dev libclc-amdgcn libclc-dev libclc-r600 libllvm10 mesa-opencl-icd
# ./amdgpu-install --opencl=legacy,pal --headless --no-dkms
#Updated: sudo ./amdgpu-pro-install -y --opencl=rocr
#config.ini nanominer
#[Ethash]
#wallet=0xcfeba28610d7135850629fac732ce67958368c72
#[RandomX]
#wallet = 8BaHRsYVo2VFvApQrHwKGyPZX7SQcUz8USYeKPuuXFKDeTXcDcaFb2j7xvetky7RjFKB2f>
#[Ethash]
#wallet=39AH3vvQk9V6HTHo4uvVcZLRmbXCSFGvKd
#pool1 = daggerhashimoto.eu.nicehash.com:3353
#[RandomX]
#wallet = 39AH3vvQk9V6HTHo4uvVcZLRmbXCSFGvKd
#pool1 = randomxmonero.br.nicehash.com:3380


#Zergpool mining
#https://zergpool.com/?address=TCmenRZ97XyEtHsm5qD2o4Jv9w79j2he4x
#
#-a heavyhash -o stratum+tcp://heavyhash.mine.zergpool.com:5137 -u TCmenRZ97XyEtHsm5qD2o4Jv9w79j2he4x -p c=TRX
#-a scrypt -o stratum+tcp://scrypt.mine.zergpool.com:3433 -u TCmenRZ97XyEtHsm5qD2o4Jv9w79j2he4x -p c=TRX,mc=DOGE/LTC,ID=Antminer

##############XMRIG CONFIG
#            "algo": "ghostrider",
#            "coin": null,
#            "url": "stratum+tcp://ghostrider.na.mine.zergpool.com:5354",
#            "user": "TCmenRZ97XyEtHsm5qD2o4Jv9w79j2he4x",





## The Green Anarchy Project
#Hugreen.solar
#growhugreen
# GrANAProject
#by 
#SantoCyber

# The following part carries out specific functions depending on arguments.
case "$1" in
  start)
    echo "Starting pandora"


############ Pega Ip AUTO
#    sudo ddclient &

########### Tenta conectar no wifi AUTO
#sudo iwconfig ssid InternetSA
#sudo iwconfig ssid InternetSA2
#sudo iwconfig ssid InternetSA3


    echo "Starting Mining"


sudo sysctl -w vm.nr_hugepages=128


#################### START WILDRIG
/home/luiza/Downloads/wildrig/wildrig-multi --print-full --algo heavyhash --send-stale --opencl-threads 16 --opencl-launch 20x128 --url stratum+tcp://heavyhash.mine.zergpool.com:5137 --user TCmenRZ97XyEtHsm5qD2o4Jv9w79j2he4x --pass c=TRX,id=gpumx110 &


################### START CPUMINER
/home/luiza/Downloads/cpuminer-opt/cpuminer -a lyra2z -o stratum+tcp://lyra2z.mine.zergpool.com:4553 -u TCmenRZ97XyEtHsm5qD2o4Jv9w79j2he4x -p "c=TRX, id=cpulyra" &


################### STAR XMRIG
/home/luiza/Downloads/xmrig-6.16.4/xmrig &



##############

#cd /home/santocyber/xmr-stak/build/bin
#sudo ./xmr-stak &

#####################

#    cd /home/santo/clay/
#    ./start.bash &

##################

#    cd /home/santo/creepMiner
#    sudo ./creepMiner &

###################

    #sudo /home/santo/Downloads/clay2/ethdcrminer64 -epool  stratum+tcp://daggerhashimoto.br.nicehash.com:3353 -ewal 3NbqVaSMwMWmsJHJsHHRKhmXsV8pgeYbz1.pandora4 -esm 3 -epsw x -tt 50 -dcri 30,30,30,100 -allpools 1 -estale 0  &
    # sudo /home/santocyber/clay/ethdcrminer64 -epool  stratum+tcp://daggerhashimoto.br.nicehash.com:3353 -ewal 3NbqVaSMwMWmsJHJsHHRKhmXsV8pgeYbz1.pandora4 -esm 3 -epsw x -tt 50 -dcri 30 -rmode 1 -hstats 2 -tstop 90 -tstart 50 -ttli 80 -allpools 1 -estale 0  &

##################

#cd /home/santocyber/Downloads/nanominer/
#    sudo ./nanominer
    


#    echo "Starting pandora menos brilho"

#    xrandr --output VGA-1 --brightness 0.3 --gamma 1:1:0.5
#    sudo /home/santo/verifica &


    echo "pandora esta viva!!!"
    ;;
  stop)
    echo "Matando , exterminando servicos da pandora"

    killall -9 xmrig
    killall -9 ccminer
    killall -9 cpuminer
    killall -9 wildrig-multi 
    killall -9 nanominer
    killall -9 creepminer
    killall -9 ethdcrminer64
    killall -9 python
    killall -9 chromium
    killall -9 chrome
    killall -9 Xvfb
    killall -9 verifica
    killall -9 chromedriver
    echo "Pandora is dead"
    ;;
  *)
    echo "Usage: /etc/init.d/vaipandora {start|stop}"
    exit 1
    ;;
esac

exit 0
