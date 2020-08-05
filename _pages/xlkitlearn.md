---
layout: archive
title: "XLKitLearn"
permalink: /xlkitlearn/
author_profile: true
---

Click [here](http://guetta.org/addin/version.php) to see current version number.

I wrote XLKitLearn to give students access to the full power of [scikit-learn](https://scikit-learn.org/stable/) using an Excel interface. Students use it to fit random forests, boosted trees, and carry out Latent Dirichlet Allocation on large datasets, all in Excel. It has changed the way I teach data science and analytics, in my [Business Analytics 2](/teaching/ba2) class.

Why design a brand new tool when there are others out there? See [below](#why-design-a-brand-new-tool) for my rationale. Ready to give it a try? See the installation instructions ([PC](#installation-instructions---pc) and [Mac](#installation-instructions---mac)) and [quick demos](#two-quick-demos) below.

<img src="/files/images/xlkitlearn/xlkitlearn.JPG" width="50%">

Here are the highlights
  - Ability to fit a number of linear and tree-based predictive analytic models, as well as basic text analytic capability (encoding, and Latent Dirichlet Allocation)
  - Each run of the add-in produces a full report
  - Every run outputs a piece of python code that carries out the same analysis. The code is dynamically-generated for every run to use the simplest sklearn function for the specific model being fit
  - Works natively on Windows _and_ Mac computers - no need for any parallels environment of any kind

You are welcome to use XLKitLearn for free for any purpose, but every run will be logged, together with your email address, on a server. If you want to avoid this log, either reach out to me or simply run it while disconnected from the internet.

The code is available for your perusal and copyrighted (for now, until I figure out what the right open source license is). As soon as I have a second I'll create a GitHub repo with the code in a more easily accessible format).

# Installing the add-in

XLKitLearn will likely require you to have administrative rights, both for installation and use. I have also heard anecdotal evidence that antivirus/antimalware software can prevent the addin from running. If you find that Excel shuts down every time you try to run it, feel free to contact [xlkitlearn@guetta.com](mailto:xlkitlearn@guetta.com) to see if it's an issue we've encoutered before.

Jump to installation instructions for [PC](#installation-instructions---pc) or [Mac](#installation-instructions---mac).

## Installation instructions - PC

  1. Download the [XLKitLearn installer](https://drive.google.com/uc?export=download&id=1nkGXOI49btPFC12TdTlksjU6-Q70ulS5) and install it.
  
     Note: if you have an older computer, you will need to check whether you have a 32 bit or 64 bit version of Windows. To do this, click [here](ms-settings:about?activationSource=SMC-Article-15056) to open the system settings, scroll down to "System type" and check whether it says "64-bit" or "32-bit". If it says "32-bit", do _not_ download and install the file above - instead, use the [32 bit installer](https://drive.google.com/uc?export=download&id=1VbsuuO-1zGLq-r8RjxN37Ff_WXfADRno).     
     
  2. Download [XLKitLearn.xlsm](https://drive.google.com/uc?export=download&id=1-EIEUNAtWenpJC-5uXqzlziJ8EuUW8Bc). This file contains the add-in itself. Every time you want to use the add-in, create a copy of this file, and bring your data into it.
  
  3. Open the file XLKitLearn.xlsm. Upon opening it, the file will likely be in protected mode. Unprotect it by clicking "Enable Editing":
        ![Click on Enable Editing](/files/images/xlkitlearn/unprotect.jpg)
     You will then be asked to enable Macros. Make sure you do:
        ![Click on Enable Content](/files/images/xlkitlearn/enable_macros.jpg)
  4. Once the file opens, enter your email address in the lower part of the screen. Then, click on the _first_ run button near the top of the add-in:
  
        <img src="/files/images/xlkitlearn/test_addin.jpg" width="65%">
        
     The button should turn grey and the sheet should display the addin's progress. Let it run until a new sheet appears in your Excel. If you haven't used the add-in for a while, or are using it for the first time, it is normal for Python to take a little while to load, but the entire process should take no more than 2 minutes at most.
  
  5. If the add-in runs successfully, the following screen should show up (note that the contents of cell D13 have been obscured. If you are installing this add-in as part of a class, your instructor might ask you to report the value in that cell to verify you've installed the add-in correctly):
  
        <img src="/files/images/xlkitlearn/addin_run.jpg" width="65%">
  
  6. Finally, go back to the "Add-in" sheet, and click on the other button ("Edit Settings"). Make sure you click on the first, upper “Edit Settings” button – not the lower one. The following window should pop-up:
  
        <img src="/files/images/xlkitlearn/addin_window.jpg" width="45%">  
        
If you reached this point, congratulations - you're done! You may want to look at the [demo videos](#two-quick-demos) below to discover what the add-in can do.

## Installation instructions - Mac

Note: I would usually test this myself on a Mac a borrow from ITG. Unfortunately, due to Corona, I haven't been able to borrow a Mac and I've had to rely on other peoples' Macs to test this. If you find that any of the instructions below are innacurate, or there are extra steps you have to go through, I would be so grateful if you let me know (with screenshots) by emailing ba2@guetta.com so that I can update the instructions.

  1. Bring up Spotlight Search by pressing ``Command + Space``, and type “terminal” in the search bar. Click on the terminal icon
  
        <img src="/files/images/xlkitlearn/terminal.jpg" width="45%">
        
  2. Copy and paste the following words _exactly_ into the terminal
  
        ```curl -sSL https://danguetta.github.io/files/xlkitlearn/installer.sh | bash```
     
     and then press enter (note: even on newer mac OS systems using a different default shell, you must use bash - if you don't understand what this bracket means, ignore it). You will be asked for your password, which you should enter (this is the password you use to log in to your computer):
     
        <img src="/files/images/xlkitlearn/console_password.png" width="45%">        
     
     The command should take between 2 and 5 minutes to run, and end with the text ``Successfully installed XLKitLearn!`` in green. When it has finished running, it will look something like this:
     
        <img src="/files/images/xlkitlearn/console_end.png" width="45%"> 
     
  3. Download [XLKitLearn.xlsm](https://drive.google.com/uc?export=download&id=1-EIEUNAtWenpJC-5uXqzlziJ8EuUW8Bc). This file contains the add-in itself. Every time you want to use the add-in, create a copy of this file, and bring your data into it.
  
  4. Open the file XLKitLearn.xlsm. Upon opening it, you should be asked to enable Macros:
        
        <img src="/files/images/xlkitlearn/mac_macros.jpg" width="45%">
     
  5. You will then be asked to grant access to up to three directories on your computer - to do this, click on "Select" in the window that pops up, and then click on "Grant Access". Once you have granted access to these three directories, you shouldn't need to do it again.
     
        <img src="/files/images/xlkitlearn/sandbox.png" width="100%">
  
  6. Once the file opens, enter your email address in the lower part of the screen. Then, click on the _first_ run button near the top of the add-in:
  
        <img src="/files/images/xlkitlearn/test_addin.jpg" width="65%">
          
     The button should turn grey and the sheet should display the addin's progress. Let it run until a new sheet appears in your Excel. If you haven't used the add-in for a while, or are using it for the first time, it is normal for Python to take a little while to load, but the entire process should take no more than 2 minutes at most. (If you get an error at this stage that says the developer cannot be verified, click [here](/xlkitlearn_mac_error)).
     
  7. If the add-in runs successfully, the following screen should show up (note that the contents of cell D13 have been obscured. If you are installing this add-in as part of a class, your instructor might ask you to report the value in that cell to verify you've installed the add-in correctly):
  
        <img src="/files/images/xlkitlearn/addin_run.jpg" width="65%">
  
  8. Finally, go back to the "Add-in" sheet, and click on the other button ("Edit Settings"). Make sure you click on the first, upper “Edit Settings” button – not the lower one. The following window should pop-up:
  
        <img src="/files/images/xlkitlearn/addin_window.jpg" width="45%">  

If you reached this point, congratulations - you're done! You may want to look at the [demo videos](#two-quick-demos) below to discover what the add-in can do.

# Two quick demos

Here are two short videos that demonstrate the basics of the [predictive analytics](https://www.youtube.com/watch?v=gBSiMRuHMr0) and [text analytics](https://www.youtube.com/watch?v=erCp2K81y2o) capabilities of XLKitLearn.

You might also be interested in this [introductory video](https://drive.google.com/file/d/1zu2xxmaKV6MfrkYeciTwIx-6Yoxeau8r/view?usp=sharing) I use to introduce the add-in in my classes; it discusses the general mechanics of changing the add-in settings and running it.

A more detailed user manual is forthcoming!

# Why design a brand new tool?

Before designing XLKitLearn, I did a broad search to see what other approaches existed to teach non-technical students data science. I found three approaches, but none met my needs exactly, hence my decision to create something new.
  - **Other Excel Add-ins**. A number of Excel add-ins that already exist; they function similarly to XLKitLearn, often with far more advanced functionality. I had two main concerns with using them, however, in order of importance (1) as far as I know, none of these add-ins are based on any widely-available ML libraries, and they do not make their code publicly available. This makes them limiting - it's hard to know exactly what they're doing under the hood, and there's no way to go beyond the functionality they offer. The whole idea of my class is to provide my students with the tools to communicate with data science teams in their respective companies - in that respect, it was essential for me to have a tool that would link directly back to scikitlearn (2) these add-ins typically only work natively on a PC, not on a Mac - an increasing number of my students use Mac computers, and find it cumbersome to install a parallels environment. These parallels environment are also sometimes a little unstable.
  - **No code or hands-on work**. A perfectly respectable approach is simply to eschew all hands-on work, and simply present students with the _results_ of the algorithms for discussion. This works, but I wanted my class to include the excitement - and experience - of actually working with data.
  - **Copy-pasted Code Segments**. Some classes I've seen take a 'code snippet' approach - they provide bits of Python or R code, and get students to copy and paste them. I'm not a fan of this method, and I think it the worst of all worlds. Having to worry about syntax makes it harder for students to focus on the underlying principles. It also gives students a false sense of confidence - being able to paste a piece of R code that does one specific task on one specific dataset does not a data scientist make. With the Excel approach, it is at least clear what is and isn't being taught, and students can go in-depth on the principles. A final concern is that for certain complex, highly-tuned models, the code can get pretty hairy.

I have also found that even for technical students who know how to code, using a tool that allows them to focus on the data science without worrying about the syntax can be invaluable. XLKitLearn's code output can then be used to seamlessly transition to scikit-learn.