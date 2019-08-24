require "application_system_test_case"

class ServedCitiesTest < ApplicationSystemTestCase
  setup do
    @served_city = served_cities(:one)
  end

  test "visiting the index" do
    visit served_cities_url
    assert_selector "h1", text: "Served Cities"
  end

  test "creating a Served city" do
    visit served_cities_url
    click_on "New Served City"

    fill_in "Name", with: @served_city.name
    click_on "Create Served city"

    assert_text "Served city was successfully created"
    click_on "Back"
  end

  test "updating a Served city" do
    visit served_cities_url
    click_on "Edit", match: :first

    fill_in "Name", with: @served_city.name
    click_on "Update Served city"

    assert_text "Served city was successfully updated"
    click_on "Back"
  end

  test "destroying a Served city" do
    visit served_cities_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Served city was successfully destroyed"
  end
end
