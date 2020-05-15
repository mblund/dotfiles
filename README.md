Install prefered default values
```
sudo ./macos.sh
```

Copy some default settings .files
```
./bootstrap.sh
```

Install xcode
```
xcode-select --install
```

Install homebrew
```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```


Install all default applications
```
./brew.sh

```

#Python
(https://www.andreagrandi.it/2018/12/19/installing-python-and-virtualenv-on-osx/)
Install python virtualenv globally  
```
pip install virtualenv
```
(Maybe have to use gpip3 or gpip)

I prefer to have the virtual env close to the code, not 'globally', otherwise:  
```
pip install virtualenvwrapper
```
and update .zshrc

```
cd project_folder
virtualenv venv
source venv/bin/activate
```
