---
layout: archive
title: "LendingClub Case"
permalink: /research/lc
author_profile: true
---

This page contains supplemental teaching material for the LendingClub case, which I wrote with Maxime Cohen, Kevin Jiao, and Foster Provost to teach Data Science in the context of a real dataset.

The case and teaching note were published in Big Data, and available free of charge [here](https://www.liebertpub.com/doi/full/10.1089/big.2018.0092). I have pasted the abstract of that publication below.

I addition, we are making the following files available to facilitate the teaching of the case.
  - Three Jupyter notebooks covering the analysis discussed in the case
      * [ingestion_cleaning.ipynb](/files/research/lc/ingestion_cleaning.ipynb) covering the ingestion and cleaning of the data
      * [modeling.ipynb](/files/research/lc/modeling.ipynb) covering the modeling steps
      * [modeling_leakage.ipynb](/files/research/lc/modeling_leakage.ipynb) demonstrating the risk of leakeage in the dataset, as discussed in the case itself
  - The publication above contains both questions and solutions. Some instructors have asked us for a student handout containing only questions. Here it is, in [pdf](/files/research/lc/lc_student_handout.pdf) format and [raw tex](/files/research/lc/lc_student_handout_tex.zip) format for editing.
  - The data used in the case can be downloaded directly from LendingClub [here](https://www.lendingclub.com/info/download-data.action).

Here is the abstract of the original publication above:

> We develop a number of data-driven investment strategies that demonstrate how machine learning and data analytics can be used to guide investments in peer-to-peer loans. We detail the process starting with the acquisition of (real) data from a peer-to-peer lending platform all the way to the development and evaluation of investment strategies based on a variety of approaches. We focus heavily on how to apply and evaluate the data science methods, and resulting strategies, in a real-world business setting. The material presented in this article can be used by instructors who teach data science courses, at the undergraduate or graduate levels. Importantly, we go beyond just evaluating predictive performance of models, to assess how well the strategies would actually perform, using real, publicly available data. Our treatment is comprehensive and ranges from qualitative to technical, but is also modular—which gives instructors the flexibility to focus on specific parts of the case, depending on the topics they want to cover. The learning concepts include the following: data cleaning and ingestion, classification/probability estimation modeling, regression modeling, analytical engineering, calibration curves, data leakage, evaluation of model performance, basic portfolio optimization, evaluation of investment strategies, and using Python for data science.