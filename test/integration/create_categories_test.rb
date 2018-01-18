require 'test_helper'

class CreateCategoriesTest < ActionDispatch::IntegrationTest
  def setup
    @user = User.create(username: 'Andrew', email: 'andrew@admin.com', password: 'password', admin: true)
  end

  test 'get new category form and create category' do
    sign_in_as(@user, 'password')
    # Go to new category path
    get new_category_path
    # Getting new category
    assert_template 'categories/new'
    # Post to new form with new category 'sports'
    assert_difference 'Category.count', 1 do
      post categories_path, params: { category: { name: 'sports' }}
      follow_redirect!
    end
    # Redirect to index page
    assert_template 'categories/index'
    # Index page should have sports displayed on page
    assert_match 'sports', response.body
  end

  test 'invalid category submission results in failure' do
    sign_in_as(@user, 'password')
    # Go to new category path
    get new_category_path
    # Getting new category
    assert_template 'categories/new'
    # Post to new form with new category 'sports'
    assert_no_difference 'Category.count' do
      post categories_path, params: { category: { name: ' ' }}
    end
    # Redirect to index page
    assert_template 'categories/new'
    # Index page should have sports displayed on page
    assert_select 'div.card-header'
    assert_select 'div.card-body'
  end
end
