import SwiftUI

struct YouTubeView: View {
    var body: some View {
        NavigationStack {
                Content()
                    .toolbar{
                        ToolbarItemGroup(placement: .topBarLeading){
                            Image("youtube")
                                .resizable()
                                .frame(width: 90, height: 80)
                            
                        }
                        ToolbarItemGroup(placement: .topBarTrailing){
                            Button(action:{}) {
                                Image(systemName: "tray.full")
                                    .resizable()
                                    .foregroundStyle(.gray)
                                    .frame(width: 20, height: 15)
                            }
                            Button(action:{}) {
                                Image(systemName: "video")
                                    .resizable()
                                    .foregroundStyle(.gray)
                                    .frame(width: 20, height: 15)
                            }
                            Button(action:{}) {
                                Image(systemName: "magnifyingglass")
                                    .resizable()
                                    .foregroundStyle(.gray)
                                    .frame(width: 15, height: 15)
                            }
                            Button(action:{}) {
                                Image("profile")
                                    .renderingMode(.original)
                                    .resizable()
                                    .clipShape(Circle())
                                    .frame(width: 35, height: 35)
                                    .aspectRatio(contentMode: .fit)
                            }
                        }
                    }
                    .navigationTitle("")
                    .navigationBarTitleDisplayMode(.inline)
        }
        
    }
}

struct Content: View {
    var body: some View {
        List{
            VStack(alignment: .leading) {
                ZStack(alignment: .bottomTrailing){
                    Image("content_1")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                    Text("11:00:00")
                        .font(.caption2)
                        .padding(.all, 6)
                        .foregroundStyle(.white)
                        .background(Color.black.opacity(0.75))
                        .clipShape(RoundedRectangle(cornerRadius: 6))
                        .padding(.trailing, 5)
                        .padding(.bottom, 5)
                }
                HStack(spacing: 20){
                    Image("profile")
                        .resizable()
                        .clipShape(Circle())
                        .frame(width: 35, height: 35)
                    VStack(alignment: .leading){
                        Text("Konten Video")
                            .font(.system(size: 12, weight: .semibold))
                        Text("SwiftChannel • 500rb x ditonton • 11 bulan yang lalu")
                            .font(.system(size: 10, weight: .light))
                    }
                    Spacer()
                    Image(systemName: "list.bullet")
                        .foregroundStyle(.gray)
                }
            }
            
            VStack(alignment: .leading) {
                ZStack(alignment: .bottomTrailing){
                    Image("content_2")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                    Text("11:00")
                        .font(.caption2)
                        .padding(.all, 6)
                        .foregroundStyle(.white)
                        .background(Color.black.opacity(0.75))
                        .clipShape(RoundedRectangle(cornerRadius: 6))
                        .padding(.trailing, 5)
                        .padding(.bottom, 5)
                }
                HStack(spacing: 20){
                    Image("profile")
                        .resizable()
                        .clipShape(Circle())
                        .frame(width: 35, height: 35)
                    VStack(alignment: .leading){
                        Text("Konten Video")
                            .font(.system(size: 12, weight: .semibold))
                        Text("ChillsDev • 900rb x ditonton • 11 bulan yang lalu")
                            .font(.system(size: 10, weight: .light))
                    }
                    Spacer()
                    Image(systemName: "list.bullet")
                        .foregroundStyle(.gray)
                }
            }
            
            VStack(alignment: .leading) {
                ZStack(alignment: .bottomTrailing){
                    Image("content_3")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                    Text("01:00:00")
                        .font(.caption2)
                        .padding(.all, 6)
                        .foregroundStyle(.white)
                        .background(Color.black.opacity(0.75))
                        .clipShape(RoundedRectangle(cornerRadius: 6))
                        .padding(.trailing, 5)
                        .padding(.bottom, 5)
                }
                HStack(spacing: 20){
                    Image("profile")
                        .resizable()
                        .clipShape(Circle())
                        .frame(width: 35, height: 35)
                    VStack(alignment: .leading){
                        Text("Konten Video")
                            .font(.system(size: 12, weight: .semibold))
                        Text("SwiftChannel • 500rb x ditonton • 11 bulan yang lalu")
                            .font(.system(size: 10, weight: .light))
                    }
                    Spacer()
                    Image(systemName: "list.bullet")
                        .foregroundStyle(.gray)
                }
            }
        }
    }
}

#Preview {
    YouTubeView()
}
