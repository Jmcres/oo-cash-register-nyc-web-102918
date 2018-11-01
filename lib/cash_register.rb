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
  if @discount > 0 
    @discount = @discount/100.f 
    @total = @total * (1- @discount)
    "Success new total is #{total}"
  end
else 
  "error message that there is no discount to apply"
end 
end

rspec ./spec/cash_register_spec.rb:43 # CashRegister #apply_discount the cash register was initialized with an employee discount applies the discount to the total price
rspec ./spec/cash_register_spec.rb:49 # CashRegister #apply_discount the cash register was initialized with an employee discount returns success message with updated total
rspec ./spec/cash_register_spec.rb:54 # CashRegister #apply_discount the cash register was initialized with an employee discount reduces the total
rspec ./spec/cash_register_spec.rb:62 # CashRegister #apply_discount the cash register was not initialized with an employee discount returns a string error message that there is no discount to apply
rspec ./spec/cash_register_spec.rb:78 # CashRegister #void_last_transaction subtracts the last transaction from the total