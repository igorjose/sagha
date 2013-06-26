require 'test_helper'

class DemandaVideomonitoramentosControllerTest < ActionController::TestCase
  setup do
    @demanda_videomonitoramento = demanda_videomonitoramentos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:demanda_videomonitoramentos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create demanda_videomonitoramento" do
    assert_difference('DemandaVideomonitoramento.count') do
      post :create, demanda_videomonitoramento: { infra_monitoramento: @demanda_videomonitoramento.infra_monitoramento, obj_videomonitoramento: @demanda_videomonitoramento.obj_videomonitoramento, previsto_orcamento: @demanda_videomonitoramento.previsto_orcamento, qtd_camera: @demanda_videomonitoramento.qtd_camera }
    end

    assert_redirected_to demanda_videomonitoramento_path(assigns(:demanda_videomonitoramento))
  end

  test "should show demanda_videomonitoramento" do
    get :show, id: @demanda_videomonitoramento
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @demanda_videomonitoramento
    assert_response :success
  end

  test "should update demanda_videomonitoramento" do
    patch :update, id: @demanda_videomonitoramento, demanda_videomonitoramento: { infra_monitoramento: @demanda_videomonitoramento.infra_monitoramento, obj_videomonitoramento: @demanda_videomonitoramento.obj_videomonitoramento, previsto_orcamento: @demanda_videomonitoramento.previsto_orcamento, qtd_camera: @demanda_videomonitoramento.qtd_camera }
    assert_redirected_to demanda_videomonitoramento_path(assigns(:demanda_videomonitoramento))
  end

  test "should destroy demanda_videomonitoramento" do
    assert_difference('DemandaVideomonitoramento.count', -1) do
      delete :destroy, id: @demanda_videomonitoramento
    end

    assert_redirected_to demanda_videomonitoramentos_path
  end
end
