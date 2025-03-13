//
//  ContentView.swift
//  latihanSwift
//
//  Created by Hendri Muji Waluyo on 13/03/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            Image("background").resizable().ignoresSafeArea()
            VStack(spacing: 35){
                Logo()
                FormBox()
            }
            .padding(.all, 20)
        }
        
        
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
                Button(action: {print("Hello \(username)")}) {
                    Text("Sign In")
                }
                .frame(width: 80,height: 40)
                .background(Color(Color.blue))
                .foregroundStyle(Color.white)
                .clipShape(RoundedRectangle(cornerRadius: 10))
        }
        .padding(.all, 25)
        .background(Color("FormColorCustom"))
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}
