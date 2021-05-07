library(tercen)
library(dplyr)

ctx <- tercenCtx()

if(inherits(try(ctx$select(".y")), 'try-error')) stop("y axis is missing.")

ctx %>%
  select(.y, .ri, .ci) %>%
  group_by(.ri, .ci) %>%
  mutate(value = 100*.y) %>%
  ctx$addNamespace() %>%
  ctx$save()
