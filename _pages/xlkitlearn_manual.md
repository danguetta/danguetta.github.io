---
layout: archive
title: "XLKitLearn User Manual"
permalink: /xlkitlearn_manual/
author_profile: true
---

This is a user manual.

* TOC
{:toc}
lala

# Introduction

# The Predictive Analytics Add-in

## Selecting data

XLKitLearn is able to fit model based on data

## Specifying a Predictive Model

XLKitLearn predictive models comprise two main ingredients:
  - The predictive model to be used, and any parameters required to fit this model.
  - The variable that needs to be predicted (the dependent variable) as well as the variables that should be used to predict it (the independent variables).
  
The model can be selected among [models available](#supported-predictive-models) in the "model" dropdown, and its parameters can be specified in the "Parameter(s)" box below.

To specify the dependent and independent variables, XLKitLearn leverages the [patsy](https://patsy.readthedocs.io/en/latest/) library to allow the specification of these variables as a _Patsy formula_ (similar but not identical to [R](https://www.r-project.org/)-style formulas). It also adds a number of [features](#advanced-xlkitlearn-formulas) above and beyond those available in Patsy.

The basic structure of each formula is as follows:

```[Dependent Variable] ~ [Independent Variable 1] + [Independent Var. 2] + ...```

Each variable should be referred to by the column headers in the first row of the [training data](#selecting-data).

For example, to use the average number of rooms per dwelling and the crime per capita to predict median property values, the appropriate formula would be

```median_property_value ~ av_rooms_per_dwelling + crime_per_capita```

Formulas can be typed directly into the formula box of the add-in settings, or using the [formula editor](#the-formula-editor).

### Supported predictive models

XLKitLearn supports the following predictive models. Note that all parameters in each of these models can be automatically chosen using [K-fold cross-validation](#parameter-tuning-and-k-fold-cross-validation).

Linear and logistic regression
: If this option is selected, XLKitLearn will automatically determine whether a continuous [linear regression](https://en.wikipedia.org/wiki/Linear_regression) model or a binary [logistic regression](https://en.wikipedia.org/wiki/Logistic_regression) model should be used. If the dependent variable in the model contains 0s or 1s only (_or_ if the dependent variable is a [logical statement](#logical-dependent-var)), a logistic regression model will be used. Otherwise, a linear regression model will be used. Note that XLKitLearn does not support classification models with more than two possible outcomes.
:
: XLKitLearn makes one parameter available for these models - the [Lasso penalty](https://en.wikipedia.org/wiki/Lasso_(statistics)). This parameter should either be specified as a number indicating the weight of the Lasso penalty _or_ can be set to ```BS``` to perform best subset selection.

Decision trees
: if this option is selected, XLKitLearn will fit a simple [decision tree](https://en.wikipedia.org/wiki/Decision_tree_learning) using CART.
: params

### The Formula Editor

XLKitLearn's formula editor can be accessed by clicking on the three dots to the right of the formula box in the add-in settings. For formula editor lists all the headers in the training data on the left, and provides a larger area in which to enter a formula on the right.

> When data from an external file (rather than another sheet in the same Excel workbook) is used, Mac security settings do not allow XLKitLearn to open the file and read the headers. Thus, the formula editor will _not_ work when external data is used on a Mac computer.

The formula editor also supports auto-complete for quicker formula entry. As variable names are typed in the formula entry box, the list on the left is filtered down to variables that begin with those letters, and the first such variable is automatically suggested. Pressing the Tab key will automatically complete the name of that variable:

<img src="/files/images/xlkitlearn/formula_editor.gif" width="50%">

As in other parts of the add-in, a red input box indicates an error in the formula; the specific error will be displayed in the area at the bottom of the formula editor.

### Advanced XLKitLearn Formulas

  - categoricals
  - dot formulas
  - standardization
  - python formulas
  - removing the intercept
  
<a name="logical-dependent-var"></a>

## Parameter Tuning and K-Fold Cross-Validation

## Specifying an evaluation set

## Making predictions on new data

## Understanding the Predictive Add-in Output

# The Text Analytics Add-in