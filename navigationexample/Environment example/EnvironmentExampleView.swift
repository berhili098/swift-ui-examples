//
//  EnvironmentExampleView.swift
//  navigationexample
//
//  Created by Oussama Berhili on 6/2/2025.
//

import SwiftUI

struct EnvironmentExampleView: View {
    @EnvironmentObject var userViewModel: UserViewModel
    var body: some View {
        NavigationStack{
            Text("Contentview : \(userViewModel.name)")
                .font(.title)
            
            NavigationLink(destination: UserDataView()){
                Text("Go to User Data")
                    .padding()
                    .background(Color.blue)
            }
            
        }
    }
}


struct UserDataView: View {
    @EnvironmentObject var userViewModel: UserViewModel
    var body: some View {
        NavigationStack{
            Text("User Data : \(userViewModel.name)")
                .font(.title)
            TextField("Enter your name", text: $userViewModel.name)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
        }
    }
}

#Preview {
    UserDataView()
        .environmentObject(UserViewModel())
}

#Preview {
    EnvironmentExampleView()
        .environmentObject(UserViewModel())
}
