# hORMdb

Welcome to Human Olfactory Receptors Mutations Database, a web-based interface developed using the R package called (see, https://shiny.rstudio.com/)

The aim of this resource is to provide a curated searchable database of sequence variation in human Olfactory Receptors (hORs) to study the differences among individuals and populations with regard to the olfactory perception. 

### Instructions:

#### 1. Install R and RStudio in yout computer/laptop.

Check those links in case you have issues with this step:

- official R website: https://cran.rstudio.com/index.html

- official RStudio website: https://rstudio.com/products/rstudio/download/
  
#### 2. Download the tool from https://github.com/ramoncierco7/hORMdb. 

Remember to decompress the folder.

#### 3. Install the following R packages using this code at your RStudio console:

install.packages('shiny')

install.packages('shinythemes')

install.packages('DT')

install.packages('ggplot2')

install.packages('knitr')

install.packages('RColorBrewer')

install.packages('plyr')

install.packages('shinycssloaders')

install.packages('circlize')

install.packages('dplyr')

install.packages('feather')

#### 4. If the previous step worked successfully, you are ready to run the shiny application. It can be done in two ways:
   
a) Open the file called "app.R" from the "hORMdb-master" folder using RStudio. Then, Press the button "Run App" at the right-top side of RStudio
   
b) Type shiny::runApp('pathwaytodirectory/hORMdb-master') in your RStudio console (Remember to replace 'pathwaytodirectory' to the directory where you have the "hORMdb-master" folder)

#### 5. After the previous step, a new window from RStudio should appear. 
In addition, you can open the tool from your web browser using the hyperlink at the top-left side of this new tool (like 'http://100.0.0.1:5555', where 100.0.0.1 is the IP direction and 5555 the port that RStudio uses to show the tool)

#### 6. That's all! Enjoy this tool! For further questions don't hestiate to contact me: ramoncierco7@gmail.com

PD: Remember to install all the required packages, otherwise the program won't work!

Ramon.
