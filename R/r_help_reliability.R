install.packages("tidyverse")
library(tidyverse)
samp_data <- read_csv("../data/sample_data.csv", col_names = TRUE,
                      col_types = 
                        cols(
                          pump_id = col_character(),
                          timings = col_datetime(format = "%m-%d-%Y %H:%M"),
                          events = col_integer(),
                          vibration = col_number(),
                          temprature = col_number(),
                          flow = col_number()),
                      skip = 0)
transformed_data <- data.frame