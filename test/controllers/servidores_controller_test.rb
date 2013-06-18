require 'test_helper'

class ServidoresControllerTest < ActionController::TestCase
  setup do
    @servidor = servidores(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:servidores)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create servidor" do
    assert_difference('Servidor.count') do
      post :create, servidor: { arquitetura: @servidor.arquitetura, descricao: @servidor.descricao, dominio: @servidor.dominio, fabricante: @servidor.fabricante, hd: @servidor.hd, hostname: @servidor.hostname, modelo: @servidor.modelo, processador: @servidor.processador, ram: @servidor.ram, servicos: @servidor.servicos, sistema_operacional: @servidor.sistema_operacional }
    end

    assert_redirected_to servidor_path(assigns(:servidor))
  end

  test "should show servidor" do
    get :show, id: @servidor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @servidor
    assert_response :success
  end

  test "should update servidor" do
    patch :update, id: @servidor, servidor: { arquitetura: @servidor.arquitetura, descricao: @servidor.descricao, dominio: @servidor.dominio, fabricante: @servidor.fabricante, hd: @servidor.hd, hostname: @servidor.hostname, modelo: @servidor.modelo, processador: @servidor.processador, ram: @servidor.ram, servicos: @servidor.servicos, sistema_operacional: @servidor.sistema_operacional }
    assert_redirected_to servidor_path(assigns(:servidor))
  end

  test "should destroy servidor" do
    assert_difference('Servidor.count', -1) do
      delete :destroy, id: @servidor
    end

    assert_redirected_to servidores_path
  end
end
