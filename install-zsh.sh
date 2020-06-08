#install require
sudo apt-get install toilet
sudo apt-get install jp2a

#install zsh
sudo apt-get install zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

#replace zshrc & plugin & theme
cp ~/.zshrc ~/.zshrc.bk
cp ./data/zshrc ~/.zshrc
cp ./data/byoburus.zsh-theme ~/.oh-my-zsh/themes/byoburus.zsh-theme
cp -r ./data/byoburus ~/.oh-my-zsh/plugins/byoburus

#add bavatar
cp ./data/bavatar.jpg ~/.bavatar.jpg

#for ko_KR
sudo locale-gen "ko_KR.UTF-8"

echo "..."
echo "=================================================="
echo "Install Complete"
