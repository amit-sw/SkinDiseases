//
//  FormView.swift
//  SkinDiseases
//
//  Created by Amit Gupta on 4/18/22.
//

import SwiftUI

struct FormView: View {
    @State var name=""
    @State var fname=""
    @State var lname=""
    @State var email=""
    @State var doctorEmail=""
    @State var clinicCode=""
    
    @State var canNotify=false
    var body: some View {
        ZStack {
            Color.yellow
                .opacity(0.5)
                .ignoresSafeArea()
            VStack {
                Text("Settings")
                    .font(.system(size: 40))
                Form {
                    TextField("First Name",text:$fname)
                        .padding(10)
                        .cornerRadius(10)
                    TextField("Last Name",text:$lname)
                        .padding(10)
                        .cornerRadius(10)
                    TextField("Patient Email",text:$email)
                        .padding(10)
                        .cornerRadius(10)
                    TextField("Doctor Email",text:$doctorEmail)
                        .padding(10)
                        .cornerRadius(10)
                    TextField("Clinic Code",text:$clinicCode)
                        .padding(10)
                        .cornerRadius(10)
                    Toggle(isOn: $canNotify) {
                        Text("Notification")
                    }.onChange(of: canNotify) { newValue in
                        print("Updated canNotify to \(newValue)")
                    }            .padding(10)
                        .cornerRadius(10)
                }
                .background(.yellow)
            }
            .font(.system(size: 30))

        }
    }
}

struct FormView_Previews: PreviewProvider {
    static var previews: some View {
        FormView()
    }
}
