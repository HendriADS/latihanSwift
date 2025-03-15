//
//  ContentView.swift
//  latihanSwift
//
//  Created by Hendri Muji Waluyo on 13/03/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        FormView()
        ShopView(datas: DummyDatas())
//        TabView {
//            Tab("Home", systemImage: "house") {
//                YouTubeView()
//            }
//            Tab("Shorts", systemImage: "video") {
//                YouTubeView()
//            }
//            Tab("Subscription", systemImage: "tray") {
//                YouTubeView()
//            }
//            Tab("Email", systemImage: "envelope") {
//                YouTubeView()
//            }
//            Tab("Explorations", systemImage: "paperplane") {
//                YouTubeView()
//            }
//        }
        
//        ZStack {
//            Image("background").resizable().ignoresSafeArea()
//            VStack(spacing: 35){
//                Logo()
//                FormBox()
//            }
//            .padding(.all, 20)
//        }
    }
}

#Preview{
    ContentView()
}

struct Logo: View {
    var body: some View {
        VStack{
            Image("swift")
                .resizable()
                .frame(width: 45, height: 45)
                .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
                .background(Color("LogoBgColor"))
                .cornerRadius(10)
            Text("Sinau SwiftUI").font(.title).bold()
        }
    }
}

struct FormBox: View {
    @State var username: String = ""
    @State var password: String = ""
    var body: some View {
        VStack{
            VStack(alignment: .leading) {
                Text("Username").font(.callout).bold()
                TextField("Username...", text: $username)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Text("Password").font(.callout).bold()
                
                SecureField("Password...", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            NavigationView() {
                VStack {
                    NavigationLink(destination: FormView()) {
                        Button(action: {}) {
                            Text("Sign In")
                        }
                        .frame(width: 80,height: 40)
                        .background(Color(Color.blue))
                        .foregroundStyle(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                    }
                }
            }
            .frame(width: 80,height: 40)
        }
        .padding(.all, 25)
        .background(Color("FormColorCustom"))
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}
