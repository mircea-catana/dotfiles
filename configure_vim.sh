SCRIPT_PATH=$(pwd)

GREEN='\033[0;32m'
PURPLE='\033[0;35m'
NC='\033[0m'

# Vim Folder Structure
if [ ! -d ~/.vim ]; then
    mkdir ~/.vim
fi

cd ~/.vim/

if [ ! -d ~/.vim/autoload ]; then
    mkdir autoload
fi

if [ ! -d ~/.vim/bundle ]; then
    mkdir bundle
fi

if [ ! -d ~/.vim/colors ]; then
    mkdir colors
fi


# Pathogen
if [ ! -f ~/.vim/autoload/pathogen.vim ]; then
    echo -e "${GREEN}Installing Pathogen...${NC}"
    curl -LSso ./autoload/pathogen.vim https://tpo.pe/pathogen.vim
else
    echo -e "${GREEN}Updating Pathogen...${NC}"
    curl -LSso ./autoload/pathogen.vim https://tpo.pe/pathogen.vim
fi

# Candid Color Scheme
if [ ! -f ~/.vim/colors/candid.vim ]; then
    echo -e "${GREEN}Installing color scheme...${NC}"
    curl -LSso ./colors/candid.vim https://raw.githubusercontent.com/flrnprz/candid.vim/master/colors/candid.vim
fi

# CTRLP
if [ ! -d ~/.vim/bundle/ctrlp.vim ]; then
    echo -e "${GREEN}Installing ctrlp...${NC}"
    cd ~/.vim/bundle/
    git clone https://github.com/kien/ctrlp.vim.git
else
    echo -e "${GREEN}Updating ctrlp...${NC}"
    cd ~/.vim/bundle/ctrlp.vim/
    git pull
fi

# NerdTree
if [ ! -d ~/.vim/bundle/nerdtree ]; then
    echo -e "${GREEN}Installing nerdtree...${NC}"
    cd ~/.vim/bundle/
    git clone https://github.com/scrooloose/nerdtree.git
else
    echo -e "${GREEN}Updating  nerdtree...${NC}"
    cd ~/.vim/bundle/nerdtree/
    git pull
fi

# Vim Airline
if [ ! -d ~/.vim/bundle/vim-airline ]; then
    echo -e "${GREEN}Installing vim-airline...${NC}"
    cd ~/.vim/bundle/
    git clone https://github.com/vim-airline/vim-airline.git
else
    echo -e "${GREEN}Updating  vim-airline...${NC}"
    cd ~/.vim/bundle/vim-airline
    git pull
fi

# Vim Airline Themes
if [ ! -d ~/.vim/bundle/vim-airline-themes ]; then
    echo -e "${GREEN}Installing vim-airline-themes...${NC}"
    cd ~/.vim/bundle/
    git clone https://github.com/vim-airline/vim-airline-themes.git
else
    echo -e "${GREEN}Updating  vim-airline-themes...${NC}"
    cd ~/.vim/bundle/vim-airline-themes/
    git pull
fi

# Vim Fugitive
if [ ! -d ~/.vim/bundle/vim-fugitive ]; then
    echo -e "${GREEN}Installing vim-fugitive...${NC}"
    cd ~/.vim/bundle/
    git clone https://github.com/tpope/vim-fugitive.git
else
    echo -e "${GREEN}Updating vim-fugitive...${NC}"
    cd ~/.vim/bundle/vim-fugitive/
    git pull
fi

# Vim Multiple Cursors
if [ ! -d ~/.vim/bundle/vim-fugitive ]; then
    echo -e "${GREEN}Installing vim-multiple-cursors...${NC}"
    cd ~/.vim/bundle/
    git clone https://github.com/terryma/vim-multiple-cursors
else
    echo -e "${GREEN}Updating vim-multiple-cursors...${NC}"
    cd ~/.vim/bundle/vim-multiple-cursors/
    git pull
fi


# VimRC
echo -e "${GREEN}Configuring vimrc...${NC}"
cd $SCRIPT_PATH
cp vimrc ~/.vimrc

# Powerline Fonts
echo -e "${GREEN}Installing powerline fonts...${NC}"
cd $SCRIPT_PATH
git clone https://github.com/powerline/fonts.git
sh fonts/install.sh
rm -rf ./fonts

# End
echo -e "${PURPLE}NOTE: Please select a POWERLINE font for your terminal!${NC}"
echo -e "${GREEN}Done.${NC}"
