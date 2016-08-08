require "./product"
require "./rules"

class Checkout
  attr_accessor :rule, :total

  def initialize rule
    @rule = rule
    @total = 0
  end

  def scan *args
    @products = args.group_by{|x| x}.map{|k,v| [k,v.count] }
    @products.map do |product|
      p "+ Free VGA" if product[0].sku == "mbp"
      @total = @total + Rules.pricing(@rule, product[0].price, product[1], product[0].sku)
    end
  end
end

checkout = Checkout.new("gift")
checkout.scan(@ipd, @ipd, @ipd, @ipd, @ipd, @atb, @mbp)
p checkout.total

checkout = Checkout.new("three_for_two")
checkout.scan(@atb, @atb, @atb, @atb)
p checkout.total

checkout = Checkout.new("discount")
checkout.scan(@ipd, @ipd, @ipd, @ipd, @ipd, @atb)
p checkout.total