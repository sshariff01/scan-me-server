require 'test_helper'

class BarcodeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get barcode_index_url
    assert_response :success
  end

end
