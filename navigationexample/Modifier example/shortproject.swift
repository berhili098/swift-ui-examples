//
//  shortproject.swift
//  navigationexample
//
//  Created by Oussama Berhili on 5/2/2025.
//

import SwiftUI

struct shortproject: View {
    var body: some View {
        ZStack{
           Text("Upper left")
                .foregroundStyle(.blue)
                .align(alignment: .topLeading)
            Text("Upper right")
                 .foregroundStyle(.blue)
                 .align(alignment: .top)
            Text("Upper center")
                 .foregroundStyle(.blue)
                 .align(alignment: .topTrailing)
            Text("Center left")
                 .foregroundStyle(.blue)
                 .align(alignment: .leading)
            Text("Center")
                 .foregroundStyle(.blue)
                 .align(alignment:.center)
            Text("Center right")
                 .foregroundStyle(.blue)
                 .align(alignment: .trailing)
            Text("Lower left")
                 .foregroundStyle(.blue)
                 .align(alignment: .bottomLeading)
            Text("Lower center")
                 .foregroundStyle(.blue)
                 .align(alignment: .bottom)
            Text("Lower right")
                 .foregroundStyle(.blue)
                 .align(alignment: .bottomTrailing)
        }.padding()
    }
}

#Preview {
    shortproject()
}
