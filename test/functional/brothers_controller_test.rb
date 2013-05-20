require 'test_helper'

class BrothersControllerTest < ActionController::TestCase
  setup do
    @brother = brothers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:brothers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create brother" do
    assert_difference('Brother.count') do
      post :create, brother: { addr1: @brother.addr1, addr2: @brother.addr2, birthdate: @brother.birthdate, cellphone: @brother.cellphone, cep: @brother.cep, comphone: @brother.comphone, date1: @brother.date1, date2: @brother.date2, date3: @brother.date3, degree: @brother.degree, name: @brother.name, resphone: @brother.resphone }
    end

    assert_redirected_to brother_path(assigns(:brother))
  end

  test "should show brother" do
    get :show, id: @brother
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @brother
    assert_response :success
  end

  test "should update brother" do
    put :update, id: @brother, brother: { addr1: @brother.addr1, addr2: @brother.addr2, birthdate: @brother.birthdate, cellphone: @brother.cellphone, cep: @brother.cep, comphone: @brother.comphone, date1: @brother.date1, date2: @brother.date2, date3: @brother.date3, degree: @brother.degree, name: @brother.name, resphone: @brother.resphone }
    assert_redirected_to brother_path(assigns(:brother))
  end

  test "should destroy brother" do
    assert_difference('Brother.count', -1) do
      delete :destroy, id: @brother
    end

    assert_redirected_to brothers_path
  end
end
