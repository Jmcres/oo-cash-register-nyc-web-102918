class CashRegister

 attr_accessor :total, :discount, :last_transaction_amount, :items

def initialize(discount=0)
  @total = 0 
  @discount = discount
  @items =[]
end

def add_item(title, price, quantity=1)
  if quantity >1 
    i = 0 
    while quantity > i 
    @items << title
    i +=1 
  end
else 
  @items << title
end 
@total += price * quantity
@last_transaction_amount = total
@total 
end

def apply_discount
  if self.discount > 0 
    self.discount = self.discount/100.f 
    @self.total = self.total * (1- self.discount)
     "After the discount, the total comes to $#{self.total.to_i}."
    else
      "There is no discount to apply."
    end
  end


end

