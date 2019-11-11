require "application_system_test_case"

class ClocksTest < ApplicationSystemTestCase
  setup do
    @clock = clocks(:one)
  end

  test "visiting the index" do
    visit clocks_url
    assert_selector "h1", text: "Clocks"
  end

  test "creating a Clock" do
    visit clocks_url
    click_on "New Clock"

    fill_in "Action", with: @clock.action
    fill_in "Details", with: @clock.details
    fill_in "First name", with: @clock.first_name
    fill_in "Last name", with: @clock.last_name
    click_on "Create Clock"

    assert_text "Clock was successfully created"
    click_on "Back"
  end

  test "updating a Clock" do
    visit clocks_url
    click_on "Edit", match: :first

    fill_in "Action", with: @clock.action
    fill_in "Details", with: @clock.details
    fill_in "First name", with: @clock.first_name
    fill_in "Last name", with: @clock.last_name
    click_on "Update Clock"

    assert_text "Clock was successfully updated"
    click_on "Back"
  end

  test "destroying a Clock" do
    visit clocks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Clock was successfully destroyed"
  end
end
