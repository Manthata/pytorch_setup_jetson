echo "install the dependencies (if not already onboard)"
sudo apt-get install python3-pip libopenblas-dev libopenmpi-dev libomp-dev
sudo -H pip3 install future
echo "upgrade setuptools 47.1.1 -> 57.1.0"
sudo -H pip3 install --upgrade setuptools
sudo -H pip3 install Cython
echo "install gdown to download from Google drive"
sudo -H pip3 install gdown
echoe "copy binairy"
sudo cp ~/.local/bin/gdown /usr/local/bin/gdown
echo "downloading the wheel"
gdown https://drive.google.com/uc?id=1XL6k3wfWTJVKXHvCbZSfIVdz6IDJUAkt
echo "installing PyTorch 1.8.1"
sleep 30
sudo -H pip3 install torch-1.8.1a0+56b43f4-cp36-cp36m-linux_aarch64.whl
# clean up
sleep 30
echo "Cleaning up the wheel"
rm torch-1.8.1a0+56b43f4-cp36-cp36m-linux_aarch64.whl
