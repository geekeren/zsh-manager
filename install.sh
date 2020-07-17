
mkdir -p ~/.zshrc-manager
ln -s ~/.zshrc-manager/zshrc /usr/local/bin/zshrc
./build.sh
cp zshrc.ext.sh ~/.zshrc-manager/
echo "please add \n \t source ~/.zshrc-manager/zshrc.ext.sh \nto ~/.zshrc"