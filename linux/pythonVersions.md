
```
sudo apt-get install software-properties-common
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt update
sudo apt install python3.8
sudo update-alternatives --install /usr/bin/python3 python /usr/bin/python3.8 2
sudo update-alternatives --install /usr/bin/python3 python /usr/bin/python3.10 1
sudo update-alternatives --config python
sudo apt install python3.8-distutils
```

When Port Audio Not Found 
```
sudo apt-get install libasound-dev
python3 -m sounddevice
sudo apt-get install libportaudio2

```

Install USB Port Power Manager 
```
git clone https://github.com/mvp/uhubctl
cd uhubctl
make
sudo make install
```
Downgrading numpy 
```
 pip3 install numpy==1.21
 ```
If the following error comes 
```
scikit_learn.libs/libgomp-d22c30c5.so.1.0.0: cannot allocate memory in static TLS block
```
Add the following for the bashrc file 
```
# Added by Lakitha 2022_08_05
export LD_PRELOAD=/home/teamlary/.local/lib/python3.8/site-packages/scikit_learn.libs/libgomp-d22c30c5.so.1.0.0

```


 
 
