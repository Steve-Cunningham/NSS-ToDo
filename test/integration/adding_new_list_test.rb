require 'test_helper'

class AddingNewListTest < ActionDispatch::IntegrationTest
  test "adding_new_list" do
    visit '/'
    click_link 'New List'
    fill_in 'List', with: 'new list'
    click_button 'Add List'
    assert_include page.body, "List added"
    visit '/lists'
    assert_include page.body, 'new list'
  end

end