require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  setup do
    @product = products(:one)
  end

  test "visiting the index" do
    visit products_url
    assert_selector "h1", text: "Products"
  end

  test "should create product" do
    visit products_url
    click_on "New product"

    fill_in "Consists of", with: @product.consists_of
    fill_in "Data", with: @product.data
    fill_in "Description", with: @product.description
    fill_in "Group product", with: @product.group_product
    fill_in "Id s", with: @product.id_s
    fill_in "Name", with: @product.name
    fill_in "Price", with: @product.price
    fill_in "Sten on", with: @product.sten_on
    fill_in "Tags", with: @product.tags
    click_on "Create Product"

    assert_text "Product was successfully created"
    click_on "Back"
  end

  test "should update Product" do
    visit product_url(@product)
    click_on "Edit this product", match: :first

    fill_in "Consists of", with: @product.consists_of
    fill_in "Data", with: @product.data
    fill_in "Description", with: @product.description
    fill_in "Group product", with: @product.group_product
    fill_in "Id s", with: @product.id_s
    fill_in "Name", with: @product.name
    fill_in "Price", with: @product.price
    fill_in "Sten on", with: @product.sten_on
    fill_in "Tags", with: @product.tags
    click_on "Update Product"

    assert_text "Product was successfully updated"
    click_on "Back"
  end

  test "should destroy Product" do
    visit product_url(@product)
    click_on "Destroy this product", match: :first

    assert_text "Product was successfully destroyed"
  end
end
