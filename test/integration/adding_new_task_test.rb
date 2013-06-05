require 'test_helper'

class AddingNewTaskTest < ActionDispatch::IntegrationTest
  test "adding_new_task" do
    visit '/'
    click_link 'New Task'
    fill_in 'Task', with: 'first task'
    click_button 'Add Task'
    # assert_include page.body, "Task added"
    visit '/tasks'
    assert_include page.body, 'first task'
  end
end