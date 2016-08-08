class Rules
  def self.pricing rule, price, count, sku
    case rule
    when "three_for_two"
      if count >= 3  && sku == "atb"
        price * (count - (count/3).to_i)
      else
        price * count
      end
    when "discount"
      if count >= 4 && sku == "ipd"
        count * 499.99
      else
        price * count
      end
    else
      price * count
    end
  end
end