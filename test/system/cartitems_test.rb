require "application_system_test_case"

class CartitemsTest < ApplicationSystemTestCase
  setup do
    @cartitem = cartitems(:one)
  end

  test "visiting the index" do
    visit cartitems_url
    assert_selector "h1", text: "Cartitems"
  end

  test "creating a Cartitem" do
    visit cartitems_url
    click_on "New Cartitem"

    click_on "Create Cartitem"

    assert_text "Cartitem was successfully created"
    click_on "Back"
  end

  test "updating a Cartitem" do
    visit cartitems_url
    click_on "Edit", match: :first

    click_on "Update Cartitem"

    assert_text "Cartitem was successfully updated"
    click_on "Back"
  end

  test "destroying a Cartitem" do
    visit cartitems_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cartitem was successfully destroyed"
  end
end
