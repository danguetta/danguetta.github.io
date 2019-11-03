---
layout: archive
title: "Cases and Research"
permalink: /research/
author_profile: true
---

Here is a subset of projects I've been working on, recent and not-so-recent. They range from more theoretical projects, to case studies highlighting ways businesses use these analytics in practice.
  - [Business Analytics and Pricing](#business-analytics-and-pricing)
  - [Supply Chain Management](#supply-chain-management)
  - [Miscellaneous](#miscellaneous)

Projects are ordered roughly chronologically within each section. Arrows denote expandable content. Click on them for more details.
  
See also [here](#case-studies) for a concise listing of case studies I have authored. See also my [teaching](/teaching) and [notes](/notes) for additional work.

# Business Analytics and Pricing

<details>
  <summary>Evisort: An AI-Powered Start-up Uses Text Mining to Become Google for Contracts</summary>
    
  AI-driven text mining, a relatively new business analytics tool, allows users to unlock troves of information contained in documents and make them searchable by content and metadata. In this two-part case, I first introduce Evisort, a start-up seeking to create AI-enhanced software providing contract management and processing solutions for attorneys and business professionals, and discuss the challenges and opportunities inherent in such a startup. I then provide an introduction to the science of text analytics.
    
  Review copy (stamped 'do not copy') of [part 1](/files/cases/evisort1.pdf) and [part 2](/files/cases/evisort2.pdf). Published at Columbia Caseworks ([part 1](https://www8.gsb.columbia.edu/caseworks/node/694/Evisort%253A%2BAn%2BAI-Powered%2BStart-up%2BUses%2BText%2BMining%2Bto%2BBecome%2BGoogle%2Bfor%2BContracts) and [part 2](https://www8.gsb.columbia.edu/caseworks/node/694)), and available there with full teaching notes, data files, and solutions.
</details>

<details>
    <summary>Data-Driven Investment Strategies for Peer-to-Peer Lending: A Case Study for Teaching Data Science</summary>
    
    *with Maxime Cohen, Kevin Jiao, and Foster Provost*
    
    We develop a number of data-driven investment strategies that demonstrate how machine learning and data analytics can be used to guide investments in peer-to-peer loans. We detail the process starting with the acquisition of (real) data from a peer-to-peer lending platform all the way to the development and evaluation of investment strategies based on a variety of approaches. We focus heavily on how to apply and evaluate the data science methods, and resulting strategies, in a real-world business setting. The material presented in this article can be used by instructors who teach data science courses, at the undergraduate or graduate levels. Importantly, we go beyond just evaluating predictive performance of models, to assess how well the strategies would actually perform, using real, publicly available data. Our treatment is comprehensive and ranges from qualitative to technical, but is also modular—which gives instructors the flexibility to focus on specific parts of the case, depending on the topics they want to cover. The learning concepts include the following: data cleaning and ingestion, classification/probability estimation modeling, regression modeling, analytical engineering, calibration curves, data leakage, evaluation of model performance, basic portfolio optimization, evaluation of investment strategies, and using Python for data science.
    
    Published in Big Data, and available [here](https://www.liebertpub.com/doi/full/10.1089/big.2018.0092).
</details>

# Supply Chain Management

<details>
    <summary>Two-echelon distribution systems with random demands and storage constraints</summary>

    *with Awi Federgruen and Garud Iyengar*
  
     We consider a general two‐echelon distribution system consisting of a depot and multiple sales outlets, henceforth referred to as retailers, which face random demands for a given item. The replenishment process consists of two stages: the depot procures the item from an outside supplier, while the retailers' inventories are replenished by shipments from the depot. Both of the replenishment stages are associated with a given facility-specific leadtime. The depot as well as the retailers faces a limited inventory capacity. Inventories are reviewed and orders are placed on a periodic basis. When a retailer runs out of stock, unmet demand is backlogged. We develop effective strategies to handle these kinds of problems, and show they perform exceptionally well in the vast majority of reasonable instances.
      
    [Published in Naval Research Logistics](https://onlinelibrary.wiley.com/doi/abs/10.1002/nav.21825). Draft version available [here](/files/research/single_product.pdf)
</details>
 
<details>
    <summary>Supply Chain Coordination and Contracts in the Sharing Economy - a Case Study at Cargo</summary>
  
    *with Maxime Cohen and Wenqiang Xiao*, Winner of the 2018 INFORMS Case Competition

    Cargo’s mission is to help "rideshare drivers earn more money by providing complimentary and premium products to passengers." Cargo sources goods from suppliers to provide a platform for gig economy drivers to run small convenience stores out of their vehicles. Drivers earn additional income, and riders enjoy convenient and affordable access to products during their rides. As the company grew, Cargo faced a number of supply-chain-related challenges including determining the product mix in the Cargo box, replenishment of the product, and the cost of carrying inventory. In particular, would the replenishment decision be driven by the company or the driver and who would bear the responsibility for the inventory cost? The founders also considered how to most efficiently manage its suppliers: Would a centralized or decentralized model best serve Cargo and its drivers? And, how might supply chain contracts with its suppliers help support the company’s profitable growth?
  
    Review copy (stamped 'do not copy') available [here](/files/cases/cargo.pdf). Published at [Columbia Caseworks](https://www8.gsb.columbia.edu/caseworks/node/674/Supply%2BChain%2BCoordination%2Band%2BContracts%2Bin%2Bthe%2BSharing%2BEconomy%2B-%2Ba%2BCase%2BStudy%2Bat%2BCargo), and available there with full teaching notes, data files, and solutions.
</details>

<details>
    <summary>Multi-Item Two Echelon Distribution Systems with Random Demands: Bounds and Effective Strategies</summary>
    
    *with Awi Federgruen and Garud Iyengar*
    
    We consider a general two‐echelon distribution system consisting of a depot and multiple sales outlets, henceforth referred to as retailers, which face random demands for a given item. The replenishment process consists of two stages: the depot procures the item from an outside supplier, while the retailers' inventories are replenished by shipments from the depot. Both of the replenishment stages are associated with a given facility-specific leadtime. The depot as well as the retailers faces a limited inventory capacity. Inventories are reviewed and orders are placed on a periodic basis. When a retailer runs out of stock, unmet demand is backlogged.
    
    We consider the additional complication in which there are *multiple* items to consider, possibly correlated to each other, each of which compete for storage capacity. We develop effective strategies to handle these kinds of problems, and show they perform exceptionally well in the vast majority of reasonable instances.
    
    Draft version available [here](/files/research/multi_product.pdf)
</details>

<details>
    <summary>Information Relaxation-Based Lower Bounds for The Stochastic Lot Sizing Problem with Advanced Demand Information</summary>
    
    *with Awi Federgruen and Garud Iyengar*
    
    Most models of supply chain management assume that demand is uncorrelated across periods. In other words, if I have a blockbuster day at my store today, I'm no more or less likely to have a blockbuster day tomorrow. Not only that, but they also assume that nothing I observe today can affect my beliefs about demand tomorrow. Clearly, this is almost never true. However, dealing with models that take such dependencies into account turns out to be extremely difficult. Many people have devised approximate methods for dealing with such problems, but they've never had an easy way to show that their approximate methods work well. In this paper, we devise such a method.
    
    Draft version available [here](/files/research/advanced_info.pdf)
    
</details>

<details>
    <summary>Two Echelon Distribution Systems: Applications to a Luxury Goods Retailer</summary>
    
    In this project, I was able to obtain data from a luxury goods retailer pertaining to their supply chain, in the hope of applying the algorithms in this section to this supply chain. Unfortunately, the data was such that I was unable to apply the methods above directly to this retailer. In this paper, I adapted these methods as best I could to come up with an algorithm that could be used in practice.
    
    PDF available [here](/files/research/luxury_retailer.pdf)
</details>

# Miscellaneous

# Case Studies