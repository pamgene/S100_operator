library(tercen)
library(dplyr)

options("tercen.workflowId" = "119e20e1121a1ac50b16db38b0000a3d")
options("tercen.stepId"     = "b226ed77-56d7-494f-94bd-d042d36de6ea")

ctx <- tercenCtx()

if(inherits(try(ctx$select(".y")), 'try-error')) stop("y axis is missing.")

ctx %>%
  select(.y, .ri, .ci) %>%
  group_by(.ri, .ci) %>%
  mutate(value = 100*.y) %>%
  ctx$addNamespace() %>%
  ctx$save()
