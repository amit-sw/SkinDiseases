//
//  ContactDoctorView.swift
//  SkinDiseases
//
//  Created by Amit Gupta on 4/18/22.
//

import MessageUI
import SwiftUI

/*

struct ContactDoctorView: View {
    @State private var result: Result<MFMailComposeResult, Error>? = nil
    @State private var isShowingMailView = false

    var body: some View {
        Form {
            Button(action: {
                if MFMailComposeViewController.canSendMail() {
                    self.isShowingMailView.toggle()
                } else {
                    print("Can't send emails from this device")
                }
                if result != nil {
                    print("Result: \(String(describing: result))")
                }
            }) {
                HStack {
                    Image(systemName: "envelope")
                    Text("Contact Us")
                }
            }
            // .disabled(!MFMailComposeViewController.canSendMail())
        }
        .sheet(isPresented: $isShowingMailView) {
            MailView(result: $result) { composer in
                composer.setSubject("Secret")
                composer.setToRecipients(["eneskaraosman53@gmail.com"])
            }
        }
    }
}

struct ContactDoctorView_Previews: PreviewProvider {
    static var previews: some View {
        ContactDoctorView()
    }
}
*/
