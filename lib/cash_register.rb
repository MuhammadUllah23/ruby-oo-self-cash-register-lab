
class CashRegister
    attr_accessor :total, :discount, :items
  
    def initialize(discount = 20)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(item, price, quantity = 1)
          @last_total = @total
          self.total += price * quantity
      
        quantity.times do 
            self.items << item
        end
    end

    def apply_discount
        if @total == 0
            "There is no discount to apply."
        else
            self.total -= @total * @discount/100
            "After the discount, the total comes to $#{self.total}."
        end
    end

    def void_last_transaction
        @total = @last_total
    end
   
end