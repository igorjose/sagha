require 'test_helper'

class OrgaoEquipamentosControllerTest < ActionController::TestCase
  setup do
    @orgao_equipamento = orgao_equipamentos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:orgao_equipamentos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create orgao_equipamento" do
    assert_difference('OrgaoEquipamento.count') do
      post :create, orgao_equipamento: { descricao_defeito: @orgao_equipamento.descricao_defeito, equipamento_id: @orgao_equipamento.equipamento_id, orgao_id: @orgao_equipamento.orgao_id, qtd_alugado: @orgao_equipamento.qtd_alugado, qtd_defeito: @orgao_equipamento.qtd_defeito, qtd_emprestado: @orgao_equipamento.qtd_emprestado, qtd_extra: @orgao_equipamento.qtd_extra, qtd_funcionando: @orgao_equipamento.qtd_funcionando, qtd_garantia: @orgao_equipamento.qtd_garantia }
    end

    assert_redirected_to orgao_equipamento_path(assigns(:orgao_equipamento))
  end

  test "should show orgao_equipamento" do
    get :show, id: @orgao_equipamento
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @orgao_equipamento
    assert_response :success
  end

  test "should update orgao_equipamento" do
    patch :update, id: @orgao_equipamento, orgao_equipamento: { descricao_defeito: @orgao_equipamento.descricao_defeito, equipamento_id: @orgao_equipamento.equipamento_id, orgao_id: @orgao_equipamento.orgao_id, qtd_alugado: @orgao_equipamento.qtd_alugado, qtd_defeito: @orgao_equipamento.qtd_defeito, qtd_emprestado: @orgao_equipamento.qtd_emprestado, qtd_extra: @orgao_equipamento.qtd_extra, qtd_funcionando: @orgao_equipamento.qtd_funcionando, qtd_garantia: @orgao_equipamento.qtd_garantia }
    assert_redirected_to orgao_equipamento_path(assigns(:orgao_equipamento))
  end

  test "should destroy orgao_equipamento" do
    assert_difference('OrgaoEquipamento.count', -1) do
      delete :destroy, id: @orgao_equipamento
    end

    assert_redirected_to orgao_equipamentos_path
  end
end
