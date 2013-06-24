require 'test_helper'

class InformacoesGedControllerTest < ActionController::TestCase
  setup do
    @informacao_ged = informacoes_ged(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:informacoes_ged)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create informacao_ged" do
    assert_difference('InformacaoGed.count') do
      post :create, informacao_ged: { documentos_indexados: @informacao_ged.documentos_indexados, hospedado_sepog: @informacao_ged.hospedado_sepog, numero_digitalizacao: @informacao_ged.numero_digitalizacao, processo_digitalizacao: @informacao_ged.processo_digitalizacao }
    end

    assert_redirected_to informacao_ged_path(assigns(:informacao_ged))
  end

  test "should show informacao_ged" do
    get :show, id: @informacao_ged
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @informacao_ged
    assert_response :success
  end

  test "should update informacao_ged" do
    patch :update, id: @informacao_ged, informacao_ged: { documentos_indexados: @informacao_ged.documentos_indexados, hospedado_sepog: @informacao_ged.hospedado_sepog, numero_digitalizacao: @informacao_ged.numero_digitalizacao, processo_digitalizacao: @informacao_ged.processo_digitalizacao }
    assert_redirected_to informacao_ged_path(assigns(:informacao_ged))
  end

  test "should destroy informacao_ged" do
    assert_difference('InformacaoGed.count', -1) do
      delete :destroy, id: @informacao_ged
    end

    assert_redirected_to informacoes_ged_path
  end
end
