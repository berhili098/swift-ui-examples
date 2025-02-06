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
            Tab("Sleep", systemImage: "sleep.circle"){
                shortproject()
            }
            TabSection("Collections") {
                Tab("Record Collection" , systemImage: "play"){
                    Text("Watching something")
                }
                Tab("Stamp Collection", systemImage: "sleep.circle"){
                    Text("Sleep something")
                }
            }
            TabSection("Hobbies") {
                Tab("Tab 1" , systemImage: "person"){
                    Text("Tab 1 View")
                }
                Tab("Tab 2 ", systemImage: "trash"){
                    Text("Tab 2 View")
                }
            }
           
           
            
        }.tabViewStyle(.sidebarAdaptable)
    }
}

#Preview {
    TabViewExample()
}
