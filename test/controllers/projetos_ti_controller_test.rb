require 'test_helper'

class ProjetosTiControllerTest < ActionController::TestCase
  setup do
    @projeto_ti = projetos_ti(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:projetos_ti)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create projeto_ti" do
    assert_difference('ProjetoTi.count') do
      post :create, projeto_ti: { coordenador_tecnico: @projeto_ti.coordenador_tecnico, descricao: @projeto_ti.descricao, gerente_projeto: @projeto_ti.gerente_projeto, nome_projeto: @projeto_ti.nome_projeto, observacao: @projeto_ti.observacao, prazo: @projeto_ti.prazo, previsto_orcamento: @projeto_ti.previsto_orcamento, valor: @projeto_ti.valor }
    end

    assert_redirected_to projeto_ti_path(assigns(:projeto_ti))
  end

  test "should show projeto_ti" do
    get :show, id: @projeto_ti
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @projeto_ti
    assert_response :success
  end

  test "should update projeto_ti" do
    patch :update, id: @projeto_ti, projeto_ti: { coordenador_tecnico: @projeto_ti.coordenador_tecnico, descricao: @projeto_ti.descricao, gerente_projeto: @projeto_ti.gerente_projeto, nome_projeto: @projeto_ti.nome_projeto, observacao: @projeto_ti.observacao, prazo: @projeto_ti.prazo, previsto_orcamento: @projeto_ti.previsto_orcamento, valor: @projeto_ti.valor }
    assert_redirected_to projeto_ti_path(assigns(:projeto_ti))
  end

  test "should destroy projeto_ti" do
    assert_difference('ProjetoTi.count', -1) do
      delete :destroy, id: @projeto_ti
    end

    assert_redirected_to projetos_ti_path
  end
end
