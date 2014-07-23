Simple Data Analysis Demo
========================================================
author: A.N.
date: 7/22/2014
transition: fade

Objective
========================================================
incremental: true

The purpose of this app is to illustrate how easy it can be to do some data analysis using Shiny.
We will discuss in the next slides about the following parts

- the [data](#/data)
- The [explanatory, response and grouping](#/variables) variables
- The [regression line](#/graph)

The data
========================================================
id: data
From the [mtcars](http://stat.ethz.ch/R-manual/R-devel/library/datasets/html/mtcars.html) package with the following variables:
<ul >
<li><small><strong>mpg:</strong>   Miles/(US) gallon</small></li>
<li><small><strong> cyl:</strong>  Number of cylinders</small></li>
<li><small><strong>disp:</strong>	Displacement (cu.in.)</small></li>
<li><small><strong>hp:</strong> 	Gross horsepower</small></li>
<li><small><strong>drat:</strong>	Rear axle ratio</small></li>
<li><small><strong>wt:</strong>	  Weight (lb/1000)</small></li>
<li><small><strong>qsec:</strong>	1/4 mile time</small></li>
<li><small><strong>vs:</strong> 	V/S</small></li>
<li><small><strong>am:</strong>   Transmission (0 = automatic, 1 = manual)</small></li>
<li><small><strong>gear:</strong>	Number of forward gears</small></li>
<li><small><strong>carb:</strong>	Number of carburetors</small></li>
</ul>

The explanatory, response and grouping variables
========================================================
id:variables
- The response variable can be any of the existing variables.
- The explanatory variable can be any of the exisiting variables ex. the response variable
- the Grouping variable can only be part of `cyl`, `gear`, `vs`, `am`, `carb` if not already used as explanatory or response.


```
'data.frame':	32 obs. of  5 variables:
 $ cyl : num  6 6 4 6 8 6 8 4 4 6 ...
 $ gear: num  4 4 4 3 3 3 3 4 4 4 ...
 $ vs  : num  0 0 1 1 0 1 0 1 1 1 ...
 $ am  : num  1 1 1 0 0 0 0 0 0 0 ...
 $ carb: num  4 4 1 1 2 1 4 2 2 4 ...
```


The regression line
========================================================
id:graph

<small>It is possible to apply either a linear or a polynomial regression line on the graph.</small>

![plot of chunk unnamed-chunk-2](presentation-figure/unnamed-chunk-2.png) 

