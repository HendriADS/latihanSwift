
struct ProductModel: Identifiable {
    let id: Int
    let productName: String
    let productImage: String
    let productPrice: Int
    let location: String
    let ratingCount: Int
    let rating: Int

    init(id: Int, productName: String, productImage: String, productPrice: Int, location: String, ratingCount: Int, rating: Int) {
        self.id = id
        self.productName = productName
        self.productImage = productImage
        self.productPrice = productPrice
        self.location = location
        self.ratingCount = ratingCount
        self.rating = rating
    }
}
