//
//  LoginView.swift
//  SkinDiseases
//
//  Created by Amit Gupta on 4/18/22.
//

import SwiftUI

struct LoginView: View {
    @State var loggedIn = false
    
    var body: some View {
        VStack{
            if self.loggedIn {
                MultiTabView()
                /*
                 Text("LoggedIn")
                 Button(action: {
                 self.loggedIn = false
                 
                 }) {
                 Text("Log out")
                 }*/
            } else {
                LoginPage(loggedIn: $loggedIn)
            }
        }
    }
}

struct LoginPage: View {
    @Binding var loggedIn: Bool
    @State var username=""
    @State var password=""
    var body: some View {
        ZStack {
            Color.blue.opacity(0.3)
                .ignoresSafeArea()
            VStack{
                Text("Skin Doctor")
                    .font(.system(size: 40))
                    .fontWeight(.bold)
                    .padding(.bottom,10)
                Image(systemName: "stethoscope")
                    .resizable()
                    .scaledToFit()
                Spacer()
                TextField(" Username", text: $username)
                    .background(.gray)
                    .cornerRadius(10)
                    .padding(10)
                SecureField(" Password", text: $password)
                    .background(.gray)
                    .cornerRadius(10)
                    .padding(10)
                Button(" Login ") {
                    print("Logging in")
                    loggedIn=true
                }
                    .padding(20)
                    .background(.blue)
                    .foregroundColor(.green)
                    .cornerRadius(10)

                Spacer()
            }.font(.system(size: 30))
                .padding(20)
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
