SCRIPT_PATH=$(pwd)
cd ~/.vim/

mkdir autoload
mkdir bundle
mkdir colors

GREEN='\033[0;32m'
PURPLE='\033[0;35m'
NC='\033[0m'

# Pathogen
echo -e "${GREEN}Installing Pathogen...${NC}"
curl -LSso ./autoload/pathogen.vim https://tpo.pe/pathogen.vim

# Candid Color Scheme
echo -e "${GREEN}Installing color scheme...${NC}"
curl -LSso ./colors/candid.vim https://raw.githubusercontent.com/flrnprz/candid.vim/master/colors/candid.vim

cd ~/.vim/bundle/

echo -e "${GREEN}Installing ctrlp...${NC}"
git clone https://github.com/kien/ctrlp.vim.git

echo -e "${GREEN}Installing nerdtree...${NC}"
git clone https://github.com/scrooloose/nerdtree.git

echo -e "${GREEN}Installing vim-airline...${NC}"
git clone https://github.com/vim-airline/vim-airline.git

echo -e "${GREEN}Installing vim-airline-themes...${NC}"
git clone https://github.com/vim-airline/vim-airline-themes.git

echo -e "${GREEN}Installing vim-fugitive...${NC}"
git clone https://github.com/tpope/vim-fugitive.git

echo -e "${GREEN}Installing vim-multiple-cursors...${NC}"
git clone https://github.com/terryma/vim-multiple-cursors

echo -e "${GREEN}Configuring vimrc...${NC}"
cd $SCRIPT_PATH
cp vimrc ~/.vimrc

# End
echo -e "${PURPLE}Please install powerline fonts https://github.com/powerline/fonts for better support.${NC}"
echo -e "${GREEN}Done.${NC}"
