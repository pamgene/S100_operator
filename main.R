library(tercen)
library(dplyr)

ctx <- tercenCtx()
 
if(length(ctx$yAxis) == 0) stop("y axis is missing.")

ctx %>%
  select(.y, .ri, .ci) %>%
  mutate(S100 = 100*.y) %>%
  select(-.y) %>%
  ctx$addNamespace() %>%
  ctx$save()
