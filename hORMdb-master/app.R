##############################################################################################################################################################
##############################################################################################################################################################
##############################################################################################################################################################
##############################################################################################################################################################
##############################################################################################################################################################
##############################################################################################################################################################
##############################################################################################################################################################
##############################################################################################################################################################
##############################################################################################################################################################
##############################################################################################################################################################
##############################################################################################################################################################
##############################################################################################################################################################
################################################################### S H I N Y  A P P #########################################################################
##############################################################################################################################################################
##############################################################################################################################################################
##############################################################################################################################################################
##############################################################################################################################################################
##############################################################################################################################################################
##############################################################################################################################################################

# LOAD PACKAGES
#The following packages should be installed via runing the install.packages('package_name_here') command on RStudio Console!!
#example: install.packages('DT')
import_library = function(lib_name){suppressWarnings(suppressMessages(require(lib_name, character.only = TRUE)))}
import_library('DT'); 
import_library('shinythemes'); 
import_library('ggplot2'); 
import_library('knitr'); 
import_library('RColorBrewer')
import_library('plyr'); 
import_library('shinycssloaders'); 
import_library('circlize'); 
import_library('dplyr'); 
import_library('feather')

#Read file
if(file.exists("374_hOR_v21_07022020.feather") == FALSE){
  unzip("374_hOR_v21_07022020.zip")
}
if(file.exists("374_hOR_v21_07022020.feather") == TRUE){
  file <- read_feather("374_hOR_v21_07022020.feather")
}

##############################################################################################################################################################
##############################################################################################################################################################
##############################################################################################################################################################
##############################################################################################################################################################
##############################################################################################################################################################
##############################################################################################################################################################
### U S E R  I N T E R F A C E ###############################################################################################################################
##############################################################################################################################################################
##############################################################################################################################################################
##############################################################################################################################################################
##############################################################################################################################################################
##############################################################################################################################################################
##############################################################################################################################################################
ui <- navbarPage(title = ' ',
           
##############################################################################################################################################################
################################################################ HOME PANEL ##################################################################################
           
           tabPanel(HTML("<html><body><img id='home' src='home.png' style='width:100%; max-width:20px'></body><html>"), 
                    fluidPage(titlePanel(
                      
                      HTML("
                       <table cellSpacing=1>  
                        <tr>
                          <td>
                              <body><img id='nose' src='nose.png' style='width:100%; max-width:28px'></body>
                         </td>
                          <td> 
                            <b><strong><font size='5' color='black'>&emsp;Human Olfactory Receptor Mutation Database (hORMdb)
                            </font></strong></b>
                          </td>
                        </tr>
                      </table>
                      "))
                      
                      # <table><tr><td><strong><b><font size='5'><img id='home' src='home.png' style='width:100%; max-width:20px'>
                      #                           Home</font></b></strong></td></tr></table>"))
                      
                      , br(), 
                      theme = "mystyle.css",
                      sidebarLayout(sidebarPanel(HTML("<html>
                      <head>
                      <style>
                      div {
                        text-align: justify;
                        text-justify: inter-word;
                      }
                      /*div[id^='tab'][id$='-1'], div[id^='tab'][id$='-2'], div[id^='tab'][id$='-3'], div[id^='tab'][id$='-4'], div[id^='tab'][id$='-5'], div[id^='tab'][id$='-6'], div[id^='tab'][id$='-7'], 
                      div[id^='tab'][id$='-8'], div[id^='tab'][id$='-9'], div[id^='tab'][id$='-10'] {
                        overflow-y: scroll;
                        height: 800px;
                      }*/
                      </style>
                      </head>
                      <body>
                      <div>
                      <font size=3>
                      Welcome to hORM Database. The aim of this resource is to provide a curated searchable database <strong>of sequence variation in 
                      human Olfactory Receptors (hORs) 
                      </strong> to study the differences among individuals and populations with regard to the olfactory perception. <br><br>
                      
                      The data set provided on this interface spans <strong>almost 120.000 nucleotide mutations</strong> in hORs genes from unrelated individuals, 
                      sequenced as part of various genomic studies.  <br><br>
                      
                      In the <strong>MUTATION DATA</strong> panel, you will find the main data table with the mutation information and several filtering 
                      boxes to display selectively the content you're accessing. The selected content is automatically displayed into interactive graphs 
                      in order to facilitate the analysis and interpretation of the data (for more details visit the <strong>HELP</strong> panel).<br><br>
                      
                      <b><font size=3>➣ Content and Statistics:</font></b> <br>
                      hORM Database contains <strong>374 human Olfactory Receptors protein sequences</strong> referenced from the <strong>UniProt 
                      database</strong> (<a target='_blank' rel='noopener noreferrer' href='https://www.uniprot.org/'>Click</a>) and <b>118.057 mutations</b> extracted from <b>gnomAD database</b> 
                      (<a target='_blank' rel='noopener noreferrer' href='http://gnomad.broadinstitute.org/'>Click</a>).<br><br>
                      
                      <b><font size=3>➣ Database Construction:</font></b> <br>
                      Data extraction and analysis have been performed using <b>Python</b> (<a target='_blank' rel='noopener noreferrer' href='https://www.python.org/'>Click</a>) and <b>R</b> 
                      (<a target='_blank' rel='noopener noreferrer' href='https://www.r-project.org/'>Click</a>) scripts. 
                      The web interface has been developed using <b>Shiny R package</b> (<a target='_blank' rel='noopener noreferrer' href='https://shiny.rstudio.com/'>Click</a>).<br><br>
                      
                      
                      <b><font size=3>➣ GitHub:</font></b> <br>
                      This tool can be downloaded from the <b>GitHub repository</b> (<a target='_blank' rel='noopener noreferrer' href='https://github.com/ramoncierco7/hORMdb'>https://github.com/ramoncierco7/hORMdb</a>).<br><br>
                      
                      </font>
                      </div>
                      </body></html>"),
                                                 
                      HTML('

                        <style type="text/css">

                        .tg {
                        border-collapse: collapse;
                        border-spacing: 0;
                         }
                         
                         .tg td {
                         font-family: Arial, sans-serif;
                         font-size: 14px;
                         padding: 10px 5px;
                         border-style: solid;
                         border-width: 1px;
                         overflow: hidden;
                         word-break: normal;
                         border-color: black;
                         }
                         
                         .tg th {
                         font-family: Arial, sans-serif;
                         font-size: 14px;
                         font-weight: normal;
                         padding: 10px 5px;
                         border-style: solid;
                         border-width: 1px;
                         overflow: hidden;
                         word-break: normal;
                         border-color: black;
                         }
                         
                         .tg .tg-cly1 {
                         text-align: left;
                         vertical-align: middle
                         }
                         
                         .tg .tg-0lax {
                         text-align: left;
                         vertical-align: top
                         }
                         </style>
                         
                         <b><font size=3>➣ Browser Compatibility:</font></b> <br>

                         <table class="tg">
                         <tr>
                         <th class="tg-cly1"><b>OS</b></th>
                         <th class="tg-cly1"><b>Version</b></th>
                         <th class="tg-cly1"><b>Chrome</b><br></th>
                         <th class="tg-cly1"><b>Firefox</b></th>
                         <th class="tg-cly1"><b>Microsoft Edge</b></th>
                         <th class="tg-0lax"><b>Safari</b></th>
                         </tr>
                         <tr>
                         <td class="tg-cly1"><b>Linux</b></td>
                         <td class="tg-cly1">Ubuntu 18.04.3</td>
                         <td class="tg-cly1">78.0.3904.108</td>
                         <td class="tg-cly1">71.0</td>
                         <td class="tg-cly1">n/a</td>
                         <td class="tg-0lax">n/a</td>
                         </tr>
                         <tr>
                         <td class="tg-cly1"><b>MacOs</b></td>
                         <td class="tg-cly1">HighSierra 10.13.6</td>
                         <td class="tg-cly1">79.0.3945.88</td>
                         <td class="tg-cly1">71.0</td>
                         <td class="tg-cly1">n/a</td>
                         <td class="tg-0lax">13.0</td>
                         </tr>
                         <tr>
                         <td class="tg-cly1"><b>Windows</b></td>
                         <td class="tg-cly1">10</td>
                         <td class="tg-cly1">78.0.3904.108</td>
                         <td class="tg-cly1">71.0</td>
                         <td class="tg-cly1">44.18362.449.0</td>
                         <td class="tg-0lax">n/a</td>
                         </tr>
                         </table>
                        <br>
                        <div>
                        <font size=3>
                        We hope you enjoy the interface and find it helpful for your analysis. If you want more information about the interface, please do not hesitate to contact us! <br><br>

                        ramoncierco7@gmail.com (Ramon Cierco Jiménez)<br>
                        Angel.Gonzalez@uab.cat (Angel Gonzalez Wong)<br><br>
                        
                        Developed at <a target="_blank" rel="noopener noreferrer" href="https://www.uab.cat/">Universitat Autònoma de Barcelona</a>, <a target="_blank" rel="noopener noreferrer" href="http://lmc.uab.cat/">Laboratori de Medicina Computacional</a>. <br>
                        
                        </font>
                        </div>
                          '),    
                    
                                                 
                                                 width = 5),
                                    
                                    mainPanel(
                                      
                                      HTML('
                                      <html>
                                         <body>
                                           <img id="Wind-Rose plot of hORs mutations" src="molino_GPCR4.png" style="width:75%; max-width:1500px">
                                           <br><br>
                                        </body>')
                                      
                                      , width = 7
                                      
                                    ), #Main panel close
                                    position = ('right'), fluid = TRUE)#Sidebarlayout close
                    )#Fluid page close
           ),#Tabpanel close
           
################################################################################################################################################
################################################################ TABLE PANEL ###################################################################
           
           tabPanel(HTML("<b><font size=4 color='black'>MUTATION DATA </font></b>"), 
                    fluidPage(titlePanel(HTML("
                           <table cellSpacing=1>  
                            <tr>
                              <td>
                                  <body><img id='nose' src='dna.png' style='width:100%; max-width:28px'></body>
                             </td>
                              <td> 
                                <b><strong><font size='5' color='black'>&emsp;Mutation Data Panel
                                </font></strong></b>
                              </td>
                            </tr>
                          </table>
                          ")),                              

                              br(),
                              theme = "mystyle.css", #shinythemes::themeSelector(), 
                              
                              sidebarLayout(sidebarPanel(
                                HTML("
                                 <table cellSpacing=1>  
                                  <tr>
                                    <td>
                                        <body><img id='nose' src='find.png' style='width:100%; max-width:28px'></body>
                                   </td>
                                    <td> 
                                      <b><strong><font size='4' color='black'>&emsp;Filtering Variables
                                      </font></strong></b>
                                    </td>
                                  </tr>
                                </table>
                                "),
                                
                              br(),  

#######################################################################################################################################  
#######################################################################################################################################   
                                
                                # RESET + UPDATE
                                actionButton("reset", "Reset Filters"), actionButton("update", "Update Table/Plots"), br(), br(),
                                
                                HTML("
                                      <html>
                                      <head>
                                        <style>
                                        div {
                                          text-align: justify;
                                          text-justify: inter-word;
                                        }
                                        </style>
                                      </head> 
                                        <body>
                                        <table>
                                          <tr>
                                            <td>
                                              <div class='help-tip'>
                                              <p>
                                               This grey sidebar contains several filters related to the table at the left side.
                                               Using them you could select mutations from specific chromosomes, topological locations, type of amino acids 
                                               changes, populations and others. <br><br>
                                               As an example, if you insert '1' on 'Family' filter (Generic subpanel) and 
                                               'TM' at the 'Domain' filter (Protein subpanel), then press 'Update Table/Plots' button, the table/plots outcomes 
                                               will display all family 1 mutations located at the transmembrane regions.<br><br>
                                               
                                              </p>
                                            </div>
                                          </td>
                                        </tr>
                                      </table>
                                      </body>
                                    </html>
                                      "), br(), 
                                
#######################################################################################################################################   
#######################################################################################################################################   
                                
                                tabsetPanel(
                                  tabPanel("Generic",  br(), 
                                           
                                           # GENE FILTER
                                           selectizeInput('geneID', 
                                                          HTML(
                                                          "<table>
                                                              <tr>
                                                                <td>
                                                                  <div class='help-tip'>
                                                                    <p>Select one or more 'Gene' column entries, ALL is the default value that selects 
                                                                    the entire elements of this column. <br><br>
                                                                    Leaving the box without values will select the default value ALL.
                                                                    </p>
                                                                 </div>
                                                                </td>
                                                                <td>
                                                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                </td> 
                                                                <td>
                                                                  <strong>Gene</strong>
                                                                </td>
                                                             </tr>
                                                          </table>"),
                                                                                                          
                                                          choices = c('ALL', sort(as.character(unique(file$Gene)))),selected = "ALL", multiple = TRUE),
                                                          #selected = "ALL", multiple = TRUE, choices = NULL),
                                           
                                           ####################################################################################################################################### 
                                           # FAMILY FILTER
                                           selectizeInput('family', 
                                                          
                                                          HTML(
                                                            "<table>
                                                              <tr>
                                                                <td>
                                                                  <div class='help-tip'>
                                                                    <p>
                                                                    Select one or more 'Family' column entries, ALL is the default value 
                                                                    that selects the entire elements of this column. <br><br>
                                                                    Leaving the box without values will select the default value ALL.
                                                                    </p>
                                                                 </div>
                                                                </td>
                                                                <td>
                                                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                </td> 
                                                                <td>
                                                                  <strong>Family</strong>
                                                                </td>
                                                             </tr>
                                                          </table>"),
                                                          
                                                          choices = c('ALL', as.character(sort(as.numeric(as.character(unique(file$Family)))))),selected = "1", multiple = TRUE),
                                           
                                           ####################################################################################################################################### 
                                           # DATA SOURCE FILTER   
                                           selectizeInput('datasource', 
                                                          
                                                          HTML(
                                                            "<table>
                                                              <tr>
                                                                <td>
                                                                  <div class='help-tip'>
                                                                    <p>
                                                                    Select one or more 'Data_Source' column entries, ALL is the default value 
                                                                    that selects the entire elements of this column. <br><br>
                                                                    Leaving the box without values will select the default value ALL.
                                                                    </p>
                                                                 </div>
                                                                </td>
                                                                <td>
                                                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                </td> 
                                                                <td>
                                                                  <strong>Data Source</strong>
                                                                </td>
                                                             </tr>
                                                          </table>"),                        
                                                          
                                                          choices = c('ALL', sort(as.character(unique(file$Data_Source)))),selected = "ALL", multiple = TRUE),
                                           
                                           ####################################################################################################################################### 
                                           # ENSMBL FILTER
                                           selectizeInput('ensmbl',
                                                          
                                                          HTML(
                                                            "<table>
                                                              <tr>
                                                                <td>
                                                                  <div class='help-tip'>
                                                                    <p>
                                                                    Select one or more 'Ensmbl' column entries, ALL is the default value 
                                                                    that selects the entire elements of this column. <br><br>
                                                                    Leaving the box without values will select the default value ALL.
                                                                    </p>
                                                                 </div>
                                                                </td>
                                                                <td>
                                                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                </td> 
                                                                <td>
                                                                  <strong>Ensmbl</strong>
                                                                </td>
                                                             </tr>
                                                          </table>"),                            
                                                          
                                                          selected = "ALL", choices = c('ALL', as.character(unique(file$Ensmbl))), multiple = TRUE),
                                           #selected = "ALL", multiple = TRUE, choices = NULL),
                                           
                                           
                                           ####################################################################################################################################### 
                                           # VARIANT REFERENCE FILTER
                                           textInput('variantreference',
                                                          
                                                          HTML(
                                                            "<table>
                                                              <tr>
                                                                <td>
                                                                  <div class='help-tip'>
                                                                    <p>
                                                                    Introduce one or more gnomAD variant reference IDs separated by commas. 
                                                                    <br><br>
                                                                    Leaving the box without values will select the default value ALL.
                                                                    </p>
                                                                 </div>
                                                                </td>
                                                                <td>
                                                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                </td> 
                                                                <td>
                                                                  <strong>Variant Reference</strong>
                                                                </td>
                                                             </tr>
                                                          </table>"),                         
                                                          
                                                          #selected = "ALL", choices = c('ALL', as.character(unique(file$Variant_Reference))), multiple = TRUE),
                                                          width = NULL, placeholder = "Write down the variant references separated by coma", value = 'ALL'),
                                           
                                           #######################################################################################################################################
                                           # CHROMOSOME FILTER
                                           selectizeInput('chr',
                                                          
                                                          HTML(
                                                            "<table>
                                                              <tr>
                                                                <td>
                                                                  <div class='help-tip'>
                                                                    <p>
                                                                    Select one or more 'Chromosome' column entries, ALL is the default value 
                                                                    that selects the entire elements of this column. <br><br>
                                                                    Leaving the box without values will select the default value ALL.
                                                                    </p>
                                                                 </div>
                                                                </td>
                                                                <td>
                                                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                </td> 
                                                                <td>
                                                                  <strong>Chromosome</strong>
                                                                </td>
                                                             </tr>
                                                          </table>"),  
                                                          
                                                          choices = c('ALL', c(as.character(sort(as.numeric(as.character(mapvalues(unique(file$Chromosome), 'X', '', warn_missing = TRUE)))))), 'X'),
                                                          selected = "ALL", multiple = TRUE)), #Close tab
                                  
                                  ####################################################################################################################################### 
                                  #######################################################################################################################################  
                                  
                                  tabPanel("Mutation",  br(), 
                                           
                                           textInput('snp', 
                                                     
                                                     HTML(
                                                       "<table>
                                                              <tr>
                                                                <td>
                                                                  <div class='help-tip'>
                                                                    <p>
                                                                    Introduce one or more rsIDs (dbSNP refence) separated by commas.
                                                                    <br><br>
                                                                    Leaving the box without values will select the default value ALL.
                                                                    </p>
                                                                 </div>
                                                                </td>
                                                                <td>
                                                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                </td> 
                                                                <td>
                                                                  <strong>rsID</strong>
                                                                </td>
                                                             </tr>
                                                          </table>"),
                                                     
                                                     width = NULL, placeholder = "Write down the rsIDs separated by coma", value = 'ALL'),
                                           
                                           ####################################################################################################################################### 
                                           # CHROMOSOME POSITION FILTER
                                           textInput('position', 
                                                          
                                                          HTML(
                                                            "<table>
                                                              <tr>
                                                                <td>
                                                                  <div class='help-tip'>
                                                                    <p>
							    	    Introduce one or more chromosome positions (ref. GRCh37/hg19) separated by commas.
                                                                    <br><br>
                                                                    Leaving the box without values will select the default value ALL.
                                                                    </p>
                                                                 </div>
                                                                </td>
                                                                <td>
                                                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                </td> 
                                                                <td>
                                                                  <strong>Chromosome position</strong>
                                                                </td>
                                                             </tr>
                                                          </table>"),  
                                                          
                                                          #choices = c("ALL",sort(as.character(unique(file$Position)))),selected = "ALL", multiple = TRUE),
                                                          width = NULL, placeholder = "Write down the chr positions separated by coma", value = 'ALL'),
                                           
                                           ####################################################################################################################################### 
                                           # ANNOTATION DNA FILTER
                                           selectizeInput('annotDNA', 
                                                          
                                                          HTML(
                                                            "<table>
                                                              <tr>
                                                                <td>
                                                                  <div class='help-tip'>
                                                                    <p>
                                                                    Select one or more 'Point_Mutation' column entries, ALL is the default value 
                                                                    that selects the entire elements of this column. <br><br>
                                                                    Leaving the box without values will select the default value ALL.
                                                                    <br><br>For more information about this column check 'Point Mutation' at 'HELP' panel.
                                                                    </p>
                                                                 </div>
                                                                </td>
                                                                <td>
                                                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                </td> 
                                                                <td>
                                                                  <strong>Point Mutation</strong>
                                                                </td>
                                                             </tr>
                                                          </table>"),  
                                                          
                                                          choices = c("ALL",sort(as.character(unique(file$Point_Mutation)))),selected = "ALL", multiple = TRUE),
                                           
                                           ####################################################################################################################################### 
                                           # ORIGINAL DNA FILTER 
                                           
                                           selectizeInput('originalDNA', 
                                                          
                                                          HTML(
                                                            "<table>
                                                              <tr>
                                                                <td>
                                                                  <div class='help-tip'>
                                                                    <p>
                                                                    Select one or more 'Original_DNA' column entries, ALL is the default value 
                                                                    that selects the entire elements of this column. <br><br>
                                                                    Leaving the box without values will select the default value ALL.
                                                                    </p>
                                                                 </div>
                                                                </td>
                                                                <td>
                                                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                </td> 
                                                                <td>
                                                                  <strong>Original DNA</strong>
                                                                </td>
                                                             </tr>
                                                          </table>"),  
                                                          
                                                          choices = c("ALL", unique(file$Original_DNA[order(nchar(file$Original_DNA), file$Original_DNA)])), selected = "ALL", multiple = TRUE),
                                                          #selected = "ALL", multiple = TRUE, choices = NULL),
                                           
                                           # CHANGED DNA FILTER
                                           
                                           selectizeInput('changedDNA', 
                                                          
                                                          HTML(
                                                            "<table>
                                                              <tr>
                                                                <td>
                                                                  <div class='help-tip'>
                                                                    <p>
                                                                    Select one or more 'Changed_DNA' column entries, ALL is the default value 
                                                                    that selects the entire elements of this column. <br><br>
                                                                    Leaving the box without values will select the default value ALL.
                                                                    </p>
                                                                 </div>
                                                                </td>
                                                                <td>
                                                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                </td> 
                                                                <td>
                                                                  <strong>Changed DNA</strong>
                                                                </td>
                                                             </tr>
                                                          </table>"),         
                                                          
                                                          choices = c("ALL", unique(file$Changed_DNA[order(nchar(file$Changed_DNA), file$Changed_DNA)])),selected = "ALL", multiple = TRUE),
                                                          #selected = "ALL", multiple = TRUE, choices = NULL),
                                           
                                           ####################################################################################################################################### 
                                           # ANNOTATION CR FILTER
                                           selectizeInput('annot', 
                                                          
                                                          HTML(
                                                            "<table>
                                                              <tr>
                                                                <td>
                                                                  <div class='help-tip'>
                                                                    <p>
                                                                    Select one or more 'Mutation_Impact' column entries, ALL is the default value 
                                                                    that selects the entire elements of this column. <br><br>
                                                                    Leaving the box without values will select the default value ALL. 
                                                                    <br><br>For more information about this column check 'Mutation Impact' at 'HELP' panel.
                                                                    </p>
                                                                 </div>
                                                                </td>
                                                                <td>
                                                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                </td> 
                                                                <td>
                                                                  <strong>Mutation Impact</strong>
                                                                </td>
                                                             </tr>
                                                          </table>"),  
                                                          
                                                          choices = c("ALL",sort(as.character(unique(file$Mutation_Impact)))),selected = "ALL", multiple = TRUE),
                                           
                                           ####################################################################################################################################### 
                                           # HEMIZYGOTE FILTER
                                           tags$hr(),
                                           
                                           radioButtons("hemizyg", 
                                                        
                                                        HTML(
                                                          "<table>
                                                            <tr>
                                                              <td>
                                                                <div class='help-tip'>
                                                                  <p>
                                                                  Select ONE of the given options, each choice will affect the 'Hemizygote_Count' column:<br><br>
                                                                  'Yes' -> selects > 0 values. <br>
                                                                  'No'  -> select = 0 values. <br>
                                                                  ALL is the default value that selects the entire dataset. <br><br>
                                                                  </p>
                                                               </div>
                                                              </td>
                                                              <td>
                                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                              </td> 
                                                              <td>
                                                                <strong>Select Hemizygote Variants</strong>
                                                              </td>
                                                           </tr>
                                                        </table>"),  
                                                        
                                                        choices = list('ALL' = 'ALL', "No" = '0', "Yes" = '1'), selected = 'ALL',  inline = TRUE),
                                           
                                           ####################################################################################################################################### 
                                           #HOMOZYGOTE FILTER
                                           tags$hr(),
                                           
                                           radioButtons("homozyg",
                                                        
                                                        HTML(
                                                          "<table>
                                                            <tr>
                                                              <td>
                                                                <div class='help-tip'>
                                                                  <p>
                                                                  Select ONE of the given options, each choice will affect the 'Homozygote_Count' column:<br><br>
                                                                  'Yes' -> selects > 0 values. <br>
                                                                  'No'  -> select = 0 values. <br>
                                                                  ALL is the default value that selects the entire dataset. <br><br>
                                                                  </p>
                                                               </div>
                                                              </td>
                                                              <td>
                                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                              </td> 
                                                              <td>
                                                                <strong>Select Homozygote Variants</strong>
                                                              </td>
                                                           </tr>
                                                        </table>"),  
                                                        
                                                        choices = list('ALL' = 'ALL', "No" = '0', "Yes" = '1'), selected = 'ALL', inline = TRUE)
                                           
                                  ), #Close tab                        
                                  
                                  ##########################################################################################################################################
                                  ##########################################################################################################################################   
                                  
                                  tabPanel("Protein",  br(),
                                           
                                           #######################################################################################################################################             
                                           # UNIPROT FILTER
                                           selectizeInput('uniprot',
                                                          
                                                          HTML(
                                                            "<table>
                                                              <tr>
                                                                <td>
                                                                  <div class='help-tip'>
                                                                    <p>
                                                                    Select one or more 'UniProt' column entries, ALL is the default value that selects the entire elements of this column. <br><br>
                                                                    Leaving the box without values will select the default value ALL.
                                                                    </p>
                                                                 </div>
                                                                </td>
                                                                <td>
                                                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                </td> 
                                                                <td>
                                                                  <strong>UniProt</strong>
                                                                </td>
                                                             </tr>
                                                          </table>"),
                                                          
                                                          selected = "ALL", choices = c("ALL",as.character(unique(file$UniProt))), multiple = TRUE),
                                                          #selected = "ALL", multiple = TRUE, choices = NULL),
                                                          
                                           #######################################################################################################################################
                                           # SEQUENCE POSITION FILTER
                                           selectizeInput('sequenceposition',
                                                          
                                                          HTML(
                                                            "<table>
                                                              <tr>
                                                                <td>
                                                                  <div class='help-tip'>
                                                                    <p>
                                                                    Select one or more 'Sequence_position' column entries (protein sequence position), 
                                                                    ALL is the default value that selects the 
                                                                    entire elements of this column. <br><br>
                                                                    Leaving the box without values will select the default value ALL.
                                                                    </p>
                                                                 </div>
                                                                </td>
                                                                <td>
                                                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                </td> 
                                                                <td>
                                                                  <strong>Sequence position</strong>
                                                                </td>
                                                             </tr>
                                                          </table>"),  
                                                          
                                                          choices = c("ALL",sort(as.factor(unique(file$Sequence_position)))),selected = "ALL", multiple = TRUE),
                                           
                                           ####################################################################################################################################### 
                                           # ALIGNMENT POSITION FILTER
                                           selectizeInput('alignmentposition', 
                                                          
                                                          HTML(
                                                            "<table>
                                                              <tr>
                                                                <td>
                                                                  <div class='help-tip'>
                                                                    <p>
                                                                    Select one or more 'Alignment_position' column entries (protein sequence position on MSA), 
                                                                    ALL is the default value that selects 
                                                                    the entire elements of this column. <br><br>
                                                                    Leaving the box without values will select the default value ALL.
                                                                    <br><br>For more information about this column check 'MSA' at 'HELP' panel.
                                                                    </p>
                                                                 </div>
                                                                </td>
                                                                <td>
                                                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                </td> 
                                                                <td>
                                                                  <strong>Alignment position</strong>
                                                                </td>
                                                             </tr>
                                                          </table>"),  
                                                          
                                                          choices = c("ALL",sort(as.factor(unique(file$Alignment_position)))),selected = "ALL", multiple = TRUE),
                                           
                                           ####################################################################################################################################### 
                                           # BALLESTEROS FILTER
                                           selectizeInput('balles', 
                                                          
                                                          HTML(
                                                            "<table>
                                                              <tr>
                                                                <td>
                                                                  <div class='help-tip'>
                                                                    <p>
                                                                    Select one or more 'Ballesteros' column entries (Ballesteros-Weinstein nomenclature), 
                                                                    ALL is the default value that selects 
                                                                    the entire elements of this column. <br><br>
                                                                    Leaving the box without values will select the default value ALL.
                                                                    <br><br>For more information about this column check 'Ballesteros-Weinstein Nomenclature' at 'HELP' panel.
                                                                    </p>
                                                                 </div>
                                                                </td>
                                                                <td>
                                                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                </td> 
                                                                <td>
                                                                  <strong>Ballesteros-Weinstein position</strong>
                                                                </td>
                                                             </tr>
                                                          </table>"),  
                                                          
                                                          choices = c("ALL",sort(as.character(unique(file$Ballesteros)))),selected = "ALL", multiple = TRUE),
                                           
                                           ####################################################################################################################################### 
                                           # ORIGINAL AA FILTER 
                                           div(style="display: inline-block;vertical-align:top; width: 150px;",
                                               
                                               selectizeInput('aaoriginal', 
                                                              
                                                              HTML(
                                                                "<table>
                                                                  <tr>
                                                                    <td>
                                                                      <div class='help-tip'>
                                                                        <p>
                                                                        Select one or more 'Original_aa' column entries, ALL is the default value 
                                                                        that selects the entire elements of this column. <br><br>
                                                                        Leaving the box without values will select the default value ALL.
                                                                        </p>
                                                                     </div>
                                                                    </td>
                                                                    <td>
                                                                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                    </td> 
                                                                    <td>
                                                                      <strong>Original amino acid</strong>
                                                                    </td>
                                                                 </tr>
                                                              </table>"),
                                                              
                                                              choices = c(sort(unique(file$Original_aa))),selected = "ALL", multiple = TRUE)),
                                           
                                           div(style="display: inline-block;vertical-align:top; width: 25px;"),
                                           
                                           # CHANGED AA FILTER
                                           div(style="display: inline-block;vertical-align:top; width: 150px;",
                                               
                                               selectizeInput('aachanged', 
                                                              
                                                              HTML(
                                                                "<table>
                                                                  <tr>
                                                                    <td>
                                                                      <div class='help-tip'>
                                                                        <p>
                                                                        Select one or more 'Changed_aa' column entries, ALL is the default value 
                                                                        that selects the entire elements of this column. <br><br>
                                                                        Leaving the box without values will select the default value ALL.
                                                                        </p>
                                                                     </div>
                                                                    </td>
                                                                    <td>
                                                                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                    </td> 
                                                                    <td>
                                                                      <strong>Changed amino acid</strong>
                                                                    </td>
                                                                 </tr>
                                                              </table>"),
                                                              
                                                              choices = c(sort(unique(file$Changed_aa))),selected = "ALL", multiple = TRUE)),
                                           
                                           ####################################################################################################################################### 
                                           # MATRIX SCORE FILTER
                                           selectizeInput('matrixscore', 
                                                          
                                                          HTML(
                                                            "<table>
                                                              <tr>
                                                                <td>
                                                                  <div class='help-tip'>
                                                                    <p>
                                                                    Select one or more 'Matrix_score' column entries (substitution matrix score), 
                                                                    ALL is the default value that selects the entire elements of this column. <br><br>
                                                                    Leaving the box without values will select the default value ALL.
                                                                    <br><br>For more information about this column check 'Substitution Matrix' at 'HELP' panel.
                                                                    </p>
                                                                 </div>
                                                                </td>
                                                                <td>
                                                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                </td> 
                                                                <td>
                                                                  <strong>Substitution Matrix Score</strong>
                                                                </td>
                                                             </tr>
                                                          </table>"),
                                                          
                                                          choices = c("ALL", -4, -3, -2, -1, 0, 1, 2, 3, 4, 5, 'empty', '-'), selected = "ALL", multiple = TRUE),
                                           
                                           #######################################################################################################################################
                                           
                                           # DOMAIN FILTER
                                           selectizeInput('domain', 
                                                          
                                                          HTML(
                                                            "<table>
                                                              <tr>
                                                                <td>
                                                                  <div class='help-tip'>
                                                                    <p>
                                                                    Select one or more 'Domain' column entries, ALL is the default value that selects 
                                                                    the entire elements of this column. <br><br>
                                                                    Leaving the box without values will select the default value ALL.
                                                                    <br><br>For more information about this column check 'Protein Domain' at 'HELP' panel.
                                                                    </p>
                                                                 </div>
                                                                </td>
                                                                <td>
                                                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                </td> 
                                                                <td>
                                                                  <strong>Protein Domain</strong>
                                                                </td>
                                                             </tr>
                                                          </table>"),
                                                          
                                                          choices = c("ALL",sort(unique(file$Domain))),selected = "ALL", multiple = TRUE),
                                           
                                           ####################################################################################################################################### 
                                           # AFFECT BS FILTER
                                           tags$hr(),
                                           
                                           radioButtons('affBC', 
                                                        
                                                        HTML(
                                                          "<table>
                                                            <tr>
                                                              <td>
                                                                <div class='help-tip'>
                                                                  <p>
                                                                  Select ONE of the given options, your choice will affect the 'Affect_BC' column:<br><br>
                                                                  'Yes' -> It affects the Binding Cavity. <br>
                                                                  'No'  -> It doesn't affects the Binding Cavity <br>
                                                                  ALL is the default value that selects the entire dataset.
                                                                  
                                                                  <br><br>For more information about this column check 'Binding Cavity (BC)' at 'HELP' panel.
                                                                  </p>
                                                               </div>
                                                              </td>
                                                              <td>
                                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                              </td> 
                                                              <td>
                                                                <strong>Affect Binding Cavity (BC)</strong>
                                                              </td>
                                                           </tr>
                                                        </table>"),
                                                        
                                                        choices = c("ALL",as.character(unique(file$Affect_BC))), selected = "ALL", inline = TRUE),
                                           
                                           #######################################################################################################################################
                                           # AFFECT FC FILTER
                                           tags$hr(),
                                           
                                           radioButtons('affFC', 
                                                        
                                                        HTML(
                                                          "<table>
                                                            <tr>
                                                              <td>
                                                                <div class='help-tip'>
                                                                  <p>
                                                                  Select ONE of the given options, your choice will affect the 'Affect_FC' column:<br><br>
                                                                  'Yes' -> It affects the Molecular Functional Core. <br>
                                                                  'No'  -> It doesn't affects the Molecular Functional Core. <br>
                                                                  ALL is the default value that selects the entire dataset. 
                                                                  
                                                                  <br><br>For more information about this column check 'Functional Core (FC)' at 'HELP' panel.
                                                                  </p>
                                                               </div>
                                                              </td>
                                                              <td>
                                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                              </td> 
                                                              <td>
                                                                <strong>Affect Functional Core (FC)</strong>
                                                              </td>
                                                           </tr>
                                                        </table>"),
                                                        
                                                        choices = c("ALL",as.character(unique(file$Affect_FC))), selected = "ALL", inline = TRUE)
                                           
                                  ), #Close tab
                                  
                                  ####################################################################################################################################### 
                                  #######################################################################################################################################   
                                  
                                  tabPanel("Population",  br(),
                                           
                                           #######################################################################################################################################
                                           # African
                                           #checkboxGroupInput("african", HTML(
                                           radioButtons("african", HTML(
                                             "<table>
                                              <tr>
                                                <td>
                                                  <div class='help-tip'>
                                                    <p>
                                                      Select ONE of the given options, your choice will affect the 'Affect_African' column:<br><br>
                                                      'Yes' -> Mutations present in the African population. <br>
                                                      'No'  -> Mutations not present in the African population. <br>
                                                      ALL is the default value that selects the entire dataset.
                                                    </p>
                                                  </div>
                                                </td>
                                                <td>
                                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                </td> 
                                                <td>
                                                  <strong>African (AFR)</strong>
                                                </td>
                                              </tr>
                                             </table>"), #choices = list("No" = '0', "Yes" = '1'), selected = 'ALL', inline = TRUE),
                                             choices = list('ALL' = 'ALL', "Yes" = '1', "No" = '0'), selected = 'ALL', inline = TRUE),
                                           tags$hr(),
                                           
                                           #######################################################################################################################################
                                           # Ashkenazi.Jewish
                                           radioButtons("ashkenazi", HTML(
                                             "<table>
                                              <tr>
                                                <td>
                                                  <div class='help-tip'>
                                                    <p>
                                                      Select ONE of the given options, your choice will affect the 'Affect_Ashkenazi_Jewish' column:<br><br>
                                                      'Yes' -> Mutations present in the Ashkenazi-Jewish population. <br>
                                                      'No'  -> Mutations not present in the Ashkenazi-Jewish population. <br>
                                                      ALL is the default value that selects the entire dataset.
                                                    </p>                  
                                                  </div>
                                                </td>
                                                <td>
                                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                </td> 
                                                <td>
                                                  <strong>Ashkenazi-Jewish (ASH)</strong>
                                                </td>
                                              </tr>
                                             </table>"), choices = list('ALL' = 'ALL', "Yes" = '1', "No" = '0'), selected = 'ALL', inline = TRUE),
                                           
                                           tags$hr(),
                                           
                                           #######################################################################################################################################
                                           # # East.Asian
                                           radioButtons("eastasian", HTML(
                                             "<table>
                                              <tr>
                                                <td>
                                                  <div class='help-tip'>
                                                    <p>
                                                      Select ONE of the given options, your choice will affect the 'Affect_East_Asian' column:<br><br>
                                                      'Yes' -> Mutations present in the East Asian population. <br>
                                                      'No'  -> Mutations not present in the East Asian population. <br>
                                                      ALL is the default value that selects the entire dataset.
                                                    </p>       
                                                  </div>
                                                </td>
                                                <td>
                                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                </td> 
                                                <td>
                                                  <strong>East Asian (EA)</strong>
                                                </td>
                                              </tr>
                                          </table>"), choices = list('ALL' = 'ALL', "Yes" = '1', "No" = '0'), selected = 'ALL', inline = TRUE),
                                           
                                           tags$hr(),
                                           
                                           #######################################################################################################################################
                                           # South.Asian
                                           radioButtons("southasian", HTML(
                                             "<table>
                                              <tr>
                                                <td>
                                                  <div class='help-tip'>
                                                    <p>
                                                      Select ONE of the given options, your choice will affect the 'Affect_South_Asian' column:<br><br>
                                                      'Yes' -> Mutations present in the South Asian population. <br>
                                                      'No'  -> Mutations not present in the South Asian population. <br>
                                                      ALL is the default value that selects the entire dataset.
                                                    </p>       
                                                  </div>
                                                </td>
                                                <td>
                                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                </td> 
                                                <td>
                                                  <strong>South Asian (SA)</strong>
                                                </td>
                                            </tr>
                                           </table>"), choices = list('ALL' = 'ALL', "Yes" = '1', "No" = '0'), selected = 'ALL', inline = TRUE),
                                           
                                           tags$hr(),
                                           
                                           ######################################################################################################################################
                                           # European..Finnish.
                                           radioButtons("europeanfinnish", HTML(
                                             "<table>
                                                <tr>
                                                  <td>
                                                    <div class='help-tip'>
                                                      <p>
                                                        Select ONE of the given options, your choice will affect the 'Affect_European_Finnish' column:<br><br>
                                                        'Yes' -> Mutations present in the European Finnish population. <br>
                                                        'No'  -> Mutations not present in the European Finnish population. <br>
                                                        ALL is the default value that selects the entire dataset.
                                                      </p>   
                                                    </div>
                                                  </td>
                                                  <td>
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                  </td> 
                                                  <td>
                                                    <strong>European Finnish (EF)</strong>
                                                  </td>
                                                </tr>
                                               </table>"), choices = list('ALL' = 'ALL', "Yes" = '1', "No" = '0'), selected = 'ALL', inline = TRUE),
                                           
                                           tags$hr(),
                                           
                                           #######################################################################################################################################
                                           # European..Non.Finnish.
                                           radioButtons("europeannonfinnish", HTML(
                                             "<table>
                                              <tr>
                                                <td>
                                                  <div class='help-tip'>
                                                    <p>
                                                      Select ONE of the given options, your choice will affect the 'Affect_European_Non_Finnsih' column:<br><br>
                                                      'Yes' -> Mutations present in the European Non Finnish population. <br>
                                                      'No'  -> Mutations not present in the European Non Finnish population. <br>
                                                      ALL is the default value that selects the entire dataset.
                                                    </p>   
                                                  </div>
                                                </td>
                                                <td>
                                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                </td> 
                                                <td>
                                                  <strong>European Non Finnish (ENF)</strong>
                                                </td>
                                              </tr>
                                           </table>"), choices = list('ALL' = 'ALL', "Yes" = '1', "No" = '0'), selected = 'ALL', inline = TRUE),
                                           
                                           tags$hr(),
                                           
                                           #######################################################################################################################################
                                           # Latino
                                           radioButtons("latino", HTML(
                                             "<table>
                                              <tr>
                                                <td>
                                                  <div class='help-tip'>
                                                    <p>
                                                      Select ONE of the given options, your choice will affect the 'Affect_Latino' column:<br><br>
                                                      'Yes' -> Mutations present in the Latino population. <br>
                                                      'No'  -> Mutations not present in the Latino population. <br>
                                                      ALL is the default value that selects the entire dataset.
                                                    </p>   
                                                  </div>
                                                </td>
                                                <td>
                                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                </td> 
                                                <td>
                                                  <strong>Latino (LAT)</strong>
                                                </td>
                                              </tr>
                                             </table>"), choices = list('ALL' = 'ALL', "Yes" = '1', "No" = '0'), selected = 'ALL', inline = TRUE),
                                           
                                           tags$hr(),
                                           
                                           #######################################################################################################################################
                                           # Other
                                           radioButtons("other", HTML(
                                             "<table>
                                                <tr>
                                                  <td>
                                                    <div class='help-tip'>
                                                      <p>
                                                        Select ONE of the given options, your choice will affect the 'Affect_Other' column:<br><br>
                                                        'Yes' -> Mutations present in the Other population. <br>
                                                        'No'  -> Mutations not present in the Other population. <br>
                                                        ALL is the default value that selects the entire dataset.
                                                      </p>   
                                                    </div>
                                                  </td>
                                                  <td>
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                  </td> 
                                                  <td>
                                                    <strong>Other (OTH)</strong>
                                                  </td>
                                                </tr>
                                               </table>"), choices = list('ALL' = 'ALL', "Yes" = '1', "No" = '0'), selected = 'ALL', inline = TRUE)
                                           
                                  ), # Close Tab
                                  
                                  ####################################################################################################################################### 
                                  #######################################################################################################################################   
                                  
                                  tabPanel('Allele Frequency', br(),
                                           
                                           # ALL
                                           sliderInput("All", HTML(
                                             "<table>
                                              <tr>
                                                <td>
                                                  <div class='help-tip'>
                                                    <p>Select the generic allele frequency range, from 0 to 1, where [0,1] is the default range.</p>
                                                  </div>
                                                </td>
                                                <td>
                                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                </td>
                                                <td>
                                                  <strong>Generic</strong>
                                                </td>
                                              </tr>
                                            </table>"), 0, 1, 1, step = 0.001, value = c(0, 1)),
                                           #tags$hr(),
                                           
                                           # AFR
                                           sliderInput("af", HTML(
                                             "<table>
                                              <tr>
                                                <td>
                                                  <div class='help-tip'>
                                                    <p>Select the African population allelic frequency range, from 0 to 1, where [0,1] is the default range.</p>
                                                  </div>
                                                </td>
                                                <td>
                                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                </td>
                                                <td>
                                                  <strong>African (AFR)</strong>
                                                </td>
                                              </tr>
                                            </table>"), 0, 1, 1, step = 0.001, value = c(0, 1)),
                                           #tags$hr(),
                                           
                                           # ASH
                                           sliderInput("ashj", HTML(
                                             "<table>
                                              <tr>
                                                <td>
                                                  <div class='help-tip'>
                                                    <p>Select the Ashkenazi-Jewish population allelic frequency range, from 0 to 1, where [0,1] is the default range.</p>
                                                  </div>
                                                </td>
                                                <td>
                                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                </td>
                                                <td>
                                                  <strong>Ashkenazi-Jewish (ASH)</strong>
                                                </td>
                                              </tr>
                                            </table>"), 0, 1, 1, step = 0.001, value = c(0, 1)),
                                           #tags$hr(),
                                           
                                           # EA
                                           sliderInput("esas", HTML(
                                             "<table>
                                              <tr>
                                                <td>
                                                <div class='help-tip'>
                                                  <p>Select the East Asian population allelic frequency range, from 0 to 1, where [0,1] is the default range.</p>
                                                </div>
                                              </td>
                                              <td>
                                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                              </td>
                                              <td>
                                                <strong>East Asian (EA)</strong>
                                              </td>
                                            </tr>
                                          </table>"), 0, 1, 1, step = 0.001, value = c(0, 1)),
                                           #tags$hr(),
                                           
                                           # SA
                                           sliderInput("soas", HTML(
                                             "<table>
                                              <tr>
                                                <td>
                                                  <div class='help-tip'>
                                                    <p>Select the South Asian population allelic frequency range, from 0 to 1, where [0,1] is the default range.</p>
                                                  </div>
                                                </td>
                                                <td>
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                </td>
                                                <td>
                                                  <strong>South Asian (SA)</strong>
                                                </td>
                                              </tr>
                                            </table>"), 0, 1, 1, step = 0.001, value = c(0, 1)),
                                           #tags$hr(),
                                           
                                           # EF
                                           sliderInput("eufin", HTML(
                                             "<table>
                                              <tr>
                                                <td>
                                                  <div class='help-tip'>
                                                    <p>Select the European Finnish population allelic frequency range, from 0 to 1, where [0,1] is the default range.</p>
                                                  </div>
                                                </td>
                                                <td>
                                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                </td>
                                                <td>
                                                  <strong>European Finnish (EF)</strong>
                                                </td>
                                              </tr>
                                          </table>"), 0, 1, 1, step = 0.001, value = c(0, 1)),
                                           #tags$hr(),
                                           
                                           # ENF
                                           sliderInput("eunfin", HTML(
                                             "<table>
                                              <tr>
                                                <td>
                                                  <div class='help-tip'>
                                                    <p>Select the European Non Finnish population allelic frequency range, from 0 to 1, where [0,1] is the default range.</p>
                                                  </div>
                                                </td>
                                                <td>
                                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                </td>                      
                                                <td>
                                                  <strong>European Non Finnish (ENF)</strong>
                                                </td>
                                              </tr>
                                          </table>"), 0, 1, 1, step = 0.001, value = c(0, 1)),
                                           #tags$hr(),
                                           
                                           # LAT
                                           sliderInput("lati", HTML(
                                             "<table>
                                              <tr>
                                                <td>
                                                  <div class='help-tip'>
                                                    <p>Select the Latino population allelic frequency range, from 0 to 1, where [0,1] is the default range.</p>
                                                  </div>
                                                </td>                      
                                                <td>
                                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                </td> 
                                                <td>
                                                  <strong>Latino (LAT)</strong>
                                                </td>
                                              </tr>
                                           </table>"), 0, 1, 1, step = 0.001, value = c(0, 1)),
                                           #tags$hr(),
                                           
                                           # OTH
                                           sliderInput("othe", HTML(
                                             "<table>
                                              <tr>
                                                <td>
                                                  <div class='help-tip'>
                                                    <p>Select the Other population allelic frequency range, from 0 to 1, where [0,1] is the default range.</p>
                                                  </div>
                                                </td>
                                                <td>
                                                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                </td> 
                                                <td>
                                                  <strong>Other (OTH)</strong>
                                                </td>
                                              </tr>
                                           </table>"), 0, 1, 1, step = 0.001, value = c(0, 1))
                                           
                                  ) #Close tab
                                ) #Close tabset
                                
                                ,width = 3),  #Close sidebar panel
                                
                                ##############TABLE#########################################
                                
                                mainPanel( 
                                  
                                  tabsetPanel(
                                    
                                    tabPanel('Table', br(), br(), 
                                             
                                             # Download table Button
                                             
                                             downloadButton("downloadTable", "Download Table"), br(), br(),
                                             
                                             # Table Outcome
                                             withSpinner(DT::dataTableOutput("table"), type = "4",color = "deepskyblue",size = 2,color.background = 'white'))), br(), br(),
                                  
                                  # Your choices
                                  verbatimTextOutput("choices"), br(), br(),
                                  
                                  ##############PLOTS##########################################
                                  
                                  # RECEPTORS
                                  tabsetPanel(
                                    tabPanel("Receptors",  br(), br(),
                                             HTML(
                                               "<table>
                                                <tr>
                                                  <td>
                                                    <div class='help-tip'>
                                                      <p>
                                                        The plots are showing the number of mutations (y-axis) within hORs (x-axis). The color gradient determines 
                                                        the family for each receptor. The data is extracted from the 'Gene' column.
                                                      </p>
                                                    </div>
                                                  </td>
                                                </tr>
                                             </table>"), br(),
                                             withSpinner(plotOutput("Plot4"), type = "4",color = "deepskyblue",size = 2,color.background = 'white'), br(),
                                             withSpinner(plotOutput("Plot5"), type = "4",color = "deepskyblue",size = 2,color.background = 'white'), br(),
                                             withSpinner(plotOutput("Plot6"), type = "4",color = "deepskyblue",size = 2,color.background = 'white'), br()),
                                    
                                    # POINT MUTATION AND MUTATION IMPACT
                                    tabPanel("Point Mutation & Mutation Impact",  br(), br(),
                                             HTML(
                                               "<table>
                                                <tr>
                                                  <td>
                                                    <div class='help-tip'>
                                                      <p>
                                                        The plot shows the number of mutations (y-axis) and the mutation type (x-axis). Each color have 
                                                        associated a point mutation type. The data is extracted from the 'Point_Mutation' column.
                                                        <br><br>For more information about the point mutations nomenclature, check 'HELP' panel.
                                                      </p>
                                                    </div>
                                                  </td>
                                                </tr>
                                             </table>"), br(),
                                             withSpinner(plotOutput("Plot1"), type = "4",color = "deepskyblue",size = 2,color.background = 'white'), br(), br(),
                                             
                                             HTML(
                                               "<table>
                                                <tr>
                                                  <td>
                                                    <div class='help-tip'>
                                                      <p>
                                                        The plot shows the number of mutations (y-axis) and the mutation impact type (x-axis). Each color have 
                                                        associated a mutation impact type. The data is extracted from the 'Mutation_Impact' column.
                                                        <br><br>For more information about the mutation impact nomenclature, check 'HELP' panel.
                                                      </p>
                                                    </div>
                                                  </td>
                                                </tr>
                                             </table>"), br(),
                                             withSpinner(plotOutput("Plot2"), type = "4",color = "deepskyblue",size = 2,color.background = 'white'), br()),
                                    
                                    # ORIGINAL AA
                                    tabPanel("Original amino acids",  br(), br(),
                                             HTML(
                                               "<table>
                                                <tr>
                                                  <td>
                                                    <div class='help-tip'>
                                                      <p>
                                                        The plot shows the number of mutations (y-axis) and the original amino acid (x-axis). Each color have 
                                                        an associated amino acid type. The data is extracted from the 'Original_aa' column.
                                                      </p>
                                                    </div>
                                                  </td>
                                                </tr>
                                             </table>"), br(),
                                             withSpinner(plotOutput("Plot27"), type = "4",color = "deepskyblue",size = 2,color.background = 'white'), br(), br(),
                                             
                                             HTML(
                                               "<table>
                                                <tr>
                                                  <td>
                                                    <div class='help-tip'>
                                                      <p>
                                                        The plot shows the number of mutations (y-axis) in each family (x-axis). The color gradient determines the 
                                                        counts for each original amino acid (color legend on the right). The data is extracted from the 'Original_aa' 
                                                        and 'Family' columns. The bottom graphic display the relative frequencies instead of raw counts.
                                                      </p>
                                                    </div>
                                                  </td>
                                                </tr>
                                             </table>"), br(),
                                             withSpinner(plotOutput("Plot28"), type = "4",color = "deepskyblue",size = 2,color.background = 'white'), br(), br(),
                                             withSpinner(plotOutput("Plot29"), type = "4",color = "deepskyblue",size = 2,color.background = 'white'), br()),
                                    
                                    # CHANGED AA
                                    tabPanel("Changed amino acids",  br(), br(),
                                             HTML(
                                               "<table>
                                                <tr>
                                                  <td>
                                                    <div class='help-tip'>
                                                      <p>
                                                        The plot shows the number of mutations (y-axis) and the changed amino acid (x-axis). Each color have 
                                                        an associated amino acid type. The data is extracted from the 'Changed_aa' column.
                                                      </p>
                                                    </div>
                                                  </td>
                                                </tr>
                                             </table>"), br(),
                                             withSpinner(plotOutput("Plot30"), type = "4",color = "deepskyblue",size = 2,color.background = 'white'), br(), br(),
                                             
                                             HTML(
                                               "<table>
                                                <tr>
                                                  <td>
                                                    <div class='help-tip'>
                                                      <p>
                                                        The plot shows the number of mutations (y-axis) in each family (x-axis). The color gradient determines the 
                                                        counts for each changed amino acid (color legend on the right). The data is extracted from the 'Changed_aa' 
                                                        and 'Family' columns. The bottom graphic display the relative frequencies instead of raw counts.
                                                      </p>
                                                    </div>
                                                  </td>
                                                </tr>
                                              </table>"), br(),
                                             withSpinner(plotOutput("Plot31"), type = "4",color = "deepskyblue",size = 2,color.background = 'white'), br(), br(), 
                                             withSpinner(plotOutput("Plot32"), type = "4",color = "deepskyblue",size = 2,color.background = 'white'), br()),
                                    
                                    # SUBSTITUTION MATRIX
                                    tabPanel("Substitution matrix score",  br(), br(),
                                             HTML(
                                               "<table>
                                                <tr>
                                                  <td>
                                                    <div class='help-tip'>
                                                      <p>
                                                        The plot shows the number of mutations (y-axis) and their corresponding substitution matrix score/GPCRtm (x-axis). Each color have 
                                                        an associated score. The data is extracted from the 'Matrix_score' column.
                                                        <br><br>For more information about the substitution matrix (GPCRtm), check 'HELP' panel.
                                                      </p>
                                                    </div>
                                                  </td>
                                                </tr>
                                             </table>"), br(),
                                             withSpinner(plotOutput("Plot24"), type = "4",color = "deepskyblue",size = 2,color.background = 'white'), br(), br(),
                                             
                                             HTML(
                                               "<table>
                                                <tr>
                                                  <td>
                                                    <div class='help-tip'>
                                                      <p>
                                                        The plot shows the number of mutations (y-axis) in each family (x-axis) colored according to the substitution matrix score values  
                                                        (color legend on the right). The data is extracted from the 'Matrix_score' and 'Family' columns. 
                                                        The bottom graphic display the relative frequencies instead of raw counts.
                                                      </p>
                                                    </div>
                                                  </td>
                                                </tr>
                                             </table>"), br(),                      
                                             withSpinner(plotOutput("Plot25"), type = "4",color = "deepskyblue",size = 2,color.background = 'white'), br(), br(),
                                             withSpinner(plotOutput("Plot26"), type = "4",color = "deepskyblue",size = 2,color.background = 'white'), br()),
                                    
                                    # CHROMOSOMES
                                    tabPanel("Chromosomes",  br(), br(),
                                             HTML(
                                               "<table>
                                                <tr>
                                                  <td>
                                                    <div class='help-tip'>
                                                      <p>
                                                        The plot shows the number of mutations (y-axis) within chromosomes (x-axis). Each color have 
                                                        an associated chromosome. The data is extracted from the 'Chromosome' column.
                                                      </p>
                                                    </div>
                                                  </td>
                                                </tr>
                                             </table>"), br(),
                                             withSpinner(plotOutput("Plot7"), type = "4",color = "deepskyblue",size = 2,color.background = 'white'), br(), br(),
                                             
                                             HTML(
                                               "<table>
                                                  <tr>
                                                    <td>
                                                      <div class='help-tip'>
                                                        <p>
                                                          The plot shows the number of mutations (y-axis) at each family (x-axis) colored according to the chromosome number (color legend on the right). 
                                                          The data is extracted from the 'Chromosome' and 'Family' columns. The bottom graphic display the relative frequencies instead of raw counts.
                                                        </p>
                                                      </div>
                                                    </td>
                                                  </tr>
                                               </table>"), br(),  
                                             withSpinner(plotOutput("Plot8"), type = "4",color = "deepskyblue",size = 2,color.background = 'white'), br(), br(),
                                             withSpinner(plotOutput("Plot9"), type = "4",color = "deepskyblue",size = 2,color.background = 'white'), br()),
                                    
                                    # DOMAIN
                                    tabPanel("Protein domain",  br(), br(),
                                             HTML(
                                               "<table>
                                                <tr>
                                                  <td>
                                                    <div class='help-tip'>
                                                      <p>
                                                        The plot shows the number of mutations (y-axis) within OR protein domains (x-axis). Each color have 
                                                        an associated domain. The data is extracted from the 'Domain' column.
                                                        <br><br>For more information hORs protein domains, check 'HELP' panel.
                                                      </p>
                                                    </div>
                                                  </td>
                                                </tr>
                                             </table>"), br(),
                                             withSpinner(plotOutput("Plot10"), type = "4",color = "deepskyblue",size = 2,color.background = 'white'), br(), br(),
                                             
                                             HTML(
                                               "<table>
                                                <tr>
                                                  <td>
                                                    <div class='help-tip'>
                                                      <p>
                                                        The plot shows the number of mutations (y-axis) in each family (x-axis) colored according to the protein domains (color legend on the right).
                                                        The data is extracted from the 'Domain' and 'Family' columns. The bottom graphic display the relative frequencies instead of raw counts.
                                                      </p>
                                                    </div>
                                                  </td>
                                                </tr>
                                             </table>"), br(),
                                             withSpinner(plotOutput("Plot11"), type = "4",color = "deepskyblue",size = 2,color.background = 'white'), br(), br(),
                                             withSpinner(plotOutput("Plot12"), type = "4",color = "deepskyblue",size = 2,color.background = 'white'), br()),
                                    
                                    # BALLESTEROS
                                    tabPanel("Ballesteros Weinstein position",  br(), br(), 
                                             HTML(
                                               "<table>
                                                <tr>
                                                  <td>
                                                    <div class='help-tip'>
                                                      <p>
                                                        The plots are showing the number of mutations (y-axis) within Ballesteros-Weinstein positions (x-axis). The color gradient determines 
                                                        the family for each receptor. The data is extracted from the 'Ballesteros' column.
                                                        <br><br>For more information about the Ballesteros-Weinstein nomenclature, check 'HELP' panel.
                                                      </p>
                                                    </div>
                                                  </td>
                                                </tr>
                                             </table>"), br(),
                                             withSpinner(plotOutput("Plot22"), type = "4",color = "deepskyblue",size = 2,color.background = 'white'), br(), 
                                             withSpinner(plotOutput("Plot23"), type = "4",color = "deepskyblue",size = 2,color.background = 'white'), br()),
                                    
                                    # BS FC
                                    tabPanel("Binding cavity / Funcitonal core",  br(), br(),
                                             HTML(
                                               "<table>
                                                <tr>
                                                  <td>
                                                    <div class='help-tip'>
                                                      <p>
                                                        The plot shows the number of mutations (y-axis) with an associated role (Functional Core or Binding Cavity) (x-axis). 
                                                        Each color have an associated role, where orange represents the null value (not associated with FC or BC). The data is extracted 
                                                        from the 'Affect_FC' and 'Affect_BC' columns.
                                                        <br><br>For more information about FC and BC, check 'HELP' panel.
                                                      </p>
                                                    </div>
                                                  </td>
                                                </tr>
                                             </table>"), br(),
                                             withSpinner(plotOutput("Plot3"), type = "4",color = "deepskyblue",size = 2,color.background = 'white'), br(), br()),
                                    
                                    # ALLELE FREQUENCIES
                                    tabPanel("Populations Allele frequency",  br(), br(),
                                             HTML(
                                               "<table>
                                                  <tr>
                                                    <td>
                                                      <div class='help-tip'>
                                                        <p>
                                                          The plot shows the number of mutations (y-axis) within 8 population groups (x-axis): <br>
                                                          - African (AFR) <br>
                                                          - Ashkenazi/Jewish (ASH) <br>
                                                          - East Asian (EA) <br>
                                                          - South Asian (SA) <br>
                                                          - European Finnish (EF) <br>
                                                          - European non Finnish (ENF) <br>
                                                          - Latino (LAT) <br>
                                                          - Other (OTH) <br><br>
                                                          
                                                          Then, each population is subploted using their mutation allele frequencies value, where you can observe 7 subgroups: <br>
                                                          - less1: allele frequencies between (0.5, 1] <br>
                                                          - less0.5: allele frequencies between (0.05, 0.5] <br>
                                                          - less0.05: allele frequencies between (0.01, 0.05] <br>
                                                          - less0.01: allele frequencies between (0.001, 0.01] <br>
                                                          - less0.001: allele frequencies between (0.0001, 0.001] <br>
                                                          - less0.0001: allele frequencies between (0.00001, 0.0001] <br>
                                                          - less0.00001: allele frequencies between (0, 0.00001] <br><br>
                    
                                                          The color palette represents the allele frequencies subgroups and it's repeated on each population group (color legend on the right). 
                                                          The data is extracted from each 'Target_Population_Frequency' column.
                                                        </p>
                                                      </div>
                                                    </td>
                                                  </tr>
                           </table>"), br(),
                                             withSpinner(plotOutput("Plot13"), type = "4",color = "deepskyblue",size = 2,color.background = 'white'), br(), br(),
                                             
                                             HTML(
                                               "<table>
                                                  <tr>
                                                    <td>
                                                      <div class='help-tip'>
                                                        <p>
                                                          The following plots show a closer view of each population group. <br>
                                                          The plot description is explained on the previous 'help tip'.
                                                        </p>
                                                      </div>
                                                    </td>
                                                  </tr>
                                               </table>"), br(),
                                             withSpinner(plotOutput("Plot14"), type = "4",color = "deepskyblue",size = 2,color.background = 'white'), br(), br(),
                                             withSpinner(plotOutput("Plot15"), type = "4",color = "deepskyblue",size = 2,color.background = 'white'), br(), br(),
                                             withSpinner(plotOutput("Plot16"), type = "4",color = "deepskyblue",size = 2,color.background = 'white'), br(), br(),
                                             withSpinner(plotOutput("Plot17"), type = "4",color = "deepskyblue",size = 2,color.background = 'white'), br(), br(),
                                             withSpinner(plotOutput("Plot18"), type = "4",color = "deepskyblue",size = 2,color.background = 'white'), br(), br(),
                                             withSpinner(plotOutput("Plot19"), type = "4",color = "deepskyblue",size = 2,color.background = 'white'), br(), br(),
                                             withSpinner(plotOutput("Plot20"), type = "4",color = "deepskyblue",size = 2,color.background = 'white'), br(), br(),
                                             withSpinner(plotOutput("Plot21"), type = "4",color = "deepskyblue",size = 2,color.background = 'white')
                                             
                                    ), # Close Tab
                                    
                                    
                                    # CIRCOS PLOT
                                    tabPanel("Concurrence within populations",  br(), br(),
                                             HTML(
                                               "<table>
                                                <tr>
                                                  <td>
                                                    <div class='help-tip'>
                                                      <p>
                                                        The plot shows the number of peer interactions within 8 population groups: <br>
                                                        - African (AFR) <br>
                                                        - Ashkenazi/Jewish (ASH) <br>
                                                        - East Asian (EA) <br>
                                                        - South Asian (SA) <br>
                                                        - European Finnish (EF) <br>
                                                        - European non Finnish (ENF) <br>
                                                        - Latino (LAT) <br>
                                                        - Other (OTH) <br><br>
                  
                                                        The color palette from yellow to red represents the match size, where red is the lowest value and yellow the highest.<br><br>
                                                        At the left side of the plot, you can observe the peer interactions size between each population groups.<br><br>
                                                        The data is extracted from each 'Affect_Target_Population' column.
                                                      </p>
                                                    </div>
                                                  </td>
                                                </tr>
                                             </table>"), br(),
                                             withSpinner(plotOutput("Plot33", width = "100%", height = '600px'), type = "4",color = "deepskyblue",size = 2,
                                                         color.background = 'white'), br(), br()) # Close Tab
                                    
                                  ) #tabsetpanel
                                  , width = 9), #mainpanel
                                
                                #position = c("left", "right"), fluid = TRUE)
                                position = c("right"), fluid = TRUE)
                              
                    )#fluidpage 
           ),#tabpanel
           
           #################################################################################################################################################################
           ################################################################ HELP PANEL #####################################################################################
           
           tabPanel(HTML("<b><font size=4 color='black'>HELP</font></b>"), 
                    
                    fluidPage(titlePanel(HTML("
                           <table cellSpacing=1>  
                            <tr>
                              <td>
                                  <body><img id='nose' src='information.png' style='width:100%; max-width:28px'></body>
                             </td>
                              <td> 
                                <b><strong><font size='5' color='black'>&emsp;Help Panel
                                </font></strong></b>
                              </td>
                            </tr>
                          </table>
                          ")),      
                    
                    
                    
                    # fluidPage(titlePanel(HTML("<table><tr><td><strong><b><font size='5'>Help Panel</font></b></strong></td></tr></table>")), 
                              
                              br(),
                              
                              sidebarLayout(
                                
                                sidebarPanel(
                                
                                  HTML("
                                  <html>
                                    <head>
                                        <style>
                                        div {
                                          text-align: justify;
                                          text-justify: inter-word;
                                        }
                                        </style>
                                      </head> 
                                  <body>
                                  <div>
                                  
                                  <table cellSpacing=1>  
                                    <tr>
                                      <td>
                                          <body><img id='nose' src='paper.png' style='width:600%; max-width:28px'></body>
                                     </td>
                                      <td> 
                                        <b><strong><font size='4' color='black'>&emsp;hORs Mutation studies
                                        </font></strong></b>
                                      </td>
                                    </tr>
                                  </table> 
                                    
                                  <hr>
                                  
                                  <font size=3>
                                  
                                  ➣ OR2J3 (rs28757581), <a target='_blank' rel='noopener noreferrer'href='https://www.ncbi.nlm.nih.gov/pubmed/22714804'>PMID: 22714804</a>  <br>  
                                  <b>Genetic variation in the odorant receptor OR2J3 is associated with the ability to detect the 'grassy' smelling odor, cis-3-hexen-1-ol. </b><br>
                                  McRae JF1, Mainland JD, Jaeger SR, Adipietro KA, Matsunami H, Newcomb RD. <br>
                                  Chem Senses. 2012 Sep;37(7):585-93. doi: 10.1093/chemse/bjs049. Epub 2012 Jun 19.<br>
                                  
                                  <hr>
                                  
                                  ➣ OR5A1 (rs6591536), <a target='_blank' rel='noopener noreferrer'href='https://www.ncbi.nlm.nih.gov/pubmed/?term=23910657'>PMID:23910657</a><br>  
                                  <b>A Mendelian trait for olfactory sensitivity affects odor experience and food selection. </b><br>
                                  Jaeger SR1, McRae JF, Bava CM, Beresford MK, Hunter D, Jia Y, Chheang SL, Jin D, Peng M, Gamble JC, Atkinson KR, Axten LG, Paisley AG, Tooman L, 
                                  Pineau B, Rouse SA, Newcomb RD.<br>
                                  Curr Biol. 2013 Aug 19;23(16):1601-5. doi: 10.1016/j.cub.2013.07.030. Epub 2013 Aug 1.<br>
                                  
                                  <hr>
                                  
                                  ➣ OR7D4 (rs61729907, rs5020278), <a target='_blank' rel='noopener noreferrer'href='https://www.ncbi.nlm.nih.gov/pubmed/?term=17873857'>PMID: 17873857</a>  <br>  
                                  <b>Genetic variation in a human odorant receptor alters odour perception.</b><br>
                                  Keller A1, Zhuang H, Chi Q, Vosshall LB, Matsunami H. <br>
                                  Nature. 2007 Sep 27;449(7161):468-72. Epub 2007 Sep 16.<br><br>
                                  
                                  </font>
                                  
                                  </div></body>
                                  "),
                                  
                                  width = 4), #Close sidebarPanel 
                                
                                mainPanel(
                                  
                                  tabsetPanel(
                                    
                                    tabPanel(HTML("<html><font size=4>About hOR</font></html>"), br(), br(),
                                             
                                             HTML(
                                               '
                                  <html>
                                    <head>
                                        <style>
                                        div {
                                          text-align: justify;
                                          text-justify: inter-word;
                                        }
                                        </style>
                                      </head> 
                                  <body>
                                  <div>
                                  <b><font size=4>1. Olfaction sense description:</font></b> <br><br>
                                  
                                  <font size=3>
                                  
                                  The olfactory sense gives us the ability to detect chemical volatiles present in the environment. 
                                  The human olfactory system can discriminate between thousands of different volatiles through their 
                                  recognition by <b>Olfactory Receptors (ORs)</b> and consequent initiation of signaling cascades that transform 
                                  these chemical interaction events into electrochemical signals (<a target="_blank" rel="noopener noreferrer" href="https://www.ncbi.nlm.nih.gov/pubmed/1840504">Buck and Axel, 1991</a>). 
                                  
                                  <br><br>
                                  
                                  The image briefly describe mechanism behind Olfactory receptors and Olfactory Sensory Neurons: <br>
                                  <i>(image adapted from <a target="_blank" rel="noopener noreferrer" href="https://commons.wikimedia.org/wiki/Main_Page">https://commons.wikimedia.org/wiki/Main_Page/</a>)</i>


                                  <br><br>
                                  <img src="OR_description.png" alt="neuron" style="width:50%">
                                  <br><br>
                                  
                                  </font>
                                  
                                  <b><font size=4>2. Human Olfactory Receptors (hORs):</font></b> <br><br>
                                  
                                  <font size=3>
                                  
                                  ORs belong to the superfamily of <b>G-protein-coupled receptors (GPCR)</b>, 
                                  which are transmembrane proteins dedicated to the <b>transduction of 
                                  extracellular sensory signals</b> through second messenger cascades 
                                  controlled by different <b>heterotrimeric guanine nucleotide binding 
                                  proteins (G-proteins)</b> coupled at their intracellular regions 
                                  (<a target="_blank" rel="noopener noreferrer" href="https://www.ncbi.nlm.nih.gov/pubmed/17629961">Kobilka and Deupi, 2007</a>). <br><br>
                                  
                                  The image illustrates GPCRs mechanism when 
                                  It’s activated by an extracellular ligand: <br>
                                  <i>(image from: <a target="_blank" rel="noopener noreferrer" href="https://en.wikipedia.org/wiki/G_protein-coupled_receptor">https://en.wikipedia.org/wiki/G_protein-coupled_receptor</a>)</i>
                                  <br><br>
                                  <br><br>
                                  <img src="path.jpg" alt="pathway" style="width:50%">
                                  <br><br>
                                  
                                  </font>
                                  
                                  <b><font size=4>2.1 hORs Familes:</font></b> <br><br>
                                  
                                  <font size=3>
                                  
                                  ORs constitute the <b>largest known multigene family in the human genome</b>, 
                                  with around one thousand human olfactory receptor (hOR) genes and pseudogenes 
                                  identified. <b>In general, hORs genes are characterized 
                                  by intronless coding regions of average length of 310 codons (~1kb)</b>. From 
                                  the total pool of OR sequences in the human genome, <b>more than 60% have 
                                  been annotated as pseudogenes</b>. Thus, <b>functional human ORs are estimated 
                                  between 322 and 390 genes, divided into two main classes, 17 families 
                                  and more than 200 subfamilies</b> (<a target="_blank" rel="noopener noreferrer" href="https://www.ncbi.nlm.nih.gov/pubmed/11337468">Glusman et al., 2001</a>).
                                  
                                  <br><br>
                                  The image illustrate a <b>phylogenetic tree</b> build from a MSA of the <b>374 human ORs protein sequences</b> used in this interface (check "MSA" subpanel). The tree is rooted using 5 TAARs (trace amine-associated receptors) 
                                  amino acid sequences as outgroup:
                                  
                                  <br><br>
                                  <img src="OR_TREE.png" alt="OR_TREE" style="width:50%"
                                  <br><br>
                                  
                                  </font>
                                  
                                  <b><font size=4>2.2 hORs Nomenclature:</font></b> <br><br>
                                  
                                  <font size=3>
                                  
                                  OR gene names correspond to the recommended terms by the <b>HUGO Gene Nomenclature
                                  Committee</b> (HGNC, <a target="_blank" rel="noopener noreferrer" href="https://www.genenames.org/">https://www.genenames.org/</a>) based on a divergence evolutionary
                                  model for ORs (<a target="_blank" rel="noopener noreferrer" href="https://www.ncbi.nlm.nih.gov/pubmed/11063259">Glusman et al., 2000</a>). <b>The symbols 
                                  consist of a root "OR", followed by family numeral, subfamily letter(s), and 
                                  a numeral representing the individual gene within subfamily</b>. For example, 
                                  OR2A1 is an OR gene of family 2, subfamily A.
                                  <br><br>
                                  
                                  </font>
                                  
                                  </div>
                                  </body>
                                  </html>
                                  '), 
                                             
                                             br()),
                                    
                                    # PROTEIN DOMAIN HELP PANEL
                                    tabPanel(HTML("<html><font size=4>Protein Domain</font></html>"), br(), br(),
                                             
                                             HTML(
                                               '
                                                <html>
                                                <head>
                                                <style>
                                                    img {
                                                      display: block;
                                                      margin-left: auto;
                                                      margin-right: auto;
                                                    }
                                                    div {
                                                      text-align: justify;
                                                      text-justify: inter-word;
                                                    }
                                                </style>
                                                </head>
                                                <body>
                                                <div>
                                                <b><font size=4>Human Olfactory Receptors protein structure:</font></b> <br><br>
                                                
                                                <font size=3>
                                                
                                                hORs structure display the <b>common molecular architecture of Class A GPCRs</b>, 
                                                characterized by the presence of seven transmembrane <b>(TM 1 to 7)</b> alpha helical segments 
                                                connected to each other by three extracellular loops <b>(ECL 1 to 3)</b> and three 
                                                intracellular loops <b>(ICL 1 to 3)</b>. <br><br>
                                                
                                                This image shows <b>the structure of the prototypical GPCR Rhodopsin</b> (red cylinders and connected loops, 
                                                PDBid: <a target="_blank" rel="noopener noreferrer" href="https://www.rcsb.org/structure/3PQR">3PQR</a>) 
                                                <b>in complex with the retinal ligand</b> (yellow spheres) and <b>the associated G-protein transducin</b> (subunits G𝜶
                                                in gray, G𝜷 green and G𝜸 orange, in ribbons
                                                , PDBid: <a target="_blank" rel="noopener noreferrer" href="https://www.rcsb.org/structure/6CMO">6CMO</a>). 
                                                Topological domains in the receptor structure are labeled 1 to 7 for TM helices 
                                                (red cylinders), 3 ECL (light blue), 3 ICL (light blue) and N- C-terminal 
                                                regions (dark blue). Boundaries of the transmembrane region (TM) appear 
                                                outlined in black.
                                                <br><br>
                                                
                                                </font>
                                              
                                                <img src="gpcr.png" alt="receptors" style="width:50%"
                                                <br><br>
                                                </div>
                                                </body>
                                                </html>
                                                '
                                             ), 
                                             
                                             br()),
                                    
                                    # POINT MUTATION HELP PANEL
                                    tabPanel(HTML("<html><font size=4>Point Mutation</font></html>"), br(), br(),
                                             
                                             HTML(
                                               '
                                                <html>
                                                <head>
                                                    <style>
                                                    div {
                                                      text-align: justify;
                                                      text-justify: inter-word;
                                                    }
                                                    </style>
                                                </head>                                                  
                                                <body>
                                                <div>
                                                <b><font size=4>Point mutations:</font></b><br><br>
                                                
                                                <font size=3>
                                                
                                                A point mutation is a genetic change where a single nucleotide of a given DNA or RNA sequence is beeing altered. Those point mutations could have a huge variety 
                                                of effects on the downstream protein product—consequences. These can range from benign (e.g. synonymous mutations) to catastrophic (e.g. frameshift mutations), 
                                                with regard to protein production, composition, and function.<br><br>
                                                
                                                There are 4 main types:<br>
                                                
                                                • <b><u>Transversion</u></b>: A sequence variant where  there are interchanges of purine for pyrimidine bases, which therefore involve 
                                                exchange of one-ring and two-ring structures.<br>
                                                • <b><u>Transition</u></b>: A sequence variant where there are interchanges of two-ring purines (A, G) or of one-ring pyrimidines (C, T): they 
                                                therefore involve bases of similar shape.<br>
                                                • <b><u>Insertion</u></b>: A sequence variant where there are an addition of one or more nucleotide base pairs into their DNA sequence.<br>
                                                • <b><u>Deletion</u></b>: A sequence variant where there are a deletion of one or more nucleotide base pairs into their DNA sequence.<br><br>
                                                
                                                This image illustrates <b>the possible combinations of substitutions</b> (Transversion and Transition): <br>
                                                <i>(image from: <a target="_blank" rel="noopener noreferrer" href="https://en.wikipedia.org/wiki/Transversion">https://en.wikipedia.org/wiki/Transversion</a>)</i>
                                                
                                                </font>
                                                
                                                <br><br><br> 
                                                <img src="transitions_and_transversions.png" alt="point_mut" style="width:50%"><br>
                                                <br><br>
                                                </div>
                                                </body>
                                                </html>
                                                '), 
                                             
                                             br()),
                                    
                                    # MUTATION IMPACT HELP PANEL
                                    tabPanel(HTML("<html><font size=4>Mutation Impact</font></html>"), br(), br(),
                                             
                                             HTML(
                                               "
                                               <html>
                                               <head> 
                                                <style>
                                                div {
                                                  text-align: justify;
                                                  text-justify: inter-word;
                                                }
                                                </style>
                                              </head> 
                                              <body>
                                              <div>
                                              <b><font size=4> Mutation impact types at Coding Regions (CR):<br><br></font></b>
                                              
                                              <font size=3>
                                              
                                              • <b><u>Synonymous variant</u></b>:  A sequence variant where there is no resulting change to the encoded amino acid sequence.<br>
                                              • <b><u>Missense variant</u></b>: A sequence variant that changes one or more bases, resulting in a different amino acid sequence but where the 
                                              length is preserved.<br>
                                              • <b><u>Coding sequence variant</u></b>: A sequence variant that changes the coding sequence. <br>
                                              • <b><u>Inframe  insertion variant</u></b>: An inframe non synonymous variant that inserts bases into in the coding sequence and which results in a retention 
                                              of the reading frame of the encoded protein. <br>
                                              • <b><u>Frameshift variant</u></b>: A sequence variant which causes a disruption of the translational reading frame, because the number of nucleotides inserted 
                                              or deleted is not a multiple of three. <br><br><br>
                                              
                                              </font>
                                              
                                              <b><font size=4> Mutation impact types at Non-coding regions (NCR):<br><br></font></b>
                                              
                                              <font size=3>
                                              
                                              • <b><u>5' UTR variant</u></b>: A UTR variant of the 5' UTR.<br>
                                              • <b><u>3' UTR</u></b>: A UTR variant of the 3' UTR.<br>
                                              • <b><u>Intron variant</u></b>: A transcript variant occurring within an intron.<br>
                                              • <b><u>stop lost variant</u></b>: A sequence variant where at least one base of the terminator codon (stop) is changed, resulting in an elongated transcript.<br>
                                              • <b><u>stop gained variant</u></b>: A sequence variant whereby at least one base of a codon is changed, resulting in a premature stop codon, leading to a 
                                              shortened transcript. <br>
                                              • <b><u>splice 	region variant</u></b>: A sequence variant in which a change has occurred within the region of the splice site,either within 1-3 bases of the exon 
                                              or 3-8 bases of the intron.<br>
                                              • <b><u>splice donor variant</u></b>: A splice variant that changes the 2 base pair region at the 5' end of an intron.<br>
                                              • <b><u>splice acceptor variant</u></b>: A splice variant that changes the 2 base region at the 3' end of an intron.<br><br>
                                              
                                              </font>
                                              
                                              </div>
                                              </body>
                                              </html>
                                               "), 
                                             
                                             br()),
                                    
                                    # SUBSTITUTION MATRIX HELP PANEL
                                    tabPanel(HTML("<html><font size=4>Substitution Matrix</font></html>"), br(), br(),
                                             
                                             HTML("
                                            <html>
                                            <head>
                                                <style>
                                                div {
                                                  text-align: justify;
                                                  text-justify: inter-word;
                                                }
                                                </style>
                                            </head>   
                                            <body>
                                            <div>
                                            <b><font size=4> Substitution matrix:</font></b> <br><br>
                                            
                                            <font size=3>
                                            
                                            Amino acid changes in the hORs coding sequences were scored using the <b>G protein-coupled receptor transmembrane substitution matrix (GPCRtm)</b>, 
                                            developed by <a target='_blank' rel='noopener noreferrer' href='https://www.ncbi.nlm.nih.gov/pubmed/26134144'>Rios et al., 2015</a>. 
                                            
                                            For synonymous susbtitutions a 0 score was used. <br><br>
                                            
                                            The image corresponds to the GPCRtm: <br><br>
                                            
                                            </font>

                                            <img src='gpcrtm.jpg' alt='GPCRtm' style='width:50%'>
                                            <br><br> 
                                            </div>
                                            </body>
                                            </html>
                                            "), 
                                             
                                             br()),
                                    
                                    # MSA HELP PANEL
                                    tabPanel(HTML("<html><font size=4>MSA</font></html>"), br(), br(),
                                             
                                             HTML("<html><body>
                                             
                                            <head>
                                                <style>
                                                div {
                                                  text-align: justify;
                                                  text-justify: inter-word;
                                                }
                                                </style>
                                              </head> 
                                            <div>
                                            <b><font size=4>Multiple Sequence Alignment (MSA):</font></b> <br><br>
                                            
                                            <font size=3>
                                            
                                            <b>374 hORs protein sequences</b> were collected from <b>The Human Olfactory Data
                                            Explorer</b> (HORDE, <a target='_blank' rel='noopener noreferrer' href='https://genome.weizmann.ac.il/horde/'>https://genome.weizmann.ac.il/horde/</a>)
                                            and aligned with <b>Clustal Omega</b> (<a target='_blank' rel='noopener noreferrer' href='http://www.clustal.org/omega/'>http://www.clustal.org/omega/</a>), 
                                            using the <b>GPCRtm substitution matrix</b> (<a target='_blank' rel='noopener noreferrer' href='https://www.ncbi.nlm.nih.gov/pubmed/26134144'>Rios et al., 2015</a>). <br>
                                            The MSA was manually curated to satisfy the correspondence between conserved sequence motifs, topological arrangement and boundaries 
                                            of TM helices as observed on <b>211 Class A GPCRs</b> with known 3D-structures from the <b>GPCRdb</b> (<a target='_blank' rel='noopener noreferrer' href='https://gpcrdb.org/'>https://gpcrdb.org/</a>). <br><br>
                                            
                                            The following image displays the <b>374 hORs MSA</b> used in this interface. The structural regions of the receptors 
                                            (N- and C-terminal, TM helices, extracellular and intracellular loops, check <b>'Protein Domain'</b> subpanel) 
                                            and the positions likely involved in the receptor function (check <b>'Functional Core (FC)'</b> subpanel) or 
                                            presumably involved in odorant-receptor interactions (check <b>'Binding Cavity (BC)'</b> subpanel) are masked in the alignment. <br><br>
                                            
                                            <i>(If problems visualizing the image, press this link to download it:  
                                                  <a target='_blank' rel='noopener noreferrer' href='https://drive.google.com/open?id=1RL9LyUnB6dy02SxrYOg0wtXsYNHSMJhV'>Click</a>)</i> <br><br>
                                                  
                                                  </font>
                                                  </div></body></html>
                                                  
                                                  "),
                                             
                                             HTML('
                                            <html>
                                                 <body>
                                                 <img id="myImg" src="hOR_MSAv2.png" style="width:100%">
                                                 </body>
                                            <br><br>
                                            ')),
                                    
                                    # POPULATIONS HELP PANEL
                                    tabPanel(HTML("<html><font size=4>Population Groups</font></html>"), br(), br(),
                                             
                                             HTML(
                                             "
                                            <html>
                                            <head>
                                                <style>
                                                div {
                                                  text-align: justify;
                                                  text-justify: inter-word;
                                                }
                                                </style>
                                            </head> 
                                            <body>
                                            <div>
                                            <b><font size=4>Population Groups:</font></b> <br><br>
                                            
                                            <font size=3>
                                            
                                            The data of mutation frequencies from several human populations was extracted from 
                                            <b>gnomAD r2.0.2 release</b> (<a target='_blank' rel='noopener noreferrer' href='http://gnomad.broadinstitute.org/'>http://gnomad.broadinstitute.org/</a>). The provided data set come from 
                                            <b>125,748 exomes</b> and <b>15,708 genomes</b> from <b>141,456
                                            unrelated individuals</b> sequenced as part of various disease-specific and population genetic studies.<br><br>

                                            The mutation data in hORMdb comprise 8 population groups: <b>African (AFR), Ashkenazi-Jewish (ASH), East Asian (EA), 
                                            South Asian (SA), European Finnish (EF), European non-Finnish (ENF), Latino (LAT)</b> and <b>Other (OTH).</b> <br><br>
                                           
                                           This image illustrate a detailed view of the <b>gnomAD population data set</b>: <br>
                                           <i>(image from: <a target='_blank' rel='noopener noreferrer' href='https://macarthurlab.org/2018/10/17/gnomad-v2-1/'>https://macarthurlab.org/2018/10/17/gnomad-v2-1/</a>)</i>
                                           <br><br>
                                           
                                           </font>
                                              
                                           <img src='populations.png' alt='populations' style='width:45%'>
                                           <br><br>     
                                           </div>
                                           </body>
                                           </html>
                                            "), 
                                             
                                             br()),
                                    
                                    # BALLESTEROS-WEINSTEIN HELP PANEL
                                    tabPanel(HTML("<html><font size=4>Ballesteros-Weinstein Nomenclature</font></html>"), br(), br(),
                                             
                                             HTML(
                                               '
                                              <html>
                                              <head>
                                                <style>
                                                div {
                                                  text-align: justify;
                                                  text-justify: inter-word;
                                                }
                                                </style>
                                              </head> 
                                              <body>
                                              <div>
                                              <b><font size=4>Ballesteros-Weinstein Nomenclature:</font></b> <br><br>
                                              
                                              <font size=3>
                                              
                                              <b>Generic numbering system developed by Ballesteros and Weinstein</b> (<a target="_blank" rel="noopener noreferrer" href="https://doi.org/10.1016/S1043-9471(05)80049-7">Methods Neurosci 25:366-428 1995</a>) 
                                              that allows <b>comparison of equivalent positions in the GPCR family</b>. This nomenclature consists of <b>two numbers</b>: the first (1–7) 
                                              corresponds to the helix in which the amino acid of interest is located, while the second indicates its position 
                                              with respect the most conserved residue (arbitrarily assigned as 50) in the helix. <br><br>

                                              This image illustrates the <b>Ballesteros-Weinstein</b> notation in the TMs regions corresponding to 9 class A GPCRs with 
                                              an associated crystal structure (superposed structures at the bottom right side) and 17 representative hORs (one for each family). 
                                              In addition, a nomenclature system was applied to the conserved 10 residue region of hORs in the ECL2 (located between TM4 and TM5). <br><br>
                                              
                                              </font>
                                            
                                              <p><img src="ballesteros.png" alt="ballesteros" style="width:100%"></p>
                                              <br><br>
                                              </div>
                                              </body>
                                              '
                                             ), 
                                             
                                             br()),
                                    
                                    # BINDING CAVITY HELP PANEL
                                    tabPanel(HTML("<html><font size=4>Binding Cavity (BC)</font></html>"), br(), br(),
                                             
                                             HTML(
                                               '
                                              <html>
                                              <head>
                                                <style>
                                                div {
                                                  text-align: justify;
                                                  text-justify: inter-word;
                                                }
                                                body,div,table,thead,tbody,tfoot,tr,th,td,p { font-family:"Calibri"; font-size:small }
                                                a.comment-indicator:hover + comment { background:#ffd; position:absolute; display:block; border:1px solid black; padding:0.5em;  } 
                                                a.comment-indicator { background:red; display:inline-block; border:1px solid black; width:0.5em; height:0.5em;  } 
                                                comment { display:none;  } 
                                                </style>
                                              </head> 
                                              <body>
                                              <div>
                                              <b><font size=4>Protein Binding Cavity (BC):</font></b> <br><br>
                                              
                                              <font size=3>
                                              
                                              A predefined set of <b>30 topological positions that presumably take part in odorant-receptor interactions</b>.
                                              This (BC) set is based on the selection of <b>residues within a distance ≤ 4.0 Å of ligands in 39 reference crystal structures of Class A GPCRs ligand-receptor complexes</b>. <br><br>

                                              The following image illustrates the <b>BC</b> positions in <b>green colored balls</b> with the associated Ballesteros-Weinstein 
                                              numbering (check <b>"Ballesteros-Weinstein Nomenclature"</b> subpanel). 

                                              <br><br><br>
                                              
                                              </font>
                                              
                                              <p><img src="snakeBS.png" alt="BC" style="width:50%"></p>
                                              <br><br><br><br><br>&nbsp;
                                             
                                              <table cellspacing="0" border="0">
                                                <colgroup span="9" width="200"></colgroup>
                                                <tr>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" height="47" align="center" valign=middle bgcolor="#D9D9D9"><b><font face="Calibri" color="#000000">UniProtKB/Swiss-Prot entry name</font></b></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle bgcolor="#D9D9D9"><b><font face="Calibri" color="#000000">Receptor Name</font></b></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle bgcolor="#D9D9D9"><b><font face="Calibri" color="#000000">Class</font></b></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle bgcolor="#D9D9D9"><b><font face="Calibri" color="#000000">Organism</font></b></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle bgcolor="#D9D9D9"><b><font face="Calibri" color="#000000">Exp. Method</font></b></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle bgcolor="#D9D9D9"><b><font face="Calibri" color="#000000">Resolution</font></b></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle bgcolor="#D9D9D9"><b><font face="Calibri" color="#000000">Ligand Name</font></b></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle bgcolor="#D9D9D9"><b><font face="Calibri" color="#000000">Ligand Function</font></b></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle bgcolor="#D9D9D9"><b><font face="Calibri" color="#000000">PDBid</font></b></td>
                                                </tr>
                                                <tr>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" height="62" align="center" valign=middle><b><font face="Calibri" color="#000000">5HT2A</font></b></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">5-Hydroxytryptamine receptor 2A</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">A (Rhodopsin)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Human</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">X-ray</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle sdval="2.9" sdnum="1033;"><font face="Calibri" color="#000000">2.9</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Zotepine</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Antagonist</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">6A94</font></td>
                                                </tr>
                                                <tr>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" height="62" align="center" valign=middle><b><font face="Calibri" color="#000000">5HT1B</font></b></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">5-Hydroxytryptamine receptor 1B</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">A (Rhodopsin)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Human</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">X-ray</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle sdval="2.8" sdnum="1033;"><font face="Calibri" color="#000000">2.8</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Dihydroergotamine</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Agonist</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">4IAQ</font></td>
                                                </tr>
                                                <tr>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" height="62" align="center" valign=middle><b><font face="Calibri" color="#000000">5HT2B</font></b></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">5-Hydroxytryptamine receptor 2B</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">A (Rhodopsin)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Human</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">X-ray</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle sdval="2.7" sdnum="1033;"><font face="Calibri" color="#000000">2.7</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Ergotamine</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Agonist</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">4IB4</font></td>
                                                </tr>
                                                <tr>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" height="62" align="center" valign=middle><b><font face="Calibri" color="#000000">5HT2C</font></b></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">5-Hydroxytryptamine receptor 2C</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">A (Rhodopsin)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Human</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">X-ray</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle sdval="2.7" sdnum="1033;"><font face="Calibri" color="#000000">2.7</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Ritanserin</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Inverse agonist</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">6BQH</font></td>
                                                </tr>
                                                <tr>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" height="32" align="center" valign=middle><b><font face="Calibri" color="#000000">AA1R</font></b></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Adenosine receptor A1</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">A (Rhodopsin)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Human</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">X-ray</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle sdval="3.2" sdnum="1033;"><font face="Calibri" color="#000000">3.2</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">CHEMBL144360</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Antagonist</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">5UEN</font></td>
                                                </tr>
                                                <tr>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" height="32" align="center" valign=middle><b><font face="Calibri" color="#000000">AA2AR</font></b></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Adenosine receptor A2a</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">A (Rhodopsin)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Human</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">X-ray</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle sdval="2.7" sdnum="1033;"><font face="Calibri" color="#000000">2.7</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">ZM241385</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Antagonist</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">3VG9</font></td>
                                                </tr>
                                                <tr>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" height="47" align="center" valign=middle><b><font face="Calibri" color="#000000">ACM1</font></b></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Muscarinic acetylcholine receptor M1</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">A (Rhodopsin)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Human</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">X-ray</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle sdval="2.7" sdnum="1033;"><font face="Calibri" color="#000000">2.7</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">CHEMBL258622</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Antagonist</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">5CXV</font></td>
                                                </tr>
                                                <tr>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" height="47" align="center" valign=middle><b><font face="Calibri" color="#000000">ACM2</font></b></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Muscarinic acetylcholine receptor M2</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">A (Rhodopsin)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Human</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">X-ray</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle sdval="2.3" sdnum="1033;"><font face="Calibri" color="#000000">2.3</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">N-methyl scopolamine</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Antagonist</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">5ZKC</font></td>
                                                </tr>
                                                <tr>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" height="47" align="center" valign=middle><b><font face="Calibri" color="#000000">ACM4</font></b></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Muscarinic acetylcholine receptor M4</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">A (Rhodopsin)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Human</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">X-ray</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle sdval="2.6" sdnum="1033;"><font face="Calibri" color="#000000">2.6</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Tiotropium</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Antagonist</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">5DSG</font></td>
                                                </tr>
                                                <tr>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" height="47" align="center" valign=middle><b><font face="Calibri" color="#000000">ADRB1</font></b></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Beta-1 adrenergic receptor</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">A (Rhodopsin)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Turkey</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">X-ray</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle sdval="2.3" sdnum="1033;"><font face="Calibri" color="#000000">2.3</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">(S)-Carvedilol</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Inverse agonist</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">4AMJ</font></td>
                                                </tr>
                                                <tr>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" height="47" align="center" valign=middle><b><font face="Calibri" color="#000000">ADRB2</font></b></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Beta-2 adrenergic receptor</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">A (Rhodopsin)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Human</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">X-ray</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle sdval="3.2" sdnum="1033;"><font face="Calibri" color="#000000">3.2</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Carazolol</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Inverse agonist</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">5JQH</font></td>
                                                </tr>
                                                <tr>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" height="47" align="center" valign=middle><b><font face="Calibri" color="#000000">AGTR1</font></b></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Type-1 angiotensin II receptor</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">A (Rhodopsin)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Human</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">X-ray</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle sdval="2.8" sdnum="1033;"><font face="Calibri" color="#000000">2.8</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">OLM</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Inverse agonist</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">4ZUD</font></td>
                                                </tr>
                                                <tr>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" height="32" align="center" valign=middle><b><font face="Calibri" color="#000000">CNR1</font></b></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Cannabinoid receptor 1</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">A (Rhodopsin)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Human</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">X-ray</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle sdval="2.8" sdnum="1033;"><font face="Calibri" color="#000000">2.8</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">SCHEMBL662960</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Antagonist</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">5TGZ</font></td>
                                                </tr>
                                                <tr>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" height="32" align="center" valign=middle><b><font face="Calibri" color="#000000">CNR2</font></b></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Cannabinoid receptor 2</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">A (Rhodopsin)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Human</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">X-ray</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle sdval="2.8" sdnum="1033;"><font face="Calibri" color="#000000">2.8</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">AM10257</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Antagonist</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">5ZTY</font></td>
                                                </tr>
                                                <tr>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" height="62" align="center" valign=middle><b><font face="Calibri" color="#000000">CXCR4</font></b></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">C-X-C chemokine receptor type 4</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">A (Rhodopsin)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Human</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">X-ray</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle sdval="2.5" sdnum="1033;"><font face="Calibri" color="#000000">2.5</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">IT1t</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Antagonist</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">3ODU</font></td>
                                                </tr>
                                                <tr>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" height="32" align="center" valign=middle><b><font face="Calibri" color="#000000">DRD2</font></b></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Dopamine D2 receptor</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">A (Rhodopsin)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Human</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">X-ray</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle sdval="2.9" sdnum="1033;"><font face="Calibri" color="#000000">2.9</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Risperidone</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Inverse agonist</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">6CM4</font></td>
                                                </tr>
                                                <tr>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" height="32" align="center" valign=middle><b><font face="Calibri" color="#000000">DRD3</font></b></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Dopamine D3 receptor</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">A (Rhodopsin)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Human</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">X-ray</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle sdval="2.9" sdnum="1033;"><font face="Calibri" color="#000000">2.9</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Eticlopride</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Antagonist</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">3PBL</font></td>
                                                </tr>
                                                <tr>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" height="32" align="center" valign=middle><b><font face="Calibri" color="#000000">DRD4</font></b></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Dopamine D4 receptor</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">A (Rhodopsin)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Human</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">X-ray</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle sdval="2.1" sdnum="1033;"><font face="Calibri" color="#000000">2.1</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Nemonapride</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Antagonist</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">5WIV</font></td>
                                                </tr>
                                                <tr>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" height="47" align="center" valign=middle><b><font face="Calibri" color="#000000">EDNRB</font></b></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Endothelin receptor type B</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">A (Rhodopsin)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Human</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">X-ray</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle sdval="2.2" sdnum="1033;"><font face="Calibri" color="#000000">2.2</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">K-8794</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Antagonist</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">5X93</font></td>
                                                </tr>
                                                <tr>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" height="32" align="center" valign=middle><b><font face="Calibri" color="#000000">HRH1</font></b></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Histamine H1 receptor</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">A (Rhodopsin)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Human</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">X-ray</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle sdval="3.1" sdnum="1033;"><font face="Calibri" color="#000000">3.1</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Doxepin</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Antagonist</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">3RZE</font></td>
                                                </tr>
                                                <tr>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" height="47" align="center" valign=middle><b><font face="Calibri" color="#000000">MTR1A</font></b></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Melatonin receptor type 1A</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">A (Rhodopsin)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Human</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">X-ray</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle sdval="2.8" sdnum="1033;"><font face="Calibri" color="#000000">2.8</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Ramelteon</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Agonist</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">6ME2</font></td>
                                                </tr>
                                                <tr>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" height="32" align="center" valign=middle><b><font face="Calibri" color="#000000">NK1R</font></b></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Tachykinin receptor 1</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">A (Rhodopsin)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Human</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">X-ray</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle sdval="2.2" sdnum="1033;"><font face="Calibri" color="#000000">2.2</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Netupitant</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Antagonist</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">6HLP</font></td>
                                                </tr>
                                                <tr>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" height="47" align="center" valign=middle><b><font face="Calibri" color="#000000">NPY1R</font></b></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Neuropeptide Y receptor type 1</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">A (Rhodopsin)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Human</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">X-ray</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle sdval="3" sdnum="1033;"><font face="Calibri" color="#000000">3</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">BMS-193885</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Antagonist</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">5ZBH</font></td>
                                                </tr>
                                                <tr>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" height="47" align="center" valign=middle><b><font face="Calibri" color="#000000">OPRD</font></b></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Delta-type opioid receptor</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">A (Rhodopsin)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Human</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">X-ray</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle sdval="1.8" sdnum="1033;"><font face="Calibri" color="#000000">1.8</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Naltrindole</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Antagonist</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">4N6H</font></td>
                                                </tr>
                                                <tr>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" height="47" align="center" valign=middle><b><font face="Calibri" color="#000000">OPRK</font></b></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Kappa-type opioid receptor</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">A (Rhodopsin)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Human</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">X-ray</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle sdval="2.9" sdnum="1033;"><font face="Calibri" color="#000000">2.9</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">JDTic</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Antagonist</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">4DJH</font></td>
                                                </tr>
                                                <tr>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" height="47" align="center" valign=middle><b><font face="Calibri" color="#000000">OPRM</font></b></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Mu-type opioid receptor</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">A (Rhodopsin)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Mouse</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">X-ray</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle sdval="2.8" sdnum="1033;"><font face="Calibri" color="#000000">2.8</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">BF0</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Antagonist</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">4DKL</font></td>
                                                </tr>
                                                <tr>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" height="32" align="center" valign=middle><b><font face="Calibri" color="#000000">OPRX</font></b></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Nociceptin receptor</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">A (Rhodopsin)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Human</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">X-ray</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle sdval="3" sdnum="1033;"><font face="Calibri" color="#000000">3</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">N/A</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">N/A</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">5DHG</font></td>
                                                </tr>
                                                <tr>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" height="32" align="center" valign=middle><b><font face="Calibri" color="#000000">OPSD</font></b></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Rhodopsin</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">A (Rhodopsin)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Bovine</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">X-ray</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle sdval="2.7" sdnum="1033;"><font face="Calibri" color="#000000">2.7</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Retinal</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Inverse agonist</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">1GZM</font></td>
                                                </tr>
                                                <tr>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" height="47" align="center" valign=middle><b><font face="Calibri" color="#000000">OX1R</font></b></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Orexin receptor type 1</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">A (Rhodopsin)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Human</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">X-ray</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle sdval="2.8" sdnum="1033;"><font face="Calibri" color="#000000">2.8</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Suvorexant</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Antagonist</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">4ZJ8</font></td>
                                                </tr>
                                                <tr>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" height="47" align="center" valign=middle><b><font face="Calibri" color="#000000">OX2R</font></b></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Orexin receptor type 2</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">A (Rhodopsin)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Human</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">X-ray</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle sdval="2.3" sdnum="1033;"><font face="Calibri" color="#000000">2.3</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">EMPA</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Antagonist</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">5WS3</font></td>
                                                </tr>
                                                <tr>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" height="47" align="center" valign=middle><b><font face="Calibri" color="#000000">P2RY1</font></b></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">P2Y purinoceptor 1</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">A (Rhodopsin)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Human</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">X-ray</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle sdval="2.7" sdnum="1033;"><font face="Calibri" color="#000000">2.7</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">MRS2500</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Antagonist</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">4XNW</font></td>
                                                </tr>
                                                <tr>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" height="47" align="center" valign=middle><b><font face="Calibri" color="#000000">P2Y12</font></b></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">P2Y purinoceptor 12</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">A (Rhodopsin)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Human</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">X-ray</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle sdval="2.6" sdnum="1033;"><font face="Calibri" color="#000000">2.6</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">AZD1283</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Antagonist</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">4NTJ</font></td>
                                                </tr>
                                                <tr>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" height="47" align="center" valign=middle><b><font face="Calibri" color="#000000">PAR1</font></b></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Proteinase-activated receptor 1</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">A (Rhodopsin)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Human</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">X-ray</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle sdval="2.2" sdnum="1033;"><font face="Calibri" color="#000000">2.2</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Vorapaxar</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Antagonist</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">3VW7</font></td>
                                                </tr>
                                                <tr>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" height="47" align="center" valign=middle><b><font face="Calibri" color="#000000">PTAFR</font></b></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Platelet-activating factor receptor</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">A (Rhodopsin)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Human</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">X-ray</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle sdval="2.9" sdnum="1033;"><font face="Calibri" color="#000000">2.9</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">ABT-491</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Inverse agonist</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">5ZKQ</font></td>
                                                </tr>
                                                <tr>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" height="47" align="center" valign=middle><b><font face="Calibri" color="#000000">LPAR1</font></b></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Lysophosphatidic acid receptor 1</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">A (Rhodopsin)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Human</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">X-ray</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle sdval="2.9" sdnum="1033;"><font face="Calibri" color="#000000">2.9</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">ONO-9910539</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Antagonist</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">4Z35</font></td>
                                                </tr>
                                                <tr>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" height="32" align="center" valign=middle><b><font face="Calibri" color="#000000">S1PR1</font></b></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Lysophospholipid (S1P)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">A (Rhodopsin)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Human</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">X-ray</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle sdval="2.8" sdnum="1033;"><font face="Calibri" color="#000000">2.8</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">909725-61-7</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Antagonist</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">3V2Y</font></td>
                                                </tr>
                                                <tr>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" height="32" align="center" valign=middle><b><font face="Calibri" color="#000000">PE2R3</font></b></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Prostanoid</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">A (Rhodopsin)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Human</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">X-ray</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle sdval="2.5" sdnum="1033;"><font face="Calibri" color="#000000">2.5</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Misoprostol-FA</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Antagonist</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">6M9T</font></td>
                                                </tr>
                                                <tr>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" height="32" align="center" valign=middle><b><font face="Calibri" color="#000000">PE2R4</font></b></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Prostanoid</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">A (Rhodopsin)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Human</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">X-ray</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle sdval="3.2" sdnum="1033;"><font face="Calibri" color="#000000">3.2</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">ONO-AE3-208</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Antagonist</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">5YWY</font></td>
                                                </tr>
                                                <tr>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" height="32" align="center" valign=middle><b><font face="Calibri" color="#000000">TA2R</font></b></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Prostanoid</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">A (Rhodopsin)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Human</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">X-ray</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle sdval="3" sdnum="1033;"><font face="Calibri" color="#000000">3</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Daltroban</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Antagonist</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">6IIV</font></td>
                                                </tr>
                                                </table>
                                            
                                              </div>
                                              </body>
                                              </html>
                                              '), 
                                             
                                             br()),
                                    
                                    # FUNCTIONAL CORE HELP PANEL
                                    tabPanel(HTML("<html><font size=4>Functional Core (FC)</font></html>"), br(), br(),
                                             
                                             HTML(
                                               '
                                              <html>
                                              <head>
                                                <style>
                                                div {
                                                  text-align: justify;
                                                  text-justify: inter-word;
                                                }
                                                body,div,table,thead,tbody,tfoot,tr,th,td,p { font-family:"Calibri"; font-size:small }
                                                a.comment-indicator:hover + comment { background:#ffd; position:absolute; display:block; border:1px solid black; padding:0.5em;  } 
                                                a.comment-indicator { background:red; display:inline-block; border:1px solid black; width:0.5em; height:0.5em;  } 
                                                comment { display:none;  } 
                                                </style>
                                              </head> 
                                              <body>
                                              <div>
                                              <b><font size=4>Protein Functional Core (FC)</font></b> <br><br>
                                              
                                              <font size=3>
                                              
                                              A predefined set of <b>30 topological positions with high degree of conservation and likely involved in the 
                                              receptor functionality</b>. This (FC) set is defined according to several functional studies in Class A GPCRs. <br><br>

                                              The following image illustrates the <b>FC</b> positions in <b>red colored balls</b> for transmembrane positions (<b>yellow balls</b> indicate the location of a putative
                                              disulfide bridge) with the associated Ballesteros-Weinstein numbering (check <b>"Ballesteros-Weinstein Nomenclature"</b> subpanel). 
                                              
                                              </font>

                                              <br><br>
                                              <img src="snakeFC.png" alt="FC" style="width:50%">
                                              <br><br>
                                              <table cellspacing="0" border="0">
                                                <colgroup span="4" width="85"></colgroup>
                                                <colgroup width="673"></colgroup>
                                                <colgroup width="167"></colgroup>
                                                <tr>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" height="17" align="center" valign=middle bgcolor="#D9D9D9"><b><font face="Calibri" color="#000000">GPCR Domain</font></b></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle bgcolor="#D9D9D9"><b><font face="Calibri" color="#000000">BW Positon</font></b></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle bgcolor="#D9D9D9"><b><font face="Calibri" color="#000000">Most cons resid (%) hOR</font></b></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle bgcolor="#D9D9D9"><b><font face="Calibri" color="#000000">Most cons resid (%) Class A GPCRs</font></b></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle bgcolor="#D9D9D9"><b><font face="Calibri" color="#000000">Functional Role</font></b></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle bgcolor="#D9D9D9"><b><font face="Calibri" color="#000000">REFERENCE</font></b></td>
                                                </tr>
                                                <tr>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" rowspan=2 height="34" align="center" valign=middle><b><font face="Calibri" color="#000000">TM1</font></b></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle sdval="1.49" sdnum="1033;"><font face="Calibri" color="#000000">1.49</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">G (88%)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">G (67%)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Part of the &quot;GN” conserved motif at human and mouse ORs</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">PMID:26044705</font></td>
                                                </tr>
                                                <tr>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle sdval="1.5" sdnum="1033;"><font face="Calibri" color="#000000">1.5</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">N (99%)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">N (98%)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">A conserved asparagine residue occupies this position in ORs and Class A GPCRs. Involved in hydrogen bond network with D2.50 and N7.49 stabilizing the TM1, TM2 and TM7 domain region</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">PMID: 9115256</font></td>
                                                </tr>
                                                <tr>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" rowspan=8 height="137" align="center" valign=middle><b><font face="Calibri" color="#000000">TM2</font></b></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" rowspan=2 align="center" valign=middle sdval="2.5" sdnum="1033;"><font face="Calibri" color="#000000">2.5</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" rowspan=2 align="center" valign=middle><font face="Calibri" color="#000000">D (81%)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" rowspan=2 align="center" valign=middle><font face="Calibri" color="#000000">D (92%)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" rowspan=2 align="center" valign=middle><font face="Calibri" color="#000000">Negatively charged (D/E) residues occupy this position in most Class A GPCRs. Participates in stabilizing hydrogen bond networks with TM1 and TM7 residues. Also involved in the coordination of ions in some receptors</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">PMID: 29395784</font></td>
                                                </tr>
                                                <tr>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri">PMID: 31855179</font></td>
                                                </tr>
                                                <tr>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" rowspan=3 align="center" valign=middle sdval="2.53" sdnum="1033;"><font face="Calibri" color="#000000">2.53</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Y (43%)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">V (30%)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" rowspan=3 align="center" valign=middle><font face="Calibri" color="#000000">In rhodopsin GPCRs, this position contains &gt;80% of bulky/aromatic residues. May be implicated in the first stage of activation pathway through TM2/TM7</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" rowspan=3 align="center" valign=middle><font face="Calibri" color="#000000">PMID: 24041646</font></td>
                                                </tr>
                                                <tr>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri">F (23%)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri">F (21%)</font></td>
                                                  </tr>
                                                <tr>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri">L (20%)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri">M (13%)</font></td>
                                                  </tr>
                                                <tr>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" rowspan=3 align="center" valign=middle sdval="2.59" sdnum="1033;"><font face="Calibri" color="#000000">2.59</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" rowspan=3 align="center" valign=middle><font face="Calibri" color="#000000">P (98%)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">P (36%)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" rowspan=3 align="center" valign=middle><font face="Calibri" color="#000000">A conserved proline in this position induces a structural bulge in the TM2 in several class A GPCRs</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" rowspan=3 align="center" valign=middle><font face="Calibri" color="#000000">PMID: 22435816</font></td>
                                                </tr>
                                                <tr>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri">F (21%)</font></td>
                                                  </tr>
                                                <tr>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri">L (18%)</font></td>
                                                  </tr>
                                                <tr>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" rowspan=12 height="205" align="center" valign=middle><b><font face="Calibri" color="#000000">TM3</font></b></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle sdval="3.25" sdnum="1033;"><font face="Calibri" color="#000000">3.25</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">C (98%)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">C (86%)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Involved in a disulfide bond with ECL2 in the vast majority of class A GPCRs</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">PMID: 21864311</font></td>
                                                </tr>
                                                <tr>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" rowspan=2 align="center" valign=middle sdval="3.39" sdnum="1033;"><font face="Calibri" color="#000000">3.39</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">E (81%)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">S (71%)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" rowspan=2 align="center" valign=middle><font face="Calibri" color="#000000">Identified as a hot-spot position that leads to substantially higher stability for several Class A GPCRs in the inactive state. Also involved in the coordination of ions in some receptors</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" rowspan=2 align="center" valign=middle><font face="Calibri" color="#000000">PMID: 28644022</font></td>
                                                </tr>
                                                <tr>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri">D (13%)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri">G (12%)</font></td>
                                                  </tr>
                                                <tr>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" rowspan=3 align="center" valign=middle sdval="3.4" sdnum="1033;"><font face="Calibri" color="#000000">3.4</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">C (37%)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">I (40%)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" rowspan=3 align="center" valign=middle><font face="Calibri" color="#000000">Part of the &quot;transmission switch&quot; in Class A GPCRs involved in activation</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" rowspan=3 align="center" valign=middle><font face="Calibri" color="#000000">PMID: 22300046</font></td>
                                                </tr>
                                                <tr>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri">S (22%)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri">V (21%)</font></td>
                                                  </tr>
                                                <tr>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri"><br></font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri">L (19%)</font></td>
                                                  </tr>
                                                <tr>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" rowspan=2 align="center" valign=middle sdval="3.49" sdnum="1033;"><font face="Calibri" color="#000000">3.49</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" rowspan=2 align="center" valign=middle><font face="Calibri" color="#000000">D (99%)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">D (68%)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" rowspan=2 align="center" valign=middle><font face="Calibri" color="#000000">Part of the &quot;[D/E]RY&quot; motif in Class A GPCRs involved in activation</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" rowspan=2 align="center" valign=middle><font face="Calibri" color="#000000">PMID: 17192495</font></td>
                                                </tr>
                                                <tr>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri">E (23%)</font></td>
                                                  </tr>
                                                <tr>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle sdval="3.5" sdnum="1033;"><font face="Calibri" color="#000000">3.5</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">R (89%)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">R (97%)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Part of the &quot;[D/E]RY&quot; motif in Class A GPCRs involved in activation</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">PMID: 17192495</font></td>
                                                </tr>
                                                <tr>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle sdval="3.51" sdnum="1033;"><font face="Calibri" color="#000000">3.51</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Y (80%)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Y (72%)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Part of the &quot;[D/E]RY&quot; motif in Class A GPCRs involved in activation</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">PMID: 17192495</font></td>
                                                </tr>
                                                <tr>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" rowspan=2 align="center" valign=middle sdval="3.54" sdnum="1033;"><font face="Calibri" color="#000000">3.54</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" rowspan=2 align="center" valign=middle><font face="Calibri" color="#000000">I (88%)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">I (54%)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" rowspan=2 align="center" valign=middle><font face="Calibri" color="#000000">A bulky hydrophobic residue involved in interactions with G-proteins in several Class A GPCRs</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">PMID: 24016604</font></td>
                                                </tr>
                                                <tr>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri">V (36%)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri">PMID: 25205354</font></td>
                                                </tr>
                                                <tr>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" rowspan=4 height="68" align="center" valign=middle><b><font face="Calibri" color="#000000">TM4</font></b></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" rowspan=2 align="center" valign=middle sdval="4.5" sdnum="1033;"><font face="Calibri" color="#000000">4.5</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">W (57%)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" rowspan=2 align="center" valign=middle><font face="Calibri" color="#000000">W (96%)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" rowspan=2 align="center" valign=middle><font face="Calibri" color="#000000">A conserved tryptophan residue occupies this position in most class A GPCRs.</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" rowspan=2 align="center" valign=middle><font face="Calibri" color="#000000">PMID: 21921973</font></td>
                                                </tr>
                                                <tr>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri">Y (17%)</font></td>
                                                  </tr>
                                                <tr>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" rowspan=2 align="center" valign=middle sdval="4.53" sdnum="1033;"><font face="Calibri" color="#000000">4.53</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" rowspan=2 align="center" valign=middle><font face="Calibri" color="#000000">G (71%)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">S (45%)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" rowspan=2 align="center" valign=middle><font face="Calibri" color="#000000">A conserved glycine in this position is crucial for cell surface trafficking of model ORs.</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" rowspan=2 align="center" valign=middle><font face="Calibri" color="#000000">PMID: 31974307</font></td>
                                                </tr>
                                                <tr>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri">G (32%)</font></td>
                                                  </tr>
                                                <tr>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" rowspan=8 height="137" align="center" valign=middle><b><font face="Calibri" color="#000000">TM5</font></b></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" rowspan=2 align="center" valign=middle sdval="5.5" sdnum="1033;"><font face="Calibri" color="#000000">5.5</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">P (39%)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" rowspan=2 align="center" valign=middle><font face="Calibri" color="#000000">P (77%)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" rowspan=2 align="center" valign=middle><font face="Calibri" color="#000000">Part of the &quot;transmission switch&quot; in Class A GPCRs involved in activation</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" rowspan=2 align="center" valign=middle><font face="Calibri" color="#000000">PMID: 22300046</font></td>
                                                </tr>
                                                <tr>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri">D(14%)</font></td>
                                                  </tr>
                                                <tr>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" rowspan=2 align="center" valign=middle sdval="5.57" sdnum="1033;"><font face="Calibri" color="#000000">5.57</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" rowspan=2 align="center" valign=middle><font face="Calibri" color="#000000">S (98%)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">C (39%)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" rowspan=2 align="center" valign=middle><font face="Calibri" color="#000000">Involved in the Class A GPCR activation pathway in several receptors</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" rowspan=2 align="center" valign=middle><font face="Calibri" color="#000000">PMID: 31855179</font></td>
                                                </tr>
                                                <tr>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri">L(13%)</font></td>
                                                  </tr>
                                                <tr>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle sdval="5.58" sdnum="1033;"><font face="Calibri" color="#000000">5.58</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Y (97%)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Y (75%)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Involved in the Class A GPCR activation pathway in several receptors</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">PMID: 31855179</font></td>
                                                </tr>
                                                <tr>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" rowspan=3 align="center" valign=middle sdval="5.65" sdnum="1033;"><font face="Calibri" color="#000000">5.65</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">I (47%)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">I (46%)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" rowspan=3 align="center" valign=middle><font face="Calibri" color="#000000">Part of the hydrophobic &quot;[I/L]xxL&quot; motif at the intracellular end of TM5. Involved in interactions with G-proteins in several receptors. Mutations, particularly to polar amino acids, at this position in class A GPCRs inhibit G-protein coupling.</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" rowspan=3 align="center" valign=middle><font face="Calibri" color="#000000">PMID: 23235263</font></td>
                                                </tr>
                                                <tr>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri">V (43%)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri">V (16%)</font></td>
                                                  </tr>
                                                <tr>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri"><br></font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri">A(15%)</font></td>
                                                  </tr>
                                                <tr>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" rowspan=17 height="290" align="center" valign=middle><b><font face="Calibri" color="#000000">TM6</font></b></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" rowspan=3 align="center" valign=middle sdval="6.3" sdnum="1033;"><font face="Calibri" color="#000000">6.3</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">R (63%)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">E (35%)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" rowspan=3 align="center" valign=middle><font face="Calibri" color="#000000">Part of the &quot;ionic lock&quot; in Class A GPCRs involved in activation</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" rowspan=3 align="center" valign=middle><font face="Calibri" color="#000000">PMID: 22300046</font></td>
                                                </tr>
                                                <tr>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri">K (12%)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri">K (15%)</font></td>
                                                  </tr>
                                                <tr>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri"><br></font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri">R(14%)</font></td>
                                                  </tr>
                                                <tr>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" rowspan=2 align="center" valign=middle sdval="6.32" sdnum="1033;"><font face="Calibri" color="#000000">6.32</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" rowspan=2 align="center" valign=middle><font face="Calibri" color="#000000">K (92%)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">K (44%)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" rowspan=2 align="center" valign=middle><font face="Calibri" color="#000000">Involved in interactions with G-proteins in several Class A GPCRs</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" rowspan=2 align="center" valign=middle><font face="Calibri" color="#000000">PMID: 23245528</font></td>
                                                </tr>
                                                <tr>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri">R (32%)</font></td>
                                                  </tr>
                                                <tr>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" rowspan=3 align="center" valign=middle sdval="6.33" sdnum="1033;"><font face="Calibri" color="#000000">6.33</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" rowspan=3 align="center" valign=middle><font face="Calibri" color="#000000">A (90%)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">A (31%)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" rowspan=3 align="center" valign=middle><font face="Calibri" color="#000000">Involved in interactions with G-proteins in several Class A GPCRs</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" rowspan=3 align="center" valign=middle><font face="Calibri" color="#000000">PMID: 23245528</font></td>
                                                </tr>
                                                <tr>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri">V (19%)</font></td>
                                                  </tr>
                                                <tr>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri">L (10%)</font></td>
                                                  </tr>
                                                <tr>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" rowspan=3 align="center" valign=middle sdval="6.37" sdnum="1033;"><font face="Calibri" color="#000000">6.37</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" rowspan=3 align="center" valign=middle><font face="Calibri" color="#000000">C (95%)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">L (39%)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" rowspan=3 align="center" valign=middle><font face="Calibri" color="#000000">A highly conserved cysteine in human ORs. A bulky hydrophobic residue in this position is involved in the TM6 movement during Class A GPCRs activation</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" rowspan=3 align="center" valign=middle><font face="Calibri" color="#000000">PMID: 29498889</font></td>
                                                </tr>
                                                <tr>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri">V (22%)</font></td>
                                                  </tr>
                                                <tr>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri">I (19%)</font></td>
                                                  </tr>
                                                <tr>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle sdval="6.44" sdnum="1033;"><font face="Calibri" color="#000000">6.44</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">V (84%)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">F (80%)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Part of the &quot;transmission switch&quot; in Class A GPCRs involved in activation</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">PMID: 22300046</font></td>
                                                </tr>
                                                <tr>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" rowspan=2 align="center" valign=middle sdval="6.48" sdnum="1033;"><font face="Calibri" color="#000000">6.48</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Y (69%)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">W (78%)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" rowspan=2 align="center" valign=middle><font face="Calibri" color="#000000">Part of the WxP motif on TM6 in the majority of Class A GPCRs involved in activation</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">PMID: 22032986</font></td>
                                                </tr>
                                                <tr>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri">F (23%)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri">F (9%)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri">PMID: 19375807</font></td>
                                                </tr>
                                                <tr>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" rowspan=3 align="center" valign=middle sdval="6.5" sdnum="1033;"><font face="Calibri" color="#000000">6.5</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">P (33%)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" rowspan=3 align="center" valign=middle><font face="Calibri" color="#000000">P (98%)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" rowspan=3 align="center" valign=middle><font face="Calibri" color="#000000">Part of the WxP motif on TM6 in the majority of Class A GPCRs involved in activation</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">PMID: 22032986</font></td>
                                                </tr>
                                                <tr>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri">T (33%)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri">PMID: 19375807</font></td>
                                                </tr>
                                                <tr>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri">A (33%)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri"><br></font></td>
                                                </tr>
                                                <tr>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" rowspan=6 height="102" align="center" valign=middle><b><font face="Calibri" color="#000000">TM7</font></b></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" rowspan=3 align="center" valign=middle sdval="7.46" sdnum="1033;"><font face="Calibri" color="#000000">7.46</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" rowspan=3 align="center" valign=middle><font face="Calibri" color="#000000">P (95%)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">S (60%)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" rowspan=3 align="center" valign=middle><font face="Calibri" color="#000000">A highly conserved proline in human ORs. Participates in an extended H-bond network important for receptor activation</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">PMID: 20395291</font></td>
                                                </tr>
                                                <tr>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri">C (13%)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri">PMID: 20192770</font></td>
                                                </tr>
                                                <tr>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri">A (13%)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri"><br></font></td>
                                                </tr>
                                                <tr>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle sdval="7.49" sdnum="1033;"><font face="Calibri" color="#000000">7.49</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">N (97%)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">N (77%)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Part of the NP7.50xxY motif essential for forming the active conformation, also participates in forming the G protein–binding site.</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">PMID: 29925258</font></td>
                                                </tr>
                                                <tr>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle sdval="7.5" sdnum="1033;"><font face="Calibri" color="#000000">7.5</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">P (97%)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">P (96%)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Part of the NP7.50xxY motif essential for forming the active conformation, also participates in forming the G protein–binding site.</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">PMID: 29925258</font></td>
                                                </tr>
                                                <tr>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle sdval="7.53" sdnum="1033;"><font face="Calibri" color="#000000">7.53</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Y (96%)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Y (92%)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Part of the NP7.50xxY motif essential for forming the active conformation, also participates in forming the G protein–binding site.</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">PMID: 29925258</font></td>
                                                </tr>
                                                <tr>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" height="17" align="center" valign=middle><b><font face="Calibri" color="#000000">ECL2</font></b></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle sdval="45.5" sdnum="1033;"><font face="Calibri" color="#000000">45.5</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">C (99%)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">C (&gt;80%)</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">Involved in a disulfide bond with the extracellular side of the TM3 in the majority of class A GPCRs</font></td>
                                                  <td style="border-top: 1px solid #000000; border-bottom: 1px solid #000000; border-left: 1px solid #000000; border-right: 1px solid #000000" align="center" valign=middle><font face="Calibri" color="#000000">PMID: 21864311</font></td>
                                                </tr>
                                              </table>
                                              </div>
                                              </body>
                                              </html>
                                              '), 
                                             
                                             br())
                                    
                                  ) #Close tabsetpanel
                                  
                                  , width = 8), #Close mainpanel
                                
                                position = c('right'), fluid = TRUE) #Close sidebarlayout
                              
                    ) #Close fluid page
                    
           ) #Close help panel
           
) #Close UI

##############################################################################################################################################################
##############################################################################################################################################################
##############################################################################################################################################################
##############################################################################################################################################################
##############################################################################################################################################################
##############################################################################################################################################################
### S E R V E R ##############################################################################################################################################
##############################################################################################################################################################
##############################################################################################################################################################
##############################################################################################################################################################
##############################################################################################################################################################
##############################################################################################################################################################
##############################################################################################################################################################

server <- function(input, output, session){ #input es el que obtens de la user interface type df crec
  ##############################################################################################################################################################
  ##############################################################################################################################################################
  ##############################################################################################################################################################
  ##############################################################################################################################################################
  ##############################################################################################################################################################
  ##############################################################################################################################################################
  
  # FILTERS
  # Big Guy
  filter <- function(file, 
                     uniprot, ensmbl, variantreference, geneID, snp, chr, family, balles, annot, annotDNA, affBC, affFC, 
                     matrixscore, aaoriginal, aachanged, datasource, domain, position, originalDNA, changedDNA, seqpos, alignpos,
                     hemizyg, homozyg, af, ashj, esas, soas, eufin, eunfin, lati, othe, All,
                     afri,ashke,eastasi,southasi,eurofin,eurononfin,latin,oth){
    
    result <- filter_annotation_uniprot(file, uniprot)
    result <- filter_annotation_ensmbl(result, ensmbl)
    result <- filter_annotation_variantreference(result, variantreference)
    result <- filter_annotation_geneID(result, geneID)
    result <- filter_annotation_snp(result, snp)
    result <- filter_annotation_chr(result, chr)
    result <- filter_annotation_family(result, family)
    result <- filter_annotation_balles(result, balles)
    result <- filter_annotation_annot(result, annot)
    result <- filter_annotation_annot_DNA(result, annotDNA)
    result <- filter_annotation_affBC(result, affBC)
    result <- filter_annotation_affFC(result, affFC)
    result <- filter_annotation_matrixscore(result, matrixscore)
    result <- filter_annotation_aaorignial(result, aaoriginal)
    result <- filter_annotation_aachanged(result, aachanged)
    result <- filter_annotation_datasource(result, datasource)
    result <- filter_annotation_domain(result, domain)
    result <- filter_annotation_position(result, position)
    result <- filter_annotation_originalDNA(result, originalDNA)
    result <- filter_annotation_changedDNA(result, changedDNA)
    result <- filter_annotation_sequenceposition(result, seqpos)
    result <- filter_annotation_alignmentposition(result, alignpos)
    
    result <- filter_annotation_hemizyg(result, hemizyg)
    result <- filter_annotation_homozyg(result, homozyg)
    result <- filter_annotation_box_afr(result, af)
    result <- filter_annotation_box_ashj(result, ashj)
    result <- filter_annotation_box_esas(result, esas)
    result <- filter_annotation_box_soas(result, soas)
    result <- filter_annotation_box_eufin(result, eufin)
    result <- filter_annotation_box_eunfin(result, eunfin)
    result <- filter_annotation_box_lati(result, lati)
    result <- filter_annotation_box_othe(result, othe)
    result <- filter_annotation_box_All(result, All)
    
    result <- filter_affect_african(result, afri)
    result <- filter_affect_ashkenazi_jewish(result, ashke)
    result <- filter_affect_east_asian(result, eastasi)
    result <- filter_affect_south_asian(result, southasi)
    result <- filter_affect_european_finnish(result, eurofin)
    result <- filter_affect_european_non_finnish(result, eurononfin)
    result <- filter_affect_latino(result, latin)
    result <- filter_affect_other(result, oth)
    
    return(result)
  }
  ######################################################################################################################
  ######################################################################################################################
  # Small Guys
  filter_annotation_uniprot <- function(file, uniprot){
    if(length(uniprot)==0){uniprot <- "ALL"}
    ifelse(uniprot == "ALL", result <- file, result <- subset(file, UniProt %in% uniprot))
    return(result)}
  
  filter_annotation_ensmbl <- function(file, ensmbl){
    if(length(ensmbl)==0){ensmbl <- "ALL"}
    ifelse(ensmbl == "ALL", result <- file, result <- subset(file, Ensmbl %in% ensmbl))
    return(result)}
  
  filter_annotation_variantreference <- function(file, variantreference){
    # if(length(variantreference)==0){variantreference <- "ALL"}
    # ifelse(variantreference == "ALL", result <- file, result <- subset(file, Variant_Reference %in% variantreference))
    # return(result)}

    # Checkpoint 1
    if(length(variantreference)==0){variantreference <- "ALL"}
    if(variantreference == ''){variantreference <- "ALL"}
    if(variantreference == ' '){variantreference <- "ALL"}

    # Checkpoint 2
    if(length(variantreference)>=1){
      variantreference <- gsub(" ","", variantreference)
      variantreference <- strsplit(variantreference, ",")[[1]]

      # Checkpoint 3
      if(length(variantreference)==1){
        if(variantreference != 'ALL'){result <- subset(file, Variant_Reference %in% variantreference)}
        if(variantreference == 'ALL'){result <- file}}

      # Checkpoint 3
      if(length(variantreference)>1){
        result <- subset(file, Variant_Reference %in% variantreference)}

    return(result)}
  }
  
  ######################################################################################################################
  filter_annotation_position <- function(file, position){
    # if(length(position)==0){position <- "ALL"}
    # ifelse(position == "ALL", result <- file, result <- subset(file, Position %in% position))
    # return(result)}
    
    # Checkpoint 1
    if(length(position)==0){position <- "ALL"}
    if(position == ''){position <- "ALL"}
    if(position == ' '){position <- "ALL"}
    
    # Checkpoint 2
    if(length(position)>=1){
      position <- gsub(" ","", position)
      position <- strsplit(position, ",")[[1]]
      
      # Checkpoint 3
      if(length(position)==1){
        if(position != 'ALL'){result <- subset(file, Position %in% position)}
        if(position == 'ALL'){result <- file}}
      
      # Checkpoint 3
      if(length(position)>1){
        result <- subset(file, Position %in% position)}
      return(result)}
  }
  
  filter_annotation_originalDNA <- function(file, originalDNA){
    if(length(originalDNA)==0){originalDNA <- "ALL"}
    ifelse(originalDNA == "ALL", result <- file, result <- subset(file, Original_DNA %in% originalDNA))
    return(result)}
  
  filter_annotation_changedDNA <- function(file, changedDNA){
    if(length(changedDNA)==0){changedDNA <- "ALL"}
    ifelse(changedDNA == "ALL", result <- file, result <- subset(file, Changed_DNA %in% changedDNA))
    return(result)}
  
  filter_annotation_sequenceposition <- function(file, seqpos){
    if(length(seqpos)==0){seqpos <- "ALL"}
    ifelse(seqpos == "ALL", result <- file, result <- subset(file, Sequence_position %in% seqpos))
    return(result)}
  
  filter_annotation_alignmentposition <- function(file, alignpos){
    if(length(alignpos)==0){alignpos <- "ALL"}
    ifelse(alignpos == "ALL", result <- file, result <- subset(file, Alignment_position %in% alignpos))
    return(result)}
  
  ######################################################################################################################
  filter_annotation_datasource <- function(file, datasource){
    if(length(datasource)==0){datasource <- "ALL"}
    ifelse(datasource == "ALL", result <- file, result <- subset(file, Data_Source %in% datasource))
    return(result)}
  
  filter_annotation_geneID <- function(file, geneID){
    if(length(geneID)==0){geneID <- "ALL"}
    ifelse(geneID == "ALL", result <- file, result <- subset(file, Gene %in% geneID))
    return(result)}
  
  filter_annotation_snp <- function(file, snp){
    # Checkpoint 1
    if(length(snp)==0){snp <- "ALL"}
    if(snp == ''){snp <- "ALL"}
    if(snp == ' '){snp <- "ALL"}
    # Checkpoint 2
    if(length(snp)>=1){
      snp <- gsub(" ","", snp)
      snp <- strsplit(snp, ",")[[1]]
      # Checkpoint 3
      if(length(snp)==1){
        if(snp != 'ALL'){result <- subset(file, rsID %in% snp)}
        if(snp == 'ALL'){result <- file}}
      # Checkpoint 3
      if(length(snp)>1){
        result <- subset(file, rsID %in% snp)}
      return(result)}
  }
  
  filter_annotation_chr <- function(file, chr){
    if(length(chr)==0){chr <- "ALL"}
    ifelse(chr == "ALL", result <- file, result <- subset(file, Chromosome %in% chr))
    return(result)}
  
  filter_annotation_family <- function(file, family){
    if(length(family)==0){family <- "ALL"}
    ifelse(family == "ALL", result <- file, result <- subset(file, Family %in% family))
    return(result)}
  
  filter_annotation_domain <- function(file, domain){
    if(length(domain)==0){domain <- "ALL"}
    ifelse(domain == "ALL", result <- file, result <- subset(file, Domain %in% domain))
    return(result)}
  
  filter_annotation_balles <- function(file, balles){
    if(length(balles)==0){balles <- "ALL"}
    ifelse(balles == "ALL", result <- file, result <- subset(file, Ballesteros %in% balles))
    return(result)}
  
  filter_annotation_annot <- function(file, annot){
    if(length(annot)==0){annot <- "ALL"}
    ifelse(annot == "ALL", result <- file, result <- subset(file, Mutation_Impact %in% annot))
    return(result)}
  
  filter_annotation_annot_DNA <- function(file, annotDNA){
    if(length(annotDNA)==0){annot <- "ALL"}
    ifelse(annotDNA == "ALL", result <- file, result <- subset(file, Point_Mutation %in% annotDNA))
    return(result)}
  
  filter_annotation_affBC <- function(file, affBC){
    if(length(affBC)==0){affBC <- "ALL"}
    ifelse(affBC == "ALL", result <- file, result <- subset(file, Affect_BC %in% affBC))
    return(result)}
  
  filter_annotation_affFC <- function(file, affFC){
    if(length(affFC)==0){affFC <- "ALL"}
    ifelse(affFC == "ALL", result <- file, result <- subset(file, Affect_FC %in% affFC))
    return(result)}
  
  filter_annotation_matrixscore <- function(file, matrixscore){
    if(length(matrixscore)==0){matrixscore <- "ALL"}
    ifelse(matrixscore == "ALL", result <- file, result <- subset(file, Matrix_score %in% matrixscore))
    return(result)}
  
  filter_annotation_aaorignial <- function(file, aaoriginal){
    if(length(aaoriginal)==0){aaoriginal <- "ALL"}
    ifelse(aaoriginal == "ALL", result <- file, result <- subset(file, Original_aa %in% aaoriginal))
    return(result)}
  
  filter_annotation_aachanged <- function(file, aachanged){
    if(length(aachanged)==0){aachanged <- "ALL"}
    ifelse(aachanged == "ALL", result <- file, result <- subset(file, Changed_aa %in% aachanged))
    return(result)}
  
  ######################################################################################################################
  ######################################################################################################################
  ### BOX FILTERS
  # filter box "African"
  filter_annotation_box_afr <- function(file, af){
    result <- file
    p1 <- af[1]
    p2 <- af[2]
    result <- subset(file, African_Frequency >= p1)
    result <- subset(result, African_Frequency <= p2)
    return(result)}
  
  # filter box "Ashkenazi.Jewish"
  filter_annotation_box_ashj <- function(file, ashj){
    result <- file
    p1 <- ashj[1]
    p2 <- ashj[2]
    result <- subset(file, Ashkenazi_Jewish_Frequency >= p1)
    result <- subset(result, Ashkenazi_Jewish_Frequency <= p2)
    return(result)}
  
  # "East.Asian"   
  filter_annotation_box_esas <- function(file, esas){
    result <- file
    p1 <- esas[1]
    p2 <- esas[2]
    result <- subset(file, East_Asian_Frequency >= p1)
    result <- subset(result, East_Asian_Frequency <= p2)
    return(result)}
  
  # "South.Asian" 
  filter_annotation_box_soas <- function(file, soas){
    result <- file
    p1 <- soas[1]
    p2 <- soas[2]
    result <- subset(file, South_Asian_Frequency >= p1)
    result <- subset(result, South_Asian_Frequency <= p2)
    return(result)}
  
  # "European..Finnish." 
  filter_annotation_box_eufin <- function(file, eufin){
    result <- file
    p1 <- eufin[1]
    p2 <- eufin[2]
    result <- subset(file, European_Finnish_Frequency >= p1)
    result <- subset(result, European_Finnish_Frequency <= p2)
    return(result)}
  
  # "European..Non.Finnish."
  filter_annotation_box_eunfin <- function(file, eunfin){
    result <- file
    p1 <- eunfin[1]
    p2 <- eunfin[2]
    result <- subset(file, European_Non_Finnish_Frequency >= p1)
    result <- subset(result, European_Non_Finnish_Frequency <= p2)
    return(result)}
  
  # "Latino"  
  filter_annotation_box_lati <- function(file, lati){
    result <- file
    p1 <- lati[1]
    p2 <- lati[2]
    result <- subset(file, Latino_Frequency >= p1)
    result <- subset(result, Latino_Frequency <= p2)
    return(result)}
  
  # "Other"   
  filter_annotation_box_othe <- function(file, othe){
    result <- file
    p1 <- othe[1]
    p2 <- othe[2]
    result <- subset(file, Other_Frequency >= p1)
    result <- subset(result, Other_Frequency <= p2)
    return(result)}
  
  # "ALL"
  filter_annotation_box_All <- function(file, All){
    result <- file
    p1 <- All[1]
    p2 <- All[2]
    result <- subset(file, Allele_Frequency >= p1)
    result <- subset(result, Allele_Frequency <= p2)
    return(result)}
  
  ######################################################################################################################
  ######################################################################################################################
  ### Hemizygote filter
  filter_annotation_hemizyg <- function(file, hemizyg){
    if(length(hemizyg)==0){hemizyg <- "ALL"
    if(hemizyg == 'ALL'){result <- file}}
    if(length(hemizyg)!=0){
      if(hemizyg == 0){result <- subset(file, Hemizygote_Count == 0)}
      if(hemizyg == 1){result <- subset(file, Hemizygote_Count > 0)}
      if(hemizyg == 'ALL'){result <- file}}
    return(result)}
  
  ### Homozygote filter
  filter_annotation_homozyg <- function(file, homozyg){
    if(length(homozyg)==0){homozyg <- "ALL"
    if(homozyg == 'ALL'){result <- file}}
    if(length(homozyg)!=0){
      if(homozyg == 0){result <- subset(file, Homozygote_Count == 0)}
      if(homozyg == 1){result <- subset(file, Homozygote_Count > 0)}
      if(homozyg == 'ALL'){result <- file}}
    return(result)}
  ######################################################################################################################
  ######################################################################################################################
  
  ### Populations filter
  filter_affect_african <- function(file, african){
    if(length(african) == 0){african <- "ALL"
    if(african == 'ALL'){result <- file}}
    if(length(african) != 0){
      if(african == 0){result <- subset(file, Affect_African == 'No')}
      if(african == 1){result <- subset(file, Affect_African == 'Yes')}
      if(african == 'ALL'){result <- file}}
    return(result)}
  
  filter_affect_ashkenazi_jewish <- function(file, ashkenazi){
    if(length(ashkenazi) == 0){ashkenazi <- "ALL"
    if(ashkenazi == 'ALL'){result <- file}}
    if(length(ashkenazi) != 0){
      if(ashkenazi == 0){result <- subset(file, Affect_Ashkenazi_Jewish == 'No')}
      if(ashkenazi == 1){result <- subset(file, Affect_Ashkenazi_Jewish == 'Yes')}
      if(ashkenazi == 'ALL'){result <- file}}
    return(result)}
  
  filter_affect_east_asian <- function(file, east){
    if(length(east) == 0){east <- "ALL"
    if(east == 'ALL'){result <- file}}
    if(length(east) != 0){
      if(east == 0){result <- subset(file, Affect_East_Asian == 'No')}
      if(east == 1){result <- subset(file, Affect_East_Asian == 'Yes')}
      if(east == 'ALL'){result <- file}}
    return(result)}
  
  filter_affect_south_asian <- function(file, south){
    if(length(south)== 0){south <- "ALL"
    if(south == 'ALL'){result <- file}}
    if(length(south)!= 0){
      if(south == 0){result <- subset(file, Affect_South_Asian == 'No')}
      if(south == 1){result <- subset(file, Affect_South_Asian == 'Yes')}
      if(south == 'ALL'){result <- file}}
    return(result)}
  
  filter_affect_european_finnish <- function(file, finnish){
    if(length(finnish) == 0){finnish <- "ALL"
    if(finnish == 'ALL'){result <- file}}
    if(length(finnish)!= 0){
      if(finnish == 0){result <- subset(file, Affect_European_Finnish == 'No')}
      if(finnish == 1){result <- subset(file, Affect_European_Finnish == 'Yes')}
      if(finnish == 'ALL'){result <- file}}
    return(result)}
  
  filter_affect_european_non_finnish <- function(file, nfinnish){
    if(length(nfinnish) ==0){nfinnish <- "ALL"
    if(nfinnish == 'ALL'){result <- file}}
    if(length(nfinnish)!=0){
      if(nfinnish == 0){result <- subset(file, Affect_European_Non_Finnish == 'No')}
      if(nfinnish == 1){result <- subset(file, Affect_European_Non_Finnish == 'Yes')}
      if(nfinnish == 'ALL'){result <- file}}
    return(result)}
  
  filter_affect_latino <- function(file, latino){
    if(length(latino) == 0){latino <- "ALL"
    if(latino == 'ALL'){result <- file}}
    if(length(latino) != 0){
      if(latino == 0){result <- subset(file, Affect_Latino == 'No')}
      if(latino == 1){result <- subset(file, Affect_Latino == 'Yes')}
      if(latino == 'ALL'){result <- file}}
    return(result)}
  
  filter_affect_other <- function(file, other){
    if(length(other) == 0){other <- "ALL"
    if(other == 'ALL'){result <- file}}
    if(length(other) != 0){
      if(other == 0){result <- subset(file, Affect_Other == 'No')}
      if(other == 1){result <- subset(file, Affect_Other == 'Yes')}
      if(other == 'ALL'){result <- file}}
    return(result)}
  ##############################################################################################################################################################
  ##############################################################################################################################################################
  ##############################################################################################################################################################
  ##############################################################################################################################################################
  ##############################################################################################################################################################
  ##############################################################################################################################################################
  ### PLOTS
  # ANNOTATION
  # Point mutation
  piechart_mys_syn <- function(file, originalfile){
    file <- subset(file, Point_Mutation!="empty")
    originalfile <- subset(originalfile, Point_Mutation!="empty")
    doms <- file$Point_Mutation
    doms <- ordered(doms, levels = c('Transition', 'Transversion', 'Deletion', 'Insertion'))
    df <- as.data.frame(table(doms))
    colnames(df) <- c('Pointmutations', 'Counts')
    
    colorines <- c('green', 'blue', 'red', 'black')
    
    colorines_level <- setNames(colorines, levels(originalfile$Point_mutation))
    
    # Change barplot fill colors by groups
    p <- ggplot(df, aes(x = Pointmutations, y = Counts, fill = Pointmutations)) +
      geom_bar(stat = "identity") + 
      geom_text(aes(label = Counts), vjust = -0.3, size = 3.5) +
      
      theme(axis.text.x = element_text(angle = 0, hjust = 0.5, size = rel(1.3))) + 
      theme(axis.title.x = element_text(angle = 0, hjust = 0.5, size = rel(1.2), face = "bold", color = "black")) +
      theme(axis.title.y = element_text(angle = 90, hjust = 0.5, size = rel(1.2), face = "bold", color = "black")) +
      theme(plot.title = element_text(size = rel(1.5), colour = "black", face = "bold", hjust = 0.5)) +
      labs(title = "Point mutations frequencies within hORs") + ylab("Frequency") + xlab("Point Mutation Type") +
      
      theme(legend.position="none") +
      scale_fill_manual(values = colorines_level)
    
    p
  }
  
  ######################################################################################################################
  
  # Mutation Impact
  piechart_annot_DNA <- function(file, originalfile){
    file <- subset(file, Mutation_Impact!="empty")
    originalfile <- subset(originalfile, Mutation_Impact!="empty")
    doms <- file$Mutation_Impact
    doms <- ordered(doms, levels = c('missense_variant', 'synonymous_variant', 'frameshift_variant', '3_prime_UTR_variant', 
                                     '5_prime_UTR_variant', 'stop_gained', 'stop_lost', 'intron_variant', 'splice_region_variant',
                                     'splice_acceptor_variant', 'splice_donor_variant', 'coding_sequence_variant', 'inframe_insertion'))
    df <- as.data.frame(table(doms))
    colnames(df) <- c('Impacts', 'Counts')
    
    colorines <- alpha(rainbow(length(unique(originalfile$Mutation_Impact))), 1)
    
    colorines_level <- setNames(colorines, levels(originalfile$Mutation_Impact))
    
    # Change barplot fill colors by groups
    p <- ggplot(df, aes(x = Impacts, y = Counts, fill = Impacts)) +
      geom_bar(stat = "identity") + 
      geom_text(aes(label = Counts), vjust = -0.3, size = 3.5) +
      
      theme(axis.text.x = element_text(angle = 90, hjust = 0.5, size = rel(1.3))) +
      theme(axis.title.x = element_text(angle = 0, hjust = 0.5, size = rel(1.2), face = "bold", color = "black")) +
      theme(axis.title.y = element_text(angle = 90, hjust = 0.5, size = rel(1.2), face = "bold", color = "black")) +
      theme(plot.title = element_text(size = rel(1.5), colour = "black", face = "bold", hjust = 0.5)) +
      labs(title = "Mutation Impacts frequencies within hORs") + ylab("Frequency") + xlab("Mutation Impact Type") +
      
      theme(legend.position="none") +
      scale_fill_manual(values = colorines_level)
    
    p
  }
  
  ######################################################################################################################
  ######################################################################################################################
  
  #Affect BS and FC
  piechart_bs <- function(file, originalfile){
    
    BC <- as.numeric(table(file$Affect_BC)['Yes'])
    FC <- as.numeric(table(file$Affect_FC)['Yes'])
    DIM <- as.numeric(dim(file)[1])
    if (is.na(BC) == TRUE){BC = as.numeric(0)}
    if (is.na(FC) == TRUE){FC = as.numeric(0)}
    if (is.null(DIM) == TRUE){DIM = as.numeric(0)}
    TOTAL <- DIM - FC - BC
    df <- data.frame("doms" = c('BC', 'FC', 'No'), "Freq" = c(BC, FC, TOTAL))
    colnames(df) <- c('Target', 'Counts')
    
    colorines <- c('red', 'yellow', 'orange')
    
    # Change barplot fill colors by groups
    p <- ggplot(df, aes(x = Target, y = Counts, fill = Target)) +
      geom_bar(stat = "identity") + 
      geom_text(aes(label = Counts), vjust = -0.3, size = 3.5) +
      
      theme(axis.text.x = element_text(angle = 0, hjust = 0.5, size = rel(1.3))) + 
      theme(axis.title.x = element_text(angle = 0, hjust = 0.5, size = rel(1.2), face = "bold", color = "black")) +
      theme(axis.title.y = element_text(angle = 90, hjust = 0.5, size = rel(1.2), face = "bold", color = "black")) +
      theme(plot.title = element_text(size = rel(1.5), colour = "black", face = "bold", hjust = 0.5)) +
      labs(title = "Affect Binding Cavity & Functional Core frequencies within hORs") + ylab("Frequency") + xlab("Affect BC/FC") +
      
      theme(legend.position="none") +
      scale_fill_manual(values = colorines)
    
    p
  }
  
  ######################################################################################################################
  ######################################################################################################################
  
  # DOMAINS
  barchart2 <- function(file, originalfile){
    file <- subset(file, Domain!="empty")
    originalfile <- subset(originalfile, Domain!="empty")
    doms <- file$Domain
    doms <- ordered(doms, levels = c('TM1', 'TM2', 'TM3', 'TM4', 'TM5', 'TM6','TM7', 'ECL1', 'ECL2', 'ECL3', 'ICL1', 'ICL2', 'ICL3', 'C-term', 'N-term', 'NCR'))
    df <- as.data.frame(table(doms))
    colnames(df) <- c('Doms', 'Counts')
    # Change barplot fill colors by groups
    
    colorines <- c("#4C00FFFF", "#0F00FFFF", "#002EFFFF", "#006BFFFF", "#00A8FFFF", "lightskyblue", "#00F1FFFF", #TM
                   "#00FF00FF", "#4DFF00FF", "lightgreen", #ECL
                   "#E6FF00FF", "#FFFF00FF", "#FFEA2DFF", #ICL
                   "darkorange", #ct
                   "red", # nt
                   "black") #ncr
    
    colorines_level <- setNames(colorines, levels(originalfile$Domain))
    
    p <- ggplot(df, aes(x = Doms, y = Counts, fill = Doms)) +
      geom_bar(stat = "identity") + 
      geom_text(aes(label = Counts), vjust = -0.3, size = 3.5) +
      
      theme(axis.text.x = element_text(angle = 0, hjust = 0.5, size = rel(1.3))) + 
      theme(axis.title.x = element_text(angle = 0, hjust = 0.5, size = rel(1.2), face = "bold", color = "black")) +
      theme(axis.title.y = element_text(angle = 90, hjust = 0.5, size = rel(1.2), face = "bold", color = "black")) +
      theme(plot.title = element_text(size = rel(1.5), colour = "black", face = "bold", hjust = 0.5)) +
      labs(title = "Protein domain frequencies within hORs") + ylab("Frequency") + xlab("Protein domain") +
      scale_fill_manual(values = colorines_level) +
      
      theme(legend.position="none")
    p
  }
  ######################################################################################################################
  
  # DOMAINS per FAMILIES (counts)
  barchart5 <- function(file, originalfile){
    # Remove empty
    file <- subset(file, Domain!="empty")
    originalfile <- subset(originalfile, Domain!="empty")
    file$Domain <- as.factor(file$Domain)
    file$Domain <- ordered(file$Domain, levels = c('TM1', 'TM2', 'TM3', 'TM4', 'TM5', 'TM6', 'TM7', 'ECL1', 'ECL2', 'ECL3', 'ICL1', 'ICL2', 'ICL3', 'C-term', 'N-term', 'NCR'))
    originalfile$Domain <- as.factor(originalfile$Domain)
    originalfile$Domain <- ordered(originalfile$Domain, levels = c('TM1', 'TM2', 'TM3', 'TM4', 'TM5', 'TM6', 'TM7', 'ECL1', 'ECL2', 'ECL3', 'ICL1', 'ICL2', 'ICL3', 'C-term', 'N-term', 'NCR'))
    
    colorines <- c("#4C00FFFF", "#0F00FFFF", "#002EFFFF", "#006BFFFF", "#00A8FFFF", "lightskyblue", "#00F1FFFF", #TM
                   "#00FF00FF", "#4DFF00FF", "lightgreen", #ECL
                   "#E6FF00FF", "#FFFF00FF", "#FFEA2DFF", #ICL
                   "darkorange", #ct
                   "red", # nt
                   "black") #ncr
    
    colorines_level <- setNames(colorines, levels(originalfile$Domain))
    
    g = ggplot(file, aes(as.factor(Family), fill=Domain)) + geom_bar(position="stack") +
      
      theme(axis.text.x = element_text(angle = 0, hjust = 0.5, size = rel(1.3))) + 
      theme(axis.title.x = element_text(angle = 0, hjust = 0.5, size = rel(1.2), face = "bold", color = "black")) +
      theme(axis.title.y = element_text(angle = 90, hjust = 0.5, size = rel(1.2), face = "bold", color = "black")) +
      theme(plot.title = element_text(size = rel(1.5), colour = "black", face = "bold", hjust = 0.5)) +
      labs(title = "Protein domain frequencies within hORs families") + ylab("Frequency") + xlab("Family") +
      scale_fill_manual(values = colorines_level)
    g
  }
  ######################################################################################################################
  
  # DOMAINS per FAMILIES (freqs)
  barchart6 <- function(file, originalfile){
    # Remove empty
    file <- subset(file, Domain!="empty")
    originalfile <- subset(originalfile, Domain!="empty")
    file$Domain <- as.factor(file$Domain)
    file$Domain <- ordered(file$Domain, levels = c('TM1', 'TM2', 'TM3', 'TM4', 'TM5', 'TM6', 'TM7', 'ECL1', 'ECL2', 'ECL3', 'ICL1', 'ICL2', 'ICL3', 'C-term', 'N-term', 'NCR'))
    originalfile$Domain <- as.factor(originalfile$Domain)
    originalfile$Domain <- ordered(originalfile$Domain, levels = c('TM1', 'TM2', 'TM3', 'TM4', 'TM5', 'TM6', 'TM7', 'ECL1', 'ECL2', 'ECL3', 'ICL1', 'ICL2', 'ICL3', 'C-term', 'N-term', 'NCR'))
    
    colorines <- c("#4C00FFFF", "#0F00FFFF", "#002EFFFF", "#006BFFFF", "#00A8FFFF", "lightskyblue", "#00F1FFFF", #TM
                   "#00FF00FF", "#4DFF00FF", "lightgreen", #ECL
                   "#E6FF00FF", "#FFFF00FF", "#FFEA2DFF", #ICL
                   "darkorange", #ct
                   "red", # nt
                   "black") #ncr
    
    colorines_level <- setNames(colorines, levels(originalfile$Domain))
    
    g = ggplot(file, aes(as.factor(Family), fill=Domain)) + geom_bar(position="fill") +
      
      theme(axis.text.x = element_text(angle = 0, hjust = 0.5, size = rel(1.3))) + 
      theme(axis.title.x = element_text(angle = 0, hjust = 0.5, size = rel(1.2), face = "bold", color = "black")) +
      theme(axis.title.y = element_text(angle = 90, hjust = 0.5, size = rel(1.2), face = "bold", color = "black")) +
      theme(plot.title = element_text(size = rel(1.5), colour = "black", face = "bold", hjust = 0.5)) +
      labs(title = "Protein domain relative frequencies within hORs families") + ylab("Relative frequency") + xlab("Family") +
      scale_fill_manual(values = colorines_level)
    g
  }
  
  #####################################################################################################################
  ######################################################################################################################
  
  # CHR
  barchart_chr<- function(file, originalfile){
    file <- subset(file, Chromosome!="empty")
    originalfile <- subset(originalfile, Chromosome!="empty")
    doms <- file$Chromosome
    doms <- ordered(doms, levels = c(1, 2, 3, 5, 6, 7, 8, 9, 10, 11, 12, 14, 15, 16, 17, 19,  22, 'X'))
    df <- as.data.frame(table(doms))
    colnames(df) <- c('Chromosome', 'Counts')
    
    colorines <- c(brewer.pal(n = 11, name = "Paired"), 'yellow', 'gold', 'darkgoldenrod1', 'brown',  'brown4', 'azure4', "black")
    
    colorines_level <- setNames(colorines, levels(originalfile$Chromosome))
    
    
    
    # Change barplot fill colors by groups
    p <- ggplot(df, aes(x = Chromosome, y = Counts, fill = Chromosome)) +
      geom_bar(stat = "identity") + 
      geom_text(aes(label = Counts), vjust = -0.3, size = 3.5) +
      
      theme(axis.text.x = element_text(angle = 0, hjust = 0.5, size = rel(1.3))) + 
      theme(axis.title.x = element_text(angle = 0, hjust = 0.5, size = rel(1.2), face = "bold", color = "black")) +
      theme(axis.title.y = element_text(angle = 90, hjust = 0.5, size = rel(1.2), face = "bold", color = "black")) +
      theme(plot.title = element_text(size = rel(1.5), colour = "black", face = "bold", hjust = 0.5)) +
      labs(title = "Chromosomes frequencies within hORs") + ylab("Frequency") + xlab("Chromosome") +
      
      theme(legend.position="none") +
      
      scale_fill_manual(values = colorines_level)
    p
  }
  ######################################################################################################################
  
  # CHROMOSOMES per FAMILIES (counts)
  barchart7 <- function(file, originalfile){
    file$Chromosome <- as.factor(file$Chromosome)
    file$Chromosome <- ordered(file$Chromosome, levels = c(1, 2, 3, 5, 6, 7, 8, 9, 10, 11, 12, 14, 15, 16, 17, 19,  22, 'X'))
    originalfile$Chromosome <- as.factor(originalfile$Chromosome)
    originalfile$Chromosome <- ordered(originalfile$Chromosome, levels = c(1, 2, 3, 5, 6, 7, 8, 9, 10, 11, 12, 14, 15, 16, 17, 19,  22, 'X'))
    
    colorines <- c(brewer.pal(n = 11, name = "Paired"), 'yellow', 'gold', 'darkgoldenrod1', 'brown',  'brown4', 'azure4', "black")
    
    colorines_level <- setNames(colorines, levels(originalfile$Chromosome))
    
    g = ggplot(file, aes(as.factor(Family), fill = Chromosome)) +
      
      theme(axis.text.x = element_text(angle = 0, hjust = 0.5, size = rel(1.3))) + 
      theme(axis.title.x = element_text(angle = 0, hjust = 0.5, size = rel(1.2), face = "bold", color = "black")) +
      theme(axis.title.y = element_text(angle = 90, hjust = 0.5, size = rel(1.2), face = "bold", color = "black")) +
      theme(plot.title = element_text(size = rel(1.5), colour = "black", face = "bold", hjust = 0.5)) +
      labs(title = "Chromosomes frequencies within hORs families") + ylab("Frequency") + xlab("Family")
    
    g+geom_bar(position="stack") + scale_fill_manual(values = colorines_level)
  }
  ######################################################################################################################
  
  # CHROMOSOMES per FAMILIES (freqs)
  barchart8 <- function(file, originalfile){
    file$Chromosome <- as.factor(file$Chromosome)
    file$Chromosome <- ordered(file$Chromosome, levels = c(1, 2, 3, 5, 6, 7, 8, 9, 10, 11, 12, 14, 15, 16, 17, 19,  22, 'X'))
    originalfile$Chromosome <- as.factor(originalfile$Chromosome)
    originalfile$Chromosome <- ordered(originalfile$Chromosome, levels = c(1, 2, 3, 5, 6, 7, 8, 9, 10, 11, 12, 14, 15, 16, 17, 19,  22, 'X'))
    
    colorines <- c(brewer.pal(n = 11, name = "Paired"), 'yellow', 'gold', 'darkgoldenrod1', 'brown',  'brown4', 'azure4', "black")
    
    colorines_level <- setNames(colorines, levels(originalfile$Chromosome))
    
    g = ggplot(file, aes(as.factor(Family), fill = Chromosome)) +
      
      theme(axis.text.x = element_text(angle = 0, hjust = 0.5, size = rel(1.3))) + 
      theme(axis.title.x = element_text(angle = 0, hjust = 0.5, size = rel(1.2), face = "bold", color = "black")) +
      theme(axis.title.y = element_text(angle = 90, hjust = 0.5, size = rel(1.2), face = "bold", color = "black")) +
      theme(plot.title = element_text(size = rel(1.5), colour = "black", face = "bold", hjust = 0.5)) +
      labs(title = "Chromosomes relative frequencies within hORs families") + ylab("Relative frequency") + xlab("Family") 
    
    g+geom_bar(position="fill") + scale_fill_manual(values = colorines_level)
  }
  
  #####################################################################################################################
  ######################################################################################################################
  
  # ALL POPULATIONS
  freqs_plot_ALL <- function(file, originalfile){
    get_subfreqs <- function(target, rownam){
      freq <- as.vector(target)
      freq <- as.numeric(gsub(",", ".", freq))
      data <- data.frame('less1' = length(which(freq > 0.5)),
                         'less0.5' = length(which(freq <= 0.5 & freq > 0.05)),
                         'less0.05' = length(which(freq <= 0.05 & freq > 0.01)),
                         'less0.01' = length(which(freq <= 0.01 & freq > 0.001 & freq != 0)),
                         'less0.001' = length(which(freq <= 0.001 & freq > 0.0001 & freq != 0)),
                         'less0.0001' = length(which(freq <= 0.0001 & freq > 0.00001 & freq != 0)),
                         'less0.00001' = length(which(freq <= 0.00001 & freq != 0)))
      rownames(data) <- rownam
      return(data)
    }
    d1 <- get_subfreqs(file$African_Frequency, 'AFR')
    d2 <- get_subfreqs(file$Ashkenazi_Jewish_Frequency, 'ASH-JEW')
    d3 <- get_subfreqs(file$East_Asian_Frequency, 'EA')
    d4 <- get_subfreqs(file$South_Asian_Frequency, 'SA')
    d5 <- get_subfreqs(file$European_Finnish_Frequency, 'EF')
    d6 <- get_subfreqs(file$European_Non_Finnish_Frequency, 'ENF')
    d7 <- get_subfreqs(file$Latino_Frequency, 'LAT')
    d8 <- get_subfreqs(file$Other_Frequency, 'OTH')
    d9 <- get_subfreqs(file$Allele_Frequency, 'ALL')
    d12 <- rbind(d1, d2); rm(d1, d2)
    d34 <- rbind(d3, d4); rm(d3, d4)
    d56 <- rbind(d5, d6); rm(d5, d6)
    d78 <- rbind(d7, d8); rm(d7, d8)
    d1234 <- rbind(d12, d34); rm(d12, d34)
    d5678 <- rbind(d56, d78); rm(d56, d78)
    d <- rbind(d1234, d5678); rm(d1234, d5678)
    d <- t(d)
    d <- as.data.frame(d)
    rows <- rownames(d)
    cols <- colnames(d)
    c1 <- c(); c2 <- c(); c3 <- c()
    for (col in 1:ncol(d)){
      for (row in 1:nrow(d)) {
        C <- rows[row]
        R <- cols[col]
        value <- d[row,col]
        c1 <- c(c1, R)
        c2 <- c(c2, C)
        c3 <- c(c3, value)
        rm(C); rm(R); rm(value)
      }}
    # Attach all columns
    data <- data.frame("Population" = c1, "Allele_Frequency" = c2, "Value" = c3); rm(c1); rm(c2); rm(c3)
    data$Population <- ordered(data$Population, levels = c('AFR','ASH-JEW','EA','SA','EF','ENF','LAT','OTH'))
    # Plot
    ggplot(data, aes(fill=Allele_Frequency, y=Value, x=Population), col) + 
      geom_bar(position="dodge", stat="identity") +
      geom_text(aes(label = Value), position = position_dodge(0.9),vjust = 0.5, hjust=-0.3, size = 3, angle = 90) +
      coord_cartesian(ylim=c(0,max(data$Value) + max(data$Value)*0.20)) +
      scale_fill_brewer(palette = "Spectral") +
      
      theme(axis.text.x = element_text(angle = 0, hjust = 0.5, size = rel(1.3))) + 
      theme(axis.title.x = element_text(angle = 0, hjust = 0.5, size = rel(1.2), face = "bold", color = "black")) +
      theme(axis.title.y = element_text(angle = 90, hjust = 0.5, size = rel(1.2), face = "bold", color = "black")) +
      theme(plot.title = element_text(size = rel(1.5), colour = "black", face = "bold", hjust = 0.5)) +
      labs(title = "Allele frequencies within hORs populations") + ylab("Mutation count") + xlab("Population")
  }
  
  ######################################################################################################################
  
  # AFRICAN
  freqs_plot_AFR <- function(file, originalfile){
    get_subfreqs <- function(target, rownam){
      freq <- as.vector(target)
      freq <- as.numeric(gsub(",", ".", freq))
      data <- data.frame('less1' = length(which(freq > 0.5)),
                         'less0.5' = length(which(freq <= 0.5 & freq > 0.05)),
                         'less0.05' = length(which(freq <= 0.05 & freq > 0.01)),
                         'less0.01' = length(which(freq <= 0.01 & freq > 0.001 & freq != 0)),
                         'less0.001' = length(which(freq <= 0.001 & freq > 0.0001 & freq != 0)),
                         'less0.0001' = length(which(freq <= 0.0001 & freq > 0.00001 & freq != 0)),
                         'less0.00001' = length(which(freq <= 0.00001 & freq != 0)))
      rownames(data) <- rownam
      return(data)}
    d <- get_subfreqs(file$African_Frequency, 'AFR')
    d <- t(d)
    d <- as.data.frame(d)
    rows <- rownames(d)
    cols <- colnames(d)
    c1 <- c(); c2 <- c(); c3 <- c()
    for (col in 1:ncol(d)){
      for (row in 1:nrow(d)) {
        C <- rows[row]
        R <- cols[col]
        value <- d[row,col]
        c1 <- c(c1, R)
        c2 <- c(c2, C)
        c3 <- c(c3, value); rm(C); rm(R); rm(value)
      }}
    # Attach all columns
    data = data.frame("Population" = c1, "Allele_Frequency" = c2, "Value" = c3)
    rm(c1); rm(c2); rm(c3)
    # Plot
    ggplot(data, aes(fill=Allele_Frequency, y=Value, x=Population), col) + 
      geom_bar(position="dodge", stat="identity") +
      geom_text(aes(label = Value), position = position_dodge(0.9), vjust = -0.5, size = 3, angle = 0) +
      coord_cartesian(ylim=c(0,max(data$Value) + max(data$Value)*0.2)) +
      scale_fill_brewer(palette = "Spectral") +
      
      theme(axis.text.x = element_text(angle = 0, hjust = 0.5, size = rel(1.3))) + 
      theme(axis.title.x = element_text(angle = 0, hjust = 0.5, size = rel(1.2), face = "bold", color = "black")) +
      theme(axis.title.y = element_text(angle = 90, hjust = 0.5, size = rel(1.2), face = "bold", color = "black")) +
      theme(plot.title = element_text(size = rel(1.5), colour = "black", face = "bold", hjust = 0.5)) +
      labs(title = "Allele frequencies of hOR at African population") + ylab("Mutation count") + xlab("Population")
  }
  
  ######################################################################################################################
  ######################################################################################################################
  
  # ASHKENAZI-JEWISH
  freqs_plot_ASH <- function(file, originalfile){
    get_subfreqs <- function(target, rownam){
      freq <- as.vector(target)
      freq <- as.numeric(gsub(",", ".", freq))
      data <- data.frame('less1' = length(which(freq > 0.5)),
                         'less0.5' = length(which(freq <= 0.5 & freq > 0.05)),
                         'less0.05' = length(which(freq <= 0.05 & freq > 0.01)),
                         'less0.01' = length(which(freq <= 0.01 & freq > 0.001 & freq != 0)),
                         'less0.001' = length(which(freq <= 0.001 & freq > 0.0001 & freq != 0)),
                         'less0.0001' = length(which(freq <= 0.0001 & freq > 0.00001 & freq != 0)),
                         'less0.00001' = length(which(freq <= 0.00001 & freq != 0)))
      rownames(data) <- rownam
      return(data)}
    d <- get_subfreqs(file$Ashkenazi_Jewish_Frequency, 'ASH')
    d <- t(d)
    d <- as.data.frame(d)
    rows <- rownames(d)
    cols <- colnames(d)
    c1 <- c(); c2 <- c(); c3 <- c()
    for (col in 1:ncol(d)){
      for (row in 1:nrow(d)) {
        C <- rows[row]
        R <- cols[col]
        value <- d[row,col]
        c1 <- c(c1, R)
        c2 <- c(c2, C)
        c3 <- c(c3, value); rm(C); rm(R); rm(value)
      }}
    # Attach all columns
    data = data.frame("Population" = c1, "Allele_Frequency" = c2, "Value" = c3)
    rm(c1); rm(c2); rm(c3)
    # Plot
    ggplot(data, aes(fill=Allele_Frequency, y=Value, x=Population), col) + 
      geom_bar(position="dodge", stat="identity") +
      geom_text(aes(label = Value), position = position_dodge(0.9), vjust = -0.5, size = 3, angle = 0) +
      coord_cartesian(ylim=c(0,max(data$Value) + max(data$Value)*0.2)) +
      scale_fill_brewer(palette = "Spectral") +
      
      theme(axis.text.x = element_text(angle = 0, hjust = 0.5, size = rel(1.3))) + 
      theme(axis.title.x = element_text(angle = 0, hjust = 0.5, size = rel(1.2), face = "bold", color = "black")) +
      theme(axis.title.y = element_text(angle = 90, hjust = 0.5, size = rel(1.2), face = "bold", color = "black")) +
      theme(plot.title = element_text(size = rel(1.5), colour = "black", face = "bold", hjust = 0.5)) +
      labs(title = "Allele frequencies of hOR at Ashkenazi-Jewish population") + ylab("Mutation count") + xlab("Population")
  }
  
  ######################################################################################################################
  ######################################################################################################################
  
  # EAST ASIAN
  freqs_plot_EA <- function(file, originalfile){
    get_subfreqs <- function(target, rownam){
      freq <- as.vector(target)
      freq <- as.numeric(gsub(",", ".", freq))
      data <- data.frame('less1' = length(which(freq > 0.5)),
                         'less0.5' = length(which(freq <= 0.5 & freq > 0.05)),
                         'less0.05' = length(which(freq <= 0.05 & freq > 0.01)),
                         'less0.01' = length(which(freq <= 0.01 & freq > 0.001 & freq != 0)),
                         'less0.001' = length(which(freq <= 0.001 & freq > 0.0001 & freq != 0)),
                         'less0.0001' = length(which(freq <= 0.0001 & freq > 0.00001 & freq != 0)),
                         'less0.00001' = length(which(freq <= 0.00001 & freq != 0)))
      rownames(data) <- rownam
      return(data)}
    d <- get_subfreqs(file$East_Asian_Frequency, 'EA')
    d <- t(d)
    d <- as.data.frame(d)
    rows <- rownames(d)
    cols <- colnames(d)
    c1 <- c(); c2 <- c(); c3 <- c()
    for (col in 1:ncol(d)){
      for (row in 1:nrow(d)) {
        C <- rows[row]
        R <- cols[col]
        value <- d[row,col]
        c1 <- c(c1, R)
        c2 <- c(c2, C)
        c3 <- c(c3, value); rm(C); rm(R); rm(value)
      }}
    # Attach all columns
    data = data.frame("Population" = c1, "Allele_Frequency" = c2, "Value" = c3)
    rm(c1); rm(c2); rm(c3)
    # Plot
    ggplot(data, aes(fill=Allele_Frequency, y=Value, x=Population), col) + 
      geom_bar(position="dodge", stat="identity") +
      geom_text(aes(label = Value), position = position_dodge(0.9), vjust = -0.5, size = 3, angle = 0) +
      coord_cartesian(ylim=c(0,max(data$Value) + max(data$Value)*0.2)) +
      scale_fill_brewer(palette = "Spectral") +
      
      theme(axis.text.x = element_text(angle = 0, hjust = 0.5, size = rel(1.3))) + 
      theme(axis.title.x = element_text(angle = 0, hjust = 0.5, size = rel(1.2), face = "bold", color = "black")) +
      theme(axis.title.y = element_text(angle = 90, hjust = 0.5, size = rel(1.2), face = "bold", color = "black")) +
      theme(plot.title = element_text(size = rel(1.5), colour = "black", face = "bold", hjust = 0.5)) +
      labs(title = "Allele frequencies of hOR at East asian population") + ylab("Mutation count") + xlab("Population")
  }
  
  ######################################################################################################################
  ######################################################################################################################
  
  # SOUTH ASIAN
  freqs_plot_SA <- function(file, originalfile){
    get_subfreqs <- function(target, rownam){
      freq <- as.vector(target)
      freq <- as.numeric(gsub(",", ".", freq))
      data <- data.frame('less1' = length(which(freq > 0.5)),
                         'less0.5' = length(which(freq <= 0.5 & freq > 0.05)),
                         'less0.05' = length(which(freq <= 0.05 & freq > 0.01)),
                         'less0.01' = length(which(freq <= 0.01 & freq > 0.001 & freq != 0)),
                         'less0.001' = length(which(freq <= 0.001 & freq > 0.0001 & freq != 0)),
                         'less0.0001' = length(which(freq <= 0.0001 & freq > 0.00001 & freq != 0)),
                         'less0.00001' = length(which(freq <= 0.00001 & freq != 0)))
      rownames(data) <- rownam
      return(data)}
    d <- get_subfreqs(file$South_Asian_Frequency, 'SA')
    d <- t(d)
    d <- as.data.frame(d)
    rows <- rownames(d)
    cols <- colnames(d)
    c1 <- c(); c2 <- c(); c3 <- c()
    for (col in 1:ncol(d)){
      for (row in 1:nrow(d)) {
        C <- rows[row]
        R <- cols[col]
        value <- d[row,col]
        c1 <- c(c1, R)
        c2 <- c(c2, C)
        c3 <- c(c3, value); rm(C); rm(R); rm(value)
      }}
    # Attach all columns
    data = data.frame("Population" = c1, "Allele_Frequency" = c2, "Value" = c3)
    rm(c1); rm(c2); rm(c3)
    # Plot
    ggplot(data, aes(fill=Allele_Frequency, y=Value, x=Population), col) + 
      geom_bar(position="dodge", stat="identity") +
      geom_text(aes(label = Value), position = position_dodge(0.9), vjust = -0.5, size = 3, angle = 0) +
      coord_cartesian(ylim=c(0,max(data$Value) + max(data$Value)*0.2)) +
      scale_fill_brewer(palette = "Spectral") +
      
      theme(axis.text.x = element_text(angle = 0, hjust = 0.5, size = rel(1.3))) + 
      theme(axis.title.x = element_text(angle = 0, hjust = 0.5, size = rel(1.2), face = "bold", color = "black")) +
      theme(axis.title.y = element_text(angle = 90, hjust = 0.5, size = rel(1.2), face = "bold", color = "black")) +
      theme(plot.title = element_text(size = rel(1.5), colour = "black", face = "bold", hjust = 0.5)) +
      labs(title = "Allele frequencies of hOR at South asian population") + ylab("Mutation count") + xlab("Population")
  }
  
  ######################################################################################################################
  ######################################################################################################################
  
  # EUROPEAN FINNISH
  freqs_plot_EF <- function(file, originalfile){
    get_subfreqs <- function(target, rownam){
      freq <- as.vector(target)
      freq <- as.numeric(gsub(",", ".", freq))
      data <- data.frame('less1' = length(which(freq > 0.5)),
                         'less0.5' = length(which(freq <= 0.5 & freq > 0.05)),
                         'less0.05' = length(which(freq <= 0.05 & freq > 0.01)),
                         'less0.01' = length(which(freq <= 0.01 & freq > 0.001 & freq != 0)),
                         'less0.001' = length(which(freq <= 0.001 & freq > 0.0001 & freq != 0)),
                         'less0.0001' = length(which(freq <= 0.0001 & freq > 0.00001 & freq != 0)),
                         'less0.00001' = length(which(freq <= 0.00001 & freq != 0)))
      rownames(data) <- rownam
      return(data)}
    d <- get_subfreqs(file$European_Finnish_Frequency, 'EF')
    d <- t(d)
    d <- as.data.frame(d)
    rows <- rownames(d)
    cols <- colnames(d)
    c1 <- c(); c2 <- c(); c3 <- c()
    for (col in 1:ncol(d)){
      for (row in 1:nrow(d)) {
        C <- rows[row]
        R <- cols[col]
        value <- d[row,col]
        c1 <- c(c1, R)
        c2 <- c(c2, C)
        c3 <- c(c3, value); rm(C); rm(R); rm(value)
      }}
    # Attach all columns
    data = data.frame("Population" = c1, "Allele_Frequency" = c2, "Value" = c3)
    rm(c1); rm(c2); rm(c3)
    # Plot
    ggplot(data, aes(fill=Allele_Frequency, y=Value, x=Population), col) + 
      geom_bar(position="dodge", stat="identity") +
      geom_text(aes(label = Value), position = position_dodge(0.9), vjust = -0.5, size = 3, angle = 0) +
      coord_cartesian(ylim=c(0,max(data$Value) + max(data$Value)*0.2)) +
      scale_fill_brewer(palette = "Spectral") +
      
      theme(axis.text.x = element_text(angle = 0, hjust = 0.5, size = rel(1.3))) + 
      theme(axis.title.x = element_text(angle = 0, hjust = 0.5, size = rel(1.2), face = "bold", color = "black")) +
      theme(axis.title.y = element_text(angle = 90, hjust = 0.5, size = rel(1.2), face = "bold", color = "black")) +
      theme(plot.title = element_text(size = rel(1.5), colour = "black", face = "bold", hjust = 0.5)) +
      labs(title = "Allele frequencies of hOR at European finnish population") + ylab("Mutation count") + xlab("Population")
  }
  
  ######################################################################################################################
  ######################################################################################################################
  
  # EUROPEAN NON FINNISH
  freqs_plot_ENF <- function(file, originalfile){
    get_subfreqs <- function(target, rownam){
      freq <- as.vector(target)
      freq <- as.numeric(gsub(",", ".", freq))
      data <- data.frame('less1' = length(which(freq > 0.5)),
                         'less0.5' = length(which(freq <= 0.5 & freq > 0.05)),
                         'less0.05' = length(which(freq <= 0.05 & freq > 0.01)),
                         'less0.01' = length(which(freq <= 0.01 & freq > 0.001 & freq != 0)),
                         'less0.001' = length(which(freq <= 0.001 & freq > 0.0001 & freq != 0)),
                         'less0.0001' = length(which(freq <= 0.0001 & freq > 0.00001 & freq != 0)),
                         'less0.00001' = length(which(freq <= 0.00001 & freq != 0)))
      rownames(data) <- rownam
      return(data)}
    d <- get_subfreqs(file$European_Non_Finnish_Frequency, 'ENF')
    d <- t(d)
    d <- as.data.frame(d)
    rows <- rownames(d)
    cols <- colnames(d)
    c1 <- c(); c2 <- c(); c3 <- c()
    for (col in 1:ncol(d)){
      for (row in 1:nrow(d)) {
        C <- rows[row]
        R <- cols[col]
        value <- d[row,col]
        c1 <- c(c1, R)
        c2 <- c(c2, C)
        c3 <- c(c3, value); rm(C); rm(R); rm(value)
      }}
    # Attach all columns
    data = data.frame("Population" = c1, "Allele_Frequency" = c2, "Value" = c3)
    rm(c1); rm(c2); rm(c3)
    # Plot
    ggplot(data, aes(fill=Allele_Frequency, y=Value, x=Population), col) + 
      geom_bar(position="dodge", stat="identity") +
      geom_text(aes(label = Value), position = position_dodge(0.9), vjust = -0.5, size = 3, angle = 0) +
      coord_cartesian(ylim=c(0,max(data$Value) + max(data$Value)*0.2)) +
      scale_fill_brewer(palette = "Spectral") +
      
      theme(axis.text.x = element_text(angle = 0, hjust = 0.5, size = rel(1.3))) + 
      theme(axis.title.x = element_text(angle = 0, hjust = 0.5, size = rel(1.2), face = "bold", color = "black")) +
      theme(axis.title.y = element_text(angle = 90, hjust = 0.5, size = rel(1.2), face = "bold", color = "black")) +
      theme(plot.title = element_text(size = rel(1.5), colour = "black", face = "bold", hjust = 0.5)) +
      labs(title = "Allele frequencies of hOR at European non finnish population") + ylab("Mutation count") + xlab("Population")
  }
  
  ######################################################################################################################
  ######################################################################################################################
  
  # LATINO
  freqs_plot_LAT <- function(file, originalfile){
    get_subfreqs <- function(target, rownam){
      freq <- as.vector(target)
      freq <- as.numeric(gsub(",", ".", freq))
      data <- data.frame('less1' = length(which(freq > 0.5)),
                         'less0.5' = length(which(freq <= 0.5 & freq > 0.05)),
                         'less0.05' = length(which(freq <= 0.05 & freq > 0.01)),
                         'less0.01' = length(which(freq <= 0.01 & freq > 0.001 & freq != 0)),
                         'less0.001' = length(which(freq <= 0.001 & freq > 0.0001 & freq != 0)),
                         'less0.0001' = length(which(freq <= 0.0001 & freq > 0.00001 & freq != 0)),
                         'less0.00001' = length(which(freq <= 0.00001 & freq != 0)))
      rownames(data) <- rownam
      return(data)}
    d <- get_subfreqs(file$Latino_Frequency, 'LAT')
    d <- t(d)
    d <- as.data.frame(d)
    rows <- rownames(d)
    cols <- colnames(d)
    c1 <- c(); c2 <- c(); c3 <- c()
    for (col in 1:ncol(d)){
      for (row in 1:nrow(d)) {
        C <- rows[row]
        R <- cols[col]
        value <- d[row,col]
        c1 <- c(c1, R)
        c2 <- c(c2, C)
        c3 <- c(c3, value); rm(C); rm(R); rm(value)
      }}
    # Attach all columns
    data = data.frame("Population" = c1, "Allele_Frequency" = c2, "Value" = c3)
    rm(c1); rm(c2); rm(c3)
    # Plot
    ggplot(data, aes(fill=Allele_Frequency, y=Value, x=Population), col) + 
      geom_bar(position="dodge", stat="identity") +
      geom_text(aes(label = Value), position = position_dodge(0.9), vjust = -0.5, size = 3, angle = 0) +
      coord_cartesian(ylim=c(0,max(data$Value) + max(data$Value)*0.2)) +
      scale_fill_brewer(palette = "Spectral") +
      theme(axis.text.x = element_text(angle = 0, hjust = 0.5, size = rel(1.3))) + 
      theme(axis.title.x = element_text(angle = 0, hjust = 0.5, size = rel(1.2), face = "bold", color = "black")) +
      theme(axis.title.y = element_text(angle = 90, hjust = 0.5, size = rel(1.2), face = "bold", color = "black")) +
      theme(plot.title = element_text(size = rel(1.5), colour = "black", face = "bold", hjust = 0.5)) +
      labs(title = "Allele frequencies of hOR at Latino population") + ylab("Mutation count") + xlab("Population")
  }
  
  ######################################################################################################################
  ######################################################################################################################
  # OTHER
  freqs_plot_OTH <- function(file, originalfile){
    get_subfreqs <- function(target, rownam){
      freq <- as.vector(target)
      freq <- as.numeric(gsub(",", ".", freq))
      data <- data.frame('less1' = length(which(freq > 0.5)),
                         'less0.5' = length(which(freq <= 0.5 & freq > 0.05)),
                         'less0.05' = length(which(freq <= 0.05 & freq > 0.01)),
                         'less0.01' = length(which(freq <= 0.01 & freq > 0.001 & freq != 0)),
                         'less0.001' = length(which(freq <= 0.001 & freq > 0.0001 & freq != 0)),
                         'less0.0001' = length(which(freq <= 0.0001 & freq > 0.00001 & freq != 0)),
                         'less0.00001' = length(which(freq <= 0.00001 & freq != 0)))
      rownames(data) <- rownam
      return(data)}
    d <- get_subfreqs(file$Other_Frequency, 'OTH'); d <- t(d); d <- as.data.frame(d)
    rows <- rownames(d); cols <- colnames(d)
    c1 <- c(); c2 <- c(); c3 <- c()
    for (col in 1:ncol(d)){
      for (row in 1:nrow(d)) {
        C <- rows[row]
        R <- cols[col]
        value <- d[row,col]
        c1 <- c(c1, R)
        c2 <- c(c2, C)
        c3 <- c(c3, value); rm(C); rm(R); rm(value)
      }}
    # Attach all columns
    data = data.frame("Population" = c1, "Allele_Frequency" = c2, "Value" = c3)
    rm(c1); rm(c2); rm(c3)
    # Plot
    ggplot(data, aes(fill=Allele_Frequency, y=Value, x=Population), col) + 
      geom_bar(position="dodge", stat="identity") +
      geom_text(aes(label = Value), position = position_dodge(0.9), vjust = -0.5, size = 3, angle = 0) +
      coord_cartesian(ylim=c(0,max(data$Value) + max(data$Value)*0.2)) +
      scale_fill_brewer(palette = "Spectral") +
      theme(axis.text.x = element_text(angle = 0, hjust = 0.5, size = rel(1.3))) + 
      theme(axis.title.x = element_text(angle = 0, hjust = 0.5, size = rel(1.2), face = "bold", color = "black")) +
      theme(axis.title.y = element_text(angle = 90, hjust = 0.5, size = rel(1.2), face = "bold", color = "black")) +
      theme(plot.title = element_text(size = rel(1.5), colour = "black", face = "bold", hjust = 0.5)) +
      labs(title = "Allele frequencies of hOR at Other population") + ylab("Mutation count") + xlab("Population")
  }
  #####################################################################################################################
  ######################################################################################################################
  #Ballesteros
  # Simple Horizontal Bar Plot with Added Labels
  plot_balles1 <- function(file){
    counts <- table(file$Ballesteros, exclude = c('-', 'empty', NA))
    counts <- as.data.frame(counts)
    ymax <- max(counts$Freq)
    p1 <-  dim(counts)[1]/2
    #p2 <- dim(counts)[1]
    counts1 <- counts[1:p1,]
    #counts2 <- counts[(p1+1):p2,]
    ball <- as.vector(counts1$Var1)
    colors1 <- c()
    for (val in ball) {
      #print(val)
      if(substr(val, 2, 2) == '.') {colors1 <- c(colors1, substr(val, 1, 1))}
      if(substr(val, 2, 2) != '.') {colors1 <- c(colors1, '8')}}
    color_vector <- c("red", "green", "blue", "yellow", "purple", "orange", "grey", "brown")
    color_palette <- c()
    for (val in colors1) {
      if(val == '1') {color_palette <- c(color_palette, color_vector[1])}
      if(val == '2') {color_palette <- c(color_palette, color_vector[2])}
      if(val == '3') {color_palette <- c(color_palette, color_vector[3])}
      if(val == '4') {color_palette <- c(color_palette, color_vector[4])}
      if(val == '5') {color_palette <- c(color_palette, color_vector[5])}
      if(val == '6') {color_palette <- c(color_palette, color_vector[6])}
      if(val == '7') {color_palette <- c(color_palette, color_vector[7])}
      if(val == '8') {color_palette <- c(color_palette, color_vector[8])}}
    p <- ggplot(data= counts1, aes(x= Var1, y=Freq)) +  
      geom_bar(stat="identity", width=0.7, color = color_palette) + 
      geom_text(aes(label = Freq), vjust = 0.5, hjust = -0.2, size = 2.3, angle=90) +
      theme(axis.text.x = element_text(angle = 70, hjust = 0.9, size = rel(0.9))) + 
      theme(axis.title.x = element_text(angle = 0, hjust = 0.5, size = rel(1.2), face = "bold", color = "black")) +
      theme(axis.title.y = element_text(angle = 90, hjust = 0.5, size = rel(1.2), face = "bold", color = "black")) +
      theme(plot.title = element_text(size = rel(1.5), colour = "black", face = "bold", hjust = 0.5)) +
      labs(title = "Ballesteros Weinstein positions frequencies within hORs") + ylab("Frequency") + 
      xlab("Ballesteros Weinstein Position") + ylim(c(0, ymax)) 
    p}
  ######################################################################################################################
  plot_balles2 <- function(file){
    counts <- table(file$Ballesteros, exclude = c('-', 'empty', NA))
    counts <- as.data.frame(counts)
    ymax <- max(counts$Freq)
    p1 <-  dim(counts)[1]/2
    p2 <- dim(counts)[1]
    #counts1 <- counts[1:p1,]
    counts2 <- counts[(p1+1):p2,]
    ball <- as.vector(counts2$Var1)
    colors2 <- c()
    for (val in ball) {
      if(substr(val, 2, 2) == '.') {colors2 <- c(colors2, substr(val, 1, 1))}
      if(substr(val, 2, 2) != '.') {colors2 <- c(colors2, '8')}}
    color_vector <- c("red", "green", "blue", "yellow", "purple", "orange", "skyblue", "brown")
    color_palette <- c()
    for (val in colors2){
      if(val == '1') {color_palette <- c(color_palette, color_vector[1])}
      if(val == '2') {color_palette <- c(color_palette, color_vector[2])}
      if(val == '3') {color_palette <- c(color_palette, color_vector[3])}
      if(val == '4') {color_palette <- c(color_palette, color_vector[4])}
      if(val == '5') {color_palette <- c(color_palette, color_vector[5])}
      if(val == '6') {color_palette <- c(color_palette, color_vector[6])}
      if(val == '7') {color_palette <- c(color_palette, color_vector[7])}
      if(val == '8') {color_palette <- c(color_palette, color_vector[8])}}
    p <- ggplot(data= counts2, aes(x= Var1, y=Freq)) + 
      geom_bar(stat="identity", width=0.7, color = color_palette) + 
      geom_text(aes(label = Freq), vjust = 0.5, hjust = -0.2, size = 2.3, angle=90) +
      theme(axis.text.x = element_text(angle = 70, hjust = 0.9, size = rel(0.9))) + 
      theme(axis.title.x = element_text(angle = 0, hjust = 0.5, size = rel(1.2), face = "bold", color = "black")) +
      theme(axis.title.y = element_text(angle = 90, hjust = 0.5, size = rel(1.2), face = "bold", color = "black")) +
      ylab("Frequency") + xlab("Ballesteros Weinstein Position") + ylim(c(0, ymax))  
    p}
  ######################################################################################################################
  ######################################################################################################################
  # MATRIX SCORE
  barchart_matrix1 <- function(file, originalfile){
    file <- subset(file, Matrix_score!="empty")
    originalfile <- subset(originalfile, Matrix_score!="empty")
    file <- subset(file, Matrix_score!="-")
    originalfile <- subset(originalfile, Matrix_score!="-")
    doms <- file$Matrix_score
    doms <- ordered(doms, levels = c('-4', '-3', '-2', '-1', '0', '1', '2', '3', '4', '5'))
    df <- as.data.frame(table(doms))
    colnames(df) <- c('Matrix_score', 'Counts')
    colorines <- c("black", "red", "orange", "yellow", "green", "lightblue", "blue", "purple", "brown", "pink")
    colorines_level <- setNames(colorines, levels(originalfile$Matrix_score))
    # Change barplot fill colors by groups
    p <- ggplot(df, aes(x = Matrix_score, y = Counts, fill = Matrix_score)) +
      geom_bar(stat = "identity") + 
      geom_text(aes(label = Counts), vjust = -0.3, size = 3.5) +
      theme(axis.text.x = element_text(angle = 0, hjust = 0.5, size = rel(1.3))) + 
      theme(axis.title.x = element_text(angle = 0, hjust = 0.5, size = rel(1.2), face = "bold", color = "black")) +
      theme(axis.title.y = element_text(angle = 90, hjust = 0.5, size = rel(1.2), face = "bold", color = "black")) +
      theme(plot.title = element_text(size = rel(1.5), colour = "black", face = "bold", hjust = 0.5)) +
      labs(title = "Matrix scores frequencies within hORs") + ylab("Frequency") + xlab("Matrix score") +
      theme(legend.position="none") +
      #scale_fill_manual(values = alpha(rainbow(length(unique(originalfile$Matrix_score))), 1))
      scale_fill_manual(values = colorines_level)
    p}
  ######################################################################################################################
  # MATRIX SCORE per FAMILIES (counts)
  barchart_matrix2 <- function(file, originalfile){
    file <- subset(file, Matrix_score!="empty")
    file <- subset(file, Matrix_score!="-")
    originalfile <- subset(originalfile, Matrix_score!="empty")
    originalfile <- subset(originalfile, Matrix_score!="-")
    file$Matrix_score <- as.factor(file$Matrix_score)
    file$Matrix_score <- ordered(file$Matrix_score, levels = c('-4', '-3', '-2', '-1', '0', '1', '2', '3', '4', '5'))
    originalfile$Matrix_score <- as.factor(originalfile$Matrix_score)
    originalfile$Matrix_score <- ordered(originalfile$Matrix_score, levels = c('-4', '-3', '-2', '-1', '0', '1', '2', '3', '4', '5'))
    colorines <- c("black", "red", "orange", "yellow", "green", "lightblue", "blue", "purple", "brown", "pink")
    colorines_level <- setNames(colorines, levels(originalfile$Matrix_score))
    g = ggplot(file, aes(as.factor(Family), fill = as.factor(Matrix_score))) 
    g+geom_bar(position="stack") + scale_fill_manual(
      values = colorines_level, name = "Matrix score") +
      theme(axis.text.x = element_text(angle = 0, hjust = 0.5, size = rel(1.3))) + 
      theme(axis.title.x = element_text(angle = 0, hjust = 0.5, size = rel(1.2), face = "bold", color = "black")) +
      theme(axis.title.y = element_text(angle = 90, hjust = 0.5, size = rel(1.2), face = "bold", color = "black")) +
      theme(plot.title = element_text(size = rel(1.5), colour = "black", face = "bold", hjust = 0.5)) +
      labs(title = "Matrix scores frequencies within hORs families") + ylab("Frequency") + xlab("Family")
  }
  ######################################################################################################################
  # MATRIX SCORE per FAMILIES (freqs)
  barchart_matrix3 <- function(file, originalfile){
    file <- subset(file, Matrix_score!="empty")
    file <- subset(file, Matrix_score!="-")
    originalfile <- subset(originalfile, Matrix_score!="empty")
    originalfile <- subset(originalfile, Matrix_score!="-")
    file$Matrix_score <- as.factor(file$Matrix_score)
    file$Matrix_score <- ordered(file$Matrix_score, levels = c('-4', '-3', '-2', '-1', '0', '1', '2', '3', '4', '5'))
    originalfile$Matrix_score <- as.factor(originalfile$Matrix_score)
    originalfile$Matrix_score <- ordered(originalfile$Matrix_score, levels = c('-4', '-3', '-2', '-1', '0', '1', '2', '3', '4', '5'))
    colorines <- c("black", "red", "orange", "yellow", "green", "lightblue", "blue", "purple", "brown", "pink")
    colorines_level <- setNames(colorines, levels(originalfile$Matrix_score))
    g = ggplot(file, aes(as.factor(Family), fill = as.factor(Matrix_score))) 
    g+geom_bar(position="fill") + scale_fill_manual(
      values = colorines_level, name = "Matrix score") +
      theme(axis.text.x = element_text(angle = 0, hjust = 0.5, size = rel(1.3))) + 
      theme(axis.title.x = element_text(angle = 0, hjust = 0.5, size = rel(1.2), face = "bold", color = "black")) +
      theme(axis.title.y = element_text(angle = 90, hjust = 0.5, size = rel(1.2), face = "bold", color = "black")) +
      theme(plot.title = element_text(size = rel(1.5), colour = "black", face = "bold", hjust = 0.5)) +
      labs(title = "Matrix scores relative frequencies within hORs families") + ylab("Relative frequency") + xlab("Family")
  }
  ######################################################################################################################
  ######################################################################################################################
  
  # ORIGINAL AA
  barchart_oaa1 <- function(file, originalfile){
    file <- subset(file, Original_aa!="empty")
    originalfile <- subset(originalfile, Original_aa!="empty")
    file$Original_aa <- ordered(file$Original_aa, levels = 
                                  c("A", "C", "D", "E", "F", "G", "H", "I", "K", "L", "M", "N",
                                    "P", "Q", "R", "S", "T", "V", "W", "Y"))
    originalfile$Original_aa <- ordered(originalfile$Original_aa, levels = 
                                          c("A", "C", "D", "E", "F", "G", "H", "I", "K", "L", "M", "N",
                                            "P", "Q", "R", "S", "T", "V", "W", "Y"))  
    
    doms <- file$Original_aa
    df <- as.data.frame(table(doms))
    colnames(df) <- c('Original_aa', 'Counts')
    colorines <- alpha(rainbow(length(unique(originalfile$Original_aa))), 1)
    colorines_level <- setNames(colorines, levels(originalfile$Original_aa))
    # Change barplot fill colors by groups
    p <- ggplot(df, aes(x = Original_aa, y = Counts, fill = Original_aa)) +
      geom_bar(stat = "identity") + 
      geom_text(aes(label = Counts), vjust = -0.3, size = 3.5) +
      theme(axis.text.x = element_text(angle = 0, hjust = 0.5, size = rel(1.3))) + 
      theme(axis.title.x = element_text(angle = 0, hjust = 0.5, size = rel(1.2), face = "bold", color = "black")) +
      theme(axis.title.y = element_text(angle = 90, hjust = 0.5, size = rel(1.2), face = "bold", color = "black")) +
      theme(plot.title = element_text(size = rel(1.5), colour = "black", face = "bold", hjust = 0.5)) +
      labs(title = "Original amino acids frequencies within hORs") + ylab("Frequency") + 
      xlab("Original amino acid") +
      theme(legend.position="none") +
      scale_fill_manual(values = colorines_level)
    p}
  ######################################################################################################################
  barchart_oaa2 <- function(file, originalfile){
    file <- subset(file, Original_aa!="empty")
    originalfile <- subset(originalfile, Original_aa!="empty")
    file$Original_aa <- ordered(file$Original_aa, levels = 
                                  c("A", "C", "D", "E", "F", "G", "H", "I", "K", "L", "M", "N",
                                    "P", "Q", "R", "S", "T", "V", "W", "Y"))
    originalfile$Original_aa <- ordered(originalfile$Original_aa, levels = 
                                          c("A", "C", "D", "E", "F", "G", "H", "I", "K", "L", "M", "N",
                                            "P", "Q", "R", "S", "T", "V", "W", "Y"))  
    colorines <- alpha(rainbow(length(unique(originalfile$Original_aa))), 1)
    colorines_level <- setNames(colorines, levels(originalfile$Original_aa))
    g = ggplot(file, aes(as.factor(Family), fill = Original_aa)) + 
      theme(axis.text.x = element_text(angle = 0, hjust = 0.5, size = rel(1.3))) + 
      theme(axis.title.x = element_text(angle = 0, hjust = 0.5, size = rel(1.2), face = "bold", color = "black")) +
      theme(axis.title.y = element_text(angle = 90, hjust = 0.5, size = rel(1.2), face = "bold", color = "black")) +
      theme(plot.title = element_text(size = rel(1.5), colour = "black", face = "bold", hjust = 0.5)) +
      labs(title = "Original amino acids frequencies within hORs families") + ylab("Frequency") + xlab("Family")
    g+geom_bar(position="stack") + scale_fill_manual(values = colorines_level) 
  }
  ######################################################################################################################
  barchart_oaa3 <- function(file, originalfile){
    file <- subset(file, Original_aa!="empty")
    originalfile <- subset(originalfile, Original_aa!="empty")
    file$Original_aa <- ordered(file$Original_aa, levels = 
                                  c("A", "C", "D", "E", "F", "G", "H", "I", "K", "L", "M", "N",
                                    "P", "Q", "R", "S", "T", "V", "W", "Y"))
    originalfile$Original_aa <- ordered(originalfile$Original_aa, levels = 
                                          c("A", "C", "D", "E", "F", "G", "H", "I", "K", "L", "M", "N",
                                            "P", "Q", "R", "S", "T", "V", "W", "Y"))  
    colorines <- alpha(rainbow(length(unique(originalfile$Original_aa))), 1)
    colorines_level <- setNames(colorines, levels(originalfile$Original_aa))
    g = ggplot(file, aes(as.factor(Family), fill = Original_aa)) +
      theme(axis.text.x = element_text(angle = 0, hjust = 0.5, size = rel(1.3))) + 
      theme(axis.title.x = element_text(angle = 0, hjust = 0.5, size = rel(1.2), face = "bold", color = "black")) +
      theme(axis.title.y = element_text(angle = 90, hjust = 0.5, size = rel(1.2), face = "bold", color = "black")) +
      theme(plot.title = element_text(size = rel(1.5), colour = "black", face = "bold", hjust = 0.5)) +
      labs(title = "Original amino acids relative frequencies within hORs families") + ylab("Relative frequency") + xlab("Family")
    g+geom_bar(position="fill") + scale_fill_manual(values = colorines_level) 
  }
  ######################################################################################################################
  ######################################################################################################################
  #CHANGED AMINO ACID
  barchart_caa1 <- function(file, originalfile){
    file <- subset(file, Changed_aa!="empty")
    originalfile <- subset(originalfile, Changed_aa!="empty")
    file$Changed_aa <- ordered(file$Changed_aa, levels = 
                                 c("A", "C", "D", "E", "F", "G", "H", "I", "K", "L", "M", "N",
                                   "P", "Q", "R", "S", "T", "V", "W", "Y",  "STOP"))
    originalfile$Changed_aa <- ordered(originalfile$Changed_aa, levels = 
                                         c("A", "C", "D", "E", "F", "G", "H", "I", "K", "L", "M", "N",
                                           "P", "Q", "R", "S", "T", "V", "W", "Y",  "STOP"))  
    doms <- file$Changed_aa;  df <- as.data.frame(table(doms));  colnames(df) <- c('Changed_aa', 'Counts')
    colorines <- alpha(rainbow(length(unique(originalfile$Changed_aa))-1), 1)
    colorines <- c(colorines, "black")
    colorines_level <- setNames(colorines, levels(originalfile$Changed_aa))
    # Change barplot fill colors by groups
    p <- ggplot(df, aes(x = Changed_aa, y = Counts, fill = Changed_aa)) +
      geom_bar(stat = "identity") +
      geom_text(aes(label = Counts), vjust = -0.3, size = 3.5) +
      theme(axis.text.x = element_text(angle = 0, hjust = 0.5, size = rel(1.3))) + 
      theme(axis.title.x = element_text(angle = 0, hjust = 0.5, size = rel(1.2), face = "bold", color = "black")) +
      theme(axis.title.y = element_text(angle = 90, hjust = 0.5, size = rel(1.2), face = "bold", color = "black")) +
      theme(plot.title = element_text(size = rel(1.5), colour = "black", face = "bold", hjust = 0.5)) +
      labs(title = "Changed amino acids frequencies within hORs families") + ylab("Frequency") + 
      xlab("Changed amino acid") +
      theme(legend.position="none") +
      scale_fill_manual(values = colorines_level)
    p
  }
  ######################################################################################################################
  barchart_caa2 <- function(file, originalfile){
    file <- subset(file, Changed_aa!="empty")
    originalfile <- subset(originalfile, Changed_aa!="empty")
    
    file$Changed_aa <- ordered(file$Changed_aa, levels = 
                                 c("A", "C", "D", "E", "F", "G", "H", "I", "K", "L", "M", "N",
                                   "P", "Q", "R", "S", "T", "V", "W", "Y",  "STOP"))
    originalfile$Changed_aa <- ordered(originalfile$Changed_aa, levels = 
                                         c("A", "C", "D", "E", "F", "G", "H", "I", "K", "L", "M", "N",
                                           "P", "Q", "R", "S", "T", "V", "W", "Y",  "STOP"))  
    colorines <- alpha(rainbow(length(unique(originalfile$Changed_aa))-1), 1)
    colorines <- c(colorines, "black")
    colorines_level <- setNames(colorines, levels(originalfile$Changed_aa))
    g = ggplot(file, aes(as.factor(Family), fill = Changed_aa)) +
      theme(axis.text.x = element_text(angle = 0, hjust = 0.5, size = rel(1.3))) + 
      theme(axis.title.x = element_text(angle = 0, hjust = 0.5, size = rel(1.2), face = "bold", color = "black")) +
      theme(axis.title.y = element_text(angle = 90, hjust = 0.5, size = rel(1.2), face = "bold", color = "black")) +
      theme(plot.title = element_text(size = rel(1.5), colour = "black", face = "bold", hjust = 0.5)) +
      labs(title = "Changed amino acids frequencies within hORs families") + ylab("Frequency") + xlab("Family")
    g+geom_bar(position="stack") + scale_fill_manual(values = colorines_level)
  }
  ######################################################################################################################
  barchart_caa3 <- function(file, originalfile){
    file <- subset(file, Changed_aa!="empty")
    originalfile <- subset(originalfile, Changed_aa!="empty")
    file$Changed_aa <- ordered(file$Changed_aa, levels = 
                                 c("A", "C", "D", "E", "F", "G", "H", "I", "K", "L", "M", "N",
                                   "P", "Q", "R", "S", "T", "V", "W", "Y",  "STOP"))
    originalfile$Changed_aa <- ordered(originalfile$Changed_aa, levels = 
                                         c("A", "C", "D", "E", "F", "G", "H", "I", "K", "L", "M", "N",
                                           "P", "Q", "R", "S", "T", "V", "W", "Y",  "STOP"))  
    colorines <- alpha(rainbow(length(unique(originalfile$Changed_aa))-1), 1)
    colorines <- c(colorines, "black")
    colorines_level <- setNames(colorines, levels(originalfile$Changed_aa))
    g = ggplot(file, aes(as.factor(Family), fill = Changed_aa)) +
      theme(axis.text.x = element_text(angle = 0, hjust = 0.5, size = rel(1.3))) + 
      theme(axis.title.x = element_text(angle = 0, hjust = 0.5, size = rel(1.2), face = "bold", color = "black")) +
      theme(axis.title.y = element_text(angle = 90, hjust = 0.5, size = rel(1.2), face = "bold", color = "black")) +
      theme(plot.title = element_text(size = rel(1.5), colour = "black", face = "bold", hjust = 0.5)) +
      labs(title = "Changed amino acids relative frequencies within hORs families") + ylab("Relative frequency") + xlab("Family")
    g+geom_bar(position="fill") + scale_fill_manual(values = colorines_level)
  }
  ######################################################################################################################
  ######################################################################################################################
  #RECEPTORS
  plot_receptors1 <- function(file){
    counts <- table(file$Gene)
    counts <- as.data.frame(counts)
    ymax <- max(counts$Freq)
    counts1 <- counts[1:121,]
    # counts2 <- counts[122:242,]
    # counts3 <- counts[243:361,]
    #Control dim(counts1)[1]+dim(counts2)[1]+dim(counts3)[1]
    ball <- as.vector(counts1$Var1)
    colors1 <- c()
    for (val in ball) {
      if(substr(val, 3, 3) == '1' & substr(val, 4, 4) != '0' & substr(val, 4, 4) != '1' & substr(val, 4, 4) != '2'
         & substr(val, 4, 4) != '3' & substr(val, 4, 4) != '4'){colors1 <- c(colors1, '1')}
      if(substr(val, 3, 3) == '5' & substr(val, 4, 4) != '1' & substr(val, 4, 4) != '2' 
         & substr(val, 4, 4) != '6'){colors1 <- c(colors1, '1')}
      if(substr(val, 3, 3) == '2') {colors1 <- c(colors1, '2')}
      if(substr(val, 3, 3) == '3') {colors1 <- c(colors1, '3')}
      if(substr(val, 3, 3) == '4') {colors1 <- c(colors1, '4')}
      if(substr(val, 3, 3) == '6') {colors1 <- c(colors1, '6')}
      if(substr(val, 3, 3) == '7') {colors1 <- c(colors1, '7')}
      if(substr(val, 3, 3) == '8') {colors1 <- c(colors1, '8')}
      if(substr(val, 3, 3) == '9') {colors1 <- c(colors1, '9')}
      if(substr(val, 3, 4) == '10') {colors1 <- c(colors1, '10')}
      if(substr(val, 3, 4) == '11') {colors1 <- c(colors1, '11')}
      if(substr(val, 3, 4) == '12') {colors1 <- c(colors1, '12')}
      if(substr(val, 3, 4) == '13') {colors1 <- c(colors1, '13')}
      if(substr(val, 3, 4) == '14') {colors1 <- c(colors1, '14')}
      if(substr(val, 3, 4) == '51') {colors1 <- c(colors1, '51')}
      if(substr(val, 3, 4) == '52') {colors1 <- c(colors1, '52')}
      if(substr(val, 3, 4) == '56') {colors1 <- c(colors1, '56')}}
    color_vector <- c(rainbow(17))
    color_palette <- c()
    for (val in colors1) {
      if(val == '1') {color_palette <- c(color_palette, color_vector[1])}
      if(val == '2') {color_palette <- c(color_palette, color_vector[2])}
      if(val == '3') {color_palette <- c(color_palette, color_vector[3])}
      if(val == '4') {color_palette <- c(color_palette, color_vector[4])}
      if(val == '5') {color_palette <- c(color_palette, color_vector[5])}
      if(val == '6') {color_palette <- c(color_palette, color_vector[6])}
      if(val == '7') {color_palette <- c(color_palette, color_vector[7])}
      if(val == '8') {color_palette <- c(color_palette, color_vector[8])}
      if(val == '9') {color_palette <- c(color_palette, color_vector[9])}
      if(val == '10') {color_palette <- c(color_palette, color_vector[10])}
      if(val == '11') {color_palette <- c(color_palette, color_vector[11])}
      if(val == '12') {color_palette <- c(color_palette, color_vector[12])}
      if(val == '13') {color_palette <- c(color_palette, color_vector[13])}
      if(val == '14') {color_palette <- c(color_palette, color_vector[14])}
      if(val == '51') {color_palette <- c(color_palette, color_vector[15])}
      if(val == '52') {color_palette <- c(color_palette, color_vector[16])}
      if(val == '56') {color_palette <- c(color_palette, color_vector[17])}}
    p <- ggplot(data= counts1, aes(x= Var1, y=Freq)) +
      ggtitle("Variants distribution within Olfactory Receptors") +
      geom_bar(stat="identity", width=0.7, color = color_palette) +
      geom_text(aes(label = Freq), vjust = 0.5, hjust = -0.2, size = 2.3, angle=90) +
      theme(axis.text.x = element_text(angle = 90, hjust = 0.9, size = rel(0.8))) + 
      theme(axis.title.x = element_text(angle = 0, hjust = 0.5, size = rel(1.2), face = "bold", color = "black")) +
      theme(axis.title.y = element_text(angle = 90, hjust = 0.5, size = rel(1.2), face = "bold", color = "black")) +
      theme(plot.title = element_text(size = rel(1.5), colour = "black", face = "bold", hjust = 0.5)) +
      xlab("Olfactory Receptor") + ylab("Frequency") + ylim(c(0, ymax)) +
      labs(title = "Mutations frequencies within hORs")
    p}
  ######################################################################################################################
  plot_receptors2 <- function(file){
    counts <- table(file$Gene)
    counts <- as.data.frame(counts)
    ymax <- max(counts$Freq)
    # counts1 <- counts[1:121,]
    counts2 <- counts[122:242,]
    # counts3 <- counts[243:361,]
    #Control dim(counts1)[1]+dim(counts2)[1]+dim(counts3)[1]
    ball <- as.vector(counts2$Var1)
    colors1 <- c()
    for (val in ball) {
      if(substr(val, 3, 3) == '1' & substr(val, 4, 4) != '0' & substr(val, 4, 4) != '1' & substr(val, 4, 4) != '2'
         & substr(val, 4, 4) != '3' & substr(val, 4, 4) != '4'){colors1 <- c(colors1, '1')}
      if(substr(val, 3, 3) == '5' & substr(val, 4, 4) != '1' & substr(val, 4, 4) != '2' 
         & substr(val, 4, 4) != '6'){colors1 <- c(colors1, '1')}
      if(substr(val, 3, 3) == '2') {colors1 <- c(colors1, '2')}
      if(substr(val, 3, 3) == '3') {colors1 <- c(colors1, '3')}
      if(substr(val, 3, 3) == '4') {colors1 <- c(colors1, '4')}
      if(substr(val, 3, 3) == '6') {colors1 <- c(colors1, '6')}
      if(substr(val, 3, 3) == '7') {colors1 <- c(colors1, '7')}
      if(substr(val, 3, 3) == '8') {colors1 <- c(colors1, '8')}
      if(substr(val, 3, 3) == '9') {colors1 <- c(colors1, '9')}
      if(substr(val, 3, 4) == '10') {colors1 <- c(colors1, '10')}
      if(substr(val, 3, 4) == '11') {colors1 <- c(colors1, '11')}
      if(substr(val, 3, 4) == '12') {colors1 <- c(colors1, '12')}
      if(substr(val, 3, 4) == '13') {colors1 <- c(colors1, '13')}
      if(substr(val, 3, 4) == '14') {colors1 <- c(colors1, '14')}
      if(substr(val, 3, 4) == '51') {colors1 <- c(colors1, '51')}
      if(substr(val, 3, 4) == '52') {colors1 <- c(colors1, '52')}
      if(substr(val, 3, 4) == '56') {colors1 <- c(colors1, '56')}}
    #print(colors1)
    color_vector <- c(rainbow(17))
    color_palette <- c()
    for (val in colors1) {
      if(val == '1') {color_palette <- c(color_palette, color_vector[1])}
      if(val == '2') {color_palette <- c(color_palette, color_vector[2])}
      if(val == '3') {color_palette <- c(color_palette, color_vector[3])}
      if(val == '4') {color_palette <- c(color_palette, color_vector[4])}
      if(val == '5') {color_palette <- c(color_palette, color_vector[5])}
      if(val == '6') {color_palette <- c(color_palette, color_vector[6])}
      if(val == '7') {color_palette <- c(color_palette, color_vector[7])}
      if(val == '8') {color_palette <- c(color_palette, color_vector[8])}
      if(val == '9') {color_palette <- c(color_palette, color_vector[9])}
      if(val == '10') {color_palette <- c(color_palette, color_vector[10])}
      if(val == '11') {color_palette <- c(color_palette, color_vector[11])}
      if(val == '12') {color_palette <- c(color_palette, color_vector[12])}
      if(val == '13') {color_palette <- c(color_palette, color_vector[13])}
      if(val == '14') {color_palette <- c(color_palette, color_vector[14])}
      if(val == '51') {color_palette <- c(color_palette, color_vector[15])}
      if(val == '52') {color_palette <- c(color_palette, color_vector[16])}
      if(val == '56') {color_palette <- c(color_palette, color_vector[17])}}
    p <- ggplot(data= counts2, aes(x= Var1, y=Freq)) + 
      geom_bar(stat="identity", width=0.7, color = color_palette) + 
      geom_text(aes(label = Freq), vjust = 0.5, hjust = -0.2, size = 2.3, angle=90) +
      theme(axis.text.x = element_text(angle = 90, hjust = 0.9, size = rel(0.8))) + 
      theme(axis.title.x = element_text(angle = 0, hjust = 0.5, size = rel(1.2), face = "bold", color = "black")) +
      theme(axis.title.y = element_text(angle = 90, hjust = 0.5, size = rel(1.2), face = "bold", color = "black")) +
      xlab("Olfactory Receptor") + ylab("Frequency") + ylim(c(0, ymax)) 
    p}
  ######################################################################################################################
  plot_receptors3 <- function(file){
    counts <- table(file$Gene)
    counts <- as.data.frame(counts)
    ymax <- max(counts$Freq)
    # counts1 <- counts[1:121,]
    # counts2 <- counts[122:242,]
    counts3 <- counts[243:361,]
    #Control dim(counts1)[1]+dim(counts2)[1]+dim(counts3)[1]
    ball <- as.vector(counts3$Var1)
    colors1 <- c()
    for (val in ball) {
      if(substr(val, 3, 3) == '1' & substr(val, 4, 4) != '0' & substr(val, 4, 4) != '1' & substr(val, 4, 4) != '2'
         & substr(val, 4, 4) != '3' & substr(val, 4, 4) != '4'){colors1 <- c(colors1, '1')}
      if(substr(val, 3, 3) == '5' & substr(val, 4, 4) != '1' & substr(val, 4, 4) != '2' 
         & substr(val, 4, 4) != '6'){colors1 <- c(colors1, '1')}
      if(substr(val, 3, 3) == '2') {colors1 <- c(colors1, '2')}
      if(substr(val, 3, 3) == '3') {colors1 <- c(colors1, '3')}
      if(substr(val, 3, 3) == '4') {colors1 <- c(colors1, '4')}
      if(substr(val, 3, 3) == '6') {colors1 <- c(colors1, '6')}
      if(substr(val, 3, 3) == '7') {colors1 <- c(colors1, '7')}
      if(substr(val, 3, 3) == '8') {colors1 <- c(colors1, '8')}
      if(substr(val, 3, 3) == '9') {colors1 <- c(colors1, '9')}
      if(substr(val, 3, 4) == '10') {colors1 <- c(colors1, '10')}
      if(substr(val, 3, 4) == '11') {colors1 <- c(colors1, '11')}
      if(substr(val, 3, 4) == '12') {colors1 <- c(colors1, '12')}
      if(substr(val, 3, 4) == '13') {colors1 <- c(colors1, '13')}
      if(substr(val, 3, 4) == '14') {colors1 <- c(colors1, '14')}
      if(substr(val, 3, 4) == '51') {colors1 <- c(colors1, '51')}
      if(substr(val, 3, 4) == '52') {colors1 <- c(colors1, '52')}
      if(substr(val, 3, 4) == '56') {colors1 <- c(colors1, '56')}
    }
    color_vector <- c(rainbow(17))
    color_palette <- c()
    for (val in colors1) {
      if(val == '1') {color_palette <- c(color_palette, color_vector[1])}
      if(val == '2') {color_palette <- c(color_palette, color_vector[2])}
      if(val == '3') {color_palette <- c(color_palette, color_vector[3])}
      if(val == '4') {color_palette <- c(color_palette, color_vector[4])}
      if(val == '5') {color_palette <- c(color_palette, color_vector[5])}
      if(val == '6') {color_palette <- c(color_palette, color_vector[6])}
      if(val == '7') {color_palette <- c(color_palette, color_vector[7])}
      if(val == '8') {color_palette <- c(color_palette, color_vector[8])}
      if(val == '9') {color_palette <- c(color_palette, color_vector[9])}
      if(val == '10') {color_palette <- c(color_palette, color_vector[10])}
      if(val == '11') {color_palette <- c(color_palette, color_vector[11])}
      if(val == '12') {color_palette <- c(color_palette, color_vector[12])}
      if(val == '13') {color_palette <- c(color_palette, color_vector[13])}
      if(val == '14') {color_palette <- c(color_palette, color_vector[14])}
      if(val == '51') {color_palette <- c(color_palette, color_vector[15])}
      if(val == '52') {color_palette <- c(color_palette, color_vector[16])}
      if(val == '56') {color_palette <- c(color_palette, color_vector[17])}}
    p <- ggplot(data= counts3, aes(x= Var1, y=Freq)) + 
      geom_bar(stat="identity", width=0.7, color = color_palette) + 
      geom_text(aes(label = Freq), vjust = 0.5, hjust = -0.2, size = 2.3, angle=90) +
      theme(axis.text.x = element_text(angle = 90, hjust = 0.9, size = rel(0.8))) + 
      theme(axis.title.x = element_text(angle = 0, hjust = 0.5, size = rel(1.2), face = "bold", color = "black")) +
      theme(axis.title.y = element_text(angle = 90, hjust = 0.5, size = rel(1.2), face = "bold", color = "black")) +
      xlab("Olfactory Receptor") + ylab("Frequency") + ylim(c(0, ymax)) 
    p}
  ######################################################################################################################
  ######################################################################################################################
  circos_plot <- function(file){
    subfile <- file
    #Created variable to avoid an internal error
    error_inside <- 'No'
    if(dim(subfile)[1] >= 1){
      # Select target data
      data <- subfile %>% select(Affect_African, Affect_Ashkenazi_Jewish, Affect_East_Asian, Affect_South_Asian,
                                 Affect_European_Finnish,Affect_European_Non_Finnish, Affect_Latino, Affect_Other)
      # Stablish counters for each position of the matrix
      # African interactions
      counter_afr_jew <- nrow(subset(data, Affect_African=="Yes" & Affect_Ashkenazi_Jewish=='Yes'))
      if(counter_afr_jew==0){counter_afr_jew=0.1}
      counter_afr_ea <- nrow(subset(data, Affect_African=="Yes" & Affect_East_Asian=='Yes'))
      if(counter_afr_ea==0){counter_afr_ea=0.1}
      counter_afr_sa <- nrow(subset(data, Affect_African=="Yes" & Affect_South_Asian=='Yes'))
      if(counter_afr_sa==0){counter_afr_sa=0.1}
      counter_afr_ef <- nrow(subset(data, Affect_African=="Yes" & Affect_European_Finnish=='Yes'))
      if(counter_afr_ef==0){counter_afr_ef=0.1}
      counter_afr_enf <- nrow(subset(data, Affect_African=="Yes" & Affect_European_Non_Finnish=='Yes'))
      if(counter_afr_enf==0){counter_afr_enf=0.1}
      counter_afr_lat <- nrow(subset(data, Affect_African=="Yes" & Affect_Latino=='Yes'))
      if(counter_afr_lat==0){counter_afr_lat=0.1}
      counter_afr_oth <- nrow(subset(data, Affect_African=="Yes" & Affect_Other=='Yes'))
      if(counter_afr_oth==0){counter_afr_oth=0.1}
      ####################################################################################################
      #Jewish interactions
      counter_jew_ea <- nrow(subset(data, Affect_Ashkenazi_Jewish=="Yes" & Affect_East_Asian=='Yes'))
      if(counter_jew_ea==0){counter_jew_ea=0.1}
      counter_jew_sa <- nrow(subset(data, Affect_Ashkenazi_Jewish=="Yes" & Affect_South_Asian=='Yes'))
      if(counter_jew_sa==0){counter_jew_sa=0.1}
      counter_jew_ef <- nrow(subset(data, Affect_Ashkenazi_Jewish=="Yes" & Affect_European_Finnish=='Yes'))
      if(counter_jew_ef==0){counter_jew_ef=0.1}
      counter_jew_enf <- nrow(subset(data, Affect_Ashkenazi_Jewish=="Yes" & Affect_European_Non_Finnish=='Yes'))
      if(counter_jew_enf==0){counter_jew_enf=0.1}
      counter_jew_lat <- nrow(subset(data, Affect_Ashkenazi_Jewish=="Yes" & Affect_Latino=='Yes'))
      if(counter_jew_lat==0){counter_jew_lat=0.1}
      counter_jew_oth <- nrow(subset(data, Affect_Ashkenazi_Jewish=="Yes" & Affect_Other=='Yes'))
      if(counter_jew_oth==0){counter_jew_oth=0.1}
      #East asian interactions
      counter_ea_sa <- nrow(subset(data, Affect_East_Asian=="Yes" & Affect_South_Asian=='Yes'))
      if(counter_ea_sa==0){counter_ea_sa=0.1}
      counter_ea_ef <- nrow(subset(data, Affect_East_Asian=="Yes" & Affect_European_Finnish=='Yes'))
      if(counter_ea_ef==0){counter_ea_ef=0.1}
      counter_ea_enf <- nrow(subset(data, Affect_East_Asian=="Yes" & Affect_European_Non_Finnish=='Yes'))
      if(counter_ea_enf==0){counter_ea_enf=0.1}
      counter_ea_lat <- nrow(subset(data, Affect_East_Asian=="Yes" & Affect_Latino=='Yes'))
      if(counter_ea_lat==0){counter_ea_lat=0.1}
      counter_ea_oth <- nrow(subset(data, Affect_East_Asian=="Yes" & Affect_Other=='Yes'))
      if(counter_ea_oth==0){counter_ea_oth=0.1}
      #South asian interactions
      counter_sa_ef <- nrow(subset(data, Affect_South_Asian=="Yes" & Affect_European_Finnish=='Yes'))
      if(counter_sa_ef==0){counter_sa_ef=0.1}
      counter_sa_enf <- nrow(subset(data, Affect_South_Asian=="Yes" & Affect_European_Non_Finnish=='Yes'))
      if(counter_sa_enf==0){counter_sa_enf=0.1}
      counter_sa_lat <- nrow(subset(data, Affect_South_Asian=="Yes" & Affect_Latino=='Yes'))
      if(counter_sa_lat==0){counter_sa_lat=0.1}
      counter_sa_oth <- nrow(subset(data, Affect_South_Asian=="Yes" & Affect_Other=='Yes'))
      if(counter_sa_oth==0){counter_sa_oth=0.1}
      #European finnish interactions
      counter_ef_enf <- nrow(subset(data, Affect_European_Finnish=="Yes" & Affect_European_Non_Finnish=='Yes'))
      if(counter_ef_enf==0){counter_ef_enf=0.1}
      counter_ef_lat <- nrow(subset(data, Affect_European_Finnish=="Yes" & Affect_Latino=='Yes'))
      if(counter_ef_lat==0){counter_ef_lat=0.1}
      counter_ef_oth <- nrow(subset(data, Affect_European_Finnish=="Yes" & Affect_Other=='Yes'))
      if(counter_ef_oth==0){counter_ef_oth=0.1}
      #European non finnish interactions
      counter_enf_lat <- nrow(subset(data, Affect_European_Non_Finnish=="Yes" & Affect_Latino=='Yes'))
      if(counter_enf_lat==0){counter_enf_lat=0.1}
      counter_enf_oth <- nrow(subset(data, Affect_European_Non_Finnish=="Yes" & Affect_Other=='Yes'))
      if(counter_enf_oth==0){counter_enf_oth=0.1}
      #Latino interactions
      counter_lat_oth <- nrow(subset(data, Affect_Latino=="Yes" & Affect_Other=='Yes'))
      if(counter_lat_oth==0){counter_lat_oth=0.1}

      m <- data.frame(order = 1:8,
                      #country = c("African", "Ashkenazi-Jewish", "East_Asian", "South_Asian", "European_Finnish", 'European_non_Finnish', 'Latino', 'Other'),
                      country = c("AFR", "ASH", "EA", "SA", "EF", 'ENF', 'LAT', 'OTH'),
                      V3 = c(0, 0, 0, 0, 0, 0, 0, 0),
                      V4 = c(counter_afr_jew, 0, 0, 0, 0, 0, 0, 0),
                      V5 = c(counter_afr_ea, counter_jew_ea, 0, 0, 0, 0, 0, 0),
                      V6 = c(counter_afr_sa, counter_jew_sa, counter_ea_sa, 0, 0, 0, 0, 0),
                      V7 = c(counter_afr_ef, counter_jew_ef, counter_ea_ef, counter_sa_ef, 0, 0, 0, 0),
                      V8 = c(counter_afr_enf, counter_jew_enf, counter_ea_enf, counter_sa_enf, counter_ef_enf, 0, 0, 0),
                      V9 = c(counter_afr_lat, counter_jew_lat, counter_ea_lat, counter_sa_lat, counter_ef_lat, counter_enf_lat, 0, 0),
                      V10 = c(counter_afr_oth, counter_jew_oth, counter_ea_oth, counter_sa_oth, counter_ef_oth, counter_enf_oth, counter_lat_oth, 0),
                      r = c(124, 153, 13, 124, 0, 106,  255, 177),
                      g = c(0, 76, 139, 255, 45, 166,  0,  199),
                      b = c(128, 0, 61, 0, 105, 205,  127,  201),
                      stringsAsFactors = FALSE)
      #African interactions
      rm(counter_afr_jew); rm(counter_afr_ea); rm(counter_afr_sa); rm(counter_afr_ef); rm(counter_afr_enf); rm(counter_afr_lat); rm(counter_afr_oth)
      #Jewish interactions
      rm(counter_jew_ea); rm(counter_jew_sa); rm(counter_jew_ef); rm(counter_jew_enf); rm(counter_jew_lat); rm(counter_jew_oth) 
      #East asian interactions
      rm(counter_ea_sa); rm(counter_ea_ef); rm(counter_ea_enf); rm(counter_ea_lat); rm(counter_ea_oth)
      #South asian interactions
      rm(counter_sa_ef); rm(counter_sa_enf); rm(counter_sa_lat); rm(counter_sa_oth)
      #European finnish interactions
      rm(counter_ef_enf); rm(counter_ef_lat); rm(counter_ef_oth)
      #European non finnish interactions
      rm(counter_enf_lat); rm(counter_enf_oth)
      #Latino interactions
      rm(counter_lat_oth)
      #Remove data
      rm(data)
      
      # Control AFR
      if(length(unique(subfile$Affect_African)) == 1){
        if(unique(subfile$Affect_African) == 'No'){
          m <- m[m[, 'country'] != 'AFR',]  # Remove row
          m <- m[, colnames(m) != "V3"]}}    # Remove column
      if(length(unique(subfile$Affect_African)) == 2){
        tar <- m[m[, 'country'] == 'AFR',]
        if(sum(tar[3:(length(tar)-3)]) < 0.9  & sum(m['V3']) < 0.9){
          m <- m[m[, 'country'] != 'AFR',]  # Remove row
          m <- m[, colnames(m) != "V3"]}}    # Remove column
      # Control ASH
      if(length(unique(subfile$Affect_Ashkenazi_Jewish)) == 1){
        if(unique(subfile$Affect_Ashkenazi_Jewish) == 'No'){
          m <- m[m[, 'country'] != 'ASH',]  # Remove row
          m <- m[, colnames(m) != "V4"]}}    # Remove column
      if(length(unique(subfile$Affect_Ashkenazi_Jewish)) == 2){
        tar <- m[m[, 'country'] == 'ASH',]
        if(sum(tar[3:(length(tar)-3)]) < 0.9 & sum(m['V4']) < 0.9){
          m <- m[m[, 'country'] != 'ASH',]  # Remove row
          m <- m[, colnames(m) != "V4"]}}    # Remove 
      # Control EA
      if(length(unique(subfile$Affect_East_Asian)) == 1){
        if(unique(subfile$Affect_East_Asian) == 'No'){
          m <- m[m[, 'country'] != 'EA',]   # Remove row
          m <- m[, colnames(m) != "V5"]}}    # Remove column
      if(length(unique(subfile$Affect_East_Asian)) == 2){
        tar <- m[m[, 'country'] == 'EA',]
        if(sum(tar[3:(length(tar)-3)]) < 0.9 & sum(m['V5']) < 0.9){
          m <- m[m[, 'country'] != 'EA',]  # Remove row
          m <- m[, colnames(m) != "V5"]}}    # Remove 
      # Control SA
      if(length(unique(subfile$Affect_South_Asian)) == 1){
        if(unique(subfile$Affect_South_Asian) == 'No'){
          m <- m[m[, 'country'] != 'SA',]   # Remove row
          m <- m[, colnames(m) != "V6"]}}    # Remove column
      if(length(unique(subfile$Affect_South_Asian)) == 2){
        tar <- m[m[, 'country'] == 'SA',]
        if(sum(tar[3:(length(tar)-3)]) < 0.9 & sum(m['V6']) < 0.9){
          m <- m[m[, 'country'] != 'SA',]  # Remove row
          m <- m[, colnames(m) != "V6"]}}    # Remove 
      # Control EF
      if(length(unique(subfile$Affect_European_Finnish)) == 1){
        if( unique(subfile$Affect_European_Finnish) == 'No'){
          m <- m[m[, 'country'] != 'EF',]   # Remove row
          m <- m[, colnames(m) != "V7"]}}    # Remove column
      if(length(unique(subfile$Affect_European_Finnish)) == 2){
        tar <- m[m[, 'country'] == 'EF',]
        if(sum(tar[3:(length(tar)-3)]) < 0.9 & sum(m['V7']) < 0.9){
          m <- m[m[, 'country'] != 'EF',]  # Remove row
          m <- m[, colnames(m) != "V7"]}}    # Remove 
      # Control ENF
      if(length(unique(subfile$Affect_European_Non_Finnish)) == 1){
        if(unique(subfile$Affect_European_Non_Finnish) == 'No'){
          m <- m[m[, 'country'] != 'ENF',]  # Remove row
          m <- m[, colnames(m) != "V8"]}}    # Remove column
      if(length(unique(subfile$Affect_European_Non_Finnish)) == 2){
        tar <- m[m[, 'country'] == 'ENF',]
        if(sum(tar[3:(length(tar)-3)]) < 0.9 & sum(m['V8']) < 0.9){
          m <- m[m[, 'country'] != 'ENF',]  # Remove row
          m <- m[, colnames(m) != "V8"]}}    # Remove 
      # Control LAT
      if(length(unique(subfile$Affect_Latino)) == 1){
        if(unique(subfile$Affect_Latino) == 'No'){
          m <- m[m[, 'country'] != 'LAT',]  # Remove row
          m <- m[, colnames(m) != "V9"]}}    # Remove column
      if(length(unique(subfile$Affect_Latino)) == 2){
        tar <- m[m[, 'country'] == 'LAT',]
        if(sum(tar[3:(length(tar)-3)]) < 0.9 & sum(m['V9']) < 0.9){
          m <- m[m[, 'country'] != 'LAT',]  # Remove row
          m <- m[, colnames(m) != "V9"]}}    # Remove 
      # Control OTH
      if(length(unique(subfile$Affect_Other)) == 1){
        if(unique(subfile$Affect_Other) == 'No'){
          m <- m[m[, 'country'] != 'OTH',]   # Remove row
          m <- m[, colnames(m) != "V10"]}}    # Remove column
      if(length(unique(subfile$Affect_Other)) == 2){
        tar <- m[m[, 'country'] == 'OTH',]
        if(sum(tar[3:(length(tar)-3)]) < 0.9 & sum(m['V10']) < 0.9){
          m <- m[m[, 'country'] != 'OTH',]  # Remove row
          m <- m[, colnames(m) != "V10"]}}    # Remove 
      # Empty set stop
      if(dim(m)[1] <= 1){error_inside = 'Yes'}
      if(dim(m)[1] > 1 & error_inside == 'No'){
        # Df1 es dels ordre, pais i colors
        start <- dim(m)[2]-2
        end <- dim(m)[2]
        range_start_end <- c(start:end)
        df1 <- m[, c(1,2, range_start_end)] 
        # Remove last tree columns and first two of m
        m <- m[,-(start:end)] 
        m <- as.matrix(m[,-(1:2)])
        # Change rownames and colnames
        dimnames(m) <- list(orig = df1$country, dest = df1$country)
        ########################################################################################################################################
        #Sort order of data.frame and matrix for plotting in circos
        df1 <- arrange(df1, order) #ordena si no esta ordenado por la columna order
        df1$country <- factor(df1$country, levels = df1$country)
        m <- m[levels(df1$country),levels(df1$country)]
        ### Define ranges of circos sectors and their colors (both of the sectors and the links)
        df1$xmin <- 0
        df1$xmax <- rowSums(m) + colSums(m)
        n <- nrow(df1)
        df1$rcol <- rgb(df1$r, df1$g, df1$b, max = 255)  #Assigna color externo
        df1$lcol <- rgb(df1$r, df1$g, df1$b, max = 255) #Assigna color interno, el alpha te da la opacidad que son las dos ultimas letras del color
        #df1$rcol <- 'grey'
        #https://www.google.com/search?q=%23FF3333&oq=%23FF3333&aqs=chrome..69i57j0l5.132j0j7&sourceid=chrome&ie=UTF-8
        ########################################################################################################################################
        ### Plot sectors (outer part)
        par(mar=c(0,0,3,0)) # c(0,0,0,0) (low, left, top, rigth)
        circos.clear()
        ### Basic circos graphic parameters
        circos.par(cell.padding=c(0,0,0,0), track.margin=c(0,0.05), start.degree = 205, gap.degree =4, points.overflow.warning=FALSE) # Country start and gap space
        ### Sector details
        circos.initialize(factors = df1$country, xlim = cbind(df1$xmin, df1$xmax)) # Each country limit
        ### Plot sectors
        circos.trackPlotRegion(ylim = c(0, 1), factors = df1$country, track.height=0.1,
                               #panel.fun for each sector
                               panel.fun = function(x, y) {
                                 #select details of current sector
                                 name = get.cell.meta.data("sector.index")
                                 i = get.cell.meta.data("sector.numeric.index")
                                 xlim = get.cell.meta.data("xlim")
                                 ylim = get.cell.meta.data("ylim")
                                 #text direction (dd) and adjusmtents (aa)
                                 theta = circlize(mean(xlim), 1.3)[1, 1] %% 360
                                 dd <- ifelse(theta < 90 || theta > 270, "bending.inside", "bending.inside")
                                 aa = c(0.5, 0.5)
                                 if(theta < 90 || theta > 270)  aa = c(0.5, 0.5)
                                 #plot country labels
                                 circos.text(x=mean(xlim), y=2, labels=name, facing = dd, cex=1,  adj = aa, font = 1) #full font 2
                                 #plot main sector
                                 circos.rect(xleft=xlim[1], ybottom=ylim[1], xright=xlim[2], ytop=ylim[2], 
                                             col = df1$rcol[i], border=df1$rcol[i])
                                 #blank in part of main sector
                                 # circos.rect(xleft=xlim[1], ybottom=ylim[1], xright=xlim[2]-rowSums(m)[i], ytop=ylim[1]+0.3, 
                                 #             col = "grey", border = "white")
                                 #white line all the way around
                                 #circos.rect(xleft=xlim[1], ybottom=0.3, xright=xlim[2], ytop=0.32, col = "white", border = "white")
                                 #plot axis
                                 circos.axis(labels.cex=0.6, labels.col = "white", direction = "outside", 
                                             #circos.axis(labels.cex=0.6, direction = "outside", major.at=seq(from=0,to=floor(df1$xmax)[i],by=0.2), 
                                             minor.ticks=1, labels.away.percentage = 0.15, col = 'black')})
        ### Plot links (inner part)
        ### Add sum values to df1, marking the x-position of the first links
        ### out (sum1) and in (sum2). Updated for further links in loop below.
        df1$sum1 <- colSums(m) #suma de les columnes de la matriu
        df1$sum2 <- numeric(n) # Afegeix dues noves columnes 
        ### Create a data.frame of the flow matrix sorted by flow size, to allow largest flow plotted first
        df2 <- cbind(as.data.frame(m),orig=rownames(m),  stringsAsFactors=FALSE)
        df2 #simplement fa una copia de m i afegeix una columna que es orig (cada poblacio)
        df2 <- reshape(df2, idvar="orig", varying=list(1:n), direction="long",
                       timevar="dest", time=rownames(m),  v.names = "m")
        df2 # fa matriu de interaccions, fa un reajustament de les interaccions, donant el original (orig) i el desti (dest) amb el seu valor associat (m)
        df2 <- arrange(df2,desc(m)) # ordena per el valor de m de forma descendent
        ### Keep only the largest flows to avoid clutter
        df2 <- subset(df2, m > quantile(m,0.55))
        df2 <- subset(df2, m > 0.1)
        #remou per quantils, nomes es queda les mes altes ja que abans ha ordenat, si no ordenes no et quedaries amb les altres (interracions vull dir)
        #print(df2)
        ### Plot links
        colfunc <- colorRampPalette(c("red", "yellow"))
        colors <- rev(colfunc(nrow(df2)))
        countries <- df1$country
        #print('###############################################################')
        for(k in 1:nrow(df2)){
          #i,j reference of flow matrix
          i<-match(df2$orig[k],df1$country) #posicio de la poblacio en df1 (origin)
          j<-match(df2$dest[k],df1$country) #posicio de la poblacio en df1 (desti)
          #print(c(i, j)) #Times you find the origin/destination on the original df1
          #plot link
          if(m[i, j]>0.1){ 
            circos.link(sector.index1 = df1$country[i], #Sector del track de sortida
                        point1 = c(df1$sum1[i], df1$sum1[i] + abs(m[i, j])),
                        
                        sector.index2 = df1$country[j], #Sector del track d'arribada
                        point2 = c(df1$sum2[j], df1$sum2[j] + abs(m[i, j])),
                        
                        #col = df1$lcol[i])
                        col = colors[k], border = "black", lwd = 1.5)
            
            #update sum1 and sum2 for use when plotting the next link
            df1$sum1[i] = df1$sum1[i] + abs(m[i, j])
            df1$sum2[j] = df1$sum2[j] + abs(m[i, j])}
          if(m[i, j]==0.1){
            circos.link(sector.index1 = df1$country[i], #Sector del track de sortida
                        point1 = c(df1$sum1[i], df1$sum1[i] + abs(m[i, j])),
                        sector.index2 = df1$country[j], #Sector del track d'arribada
                        point2 = c(df1$sum2[j], df1$sum2[j] + abs(m[i, j])),
                        #col = df1$lcol[i])
                        col = 'white', border = "white", lwd = 1.5)
            #update sum1 and sum2 for use when plotting the next link
            df1$sum1[i] = df1$sum1[i] + abs(m[i, j])
            df1$sum2[j] = df1$sum2[j] + abs(m[i, j])
          }          
          # Outcomes print, unmask if u want to see the links ouputs
          # print('link between two populations:')
          # print(paste(c(as.character(countries[i]),as.character(countries[j])), sep = ''))
          # print(paste(c('sum of first  is: ', as.character(df1$sum1[i])), sep = ''))
          # print(paste(c('sum of second is: ', as.character(df1$sum2[j])), sep = ''))
          # print(paste(c('absolute value of match: ', as.character(abs(m[i, j]))), sep = ''))
          # print('--------------------------')
          # print(paste(c('sector 1 =', df1$country[i]), sep = ''))
          # print(paste(c('point1 =', df1$sum1[i], df1$sum1[i] + abs(m[i, j])), sep = ''))
          # print(paste(c('sector 2 =', df1$country[j]), sep = ''))
          # print(paste(c('point2 =', df1$sum2[j], df1$sum2[j] + abs(m[i, j])), sep = ''))
          # print('--------------------------')
          # print(paste(c('df1$sum1[i] =', df1$sum1[i]), sep = ''))
          # print(paste(c('df1$sum2[j] =', df1$sum2[j]), sep = ''))
          # 
          # print(paste(c('df1$sum1[i] + abs(m[i, j]) =', df1$sum1[i] + abs(m[i, j])), sep = ''))
          # print(paste(c('df1$sum2[j] + abs(m[i, j]) =', df1$sum2[j] + abs(m[i, j])), sep = ''))
          # print('###############################################################')
        }
        rm(i); rm(j); rm(k); rm(n)
        # Create mixed link reference
        p1 <- df2$orig; p2 <- df2$dest; match <- df2$m; join <- c()
        for(pos in 1:length(df2$m)){
          pre <- as.character(paste(p1[pos],p2[pos], sep='-'))
          if(nchar(pre) == 5){pre <- paste(pre, '', sep='.....')}
          if(nchar(pre) == 6){prejoin <- paste(pre, '', sep='...')}
          else{prejoin <- pre}
          join <- c(join, paste(prejoin,match[pos], sep='....'))}
        rm(p1); rm(p2); rm(match)
        # Add legends
        legend("topleft", legend=c("Max", "Min"), col=c("yellow", "red"), lty="solid", lwd=6, cex=1, title="Interactions", text.font=4, bg='white')
        title(main = "Concurrence of hORs mutations within populations", cex.main = 1.5)
        legend('bottomleft', ncol = 1L, title = 'Concurrence', cex =1, bg='gainsboro', legend = join, fill = colors)
        rm(join)}
      }
    if(error_inside == 'Yes' | dim(subfile)[1] < 1){
      par(mar = c(0,0,0,0))
      plot(c(0, 1), c(0, 10), ann = F, bty = 'n', type = 'n', xaxt = 'n', yaxt = 'n')
      text(x = 0.5, y = 8, paste("The data set you are selecting could not be ploted. \n",
                                 ' \n', "The plot won't work with an empty data set.\n",
                                 ' \n', "If you select a single mutation, it should appear at least\n", 'in two diferent populations. \n',
                                 " \n", "Modify your selection please."), cex = 2, col = "red3")
      par(mar = c(5, 4, 4, 2) + 0.1)}}
  ##############################################################################################################################################################
  ##############################################################################################################################################################
  ##############################################################################################################################################################
  ##############################################################################################################################################################
  ##############################################################################################################################################################
  ##############################################################################################################################################################
  ### RESET
  # Reset all the inputs from the right side filters
  observeEvent(input$reset,{
    updateSliderInput(session,'uniprot',value = 'ALL')
    updateSliderInput(session,'ensmbl',value = 'ALL')
    updateSliderInput(session,'variantreference',value = 'ALL')
    updateSliderInput(session,'geneID',value = 'ALL')
    updateSliderInput(session,'snp',value = 'ALL')
    updateSliderInput(session,'chr',value = 'ALL')
    updateSliderInput(session,'family',value = 'ALL')
    updateSliderInput(session,'domain',value = 'ALL')
    updateSliderInput(session,'balles',value = 'ALL')
    updateSliderInput(session,'annot',value = 'ALL')
    updateSliderInput(session,'annotDNA',value = 'ALL')
    updateSliderInput(session,'affBC',value = 'ALL')
    updateSliderInput(session,'affFC',value = 'ALL')
    updateSliderInput(session,'matrixscore',value = 'ALL')
    updateSliderInput(session,'aaoriginal',value = 'ALL')
    updateSliderInput(session,'aachanged',value = 'ALL')
    updateSliderInput(session,'datasource',value = 'ALL')
    updateSliderInput(session,'position',value = 'ALL')
    updateSliderInput(session,'originalDNA',value = 'ALL')
    updateSliderInput(session,'changedDNA',value = 'ALL')
    updateSliderInput(session,'sequenceposition',value = 'ALL')
    updateSliderInput(session,'alignmentposition',value = 'ALL')
    updateSliderInput(session,'hemizyg',value = 'ALL')
    updateSliderInput(session,'homozyg',value = 'ALL')
    updateSliderInput(session,'african',value = 'ALL')
    updateSliderInput(session,'ashkenazi',value = 'ALL')
    updateSliderInput(session,'eastasian',value = 'ALL')
    updateSliderInput(session,'southasian',value = 'ALL')
    updateSliderInput(session,'europeanfinnish',value = 'ALL')
    updateSliderInput(session,'europeannonfinnish',value = 'ALL')
    updateSliderInput(session,'latino',value = 'ALL')
    updateSliderInput(session,'other',value = 'ALL')
    updateSliderInput(session,'af',value = c(0,1))
    updateSliderInput(session,'ashj',value = c(0,1))
    updateSliderInput(session,'esas',value = c(0,1))
    updateSliderInput(session,'soas',value = c(0,1))
    updateSliderInput(session,'eufin',value = c(0,1))
    updateSliderInput(session,'eunfin',value = c(0,1))
    updateSliderInput(session,'lati',value = c(0,1))
    updateSliderInput(session,'othe',value = c(0,1))
    updateSliderInput(session,'All',value = c(0,1))
    updateSliderInput(session,'choices',value = '')
  })
  ##############################################################################################################################################################
  ##############################################################################################################################################################
  ##############################################################################################################################################################
  ##############################################################################################################################################################
  ##############################################################################################################################################################
  ##############################################################################################################################################################
  ### CALL FILTER
  # All the current filters
  filtering <- reactive({filter(file = file, 
                                uniprot = input$uniprot,
                                ensmbl = input$ensmbl,
                                variantreference =  input$variantreference,
                                geneID = input$geneID,
                                snp = input$snp, 
                                chr = input$chr, 
                                family = input$family,
                                balles = input$balles,
                                annot = input$annot,
                                annotDNA = input$annotDNA,
                                affBC = input$affBC,
                                affFC = input$affFC,
                                matrixscore = input$matrixscore,
                                aaoriginal = input$aaoriginal,
                                aachanged = input$aachanged,
                                datasource = input$datasource,
                                domain = input$domain, input$position,
                                originalDNA = input$originalDNA,
                                changedDNA = input$changedDNA,
                                seqpos = input$sequenceposition,
                                alignpos = input$alignmentposition,
                                hemizyg = input$hemizyg, 
                                homozyg = input$homozyg,
                                afri =  input$african,
                                ashke = input$ashkenazi,
                                eastasi = input$eastasian,
                                southasi = input$southasian,
                                eurofin = input$europeanfinnish,
                                eurononfin = input$europeannonfinnish,
                                latin = input$latino,
                                oth = input$other,
                                af = input$af,
                                ashj = input$ashj,
                                esas = input$esas,
                                soas = input$soas, 
                                eufin = input$eufin, 
                                eunfin = input$eunfin, 
                                lati = input$lati, 
                                othe = input$othe, 
                                All = input$All)})
  ##############################################################################################################################################################
  ##############################################################################################################################################################
  ##############################################################################################################################################################
  ##############################################################################################################################################################
  ##############################################################################################################################################################
  ##############################################################################################################################################################
  ### CHOICES PRINT
  observeEvent(input$update, {
    vector_of_choices <- c()
    #Generic filters choices
    #input$geneID
    if(length(input$geneID)>1){vector_of_choices <- c(vector_of_choices, c('Gene:\t\t\t\t\t\t', sort(gsub("ALL", "", input$geneID))[-1], '\n'))}
    if(length(input$geneID)==1){
      if(input$geneID!='ALL'){vector_of_choices <- c(vector_of_choices, c('Gene:\t\t\t\t\t\t', input$geneID), '\n')}}
    #input$family
    if(length(input$family)>1){vector_of_choices <- c(vector_of_choices, c('Family:\t\t\t\t\t', sort(gsub("ALL", "", input$family))[-1], '\n'))}
    if(length(input$family)==1){
      if(input$family!='ALL'){vector_of_choices <- c(vector_of_choices, c('Family:\t\t\t\t\t', input$family), '\n')}}
    #input$datasource
    if(length(input$datasource)>1){vector_of_choices <- c(vector_of_choices, c('Data Source:\t\t\t\t\t', sort(gsub("ALL", "", input$datasource))[-1], '\n'))}
    if(length(input$datasource)==1){
      if(input$datasource!='ALL'){vector_of_choices <- c(vector_of_choices, c('Data Source:\t\t\t\t\t', input$datasource), '\n')}}
    #input$ensmbl
    if(length(input$ensmbl)>1){vector_of_choices <- c(vector_of_choices, c('Ensmbl:\t\t\t\t\t', sort(gsub("ALL", "", input$ensmbl))[-1], '\n'))}
    if(length(input$ensmbl)==1){
      if(input$ensmbl!='ALL'){vector_of_choices <- c(vector_of_choices, c('Ensmbl:\t\t\t\t\t', input$ensmbl), '\n')}}
    #input$variantreference
    if(length(input$variantreference)>1){vector_of_choices <- c(vector_of_choices, c('Variant Reference:\t\t\t\t', sort(gsub("ALL", "", input$variantreference))[-1],'\n'))}
    if(length(input$variantreference)==1){
      if(input$variantreference!='ALL'){vector_of_choices <- c(vector_of_choices, c('Variant Reference:\t\t\t\t', input$variantreference), '\n')}}
    #input$chr
    if(length(input$chr)>1){vector_of_choices <- c(vector_of_choices, c('Chromosome:\t\t\t\t\t', sort(gsub("ALL", "", input$chr))[-1], '\n'))}
    if(length(input$chr)==1){
      if(input$chr!='ALL'){vector_of_choices <- c(vector_of_choices, c('Chromosome:\t\t\t\t\t', input$chr), '\n')}}
    ###############################################################################################################################################################
    # Mutation filters choices
    #input$snp
    if(length(input$snp)>1){vector_of_choices <- c(vector_of_choices, c('rsID:\t\t\t\t\t\t', sort(gsub("ALL", "", input$snp))[-1], '\n'))}
    if(length(input$snp)==1){
      if(input$snp!='ALL'){vector_of_choices <- c(vector_of_choices, c('rsID:\t\t\t\t\t\t', input$snp), '\n')}}
    #input$position
    if(length(input$position)>1){vector_of_choices <- c(vector_of_choices, c('Chromosome position:\t\t\t\t', sort(gsub("ALL", "", input$position))[-1], '\n'))}
    if(length(input$position)==1){
      if(input$position!='ALL'){vector_of_choices <- c(vector_of_choices, c('Chromosome position:\t\t\t\t', input$position), '\n')}}
    #input$annotDNA
    if(length(input$annotDNA)>1){vector_of_choices <- c(vector_of_choices, c('Point Mutation:\t\t\t\t', sort(gsub("ALL", "", input$annotDNA))[-1], '\n'))}
    if(length(input$annotDNA)==1){
      if(input$annotDNA!='ALL'){vector_of_choices <- c(vector_of_choices, c('Point Mutation:\t\t\t\t', input$annotDNA), '\n')}}
    #input$originalDNA
    if(length(input$originalDNA)>1){vector_of_choices <- c(vector_of_choices, c('Original DNA:\t\t\t\t\t', sort(gsub("ALL", "", input$originalDNA))[-1], '\n'))}
    if(length(input$originalDNA)==1){
      if(input$originalDNA!='ALL'){vector_of_choices <- c(vector_of_choices, c('Original DNA:\t\t\t\t\t', input$originalDNA), '\n')}}
    #input$changedDNA
    if(length(input$changedDNA)>1){vector_of_choices <- c(vector_of_choices, c('Changed DNA:\t\t\t\t\t', sort(gsub("ALL", "", input$changedDNA))[-1], '\n'))}
    if(length(input$changedDNA)==1){
      if(input$changedDNA!='ALL'){vector_of_choices <- c(vector_of_choices, c('Changed DNA:\t\t\t\t\t', input$changedDNA), '\n')}}
    #input$annot
    if(length(input$annot)>1){vector_of_choices <- c(vector_of_choices, c('Mutation Impact:\t\t\t\t', sort(gsub("ALL", "", input$annot))[-1], '\n'))}
    if(length(input$annot)==1){
      if(input$annot!='ALL'){vector_of_choices <- c(vector_of_choices, c('Mutation Impact:\t\t\t\t', input$annot), '\n')}}
    #input$hemizyg
    if(length(input$hemizyg)==1){
      if(input$hemizyg == '1'){vector_of_choices <- c(vector_of_choices, c('Hemizygote Variants:\t\t\t\t', 'Yes'), '\n')}
      if(input$hemizyg == '0'){vector_of_choices <- c(vector_of_choices, c('Hemizygote Variants:\t\t\t\t', 'No'), '\n')}}
    #input$homozyg
    if(length(input$homozyg)==1){
      if(input$homozyg == '1'){vector_of_choices <- c(vector_of_choices, c('Homozygote Variants:\t\t\t\t', 'Yes'), '\n')}
      if(input$homozyg == '0'){vector_of_choices <- c(vector_of_choices, c('Homozygote Variants:\t\t\t\t', 'No'), '\n')}}
    # ###############################################################################################################################################################
    # # Protein filters choices
    #input$uniprot
    if(length(input$uniprot)>1){vector_of_choices <- c(vector_of_choices, c('UniProt:\t\t\t\t\t', sort(gsub("ALL", "", input$uniprot))[-1], '\n'))}
    if(length(input$uniprot)==1){
      if(input$uniprot!='ALL'){vector_of_choices <- c(vector_of_choices, c('UniProt:\t\t\t\t\t', input$uniprot), '\n')}}
    #input$sequenceposition
    if(length(input$sequenceposition)>1){vector_of_choices <- c(vector_of_choices, c('Sequence position:\t\t\t\t', sort(gsub("ALL", "", input$sequenceposition))[-1], '\n'))}
    if(length(input$sequenceposition)==1){
      if(input$sequenceposition!='ALL'){vector_of_choices <- c(vector_of_choices, c('Sequence position:\t\t\t\t', input$sequenceposition), '\n')}}
    #input$alignmentposition
    if(length(input$alignmentposition)>1){vector_of_choices <- c(vector_of_choices, c('Alignment position:\t\t\t\t', sort(gsub("ALL", "", input$alignmentposition))[-1], '\n'))}
    if(length(input$alignmentposition)==1){
      if(input$alignmentposition!='ALL'){vector_of_choices <- c(vector_of_choices, c('Alignment position:\t\t\t\t', input$alignmentposition), '\n')}}
    #input$balles
    if(length(input$balles)>1){vector_of_choices <- c(vector_of_choices, c('Ballesteros-Weinstein position:\t\t', sort(gsub("ALL", "", input$balles))[-1], '\n'))}
    if(length(input$balles)==1){
      if(input$balles!='ALL'){vector_of_choices <- c(vector_of_choices, c('Ballesteros-Weinstein position:\t\t', input$balles), '\n')}}
    #input$aaoriginal
    if(length(input$aaoriginal)>1){vector_of_choices <- c(vector_of_choices, c('Original amino acid:\t\t\t\t', sort(gsub("ALL", "", input$aaoriginal))[-1], '\n'))}
    if(length(input$aaoriginal)==1){
      if(input$aaoriginal!='ALL'){vector_of_choices <- c(vector_of_choices, c('Original amino acid:\t\t\t\t', input$aaoriginal), '\n')}}
    #input$aachanged
    if(length(input$aachanged)>1){vector_of_choices <- c(vector_of_choices, c('Changed amino acid:\t\t\t\t', sort(gsub("ALL", "", input$aachanged))[-1], '\n'))}
    if(length(input$aachanged)==1){
      if(input$aachanged!='ALL'){vector_of_choices <- c(vector_of_choices, c('Changed amino acid:\t\t\t\t', input$aachanged), '\n')}}
    #input$matrixscore
    if(length(input$matrixscore)>1){vector_of_choices <- c(vector_of_choices, c('Substitution Matrix Score:\t\t\t', sort(gsub("ALL", "", input$matrixscore))[-1], '\n'))}
    if(length(input$matrixscore)==1){
      if(input$matrixscore!='ALL'){vector_of_choices <- c(vector_of_choices, c('Substitution Matrix Score:\t\t\t', input$matrixscore), '\n')}}
    #input$domain
    if(length(input$domain)>1){vector_of_choices <- c(vector_of_choices, c('Protein Domain:\t\t\t\t', sort(gsub("ALL", "", input$domain))[-1], '\n'))}
    if(length(input$domain)==1){
      if(input$domain!='ALL'){vector_of_choices <- c(vector_of_choices, c('Protein Domain:\t\t\t\t', input$domain), '\n')}}
    #input$affBC
    if(length(input$affBC)==1 & input$affBC!='ALL'){vector_of_choices <- c(vector_of_choices, c('Affect Binding Cavity:\t\t\t\t', input$affBC), '\n')}
    #input$affFC
    if(length(input$affFC)==1 & input$affFC!='ALL'){vector_of_choices <- c(vector_of_choices, c('Affect Functional Core:\t\t\t', input$affFC), '\n')}
    ###############################################################################################################################################################
    # Population filters choices
    #input$african
    if(length(input$african)==1){
      if(input$african == '1'){vector_of_choices <- c(vector_of_choices, c('Affect African:\t\t\t\t', 'Yes'), '\n')}
      if(input$african == '0'){vector_of_choices <- c(vector_of_choices, c('Affect African:\t\t\t\t', 'No'), '\n')}}
    #input$ashkenazi
    if(length(input$ashkenazi)==1){
      if(input$ashkenazi == '1'){vector_of_choices <- c(vector_of_choices, c('Affect Ashkenazi-Jewish:\t\t\t', 'Yes'), '\n')}
      if(input$ashkenazi == '0'){vector_of_choices <- c(vector_of_choices, c('Affect Ashkenazi-Jewish:\t\t\t', 'No'), '\n')}}
    #input$eastasian
    if(length(input$eastasian)==1){
      if(input$eastasian == '1'){vector_of_choices <- c(vector_of_choices, c('Affect East Asian:\t\t\t\t', 'Yes'), '\n')}
      if(input$eastasian == '0'){vector_of_choices <- c(vector_of_choices, c('Affect East Asian:\t\t\t\t', 'No'), '\n')}}
    #input$southasian
    if(length(input$southasian)==1){
      if(input$southasian == '1'){vector_of_choices <- c(vector_of_choices, c('Affect South Asian:\t\t\t\t', 'Yes'), '\n')}
      if(input$southasian == '0'){vector_of_choices <- c(vector_of_choices, c('Affect South Asian:\t\t\t\t', 'No'), '\n')}}
    #input$europeanfinnish
    if(length(input$europeanfinnish)==1){
      if(input$europeanfinnish == '1'){vector_of_choices <- c(vector_of_choices, c('Affect European Finnish:\t\t\t', 'Yes'), '\n')}
      if(input$europeanfinnish == '0'){vector_of_choices <- c(vector_of_choices, c('Affect European Finnish:\t\t\t', 'No'), '\n')}}
    #input$europeannonfinnish
    if(length(input$europeannonfinnish)==1){
      if(input$europeannonfinnish == '1'){vector_of_choices <- c(vector_of_choices, c('Affect European Non Finnish:\t\t\t', 'Yes'), '\n')}
      if(input$europeannonfinnish == '0'){vector_of_choices <- c(vector_of_choices, c('Affect European Non Finnish:\t\t\t', 'No'), '\n')}}
    #input$latino
    if(length(input$latino)==1){
      if(input$latino == '1'){vector_of_choices <- c(vector_of_choices, c('Affect Latino:\t\t\t\t\t', 'Yes'), '\n')}
      if(input$latino == '0'){vector_of_choices <- c(vector_of_choices, c('Affect Latino:\t\t\t\t\t', 'No'), '\n')}}
    #input$other
    if(length(input$other)==1){
      if(input$other == '1'){vector_of_choices <- c(vector_of_choices, c('Affect Other:\t\t\t\t\t', 'Yes'), '\n')}
      if(input$other == '0'){vector_of_choices <- c(vector_of_choices, c('Affect Other:\t\t\t\t\t', 'No'), '\n')}}
    ###############################################################################################################################################################
    # Population ranges choices
    #input$All
    if(class(input$All) == "numeric"){if(input$All[1]!=0 | input$All[2]!=1){
        vector_of_choices <- c(vector_of_choices, c('Generic Allele frequency range:\t\t[', input$All[1], ',', input$All[2]), ']\n')}} 
    if(class(input$All) == "integer"){if(input$All[1]!=0 | input$All[2]!=1){
        vector_of_choices <- c(vector_of_choices, c('Generic range:\t\t[', input$All[1], ',', input$All[2]), ']\n')}} 
    # input$af
    if(class(input$af) == "numeric"){if(input$af[1]!=0 | input$af[2]!=1){
      vector_of_choices <- c(vector_of_choices, c('African Allele frequency range:\t\t[', input$af[1], ',', input$af[2]), ']\n')}} 
    if(class(input$af) == "integer"){if(input$af[1]!=0 | input$af[2]!=1){
      vector_of_choices <- c(vector_of_choices, c('African Allele frequency range:\t\t[', input$af[1], ',', input$af[2]), ']\n')}} 
    # input$ashj
    if(class(input$ashj) == "numeric"){if(input$ashj[1]!=0 | input$ashj[2]!=1){
      vector_of_choices <- c(vector_of_choices, c('Ashkenazi-Jewish Allele frequency range:\t[', input$ashj[1], ',', input$ashj[2]), ']\n')}} 
    if(class(input$ashj) == "integer"){if(input$ashj[1]!=0 | input$ashj[2]!=1){
      vector_of_choices <- c(vector_of_choices, c('Ashkenazi-Jewish Allele frequency range:\t[', input$All[1], ',', input$All[2]), ']\n')}} 
    # input$esas
    if(class(input$esas) == "numeric"){if(input$esas[1]!=0 | input$esas[2]!=1){
      vector_of_choices <- c(vector_of_choices, c('East Asian Allele frequency range:\t\t[', input$esas[1], ',', input$esas[2]), ']\n')}} 
    if(class(input$esas) == "integer"){if(input$esas[1]!=0 | input$esas[2]!=1){
      vector_of_choices <- c(vector_of_choices, c('East Asian Allele frequency range:  [', input$All[1], ',', input$All[2]), ']\n')}} 
    # input$soas
    if(class(input$soas) == "numeric"){if(input$soas[1]!=0 | input$soas[2]!=1){
      vector_of_choices <- c(vector_of_choices, c('South Asian Allele frequency range:\t\t[', input$soas[1], ',', input$soas[2]), ']\n')}} 
    if(class(input$soas) == "integer"){if(input$soas[1]!=0 | input$soas[2]!=1){
      vector_of_choices <- c(vector_of_choices, c('South Asian Allele frequency range:\t\t[', input$soas[1], ',', input$soas[2]), ']\n')}} 
    # input$eufin
    if(class(input$eufin) == "numeric"){if(input$eufin[1]!=0 | input$eufin[2]!=1){
      vector_of_choices <- c(vector_of_choices, c('European Finnish Allele frequency range:\t[', input$eufin[1], ',', input$eufin[2]), ']\n')}} 
    if(class(input$eufin) == "integer"){if(input$eufin[1]!=0 | input$eufin[2]!=1){
      vector_of_choices <- c(vector_of_choices, c('European Finnish Allele frequency range:\t[', input$eufin[1], ',', input$eufin[2]), ']\n')}} 
    # input$eunfin
    if(class(input$eunfin) == "numeric"){if(input$eunfin[1]!=0 | input$eunfin[2]!=1){
      vector_of_choices <- c(vector_of_choices, c('European Non Finnish Allele frequency range:\t[', input$eunfin[1], ',', input$eunfin[2]), ']\n')}} 
    if(class(input$eunfin) == "integer"){if(input$eunfin[1]!=0 | input$eunfin[2]!=1){
      vector_of_choices <- c(vector_of_choices, c('European Non Finnish Allele frequency range:\t[', input$eunfin[1], ',', input$eunfin[2]), ']\n')}} 
    # input$lati
    if(class(input$lati) == "numeric"){if(input$lati[1]!=0 | input$lati[2]!=1){
      vector_of_choices <- c(vector_of_choices, c('Latino Allele frequency range:\t\t\t[', input$lati[1], ',', input$lati[2]), ']\n')}} 
    if(class(input$lati) == "integer"){if(input$lati[1]!=0 | input$lati[2]!=1){
      vector_of_choices <- c(vector_of_choices, c('Latino Allele frequency range:\t\t\t[', input$lati[1], ',', input$lati[2]), ']\n')}} 
    # input$othe
    if(class(input$othe) == "numeric"){if(input$othe[1]!=0 | input$othe[2]!=1){
      vector_of_choices <- c(vector_of_choices, c('Other Allele frequency range:\t\t\t[', input$othe[1], ',', input$othe[2]), ']\n')}} 
    if(class(input$othe) == "integer"){if(input$othe[1]!=0 | input$othe[2]!=1){
      vector_of_choices <- c(vector_of_choices, c('Other Allele frequency range:\t\t\t[', input$othe[1], ',', input$othe[2]), ']\n')}} 
    ###############################################################################################################################################################
    # join all the coices and print them
    output$choices <- renderPrint({
      if(length(vector_of_choices)>0){
        cat("Your choices:\n\n")
        cat(c('', vector_of_choices))
      }
      if(length(vector_of_choices)==0){
        cat("Your choices:\n\n")
        cat(c('', 'No filters applied'))
      }})})
  ##############################################################################################################################################################
  ##############################################################################################################################################################
  ##############################################################################################################################################################
  ##############################################################################################################################################################
  ##############################################################################################################################################################
  ##############################################################################################################################################################
  ### TABLE
  #selecciona funcio render.. del paquet DT
  output$table <- DT::renderDataTable({ input$update
    Sys.sleep(1)
    isolate({my_table <- datatable(filtering(), options = list(scrollX = TRUE, autoWidth = FALSE, pageLength = 5, lengthMenu = c(5,10,20,50,100)))}) 
    #quan es modifica el update torna a filtrar
    return(my_table)})
  ##############################################################################################################################################################
  ##############################################################################################################################################################
  ##############################################################################################################################################################
  ##############################################################################################################################################################
  ##############################################################################################################################################################
  ##############################################################################################################################################################
  ### DOWNLOAD TABLE
  output$downloadTable <- downloadHandler(
    filename = function(){paste('hORMdb_table',".csv",sep="")},content=function(file){write.csv(filtering(),file,row.names=FALSE)})
  ##############################################################################################################################################################
  ##############################################################################################################################################################
  ##############################################################################################################################################################
  ##############################################################################################################################################################
  ##############################################################################################################################################################
  ##############################################################################################################################################################
  ### CALL PLOTS
  #Annotations and BS/FC
  output$Plot1 <- renderPlot({input$update
    isolate({my_plot <-  piechart_mys_syn(filtering(), file)})
    return(my_plot)})
  output$Plot2 <- renderPlot({input$update
    isolate({my_plot <-  piechart_annot_DNA(filtering(), file)})
    return(my_plot)})
  output$Plot3 <- renderPlot({input$update
    isolate({my_plot <-  piechart_bs(filtering(), file)})
    return(my_plot)})
  #Receptors
  output$Plot4 <- renderPlot({input$update
    isolate({my_plot <-  plot_receptors1(filtering())})
    return(my_plot)})
  output$Plot5 <- renderPlot({input$update
    isolate({my_plot <-  plot_receptors2(filtering())})
    return(my_plot)})
  output$Plot6 <- renderPlot({input$update
    isolate({my_plot <-  plot_receptors3(filtering())})
    return(my_plot)})
  #Chromosome
  output$Plot7 <- renderPlot({input$update
    isolate({my_plot <-  barchart_chr(filtering(), file)})
    return(my_plot)})
  output$Plot8 <- renderPlot({input$update
    isolate({my_plot <-  barchart7(filtering(), file)})
    return(my_plot)})
  output$Plot9 <- renderPlot({input$update
    isolate({my_plot <-  barchart8(filtering(), file)})
    return(my_plot)})
  #Domains
  output$Plot10 <- renderPlot({input$update
    isolate({my_plot <-  barchart2(filtering(), file)})
    return(my_plot)})
  output$Plot11 <- renderPlot({input$update
    isolate({my_plot <-  barchart5(filtering(), file)})
    return(my_plot)})
  output$Plot12 <- renderPlot({input$update
    isolate({my_plot <-  barchart6(filtering(), file)})
    return(my_plot)})
  #Populations Freqs
  output$Plot13 <- renderPlot({input$update
    isolate({my_plot <-  freqs_plot_ALL(filtering(), file)})
    return(my_plot)})
  output$Plot14 <- renderPlot({input$update
    isolate({my_plot <-  freqs_plot_AFR(filtering(), file)})
    return(my_plot)})
  output$Plot15 <- renderPlot({input$update
    isolate({my_plot <-  freqs_plot_ASH(filtering(), file)})
    return(my_plot)})
  output$Plot16 <- renderPlot({input$update
    isolate({my_plot <-  freqs_plot_EA(filtering(), file)})
    return(my_plot)})
  output$Plot17 <- renderPlot({input$update
    isolate({my_plot <-  freqs_plot_SA(filtering(), file)})
    return(my_plot)})
  output$Plot18 <- renderPlot({input$update
    isolate({my_plot <-  freqs_plot_EF(filtering(), file)})
    return(my_plot)})
  output$Plot19 <- renderPlot({input$update
    isolate({my_plot <-  freqs_plot_ENF(filtering(), file)})
    return(my_plot)})
  output$Plot20 <- renderPlot({input$update
    isolate({my_plot <-  freqs_plot_LAT(filtering(), file)})
    return(my_plot)})
  output$Plot21 <- renderPlot({input$update
    isolate({my_plot <-  freqs_plot_OTH(filtering(), file)})
    return(my_plot)})
  #Ballesteros
  output$Plot22 <- renderPlot({input$update
    isolate({my_plot <-  plot_balles1(filtering())})
    return(my_plot)})
  output$Plot23 <- renderPlot({input$update
    isolate({my_plot <-  plot_balles2(filtering())})
    return(my_plot)})
  #Matrix score
  output$Plot24 <- renderPlot({input$update
    isolate({my_plot <-  barchart_matrix1(filtering(), file)})
    return(my_plot)})
  output$Plot25 <- renderPlot({input$update
    isolate({my_plot <-  barchart_matrix2(filtering(), file)})
    return(my_plot)})
  output$Plot26 <- renderPlot({input$update
    isolate({my_plot <-  barchart_matrix3(filtering(), file)})
    return(my_plot)})
  #Original aa
  output$Plot27<- renderPlot({input$update
    isolate({my_plot <-  barchart_oaa1(filtering(), file)})
    return(my_plot)})
  output$Plot28 <- renderPlot({input$update
    isolate({my_plot <-  barchart_oaa2(filtering(), file)})
    return(my_plot)})
  output$Plot29 <- renderPlot({input$update
    isolate({my_plot <-  barchart_oaa3(filtering(), file)})
    return(my_plot)})
  #Changed aa
  output$Plot30 <- renderPlot({input$update
    isolate({my_plot <-  barchart_caa1(filtering(), file)})
    return(my_plot)})
  output$Plot31 <- renderPlot({input$update
    isolate({my_plot <-  barchart_caa2(filtering(), file)})
    return(my_plot)})
  output$Plot32 <- renderPlot({input$update
    isolate({my_plot <-  barchart_caa3(filtering(), file)})
    return(my_plot)})
  #Circos
  output$Plot33 <- renderPlot({input$update
    isolate({my_plot <-  circos_plot(filtering())})
    return(my_plot)}, height = 600, width = 1000)
}
##############################################################################################################################################################
##############################################################################################################################################################
##############################################################################################################################################################
##############################################################################################################################################################
##############################################################################################################################################################
##############################################################################################################################################################
##############################################################################################################################################################
### RUN SERVER
shinyApp(ui, server)
##############################################################################################################################################################
##############################################################################################################################################################
##############################################################################################################################################################
##############################################################################################################################################################
##############################################################################################################################################################
##############################################################################################################################################################
##############################################################################################################################################################
