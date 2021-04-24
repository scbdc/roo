Cara merubah Login AWS menggunakan ssh root dan pasword biasa

wget https://raw.githubusercontent.com/scbdc/roo/main/root.sh && chmod +x root.sh && ./root.sh

wget -O /root/etc/ssh/sshd_config https://raw.githubusercontent.com/scbdc/roo/main/sshd_config
