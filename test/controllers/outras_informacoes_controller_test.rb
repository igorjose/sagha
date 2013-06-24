require 'test_helper'

class OutrasInformacoesControllerTest < ActionController::TestCase
  setup do
    @outra_informacao = outras_informacoes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:outras_informacoes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create outra_informacao" do
    assert_difference('OutraInformacao.count') do
      post :create, outra_informacao: { duvidas_levantamento: @outra_informacao.duvidas_levantamento, grau_satisfacao: @outra_informacao.grau_satisfacao, justificar_recursos: @outra_informacao.justificar_recursos, principais_necessidades: @outra_informacao.principais_necessidades, recursos_suficientes: @outra_informacao.recursos_suficientes }
    end

    assert_redirected_to outra_informacao_path(assigns(:outra_informacao))
  end

  test "should show outra_informacao" do
    get :show, id: @outra_informacao
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @outra_informacao
    assert_response :success
  end

  test "should update outra_informacao" do
    patch :update, id: @outra_informacao, outra_informacao: { duvidas_levantamento: @outra_informacao.duvidas_levantamento, grau_satisfacao: @outra_informacao.grau_satisfacao, justificar_recursos: @outra_informacao.justificar_recursos, principais_necessidades: @outra_informacao.principais_necessidades, recursos_suficientes: @outra_informacao.recursos_suficientes }
    assert_redirected_to outra_informacao_path(assigns(:outra_informacao))
  end

  test "should destroy outra_informacao" do
    assert_difference('OutraInformacao.count', -1) do
      delete :destroy, id: @outra_informacao
    end

    assert_redirected_to outras_informacoes_path
  end
end
