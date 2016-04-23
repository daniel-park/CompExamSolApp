
library(shiny)




shinyUI(
  fluidPage(
  titlePanel("Comp Exam"),
  sidebarPanel(radioButtons("radio_part", label=h4("Exam"), 
                            choices=list("Part I (closed book)"="part1", 
                                         "Part II (open book)"="part2"), 
                            selected=1),
               radioButtons("radio_season", label=h4("Season"), 
                            choices=list("Spring"="spring", 
                                         "Fall"="fall"), 
                            selected=1),
               selectInput("select_year",
                           "Year",
                           c("Select", 2013:2015)),
               selectInput("select_problem",
                           "Problem",
                           c("Select", 1:5)),
               actionButton(inputId="button_solution", label="Solution")
  ),
  mainPanel(
    htmlOutput(outputId="problem")
  )
))
