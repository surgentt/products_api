class Supermarket < ActiveRecord::Base

  def find_parsley
    "http://www.supermarketapi.com/api.asmx/COMMERCIAL_SearchByProductName?APIKEY=1b924e19e4&ItemName=Parsley"
  end

  def find_walmart
    "http://www.SupermarketAPI.com/api.asmx/StoresByZip?APIKEY=1b924e19e4&ZipCode=33313"
  end

  def find_costco
    "http://www.SupermarketAPI.com/api.asmx/StoresByZip?APIKEY=1b924e19e4&ZipCode=33324"
  end

  # both zip codes provided don't return any results. I does not appear that this api returns information for purchasing

#   <Product_Commercial>
# <Itemname>
# Dry Onion And Garlic Coarse Grind Blend w/Parsley - 6.25 Oz Shaker
# </Itemname>
# <ItemDescription>
# Dry Onion And Garlic Coarse Grind Blend w/Parsley - 6.25 Oz Shaker
# </ItemDescription>
# <ItemCategory>Condiments/Spices & Bake</ItemCategory>
# <ItemID>81651</ItemID>
# <ItemImage>
# http://smapistorage.blob.core.windows.net/thumbimages/2/86D4A65.jpg
# </ItemImage>
# <AisleNumber>Aisle:N/A</AisleNumber>
# <Pricing>3.69</Pricing>
# </Product_Commercial>

  # 94a421db3e 
end
