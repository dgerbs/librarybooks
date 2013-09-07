json.array!(@checkouts) do |checkout|
  json.extract! checkout, :title, :author, :book_id
  json.url checkout_url(checkout, format: :json)
end
