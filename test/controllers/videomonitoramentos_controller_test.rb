require 'test_helper'

class VideomonitoramentosControllerTest < ActionController::TestCase
  setup do
    @videomonitoramento = videomonitoramentos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:videomonitoramentos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create videomonitoramento" do
    assert_difference('Videomonitoramento.count') do
      post :create, videomonitoramento: { atual_videomonitoramento: @videomonitoramento.atual_videomonitoramento, pertencente_a: @videomonitoramento.pertencente_a, possui_cameras: @videomonitoramento.possui_cameras, previsto_videomonitoramento: @videomonitoramento.previsto_videomonitoramento }
    end

    assert_redirected_to videomonitoramento_path(assigns(:videomonitoramento))
  end

  test "should show videomonitoramento" do
    get :show, id: @videomonitoramento
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @videomonitoramento
    assert_response :success
  end

  test "should update videomonitoramento" do
    patch :update, id: @videomonitoramento, videomonitoramento: { atual_videomonitoramento: @videomonitoramento.atual_videomonitoramento, pertencente_a: @videomonitoramento.pertencente_a, possui_cameras: @videomonitoramento.possui_cameras, previsto_videomonitoramento: @videomonitoramento.previsto_videomonitoramento }
    assert_redirected_to videomonitoramento_path(assigns(:videomonitoramento))
  end

  test "should destroy videomonitoramento" do
    assert_difference('Videomonitoramento.count', -1) do
      delete :destroy, id: @videomonitoramento
    end

    assert_redirected_to videomonitoramentos_path
  end
end
