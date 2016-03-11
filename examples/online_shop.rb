Univode.create do |app|

  app.users do |group|

  end

  app.has model: :product do |product|

    product.has_many :photos, type: :image, image: { style: :big }
    product.can [:manage], user: :admin
    product.can [:index, :show], user: :customer
  end

end

# usual online shop specification:

# Many products
# Products can have many images
# Product has price, type: :money
# Product has description, type: :text

# Many shopping carts, (one per user, one per cart)?
# ShoppingCart has_many :products
# ShoppingCart has :computed_property, sum: {price: :products}
#