library(ggplot2)
library(readr)
library(tidyr)
library(hrbrthemes)

data <- read_csv("project_outcomes.csv")

theme_set(theme_ipsum(base_family = "Helvetica", axis_title_size = 17.5,
                      axis_text_size = 17.5, base_size = 12.5))

#more novelty = less success
g2 <- ggplot(data, aes(x = factor(project_tech_success), y = project_novelty,
                       fill = factor(project_tech_success))) + geom_boxplot() +
  scale_x_discrete(labels =
                     c("0" = "Failed Projects", "1" = "Successful Projects")) +
  scale_fill_manual(values = c("0" = "#FF6F61", "1" = "#66CDAA")) +
  guides(fill = "none") + labs(y = "Project Novelty", x = NULL) +
  theme(axis.title.y = element_text(hjust = 0.5))

#more duration = less success
g3 <- ggplot(data, aes(x = factor(project_tech_success), y = project_duration,
                       fill = factor(project_tech_success))) + geom_boxplot() +
  scale_x_discrete(labels =
                     c("0" = "Failed Projects", "1" = "Successful Projects")) +
  scale_fill_manual(values = c("0" = "#FF6F61", "1" = "#66CDAA")) +
  guides(fill = "none") + labs(y = "Project Duration", x = NULL) +
  theme(axis.title.y = element_text(hjust = 0.5))

#more novelty = more duration

g4 <- ggplot(data, aes(x = project_novelty, y = project_duration,
                       color = factor(project_tech_success))) +
  geom_point() +
  geom_smooth(method = "lm", formula = y ~ x, se = FALSE) +
  labs(x = "Project Novelty", y = "Project Duration",
       color = "Project Outcome") +
  scale_color_manual(values = c("#FF6F61", "#66CDAA"),
                     labels = c("Failure", "Success"))