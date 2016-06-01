Pay2go.setup do |pay2go|
  if Rails.env.development?
    pay2go.merchant_id = "11444707"

    pay2go.hash_key    = "Ygbaxufg1d9CPJJ4aMw40X92wACxoPRn"
    pay2go.hash_iv     = "53xDyNTz03bPNVTX"
    pay2go.service_url = "https://capi.pay2go.com/MPG/mpg-gateway"
  else
    pay2go.merchant_id = "11444707"

    pay2go.hash_key    = "xxxxxxxx"
    pay2go.hash_iv     = "xxxxxxxx"
    pay2go.service_url = "https://api.pay2go.com/MPG/mpg_gateway"
  end
end
