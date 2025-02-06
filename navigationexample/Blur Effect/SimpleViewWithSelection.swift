//
//  SimpleViewWithSelection.swift
//  navigationexample
//
//  Created by Oussama Berhili on 6/2/2025.
//

import SwiftUI


enum WatchType {
    case watch , sleep , browse ,  search
}

struct SimpleViewWithSelection: View {
    @State private var selectedTab: WatchType = .watch
    var body: some View {
        TabView(selection: $selectedTab) {
            Tab("Watch" , systemImage: "play" , value : .watch){
                Text("Watching something")
            }
            Tab("Sleep" , systemImage: "sleep.circle" , value : .sleep){
                Text("Sleeping something")
            }
            Tab("Browse" , systemImage: "square.grid.2x2" , value : .browse){
                Text("Searching something")
            }
            Tab( value: .search,role:.search){
                Text("Searching something")
            }
        }.tabViewStyle(.sidebarAdaptable)
    }
}

#Preview {
    SimpleViewWithSelection()
}
