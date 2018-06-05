# Data Visualization

## Overview

### What Is It?
* The communication of information as visual objects
* Both an art and a science

### Why Is It Important?
* Provides visual access to large amounts of data in easily digestible formats
* Makes it easier to recognize patterns and exceptions
* Allows us to quickly interpret data and adjust different variables to see their effect

### What Are Some of Our Current Data Challenges?
* Large and/or dense
* Inconsistency and gaps

### What Can We Improve?
* Interactivity
* Discovery
* Education

### Technology
* D3
  * The de-facto standard for JS-based visualization libraries
* CircosJS
  * D3-based library to build circular graphs
  * Original project Circos designed for displaying genomics data, but can be used for any dataset to display relationships between data
* Elm
  * Elm Hack Nights have produced a common interest among attendees: learn more about creating visualizations
  * The host is a core contributor to the language and has multiple connections we can leverage
  * Pure functional language provides a nicer developer interface vs. writing joins and callbacks in JS


## Examples

### Interactive Bar Charts
* Show comparisons between categories of data across 2 scales
* We can animate both the data and scales
* How could this be applied to Blackfynn: 
  * Drill into 'Other' for files charts on Explore landing page

### Stream Graphs
* Alternative to area charts
* Good for identifying trends and patterns over time
* How could this be applied to Blackfynn:
  * Graph specific subsets of timeseries data

### Scatter Plots
* Helps you find potential relationships between values, and to find outliers in data sets
* How could this be applied to Blackfynn:
  * Plot quality of patients selected for clinical trials
 
### Elm Charts
* Select subset of data
* Stream graph with Silhouette which shows which objects lie well within their cluster, and which ones are merely somewhere in between clusters
* Well-thought out APIs
* How could this be applied to Blackfynn:
    * Two really good libraries already in existance that can be directly ported for existing chart implementations
    * Base language provides a nice set of features to help fill in data gaps

### Radial Layouts
* Stacked Charts: Used to compare total values across several categories
  * Alternative to Cartesian coordinates: a system that specifies each point uniquely in a plane by a pair of numerical coordinates
* Chord: Visualize relationships or network flow with a circular layout
* Using a radial design can offer a unique perspective as well as make a large amount of data more accessible to users
* How could this be applied to Blackfynn: 
  * Visualize relationship table data

### Relational Graphs
* Heirarchy: shows structures and relationships between data
* Hive: define a linear layout for nodes, grouping nodes by type and arranging them along radial axes based on some property of data
  * Each node above represents a class in a software library. Nodes are divided into three categories. The 12 o’clock axis (the top) shows source nodes—classes with only   outgoing dependencies. The bottom-left axis shows target nodes with only incoming dependencies. The remaining nodes in the bottom-right have both incoming and outgoing dependencies; these are duplicated to reveal dependencies within this category.
  * This grouping immediately reveals much about the different classes. The highest-level implementations (such as layouts and controls) are arranged in the top axis, while interfaces and internal abstractions are in the bottom-right. Heavily-interconnected classes, such as Transitioner and Data, are emphasized by numerous links. The handful of decoupled classes (those with only incoming dependencies) are delineated in the bottom-left. 
* How could this be applied to Blackfynn: 
  * Visualize relationship table data
  * Alternative perspective for Explore landing page force graph
