---
layout: archive
title: "XLKitLearn"
permalink: /xlkitlearn/
author_profile: true
---

*Current version: 10.0*

I wrote XLKitLearn to give students access to the full power of [scikit-learn](https://scikit-learn.org/stable/) using an Excel interface. Students use it to fit random forests, boosted trees, and carry out Latent Dirichlet Allocation on large datasets, all in Excel. It has changed the way I teach data science and analytics, in my [Business Analytics 2](/teaching/ba2) class.

Why design a brand new tool when there are others out there? See [below](#why-design-a-brand-new-tool) for my rationale. Ready to give it a try? See the [installation instructions](#installing-the-add-in) and [quick demos](#two-quick-demos) below.

Here are the highlights
  - Ability to fit a number of linear and tree-based predictive analytic models, as well as basic text analytic capability (encoding, and Latent Dirichlet Allocation)
  - Each run of the add-in produces a full report
  - Every run outputs a piece of python code that carries out the same analysis. The code is dynamically-generated for every run to use the simplest sklearn function for the specific model being fit
  - Works natively on Windows _and_ Mac computers - no need for any parallels environment of any kind

You are welcome to use XLKitLearn for free for any purpose, but every run will be logged, together with your email address, on a server. If you want to avoid this log, either reach out to me or simply run it while disconnected from the internet.

The code is available for your perusal and copyrighted (for now, until I figure out what the right open source license is). As soon as I have a second I'll create a GitHub repo with the code in a more easily accessible format).

# Installing the add-in

Jump to installation instructions for [PC](#installation-instructions-pc) or [Mac](#installation-instructions-mac).

XLKitLearn will likely require you to have administrative rights, both for installation and use. I have also heard anecdotal evidence that antivirus/antimalware software can prevent the addin from running. If you find that Excel shuts down every time you try to run it, feel free to contact [xlkitlearn@guetta.com](mailto:xlkitlearn@guetta.com) to see if it's an issue we've encoutered before.

## Installation instructions - PC

  1. Download XLKitLearn.exe and install it.
  2. Download XLKitLearn.xlsm. This file contains the add-in. Every time
  3. Open the file XLKitLearn.xlsm. Upon opening it, the file will likely be in protected mode. Unprotect it by clicking "Enable Editing".
  
  You will then be asked to enable Macros. Make sure you do
  4. 

## Installation instuctions - Mac

The addin works natively on both Windows and Mac computers, but the installation instructions differ based on the platform. Follow the 

Before you install the add-in, download the [installation instructions](https://drive.google.com/open?id=1pJIO8QoFhX_k3jl2GgGLC9b2cpz1n9OQ) and the add-in [Excel file](https://drive.google.com/open?id=1BnfW9X72nygG0km-cH2_EEYgRHu-uPhQ). If you are installing the add-in on a PC, you will also need [this zip file](https://drive.google.com/open?id=1YtRCD4V1BwnfoUnwlt7RIdAUHzdsmzUP).

# Two quick demos

Here are two short videos that demonstrate the basics of the [predictive analytics](https://www.youtube.com/watch?v=gBSiMRuHMr0) and [text analytics](https://www.youtube.com/watch?v=erCp2K81y2o) capabilities of XLKitLearn. A more detailed user manual is forthcoming!

# Why design a brand new tool?

Before designing XLKitLearn, I did a broad search to see what other approaches existed to teach non-technical students data science. I found three approaches, but none of them met my needs exactly, hence my decision to create something new.
  - **Other Excel Add-ins**. A number of Excel add-ins that already exist; they function similarly to XLKitLearn, often with far more advanced functionality. I had two main concerns with using them, however, in order of importance (1) as far as I know, none of these add-ins are based on any widely-available ML libraries, and they do not make their code publicly available. This makes them very limiting - it's hard to know exactly what they're doing under the hood, and there's no way to go beyond the functionality they offer. The whole idea of my class is to provide my students the tool to communicate with data science teams in their respective companies - in that respect, it was essential for me to have a tool that would link directly back to scikitlearn (2) these add-ins typically only work natively on a PC, not on a Mac - an increasing number of my students use Mac computers, and find it cumbersome to install a parallels environment.
  - **No code or hands-on work**. A perfectly respectable approach is simply to eschew all hands-on work, and simply present students with the _results_ of the algorithms for discussion. I think this is a perfectly respectable approach, but I wanted my class to include the excitement - and experience - of actually working with data.
  - **Copy-pasted Code Segments**. Some classes I've seen take a 'code snippet' approach - they provide bits of Python or R code, and get students to copy and paste them. I'm not a fan of this method, and I think it the worst of all worlds. Having to worry about syntax provides less guidance to students, and make it harder to focus on the underlying principles. It also gives students a false sense of confidence - being able to paste a piece of R code that does one specific task on one specific dataset does not a data scientist make. With the Excel approach, it is at least clear what is and isn't being taught, and students can go in-depth on the principles. A final concern is that for certain complex, highly-tuned models, the code can get pretty hairy.