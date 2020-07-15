---
layout: archive
title: "Developer not verified error on a Mac"
permalink: /xlkitlearn_install
author_profile: true
---

I sent you to this page because you're trying to install XLKitLearn on a computer that is locked down in some way by your company. Unfortunately, these situations are not supported by default - it's super difficult to design an add-in that can be installed without at least basic permissions!

Nevertheless, I've written this page with potential solutions that _might_ work for you.

These solutions replace the first step of the add-in installation (either installing ```XLKitLearn.exe``` or running that command in your command line terminal on a Mac). If you're having issues *later* in the process (when you click the ```Run``` button in Excel) these instructions won't help you.

# Method 1 (Windows)

Go to the start menu, search for ```cmd``` and open a command prompt. Type ```echo %LOCALAPPDATA%``` and press enter. The terminal will print out a path (in my case in the screenshot below, it was ```C:\Users\crg2133\AppData\Local```). Copy this folder path somewhere for later.

<img src="/files/images/xlkitlearn/find_localappdata.JPG" width="40%">

Download [this zip file](https://drive.google.com/file/d/12oa3CnNC-_Maot4LZsScn0Gqfk2Co4f5/view?usp=sharing). When you open it, you should find a single folder in there called ```XLKitLearn```. Unzip this folder directly into the path you copied above. This unzipping process might take 20 minutes or so - there are a lot of files to unzip! One it's done, XLKitLearn should work as normal.

# Method 2 (Mac)

First, check that the default version of Python on your computer is Python 3. To do this, go to a terminal using the instructions on the main XLKitLearn [Mac installation instructions](/xlkitlearn/#installation-instructions---mac). In that terminal, type ```python --version``` and press enter. If the resulting version number does not start with a 3, or if you get an error, you first need to install Python 3. The easiest way to do this is to go to [this page](https://www.anaconda.com/products/individual) and download the Python 3 graphical installer.

Once you have Python 3 installed, you need to make sure you have all the packages XLKitLearn will need. The easiest way to do this is to go to your terminal again, and run the following command by typing it in and pressing "enter":

```pip install xlwings==0.19.5 pandas=1.0.5 patsy=0.5.1 numpy=1.18.5 scikit-learn=0.23.1 matplotlib=3.2.2 seaborn=0.10.1 nltk=3.5 requests=2.24.0 statsmodels=0.11.1 appscript=1.1.0 psutil=5.7.0 cryptography=2.9.2 xlrd=1.2.0```

Once this is done, go to a terminal again, and run the following command:

```xlwings runpython install```

Finally, open the XLKitLearn Excel file. You'll get the following error. Click on "Retry" (you will need to do this every time you open the Excel file).
    
<img src="/files/images/xlkitlearn/mac_noinstall_error.JPG" width="30%">

You will then be brought to a sheet with some settings. Cell B2 will currently read ```$HOME/xlkitlearn/bin/python```. Replace that with ```python```.

You should now be able to run XLKitLearn using the "run" button on the add-in tab.