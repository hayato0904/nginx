require "application_system_test_case"

class NginxtestsTest < ApplicationSystemTestCase
  setup do
    @nginxtest = nginxtests(:one)
  end

  test "visiting the index" do
    visit nginxtests_url
    assert_selector "h1", text: "Nginxtests"
  end

  test "creating a Nginxtest" do
    visit nginxtests_url
    click_on "New Nginxtest"

    fill_in "Content", with: @nginxtest.content
    fill_in "Title", with: @nginxtest.title
    click_on "Create Nginxtest"

    assert_text "Nginxtest was successfully created"
    click_on "Back"
  end

  test "updating a Nginxtest" do
    visit nginxtests_url
    click_on "Edit", match: :first

    fill_in "Content", with: @nginxtest.content
    fill_in "Title", with: @nginxtest.title
    click_on "Update Nginxtest"

    assert_text "Nginxtest was successfully updated"
    click_on "Back"
  end

  test "destroying a Nginxtest" do
    visit nginxtests_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Nginxtest was successfully destroyed"
  end
end
