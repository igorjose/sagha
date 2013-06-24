require 'test_helper'

class TreinamentosTiControllerTest < ActionController::TestCase
  setup do
    @treinamento_ti = treinamentos_ti(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:treinamentos_ti)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create treinamento_ti" do
    assert_difference('TreinamentoTi.count') do
      post :create, treinamento_ti: { empresa: @treinamento_ti.empresa, qtd_pessoa: @treinamento_ti.qtd_pessoa, treinamento: @treinamento_ti.treinamento }
    end

    assert_redirected_to treinamento_ti_path(assigns(:treinamento_ti))
  end

  test "should show treinamento_ti" do
    get :show, id: @treinamento_ti
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @treinamento_ti
    assert_response :success
  end

  test "should update treinamento_ti" do
    patch :update, id: @treinamento_ti, treinamento_ti: { empresa: @treinamento_ti.empresa, qtd_pessoa: @treinamento_ti.qtd_pessoa, treinamento: @treinamento_ti.treinamento }
    assert_redirected_to treinamento_ti_path(assigns(:treinamento_ti))
  end

  test "should destroy treinamento_ti" do
    assert_difference('TreinamentoTi.count', -1) do
      delete :destroy, id: @treinamento_ti
    end

    assert_redirected_to treinamentos_ti_path
  end
end
