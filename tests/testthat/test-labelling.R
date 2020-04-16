context("labelling")

describe("figure, tables and equations labelling", {

  it("creates sequential figure numbers", {
    # Figure 1
    expect_equal(fig("first-figure", "Some text", reset = TRUE),
      "**[Figure 1]{id=\"Fig._first-figure\"}:** Some text")
    expect_equal(fig("first-figure"), "[Fig. 1](#Fig._first-figure)")
    expect_equal(fig("first-figure", name = NULL), "[1](#Fig._first-figure)")
    # Figure 2
    expect_equal(fig("second-figure"), "[Fig. 2](#Fig._second-figure)")
    expect_equal(fig("second-figure", "Text"),
      "**[Figure 2]{id=\"Fig._second-figure\"}:** Text")
    # Recall both figures
    expect_equal(fig("first-figure"), "[Fig. 1](#Fig._first-figure)")
    expect_equal(fig("second-figure"), "[Fig. 2](#Fig._second-figure)")
  })

  it("creates sequential table numbers", {
    # Table 1
    expect_equal(tab("first-table", "Some text", reset = TRUE),
      "**[Table 1]{id=\"Table_first-table\"}:** Some text")
    expect_equal(tab("first-table"), "[Table 1](#Table_first-table)")
    expect_equal(tab("first-table", name = NULL), "[1](#Table_first-table)")
    # Table 2
    expect_equal(tab("second-table"), "[Table 2](#Table_second-table)")
    expect_equal(tab("second-table", "Text"),
      "**[Table 2]{id=\"Table_second-table\"}:** Text")
    # Recall both tables
    expect_equal(tab("first-table"), "[Table 1](#Table_first-table)")
    expect_equal(tab("second-table"), "[Table 2](#Table_second-table)")
  })

  it("creates sequential equation numbers", {
    # Equation 1
    expect_equal(eq(first_equation, reset = TRUE),
      "\\label{eq:first_equation} \\tag{1}")
    expect_equal(eq("first_equation"), "$\\eqref{eq:first_equation}$")
    # Equation 2
    expect_equal(eq("second_equation"), "$\\eqref{eq:second_equation}$")
    expect_equal(eq(second_equation), "\\label{eq:second_equation} \\tag{2}")
    # Recall both equations
    expect_equal(eq("first_equation"), "$\\eqref{eq:first_equation}$")
    expect_equal(eq("second_equation"), "$\\eqref{eq:second_equation}$")
  })

  # TODO: generate new labels
})
