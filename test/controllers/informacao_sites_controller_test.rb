require 'test_helper'

class InformacaoSitesControllerTest < ActionController::TestCase
  setup do
    @informacao_site = informacao_sites(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:informacao_sites)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create informacao_site" do
    assert_difference('InformacaoSite.count') do
      post :create, informacao_site: { local_hospedado: @informacao_site.local_hospedado, possui_site: @informacao_site.possui_site, responsavel_tecnico: @informacao_site.responsavel_tecnico, servicos_oferecidos: @informacao_site.servicos_oferecidos }
    end

    assert_redirected_to informacao_site_path(assigns(:informacao_site))
  end

  test "should show informacao_site" do
    get :show, id: @informacao_site
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @informacao_site
    assert_response :success
  end

  test "should update informacao_site" do
    patch :update, id: @informacao_site, informacao_site: { local_hospedado: @informacao_site.local_hospedado, possui_site: @informacao_site.possui_site, responsavel_tecnico: @informacao_site.responsavel_tecnico, servicos_oferecidos: @informacao_site.servicos_oferecidos }
    assert_redirected_to informacao_site_path(assigns(:informacao_site))
  end

  test "should destroy informacao_site" do
    assert_difference('InformacaoSite.count', -1) do
      delete :destroy, id: @informacao_site
    end

    assert_redirected_to informacao_sites_path
  end
end
