require 'test_helper'

class DesktopsControllerTest < ActionController::TestCase
  setup do
    @desktop = desktops(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:desktops)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create desktop" do
    assert_difference('Desktop.count') do
      post :create, desktop: { descricao_defeito: @desktop.descricao_defeito, qtd_defeito: @desktop.qtd_defeito, qtd_emprestado: @desktop.qtd_emprestado, qtd_extra: @desktop.qtd_extra, qtd_funcionando: @desktop.qtd_funcionando, qtd_garantia: @desktop.qtd_garantia, qtd_manutencao: @desktop.qtd_manutencao, qtd_vigencia_contrato: @desktop.qtd_vigencia_contrato }
    end

    assert_redirected_to desktop_path(assigns(:desktop))
  end

  test "should show desktop" do
    get :show, id: @desktop
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @desktop
    assert_response :success
  end

  test "should update desktop" do
    patch :update, id: @desktop, desktop: { descricao_defeito: @desktop.descricao_defeito, qtd_defeito: @desktop.qtd_defeito, qtd_emprestado: @desktop.qtd_emprestado, qtd_extra: @desktop.qtd_extra, qtd_funcionando: @desktop.qtd_funcionando, qtd_garantia: @desktop.qtd_garantia, qtd_manutencao: @desktop.qtd_manutencao, qtd_vigencia_contrato: @desktop.qtd_vigencia_contrato }
    assert_redirected_to desktop_path(assigns(:desktop))
  end

  test "should destroy desktop" do
    assert_difference('Desktop.count', -1) do
      delete :destroy, id: @desktop
    end

    assert_redirected_to desktops_path
  end
end
