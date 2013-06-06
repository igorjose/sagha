require 'test_helper'

class OrgaosControllerTest < ActionController::TestCase
  setup do
    @orgao = orgaos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:orgaos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create orgao" do
    assert_difference('Orgao.count') do
      post :create, orgao: { atribuicoes_orgao: @orgao.atribuicoes_orgao, bairro: @orgao.bairro, cep: @orgao.cep, email_secretaria: @orgao.email_secretaria, email_secretario: @orgao.email_secretario, endereco: @orgao.endereco, nome: @orgao.nome, nome_secretaria: @orgao.nome_secretaria, secretario: @orgao.secretario, telefone: @orgao.telefone, telefone_secretaria: @orgao.telefone_secretaria, tipo: @orgao.tipo, vinculo: @orgao.vinculo }
    end

    assert_redirected_to orgao_path(assigns(:orgao))
  end

  test "should show orgao" do
    get :show, id: @orgao
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @orgao
    assert_response :success
  end

  test "should update orgao" do
    patch :update, id: @orgao, orgao: { atribuicoes_orgao: @orgao.atribuicoes_orgao, bairro: @orgao.bairro, cep: @orgao.cep, email_secretaria: @orgao.email_secretaria, email_secretario: @orgao.email_secretario, endereco: @orgao.endereco, nome: @orgao.nome, nome_secretaria: @orgao.nome_secretaria, secretario: @orgao.secretario, telefone: @orgao.telefone, telefone_secretaria: @orgao.telefone_secretaria, tipo: @orgao.tipo, vinculo: @orgao.vinculo }
    assert_redirected_to orgao_path(assigns(:orgao))
  end

  test "should destroy orgao" do
    assert_difference('Orgao.count', -1) do
      delete :destroy, id: @orgao
    end

    assert_redirected_to orgaos_path
  end
end
