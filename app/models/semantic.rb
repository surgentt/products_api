require 'csv'

class Semantic 

  # https://github.com/Semantics3/semantics3-ruby
  # https://www.semantics3.com/quickstart
  # https://www.semantics3.com/docs
  API_KEY = 'SEM31BA44E2898353099F16ABFCA530659E1'
  API_SECRET = 'NDM2YzIwOWUyMTNlZmNjYjg1YjgwODlmZTM1NTZmM2E'
  CATEGORIES = [18892, 20717, 21995, 13157, 12597, 17366, 13658, 8551, 18203, 17534, 12908, 23767, 4798, 915, 15532, 18735, 24271, 9205, 4702, 6411, 10539, 2717, 21949, 16279, 934, 11932]

  def samsonite # About 100 results
    sem3 = Semantics3::Products.new(API_KEY,API_SECRET)
    arr = []
    CATEGORIES.each do |category|
      sem3.products_field( "cat_id", category )
      sem3.products_field( "sitedetails", "name", "samsonite.com" )
      productsHash = sem3.get_products
      arr << productsHash
      puts "Results of query:\n",productsHash.to_json
    end

    binding.pry
    # CSV.open("data.csv", "wb") {|csv| result.to_a.each {|elem| csv << elem} }
    arr["results"].each do |result|
      # See concerns/results.rb
      # I don't think each of these products are necessarily from samsonite
    end
  end

  def eastbay
    sem3 = Semantics3::Products.new(API_KEY,API_SECRET)
    CATEGORIES.each do |category|
      sem3.products_field( "cat_id", category )
      sem3.products_field( "sitedetails", "name", "eastbay.com" )
      productsHash = sem3.get_products
      puts "Results of query:\n",productsHash.to_json
    end
  end

  def samash
    sem3 = Semantics3::Products.new(API_KEY,API_SECRET)
    CATEGORIES.each do |category|
      sem3.products_field( "cat_id", category )
      sem3.products_field( "sitedetails", "name", "samash.com" )
      productsHash = sem3.get_products
      puts "Results of query:\n",productsHash.to_json
    end
  end

  def levi
    sem3 = Semantics3::Products.new(API_KEY,API_SECRET)
    CATEGORIES.each do |category|
      sem3.products_field( "cat_id", category )
      sem3.products_field( "sitedetails", "name", "levi.com" )
      productsHash = sem3.get_products
      puts "Results of query:\n",productsHash.to_json
    end
  end

  # Does not return any products
  def costco
    sem3 = Semantics3::Products.new(API_KEY,API_SECRET)
    CATEGORIES.each do |category|
      sem3.products_field( "cat_id", category )
      sem3.products_field( "sitedetails", "name", "costco.com" )
      productsHash = sem3.get_products
      puts "Results of query:\n",productsHash.to_json
    end
  end

  def walmart
    sem3 = Semantics3::Products.new(API_KEY,API_SECRET)
    CATEGORIES.each do |category|
      sem3.products_field( "cat_id", category )
      sem3.products_field( "sitedetails", "name", "walmart.com" )
      productsHash = sem3.get_products
      puts "Results of query:\n",productsHash.to_json
    end
  end

  def wfood
    sem3 = Semantics3::Products.new(API_KEY,API_SECRET)
      sem3.products_field( "cat_id", "18203" )
      sem3.products_field( "sitedetails", "name", "walmart.com" )
      productsHash = sem3.get_products
      puts "Results of query:\n",productsHash.to_json
  end

end
