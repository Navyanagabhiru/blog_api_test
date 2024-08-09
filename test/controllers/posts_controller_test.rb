
**4.2 Write a Controller Test**

Add a simple test to verify the `index` action in `test/controllers/posts_controller_test.rb`:

```ruby
require "test_helper"

class PostsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get posts_url, as: :json
    assert_response :success
  end
end

