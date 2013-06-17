require 'test_helper'

class OrgaoSistemasPropriosControllerTest < ActionController::TestCase
  setup do
    @orgao_sistema_proprio = orgao_sistemas_proprios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:orgao_sistemas_proprios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create orgao_sistema_proprio" do
    assert_difference('OrgaoSistemaProprio.count') do
      post :create, orgao_sistema_proprio: { banco: @orgao_sistema_proprio.banco, cod_fonte: @orgao_sistema_proprio.cod_fonte, descricao: @orgao_sistema_proprio.descricao, descricao_backup: @orgao_sistema_proprio.descricao_backup, descricao_cod_fonte: @orgao_sistema_proprio.descricao_cod_fonte, descricao_documentos: @orgao_sistema_proprio.descricao_documentos, descricao_manual: @orgao_sistema_proprio.descricao_manual, desenvolvedor: @orgao_sistema_proprio.desenvolvedor, existe_ambiente_homologacao: @orgao_sistema_proprio.existe_ambiente_homologacao, existe_backup: @orgao_sistema_proprio.existe_backup, existe_backup_diferenciado: @orgao_sistema_proprio.existe_backup_diferenciado, existe_padroes: @orgao_sistema_proprio.existe_padroes, linguagem: @orgao_sistema_proprio.linguagem, linguagem_banco: @orgao_sistema_proprio.linguagem_banco, lugar_hospedado: @orgao_sistema_proprio.lugar_hospedado, manutencao: @orgao_sistema_proprio.manutencao, nivel_confidencialidade: @orgao_sistema_proprio.nivel_confidencialidade, nivel_integracao: @orgao_sistema_proprio.nivel_integracao, nome: @orgao_sistema_proprio.nome, nr_usuario: @orgao_sistema_proprio.nr_usuario, possui_documentos: @orgao_sistema_proprio.possui_documentos, possui_manual: @orgao_sistema_proprio.possui_manual, responsavel_banco: @orgao_sistema_proprio.responsavel_banco, tem_licenca: @orgao_sistema_proprio.tem_licenca, terceiros_acessando: @orgao_sistema_proprio.terceiros_acessando }
    end

    assert_redirected_to orgao_sistema_proprio_path(assigns(:orgao_sistema_proprio))
  end

  test "should show orgao_sistema_proprio" do
    get :show, id: @orgao_sistema_proprio
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @orgao_sistema_proprio
    assert_response :success
  end

  test "should update orgao_sistema_proprio" do
    patch :update, id: @orgao_sistema_proprio, orgao_sistema_proprio: { banco: @orgao_sistema_proprio.banco, cod_fonte: @orgao_sistema_proprio.cod_fonte, descricao: @orgao_sistema_proprio.descricao, descricao_backup: @orgao_sistema_proprio.descricao_backup, descricao_cod_fonte: @orgao_sistema_proprio.descricao_cod_fonte, descricao_documentos: @orgao_sistema_proprio.descricao_documentos, descricao_manual: @orgao_sistema_proprio.descricao_manual, desenvolvedor: @orgao_sistema_proprio.desenvolvedor, existe_ambiente_homologacao: @orgao_sistema_proprio.existe_ambiente_homologacao, existe_backup: @orgao_sistema_proprio.existe_backup, existe_backup_diferenciado: @orgao_sistema_proprio.existe_backup_diferenciado, existe_padroes: @orgao_sistema_proprio.existe_padroes, linguagem: @orgao_sistema_proprio.linguagem, linguagem_banco: @orgao_sistema_proprio.linguagem_banco, lugar_hospedado: @orgao_sistema_proprio.lugar_hospedado, manutencao: @orgao_sistema_proprio.manutencao, nivel_confidencialidade: @orgao_sistema_proprio.nivel_confidencialidade, nivel_integracao: @orgao_sistema_proprio.nivel_integracao, nome: @orgao_sistema_proprio.nome, nr_usuario: @orgao_sistema_proprio.nr_usuario, possui_documentos: @orgao_sistema_proprio.possui_documentos, possui_manual: @orgao_sistema_proprio.possui_manual, responsavel_banco: @orgao_sistema_proprio.responsavel_banco, tem_licenca: @orgao_sistema_proprio.tem_licenca, terceiros_acessando: @orgao_sistema_proprio.terceiros_acessando }
    assert_redirected_to orgao_sistema_proprio_path(assigns(:orgao_sistema_proprio))
  end

  test "should destroy orgao_sistema_proprio" do
    assert_difference('OrgaoSistemaProprio.count', -1) do
      delete :destroy, id: @orgao_sistema_proprio
    end

    assert_redirected_to orgao_sistemas_proprios_path
  end
end
