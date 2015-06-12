module RFinvoice
  class CashDiscountVatDetails < Model
    add_percentage_properties %w(CashDiscountVatPercent), required: true
    add_amount_properties %w(CashDiscountVatAmount), required: true
  end
end
