#ui.R

library(shiny)

shinyUI (
  pageWithSidebar (

    headerPanel("Mortgage Payment Calculator"),

    sidebarPanel (
      #sliderInput ('HomeValue', 'Home Value', value = 350000, min = 100000, max = 2000000, step = 20000,),
      sliderInput ('LoanAmt', 'Loan AMount', value = 35000, min = 10000, max = 2000000, step = 20000,),
      sliderInput ('IntRt', 'Annual Percentage Rate', value = 1.0, min = 0.5, max = 8.0, step = 0.05,),
      sliderInput ('LoanTerm', 'Loan Term', value = 12, min = 12, max = 480, step = 2,),
      #dateInput ("StartDt", label=h5("Start Date"), value="2015-01-01",),
      sliderInput ('PropertyTaxRt', 'Property Tax', value = 10, min = 2, max = 15, step = 0.05,)
      #numericInput ("PMIRt", label=h4("PMI Rate"), value=0.0,),
      #submitButton ("Calculate",)
    ),

    mainPanel (
      h3(textOutput("proptax", container = span)),
      tabsetPanel (type = "tabs", 
        tabPanel ("Mortgage Payment Details", verbatimTextOutput("amort"))
      )
    )
  )
)