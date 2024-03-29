# # install python 3.8.16 use pyenv
# sudo apt-get install zlib1g-dev libffi-dev libreadline-dev libssl-dev libsqlite3-dev libncurses5 libncurses5-dev libncursesw5 lzma liblzma-dev libbz2-dev
# pyenv install 3.8.16
# pyenv local 3.8.16

# create and activate virtual environment
if [ ! -d '.env' ]; then
    python3 -m venv .env && echo create venv
else
    echo venv exists
fi

source .env/bin/activate

# # update pip
python -m pip install -U pip

# # torch cuda 11.3
# python -m pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu121

# # dgl cuda 11.3
# python -m pip install "dgl>=1.1" -f https://data.dgl.ai/wheels/cu121/repo.html
# python -m pip install dglgo -f https://data.dgl.ai/wheels-test/repo.html

# # install requirements
python -m pip install -r requirements.txt -i https://pypi.tuna.tsinghua.edu.cn/simple/

echo install requirements successfully!
