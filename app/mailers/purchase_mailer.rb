class PurchaseMailer < ApplicationMailer
  def purchase_confirmation(items, amount)
    @items = items
    items = "New sick tee"
    @amount = amount
    mail(to: ENV.fetch('EMAIL'), subject: "Here is your purchase confirmation for your order containing: #{@items}")
  end
end
