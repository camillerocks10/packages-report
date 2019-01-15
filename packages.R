#' ---
#' output: github_document
#' ---

.libPaths()

ipt <- installed.packages()
nrow(ipt)

apt <- ipt %>%
  filter(is.na(Priority)) %>%
  select(Package, Built)

apt_freqtable <- apt %>%
  count(Built) %>%
  mutate(prop = n / sum(n))

