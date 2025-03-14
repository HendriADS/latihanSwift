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
            CellContent(imageContent: "content_1", duration: "11:00:00", imageProfile: "profile", titleVideo: "Konten Video", subTitleVideo: "SwiftChannel • 500rb x ditonton • 11 bulan yang lalu")
            
            CellContent(imageContent: "content_2", duration: "20:00", imageProfile: "profile", titleVideo: "Chills Video", subTitleVideo: "chillOut • 1juta x ditonton • 11 bulan yang lalu")
            
            CellContent(imageContent: "content_3", duration: "50:00", imageProfile: "profile", titleVideo: "Swift UI Tutorial", subTitleVideo: "SwiftChannel • 20juta x ditonton • 2 tahun yang lalu")
            
        }
    }
}


struct CellContent:View {
    
    var imageContent: String
    var duration: String
    var imageProfile: String
    var titleVideo: String
    var subTitleVideo: String
    
    var body: some View {
        VStack(alignment: .leading) {
            ZStack(alignment: .bottomTrailing){
                Image(imageContent)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                Text(duration)
                    .font(.caption2)
                    .padding(.all, 6)
                    .foregroundStyle(.white)
                    .background(Color.black.opacity(0.75))
                    .clipShape(RoundedRectangle(cornerRadius: 6))
                    .padding(.trailing, 5)
                    .padding(.bottom, 5)
            }
            HStack(spacing: 20){
                Image(imageProfile)
                    .resizable()
                    .clipShape(Circle())
                    .frame(width: 35, height: 35)
                VStack(alignment: .leading){
                    Text(titleVideo)
                        .font(.system(size: 12, weight: .semibold))
                    Text(subTitleVideo)
                        .font(.system(size: 10, weight: .light))
                }
                Spacer()
                Image(systemName: "list.bullet")
                    .foregroundStyle(.gray)
            }
        }
    }
}

#Preview {
    YouTubeView()
}
