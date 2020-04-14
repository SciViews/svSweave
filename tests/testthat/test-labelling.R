context("labelling")

describe("figure, tables and equations labelling", {

  it("creates sequential figure numbers", {
    # Figure 1
    expect_equal(fig("first-figure", "Some text"), "_**Figure 1:** Some text_")
    expect_equal(fig("first-figure"), "1")
    # Figure 2
    expect_equal(fig("second-figure"), "2")
    expect_equal(fig("second-figure", "Text"), "_**Figure 2:** Text_")
    # Recall both figures
    expect_equal(fig("first-figure"), "1")
    expect_equal(fig("second-figure"), "2")
  })

  it("creates sequential table numbers", {
    # Figure 1
    expect_equal(tab("first-table", "Some text"), "_**Table 1:** Some text_")
    expect_equal(tab("first-table"), "1")
    # Figure 2
    expect_equal(tab("second-table"), "2")
    expect_equal(tab("second-table", "Text"), "_**Table 2:** Text_")
    # Recall both figures
    expect_equal(tab("first-table"), "1")
    expect_equal(tab("second-table"), "2")
  })

  it("creates sequential equation numbers", {
    # Figure 1
    expect_equal(eq("first-equation", ""), "(@first-equation)")
    expect_equal(eq("first-equation"), "@first-equation")
    # Figure 2
    expect_equal(eq("second-equation"), "@second-equation")
    expect_equal(eq("second-equation", ""), "(@second-equation)")
    # Recall both figures
    expect_equal(eq("first-equation"), "@first-equation")
    expect_equal(eq("second-equation"), "@second-equation")
  })

  # TODO: generate new labels
})
