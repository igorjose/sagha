require 'test_helper'

class OrgaoSistemasControllerTest < ActionController::TestCase
  setup do
    @orgao_sistema = orgao_sistemas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:orgao_sistemas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create orgao_sistema" do
    assert_difference('OrgaoSistema.count') do
      post :create, orgao_sistema: { nivel_implantacao: @orgao_sistema.nivel_implantacao, orgao_id: @orgao_sistema.orgao_id, qtd_cadastro: @orgao_sistema.qtd_cadastro, qtd_consulta: @orgao_sistema.qtd_consulta, sistemas_id: @orgao_sistema.sistemas_id }
    end

    assert_redirected_to orgao_sistema_path(assigns(:orgao_sistema))
  end

  test "should show orgao_sistema" do
    get :show, id: @orgao_sistema
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @orgao_sistema
    assert_response :success
  end

  test "should update orgao_sistema" do
    patch :update, id: @orgao_sistema, orgao_sistema: { nivel_implantacao: @orgao_sistema.nivel_implantacao, orgao_id: @orgao_sistema.orgao_id, qtd_cadastro: @orgao_sistema.qtd_cadastro, qtd_consulta: @orgao_sistema.qtd_consulta, sistemas_id: @orgao_sistema.sistemas_id }
    assert_redirected_to orgao_sistema_path(assigns(:orgao_sistema))
  end

  test "should destroy orgao_sistema" do
    assert_difference('OrgaoSistema.count', -1) do
      delete :destroy, id: @orgao_sistema
    end

    assert_redirected_to orgao_sistemas_path
  end
end
