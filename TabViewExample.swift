//
//  TabView.swift
//  navigationexample
//
//  Created by Oussama Berhili on 6/2/2025.
//

import SwiftUI

struct TabViewExample: View {
    var body: some View {
        TabView{
            Tab("Watch" , systemImage: "play"){
                Text("Watching something")
            }
            Tab
        }
    }
}

#Preview {
    TabViewExample()
}
