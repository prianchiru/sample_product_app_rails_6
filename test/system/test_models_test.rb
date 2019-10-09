require "application_system_test_case"

class TestModelsTest < ApplicationSystemTestCase
  setup do
    @test_model = test_models(:one)
  end

  test "visiting the index" do
    visit test_models_url
    assert_selector "h1", text: "Test Models"
  end

  test "creating a Test model" do
    visit test_models_url
    click_on "New Test Model"

    fill_in "Name", with: @test_model.name
    click_on "Create Test model"

    assert_text "Test model was successfully created"
    click_on "Back"
  end

  test "updating a Test model" do
    visit test_models_url
    click_on "Edit", match: :first

    fill_in "Name", with: @test_model.name
    click_on "Update Test model"

    assert_text "Test model was successfully updated"
    click_on "Back"
  end

  test "destroying a Test model" do
    visit test_models_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Test model was successfully destroyed"
  end
end
