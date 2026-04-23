# demo of upscaler in R
# Bryan Wilcenski
# 4/23/26

#############################

# ----

# add libraries 

library(devtools)
install_github("ngotelli/upscaler")

library(upscaler)


# sets up environment for you 

#folder structure 

add_folder()
add_folder("Documents")

help(package="upscaler")

# original darta -- raw data collected - never touched or edited 
# cleaned data -- after cleaning original data, write the cleaned copy tp the cleaned data folder
# Functions -- individual r scripts 
# outputs -- tables that are writen out, statistical outputs
# plots -- plots and figures
# scripts -- python scripts or other scripts that would be usefulbut aren't part of overall structure 
# Documents -- pdfs, manuscripts, etc (added manually)

#making data templates
metadata_template(file = "OriginalData/MyData.csv")


# Store Tables
data_table_template(data_frame= NULL, file_name= "Outputs/TableA.csv")

# padding label names 
create_padded_labels(n=10, string="Species", suffix = ".txt")


# RDS Files (allow you to save r object to disk and re-load it) so that you don't have to re-do heavy processing tasks 
######## can use this to save a Random Forest #########

x<- runif(10)
saveRDS(object = x, file = "DataObjects/x.rds") #no longer have to re-run this code
x <- NULL #unsave for demo

x <- readRDS(file= "DataObjects/x.rds") # re-load object 



# Logger System 
set_up_log()
set_up_log(user_seed=100)
echo_log_console(TRUE)
l("log message entered to the screen")
echo_log_console(FALSE)

set_up_log(overwrite_log=FALSE) #MAKE A NEW LOG FILE for a new session that won't overwrite the others 

for (k in 1:100){
  show_progress_bar(k)
  Sys.sleep(0.075)

}

l("ended loop with no error ")

#build functions 
build_function(c("BuyGroceries",
                "write_shopping_list",
                "slect_recipes",
                " "))

source_batch("Functions")