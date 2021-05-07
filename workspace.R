library(tercen)
library(dplyr)

options("tercen.workflowId" = "119e20e1121a1ac50b16db38b0000a3d")
options("tercen.stepId"     = "23aa280b-9816-4425-a19c-0df1586ab443")

(ctx = tercenCtx()) %>% 
  select(.y, .ri, .ci) %>% 
  group_by(.ri, .ci) %>%
  mutate(value = 100*.y) %>%
  ctx$addNamespace() %>%
  ctx$save()