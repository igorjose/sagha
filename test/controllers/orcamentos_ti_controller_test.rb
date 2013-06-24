require 'test_helper'

class OrcamentosTiControllerTest < ActionController::TestCase
  setup do
    @orcamento_ti = orcamentos_ti(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:orcamentos_ti)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create orcamento_ti" do
    assert_difference('OrcamentoTi.count') do
      post :create, orcamento_ti: { orcamento_ti: @orcamento_ti.orcamento_ti }
    end

    assert_redirected_to orcamento_ti_path(assigns(:orcamento_ti))
  end

  test "should show orcamento_ti" do
    get :show, id: @orcamento_ti
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @orcamento_ti
    assert_response :success
  end

  test "should update orcamento_ti" do
    patch :update, id: @orcamento_ti, orcamento_ti: { orcamento_ti: @orcamento_ti.orcamento_ti }
    assert_redirected_to orcamento_ti_path(assigns(:orcamento_ti))
  end

  test "should destroy orcamento_ti" do
    assert_difference('OrcamentoTi.count', -1) do
      delete :destroy, id: @orcamento_ti
    end

    assert_redirected_to orcamentos_ti_path
  end
end
