library(tidyverse)
SSA_national.df <- read.delim("http://laits.utexas.edu/~mr56267/TLAH_Names_2024/Data/SSA_national_2024.txt")
SSA_state.df <- read.delim("https://laits.utexas.edu/~mr56267/TLAH_Names_2024/Data/SSA_state_2024.txt")


president_list.df <- data.frame(Name=c("Chester Arthur","Grover Cleveland","Benjamin Harrison","Grover Cleveland","William Mckinley","Theodore Roosevelt","William Taft","Woodrow Wilson","Warren Harding","Calvin Coolidge","Herbert Hoover","Franklin Roosevelt","Harry Truman","Dwight Eisenhower","John Kennedy","Lyndon Jonson","Richard Nixon","Gerald Ford","Jimmy Carter","Ronald Reagan","George Bush","Bill Clinton ","George W. Bush","Barack Obama","Donald Trump","Joseph Biden"),
                                Year=c("1881-1885","1885-1889","1889-1893","1893-1897","1897-1901","1901-1909","1909-1913","1913-1921","1921-1923","1923-1929","1929-1933","1933-1945","1945-1953","1953-1961","1961-1963","1963-1969","1969-1974","1974-1977","1977-1981","1981-1989","1989-1993","1993-2001","2001-2009","2009-2017","2017-2021","2021-2024"),
                                Classification=c("increase","peak","peak","peak","decrease","peak","decrease","decrease","peak","peak","peak","peak","decrease","decrease","increase","peaks","decrease","decrease","decrease","decrease","decrease","decrease","decrease","peak","decrease","decrease"),
                                PopularVotePercent=c("n/a","48.85%","47.80%","46.02%","51.02%","56.42%","51.57%","41.84%","60.32%","54.04%","58.21%","57.41%","49.55%","55.18%","49.72%","61.05%","43.42%","n/a","50.08%","58.77%","53.37%","43.01%","47.87%","52.93%","46.09%","51.31%"),
                                HomeState=c("Vermont","New Jersey","Ohio","New Jersey","Ohio","New York","Ohio","Virginia","Ohio","Vermont","Iowa","New York","Missouri","Texas","Massachusetts","Texas","California","Nebraska","Georgia","Illinois","Massachusetts","Arkansas","Connecticut","Hawaii","New York","Pennsylvania"))
write.table(president_list.df,"C:/Users/Aaron M. Soliz/Downloads/pres_list.txt",sep = "\t", row.names = FALSE)

subset1.df <- SSA_national.df %>% select(c("name","gender","year","perc")) %>% 
  filter(name%in%c("Chester","Grover","Benjamin","William","Theodore")) %>% filter(gender =="M")
write.table(subset1.df,"C:/Users/Aaron M. Soliz/Downloads/pres1.txt",sep = "\t", row.names = FALSE)                            

subset2.df <- SSA_national.df %>% select(c("name","gender","year","perc")) %>% 
  filter(name%in%c("Woodrow","Warren","Calvin","Herbert","Franklin","Harry"))  %>% filter(gender =="M")
write.table(subset2.df,"C:/Users/Aaron M. Soliz/Downloads/pres2.txt",sep = "\t", row.names = FALSE) 

subset3.df <- SSA_national.df %>% select(c("name","gender","year","perc")) %>% 
  filter(name%in%c("Dwight","John","Lyndon","Richard","Gerald","Jimmy"))  %>% filter(gender =="M")
write.table(subset3.df,"C:/Users/Aaron M. Soliz/Downloads/pres3.txt",sep = "\t", row.names = FALSE) 

subset4.df <- SSA_national.df %>% select(c("name","gender","year","perc")) %>% 
  filter(name%in%c("Ronald","George","Bill","Barack","Donald","Joseph"))  %>% filter(gender =="M")
write.table(subset4.df,"C:/Users/Aaron M. Soliz/Downloads/pres4.txt",sep = "\t", row.names = FALSE) 

presidents_names <- c("Chester","Grover","Benjamin","William","Theodore","Woodrow","Warren","Calvin","Herbert","Franklin","Harry","Dwight","John","Lyndon","Richard","Gerald","Jimmy","Ronald","George","Bill","Barack","Donald","Joseph")
subset5.df <- SSA_state.df %>% select(c("name","gender","year","perc","state")) %>% 
  filter(name%in%presidents_names)  %>% filter(gender =="M")
write.table(subset5.df,"C:/Users/Aaron M. Soliz/Downloads/state_pres.txt",sep = "\t", row.names = FALSE) 



president_data.df <- data.frame(name = c("Woodrow","Warren","Calvin","Herbert","Franklin","Harry","Dwight","John","Lyndon","Richard","Gerald","Jimmy","Ronald","George","Bill","George","Barack","Donald","Joseph"),
                                start = c("1913","1921","1923","1929","1933","1945","1953","1961","1963","1969","1974","1977","1981","1989","1993","2001","2009","2017","2021"),
                                end = c("1921","1923","1929","1933","1945","1953","1961","1963","1969","1974","1977","1981","1989","1993","2001","2009","2017","2021","2024"))
write.table(president_data.df,"C:/Users/Aaron M. Soliz/Downloads/pres_start_end.txt",sep = "\t", row.names = FALSE) 

subset6.df <- SSA_state.df %>% filter(name %in% president_data.df$name) %>% filter(gender == "M")
write.table(subset6.df,"C:/Users/Aaron M. Soliz/Downloads/pres_names.txt",sep = "\t", row.names = FALSE) 

ssubset8.df <- SSA_national.df %>% select(c("name","gender","year","perc")) %>% 
  filter(name%in%c("Chester","Grover","Benjamin","Theodore","Warren","Calvin","Herbert","Franklin","John","Lyndon","Jimmy","Barack")) %>% filter(gender =="M")
write.table(subset8.df,"C:/Users/Aaron M. Soliz/Downloads/pres8.txt",sep = "\t", row.names = FALSE) 

subset9.df <- SSA_national.df %>% select(c("name","gender","year","perc")) %>% 
  filter(name%in%c("William","Woodrow","Warren","Harry","Dwight","Richard","Gerald","Ronald","George","Bill","Donald","Joseph")) %>% filter(gender =="M")
write.table(subset9.df,"C:/Users/Aaron M. Soliz/Downloads/pres9.txt",sep = "\t", row.names = FALSE) 


