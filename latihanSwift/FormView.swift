import SwiftUI

struct FormView: View {
    var body: some View {
        NavigationStack{
            Form{
                // Section Profile
                Section{
                    NavigationLink(destination: AboutView()) {
                        HStack{
                            Image("profile")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .clipShape(Circle())
                                .frame(width: 65, height: 65)
                            
                            // Nama dan status
                            VStack(alignment: .leading){
                                Text("Raychan")
                                    .font(.system(size: 20, weight: .bold))
                                Text("Photographer")
                                    .font(.system(size: 16, weight: .light))
                            }
                        }
                        .padding(.top, 8)
                        .padding(.bottom, 8)
                    }
                }
                
                //Section Pengaturan Umum
                Section(header: Text("Pengaturan Umum")) {
                    HStack{
                        Image(systemName: "star.fill")
                            .resizable()
                            .padding(.all, 8)
                            .foregroundStyle(Color.white)
                            .frame(width: 35, height: 35)
                            .background(Color.orange)
                            .clipShape(RoundedRectangle(cornerRadius: 12))
                        
                        Text("Pesan Berbintang")
                            .font(.system(size: 14))
                        Spacer()
                        Image(systemName: "chevron.right")
                    }
                    HStack{
                        Image(systemName: "tv")
                            .resizable()
                            .padding(.all, 8)
                            .frame(width: 35, height: 35)
                            .foregroundStyle(Color.white)
                            .background(Color.green)
                            .clipShape(RoundedRectangle(cornerRadius: 12))
                        Text("WhatsApp Web/Desktop")
                            .font(.system(size: 14))
                        Spacer()
                        Image(systemName: "chevron.right")
                    }
                }
                
                Section(header: Text("Pengaturan Akun")){
                    HStack{
                        Image(systemName: "person")
                            .resizable()
                            .padding(.all, 8)
                            .frame(width: 35, height: 35)
                            .foregroundStyle(Color.white)
                            .background(Color.blue)
                            .clipShape(RoundedRectangle(cornerRadius: 12))
                        Text("Akun")
                            .font(.system(size: 14))
                        Spacer()
                        Image(systemName: "chevron.right")
                    }
                    
                    HStack{
                        Image(systemName: "phone")
                            .resizable()
                            .padding(.all, 8)
                            .frame(width: 35, height: 35)
                            .foregroundStyle(Color.white)
                            .background(Color.green)
                            .clipShape(RoundedRectangle(cornerRadius: 12))
                        Text("Chat ")
                            .font(.system(size: 14))
                        Spacer()
                        Image(systemName: "chevron.right")
                    }
                }
            }.navigationTitle("Setting")
        }
    }
}

struct AboutView: View {
    var body: some View {
        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Hello, world!@*/Text("Hello, world!")/*@END_MENU_TOKEN@*/
    }
}

#Preview {
    FormView()
}
