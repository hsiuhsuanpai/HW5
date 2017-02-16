load(url("https://storage.googleapis.com/r_rookies/straw_hat_df.RData"))
Sys.Date()%>%
  format('%Y')%>%
  as.numeric() %>%
  `-` (straw_hat_df$age) %>%
  paste(straw_hat_df$birthday,sep="-")%>%
  as.Date()%>%
  View()


heights <- c(173, 168, 171, 189, 179)
weights <- c(65.4, 59.2, 63.6, 88.4, 68.7)
heights_and_weights <- data.frame(heights, weights)
heights_and_weights %>%
  mutate(heights_in_meter = heights / 100,
         bmi = weights / ((heights_in_meter)^2)
  ) %>%
  View()
