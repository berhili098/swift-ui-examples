//
//  AlertTestingView.swift
//  navigationexample
//
//  Created by Oussama Berhili on 5/2/2025.
//

import SwiftUI

struct AlertTestingView: View {
    let name : String
    let email : String
    let phone : String
    let address : String
    
    var body: some View {
        GroupBox{
            VStack(alignment:.leading){
                Text("Name: \(name)")
                Text("Email: \(email)")
                
                GroupBox{
                    VStack(alignment:.leading){
                        Text("Address: \(address)")
                        Text("Phone: \(phone)")
                       
                    }
                } label:{
                    Label("Contact Info", systemImage: "phone")
                }
                
            }
            
        }label: {
            Label("User Details", systemImage: "person.crop.circle")
        }.padding()
    }
}

#Preview {
    AlertTestingView(
        name: "Oussama",
        email: "test@gmail.com",
        phone: "+234 272 7272",
        address: "1234, 5th Avenue"
    )
}
