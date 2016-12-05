require 'test_helper'

class AtoresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ator = atores(:one)
  end

  test "should get index" do
    get atores_url
    assert_response :success
  end

  test "should get new" do
    get new_ator_url
    assert_response :success
  end

  test "should create ator" do
    assert_difference('Ator.count') do
      post atores_url, params: { ator: { nome: @ator.nome, sexo: @ator.sexo } }
    end

    assert_redirected_to ator_url(Ator.last)
  end

  test "should show ator" do
    get ator_url(@ator)
    assert_response :success
  end

  test "should get edit" do
    get edit_ator_url(@ator)
    assert_response :success
  end

  test "should update ator" do
    patch ator_url(@ator), params: { ator: { nome: @ator.nome, sexo: @ator.sexo } }
    assert_redirected_to ator_url(@ator)
  end

  test "should destroy ator" do
    assert_difference('Ator.count', -1) do
      delete ator_url(@ator)
    end

    assert_redirected_to atores_url
  end
end
