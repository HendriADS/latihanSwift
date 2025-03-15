import SwiftUI

struct ShopView: View {
    let datas: DummyDatas
    var body: some View {
        NavigationView{
            ScrollView{
                ForEach(datas.data) {
                    row in
                    VStack(spacing: 15){
                        Product(data: row)
                    }
                    .padding()
                }
            }
            .navigationTitle("ShopView")
            .toolbar {
                ToolbarItemGroup(placement: .topBarTrailing) {
                    Button(action: {}) {
                        Image(systemName: "person.fill")
                            .foregroundStyle(.gray)
                    }
                }
                ToolbarItemGroup(placement: .topBarTrailing) {
                    Button(action: {}) {
                        Image(systemName: "cart.fill")
                            .foregroundStyle(.gray)
                    }
                }
            }
        }
        
    }
}

struct Product: View {
    let data: ProductModel
    
    var body: some View {
        VStack(alignment: .leading){
            ZStack(alignment: .topTrailing){
                Image(self.data.productImage)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 250)
                    .clipped()
                
                Button(action: {}){
                    Image(systemName: "heart")
                        .resizable()
                        .padding()
                        .frame(width: 55, height: 50)
                        .foregroundStyle(.red)
                }
            }
            
            Text(self.data.productName)
                .font(.title2)
                .bold()
                .padding(.leading)
                .padding(.trailing)
            
            Text("Rp. \(self.data.productPrice)")
                .font(.headline)
                .foregroundStyle(.red)
                .padding(.leading)
                .padding(.trailing)
            
            HStack{
                Image(systemName: "mappin.circle")
                    .resizable()
                    .frame(width: 12, height: 12)
                Text(self.data.location)
                    .font(.caption2)
            }
            .padding(.leading)
            .padding(.trailing)
            
            HStack{
                ForEach(Array(repeating: "star.fill", count: self.data.rating), id: \.self){
                    item in
                    Image(systemName: item)
                        .resizable()
                        .frame(width: 20, height: 20)
                        .foregroundStyle(.yellow)
                    
                }
                
                
            }
            .padding(.top, 15)
            .padding(.leading)
            .padding(.trailing)
            
            Button(action: {}) {
                HStack{
                    Spacer()
                    HStack{
                        Image(systemName: "cart")
                        Text("Tambah ke Keranjang")
                    }
                    .padding()
                    Spacer()
                    }
                
                }
            .background(Color.green)
            .foregroundStyle(.white)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .padding()
            }
        .background(Color.gray.opacity(0.2))
        .clipShape(RoundedRectangle(cornerRadius: 15))
        
    }
                
}

#Preview {
    ShopView(datas: DummyDatas())
}
