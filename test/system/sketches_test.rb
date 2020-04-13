require "application_system_test_case"

class SketchesTest < ApplicationSystemTestCase
  setup do
    @sketch = sketches(:one)
  end

  test "visiting the index" do
    visit sketches_url
    assert_selector "h1", text: "Sketches"
  end

  test "creating a Sketch" do
    visit sketches_url
    click_on "New Sketch"

    fill_in "Artist", with: @sketch.artist
    fill_in "Code", with: @sketch.code
    fill_in "Description", with: @sketch.description
    click_on "Create Sketch"

    assert_text "Sketch was successfully created"
    click_on "Back"
  end

  test "updating a Sketch" do
    visit sketches_url
    click_on "Edit", match: :first

    fill_in "Artist", with: @sketch.artist
    fill_in "Code", with: @sketch.code
    fill_in "Description", with: @sketch.description
    click_on "Update Sketch"

    assert_text "Sketch was successfully updated"
    click_on "Back"
  end

  test "destroying a Sketch" do
    visit sketches_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sketch was successfully destroyed"
  end
end
