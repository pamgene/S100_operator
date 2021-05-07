library(tercen)
library(dplyr)


(ctx = tercenCtx()) %>% 
  select(.y, .ri, .ci) %>% 
  group_by(.ri, .ci) %>%
  mutate(value = 100*.y) %>%
  ctx$addNamespace() %>%
  ctx$save()