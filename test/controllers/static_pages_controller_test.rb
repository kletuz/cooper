require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest


  test "should get root" do
    get root_path
    assert_response :success
  end

  test "should get home" do
    get home_path
    assert_response :success
    assert_select "title", "COOPER"
  end

  test "should get instrucciones" do
    get instrucciones_path
    assert_response :success
    assert_select "title", "Instrucciones | COOPER"
  end

  test "should get resultados" do
    get resultados_path
    assert_response :success
    assert_select "title", "Resultados | COOPER"
  end

  test "should get contacto" do
    get contacto_path
    assert_response :success
    assert_select "title", "Contacto | COOPER"
  end

end
