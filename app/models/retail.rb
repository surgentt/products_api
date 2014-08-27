class Retail 

  def search
    "http://apitest.retailigence.com/v2.1/products?&apikey=SPOK2If-GESQ38wC1Q7mpjffy8n3j-MP&requestorid=test&userlocation=33313&keywords=star+wars+lego"
  end

  def test
    results = Retailigence::Product.search(
      userlocation: '33313',
      requestorid: 'test',
      name: 'Xbox One',
      productcategory: ''
    )
    binding.pry
  end

  # productcategory: If we could get a list here we could output all of the results

end
