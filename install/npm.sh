  
if test ! $(which node); then
  echo "insalling node..."
  eval "$(anyenv install nodenv)"
  eval "$(nodenv init -)"
  eval "$(~/.anyenv/envs/nodenv/plugins/node-build/install.sh)"
  eval "$(nodenv install 12.13.0)"
  eval "$(nodenv global 12.13.0)"
  eval "$(nodenv rehash)"
fi

# Install Node modules
mod=(
  yarn
 	typescript-language-server
  commitizen
  cz-conventional-changelog
  write-good
  lighthouse
  expo-cli
  firebase-tools
)

echo "installing node modules..."
npm install -g ${mod[@]}
