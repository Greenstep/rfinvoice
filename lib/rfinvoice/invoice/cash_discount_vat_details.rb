module RFinvoice
  class CashDiscountVatDetails < Model
    add_percentage_properties %w(CashDiscountVatPercent), required: false
    add_amount_properties %w(CashDiscountVatAmount), required: false
  end
end
