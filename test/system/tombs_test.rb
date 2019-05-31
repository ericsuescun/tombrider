require "application_system_test_case"

class TombsTest < ApplicationSystemTestCase
  setup do
    @tomb = tombs(:one)
  end

  test "visiting the index" do
    visit tombs_url
    assert_selector "h1", text: "Tombs"
  end

  test "creating a Tomb" do
    visit tombs_url
    click_on "New Tomb"

    fill_in "Area", with: @tomb.area
    fill_in "Capacity", with: @tomb.capacity
    fill_in "Code", with: @tomb.code
    fill_in "Decimal", with: @tomb.decimal
    fill_in "Description", with: @tomb.description
    fill_in "Entity", with: @tomb.entity_id
    fill_in "Expdate", with: @tomb.expdate
    fill_in "Location", with: @tomb.location
    fill_in "Notes", with: @tomb.notes
    fill_in "Price", with: @tomb.price
    check "Public" if @tomb.public
    fill_in "Title", with: @tomb.title
    fill_in "Type", with: @tomb.type
    fill_in "User", with: @tomb.user_id
    click_on "Create Tomb"

    assert_text "Tomb was successfully created"
    click_on "Back"
  end

  test "updating a Tomb" do
    visit tombs_url
    click_on "Edit", match: :first

    fill_in "Area", with: @tomb.area
    fill_in "Capacity", with: @tomb.capacity
    fill_in "Code", with: @tomb.code
    fill_in "Decimal", with: @tomb.decimal
    fill_in "Description", with: @tomb.description
    fill_in "Entity", with: @tomb.entity_id
    fill_in "Expdate", with: @tomb.expdate
    fill_in "Location", with: @tomb.location
    fill_in "Notes", with: @tomb.notes
    fill_in "Price", with: @tomb.price
    check "Public" if @tomb.public
    fill_in "Title", with: @tomb.title
    fill_in "Type", with: @tomb.type
    fill_in "User", with: @tomb.user_id
    click_on "Update Tomb"

    assert_text "Tomb was successfully updated"
    click_on "Back"
  end

  test "destroying a Tomb" do
    visit tombs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tomb was successfully destroyed"
  end
end
