require 'test_helper'

class InformacoesPessoaisControllerTest < ActionController::TestCase
  setup do
    @informacao_pessoal = informacoes_pessoais(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:informacoes_pessoais)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create informacao_pessoal" do
    assert_difference('InformacaoPessoal.count') do
      post :create, informacao_pessoal: { cargo_id: @informacao_pessoal.cargo_id, celular_cooperativo: @informacao_pessoal.celular_cooperativo, celular_pessoal: @informacao_pessoal.celular_pessoal, conhecimentos_adicionais: @informacao_pessoal.conhecimentos_adicionais, cursos: @informacao_pessoal.cursos, email_cooperativo: @informacao_pessoal.email_cooperativo, email_pessoal: @informacao_pessoal.email_pessoal, experiencia: @informacao_pessoal.experiencia, mini_curriculo: @informacao_pessoal.mini_curriculo, nome: @informacao_pessoal.nome, observacoes: @informacao_pessoal.observacoes, pode_renovar: @informacao_pessoal.pode_renovar, telefone: @informacao_pessoal.telefone, tipo_contratacao: @informacao_pessoal.tipo_contratacao, vigencia_contrato: @informacao_pessoal.vigencia_contrato }
    end

    assert_redirected_to informacao_pessoal_path(assigns(:informacao_pessoal))
  end

  test "should show informacao_pessoal" do
    get :show, id: @informacao_pessoal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @informacao_pessoal
    assert_response :success
  end

  test "should update informacao_pessoal" do
    patch :update, id: @informacao_pessoal, informacao_pessoal: { cargo_id: @informacao_pessoal.cargo_id, celular_cooperativo: @informacao_pessoal.celular_cooperativo, celular_pessoal: @informacao_pessoal.celular_pessoal, conhecimentos_adicionais: @informacao_pessoal.conhecimentos_adicionais, cursos: @informacao_pessoal.cursos, email_cooperativo: @informacao_pessoal.email_cooperativo, email_pessoal: @informacao_pessoal.email_pessoal, experiencia: @informacao_pessoal.experiencia, mini_curriculo: @informacao_pessoal.mini_curriculo, nome: @informacao_pessoal.nome, observacoes: @informacao_pessoal.observacoes, pode_renovar: @informacao_pessoal.pode_renovar, telefone: @informacao_pessoal.telefone, tipo_contratacao: @informacao_pessoal.tipo_contratacao, vigencia_contrato: @informacao_pessoal.vigencia_contrato }
    assert_redirected_to informacao_pessoal_path(assigns(:informacao_pessoal))
  end

  test "should destroy informacao_pessoal" do
    assert_difference('InformacaoPessoal.count', -1) do
      delete :destroy, id: @informacao_pessoal
    end

    assert_redirected_to informacoes_pessoais_path
  end
end
