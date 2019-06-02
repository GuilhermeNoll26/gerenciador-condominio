require "application_system_test_case"

class ApartamentosTest < ApplicationSystemTestCase
  setup do
    @apartamento = apartamentos(:one)
  end

  test "visiting the index" do
    visit apartamentos_url
    assert_selector "h1", text: "Apartamentos"
  end

  test "creating a Apartamento" do
    visit apartamentos_url
    click_on "New Apartamento"

    fill_in "Codapto", with: @apartamento.codApto
    fill_in "Codinquilino", with: @apartamento.codInquilino
    fill_in "Codproprietario", with: @apartamento.codProprietario
    fill_in "Estadoocupacao", with: @apartamento.estadoOcupacao
    fill_in "Numeroapto", with: @apartamento.numeroApto
    click_on "Create Apartamento"

    assert_text "Apartamento was successfully created"
    click_on "Back"
  end

  test "updating a Apartamento" do
    visit apartamentos_url
    click_on "Edit", match: :first

    fill_in "Codapto", with: @apartamento.codApto
    fill_in "Codinquilino", with: @apartamento.codInquilino
    fill_in "Codproprietario", with: @apartamento.codProprietario
    fill_in "Estadoocupacao", with: @apartamento.estadoOcupacao
    fill_in "Numeroapto", with: @apartamento.numeroApto
    click_on "Update Apartamento"

    assert_text "Apartamento was successfully updated"
    click_on "Back"
  end

  test "destroying a Apartamento" do
    visit apartamentos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Apartamento was successfully destroyed"
  end
end
