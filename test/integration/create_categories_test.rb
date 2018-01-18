require 'test_helper'

class CreateCategoriesTest < ActionDispatch::IntegrationTest
  test 'get new category form and create category' do
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
end
