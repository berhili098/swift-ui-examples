//
//  ContentViewBingingExample.swift
//  navigationexample
//
//  Created by Oussama Berhili on 6/2/2025.
//

import SwiftUI

struct ContentViewBingingExample: View {
    @State private var color1 : Color = .red
    @State private var color2 : Color = .green
    @State private var color3 : Color = .blue
    var body: some View {
        ZStack {
           Color .blue.opacity(0.2).ignoresSafeArea()
            VStack{
                HStack{
                    RecTangleViewExample(color: color1)
                    RecTangleViewExample(color: color2)
                    RecTangleViewExample(color: color3)
                    
                }
                .padding()
                ColorPicker("Pick color 1", selection: $color1)
                ColorPicker("Pick color 2", selection: $color2)
                ColorPicker("Pick color 3", selection: $color3)
                
                CustomColorPicker(text : "Pick color 1", selectedColor: $color1)
                CustomColorPicker(text : "Pick color 2", selectedColor: $color2)
                CustomColorPicker(text : "Pick color 3", selectedColor: $color3)
                
                    
                
            }.padding()
        }
       
    }
}

#Preview {
    ContentViewBingingExample()
}
