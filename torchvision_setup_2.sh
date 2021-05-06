# the dependencies
sudo apt-get install libjpeg-dev zlib1g-dev libpython3-dev
sudo apt-get install libavcodec-dev libavformat-dev libswscale-dev
# install gdown to download from Google drive, if not done yet
sudo -H pip3 install gdown
# copy binairy
sudo cp ~/.local/bin/gdown /usr/local/bin/gdown
# download TorchVision 0.9.1
gdown https://drive.google.com/uc?id=1HYmjUrv9o2hZWVz7GpGplaKhqMPMtESL
# install TorchVision 0.9.1
sudo -H pip3 install torchvision-0.9.1a0+8fb5838-cp36-cp36m-linux_aarch64.whl
# clean up
rm torchvision-0.9.1a0+8fb5838-cp36-cp36m-linux_aarch64.whl

# update protobuf (3.15.5)
sudo -H pip3 install -U protobuf