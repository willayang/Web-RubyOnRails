require 'test_helper'

class CustomerServiceControllerTest < ActionDispatch::IntegrationTest
  test "should get question" do
    get customer_service_question_url
    assert_response :success
  end

  test "should get contact" do
    get customer_service_contact_url
    assert_response :success
  end

  test "should get about" do
    get customer_service_about_url
    assert_response :success
  end

end
