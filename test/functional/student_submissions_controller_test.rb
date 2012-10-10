require 'test_helper'

class StudentSubmissionsControllerTest < ActionController::TestCase
  setup do
    @student_submission = student_submissions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:student_submissions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create student_submission" do
    assert_difference('StudentSubmission.count') do
      post :create, student_submission: @student_submission.attributes
    end

    assert_redirected_to student_submission_path(assigns(:student_submission))
  end

  test "should show student_submission" do
    get :show, id: @student_submission.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @student_submission.to_param
    assert_response :success
  end

  test "should update student_submission" do
    put :update, id: @student_submission.to_param, student_submission: @student_submission.attributes
    assert_redirected_to student_submission_path(assigns(:student_submission))
  end

  test "should destroy student_submission" do
    assert_difference('StudentSubmission.count', -1) do
      delete :destroy, id: @student_submission.to_param
    end

    assert_redirected_to student_submissions_path
  end
end
