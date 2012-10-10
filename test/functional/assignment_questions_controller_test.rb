require 'test_helper'

class AssignmentQuestionsControllerTest < ActionController::TestCase
  setup do
    @assignment_question = assignment_questions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:assignment_questions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create assignment_question" do
    assert_difference('AssignmentQuestion.count') do
      post :create, assignment_question: @assignment_question.attributes
    end

    assert_redirected_to assignment_question_path(assigns(:assignment_question))
  end

  test "should show assignment_question" do
    get :show, id: @assignment_question.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @assignment_question.to_param
    assert_response :success
  end

  test "should update assignment_question" do
    put :update, id: @assignment_question.to_param, assignment_question: @assignment_question.attributes
    assert_redirected_to assignment_question_path(assigns(:assignment_question))
  end

  test "should destroy assignment_question" do
    assert_difference('AssignmentQuestion.count', -1) do
      delete :destroy, id: @assignment_question.to_param
    end

    assert_redirected_to assignment_questions_path
  end
end
