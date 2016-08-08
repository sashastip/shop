class Product
  attr_accessor :name, :price, :sku

  def initialize(sku, name, price)
    @name = name
    @price = price
    @sku = sku
  end
end

@ipd = Product.new("ipd", "Super iPad", 549.99)
@mbp = Product.new("mbp", "MacBook", 1399.99)
@atb = Product.new("atb", "Apple TV", 109.50)
@vga = Product.new("vga", "VGA adapter", 30.00)