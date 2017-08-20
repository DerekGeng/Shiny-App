#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)


# Define UI for application that draws a histogram
shinyUI(fluidPage(

        # Application title
        titlePanel("Diamond price prediction"),

        # Sidebar with options selectors
        sidebarLayout(
                sidebarPanel(
                        helpText("This application predicts the price of a diamond based on its characteristics."),
                        h3(helpText("Select:")),
                        numericInput("car", label = h4("Carats"), step = 0.01, value = 1),
                        selectInput("cut", label = h4("Cut"),
                                    choices = list("ALL" = "*", "Fair" = "Fair", "Good" = "^Good",
                                                   "Very Good" = "Very Good", "Premium" = "Premium",
                                                   "Ideal" = "Ideal")),
                        selectInput("col", label = h4("Color"),
                                    choices = list("ALL" = "*", "D" = "D", "E" = "E",
                                                   "F" = "F", "G" ="G",
                                                   "H" = "H", "I" = "I",
                                                   "J" = "J"))
                ),

                # Show a plot with diamonds and regression line
                mainPanel(
                        plotOutput("distPlot"),
                        h4("Predicted value of this diamond is:"),
                        h3(textOutput("result"))
                )
        )
))
