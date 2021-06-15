library(tercen)
library(dplyr)

ctx <- tercenCtx()

if(inherits(try(ctx$select(".y")), 'try-error')) stop("y axis is missing.")

ctx %>%
  select(.y, .ri, .ci) %>%
  group_by(.ri, .ci) %>%
  mutate(S100 = 100*.y) %>%
  select(-.y) %>%
  ctx$addNamespace() %>%
  ctx$save()
