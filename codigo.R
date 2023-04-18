#dados_head <- read_delim("~/R/dados_pecs/producao_publico_mun_2022/producao_mun_publico_2022.csv", 
#                         delim = ";", escape_double = FALSE, col_types = cols(co_uf_ibge = col_character(), 
#                         co_municipio_ibge = col_character(), 
#                         co_regiao_ibge = col_character(), 
#                         co_regiao_saude = col_character(), 
#                         co_tipologia_ibge_mun = col_character(), 
#                         co_macro = col_character(), sg_mes = col_character(), 
#                         populacao_mun = col_integer(), ano_populacao_mun = col_double()), 
#                         locale = locale(date_names = "pt", encoding = "ISO-8859-1"), 
#                         na = "NA", trim_ws = TRUE)


#library(vroom)

#data <- vroom("~/R/dados_pecs/producao_publico_mun_2022/producao_mun_publico_2022.csv")

loaded_data <- data.table::fread(file = paste0("~/R/dados_pecs/producao_publico_mun_2022/","producao_mun_publico_2022.csv"),
                        sep=";")


library(dplyr)

names(loaded_data)

loaded_data %>% filter(co_municipio_ibge %in% c(292740)) 

