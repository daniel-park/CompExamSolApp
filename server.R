library(shiny)


shinyServer(function(input, output) {
  ntext <- eventReactive(input$button_solution, {
    if (input$radio_part=="part1") { part_str <- "pt1"}
    else if (input$radio_part=="part2") { part_str <- "pt2"}
    if (input$radio_season=="spring") { season_str <- "May"}
    else if (input$radio_season=="fall") { season_str <- "Nov"}
    year_str <- input$select_year
    problem_str <- input$select_problem
    file_name <- paste0(year_str, season_str, "_", part_str, "-", problem_str, "sol.html")
    print(file_name)
    git_url <- "https://rawgit.com/daniel-park/CompExam/master/"
    www <- paste0(git_url, file_name)
    browseURL(www)
  })
  output$problem <- renderUI( {ntext()} )
})
