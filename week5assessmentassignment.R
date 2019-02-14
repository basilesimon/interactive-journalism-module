students <- data_frame('students' = c('stella',
                                      'mariia',
                                      'mario',
                                      'ion',
                                      'peter',
                                      'abbie',
                                      'kim',
                                      'hywel',
                                      'nathan',
                                      'lucie',
                                      'anisa',
                                      'janara',
                                      'xiaoqiong',
                                      'edward',
                                      'keke',
                                      'jaime',
                                      'pavan',
                                      'anna',
                                      'nina',
                                      'pina',
                                      'oleksandr',
                                      'arnaldur',
                                      'sharon',
                                      'ana v',
                                      'maria v',
                                      'zahra',
                                      'tanya'))

assignment <- students %>% rowwise() %>%
  mutate(random = floor(runif(1, 1, 28)),
         type = ifelse(random %% 2 == 0, 
                       'wednesday', 
                       'friday'))

assignment %>% group_by(type) %>%
  summarise(n = n())
