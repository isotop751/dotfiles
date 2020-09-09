read -p "Name: " SETUP_FOR
read -p "Email: " SETUP_FOR_EMAIL


git config --local core.editor vim
git config --local user.name $SETUP_FOR
git config --local user.email $SETUP_FOR_EMAIL