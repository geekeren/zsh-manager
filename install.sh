
mkdir -p ~/.zshrc-manager
cp -r ./* ~/.zshrc-manager
ln -s ~/.zshrc-manager/zshrc /usr/local/bin/zshrc
echo "please add \n \t source ~/.zshrc-manager/zshrc.ext.sh \nto ~/.zshrc"