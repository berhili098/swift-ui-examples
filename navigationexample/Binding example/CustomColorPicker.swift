//
//  CustomColorPicker.swift
//  navigationexample
//
//  Created by Oussama Berhili on 6/2/2025.
//

import SwiftUI

struct CustomColorPicker: View {
    let text : String
    @Binding var selectedColor : Color
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5){
            Text(text)
                .font(.headline)
                .fontWeight(.semibold)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack{
                    ForEach(colors ,  id: \.self){ color in
                        ColorCircle(color: color, isSelcted: color == selectedColor)
                            .onTapGesture{
                                withAnimation{
                                    selectedColor = color
                                }
                                
                                
                            }
                    }
                        
                    
                }
              
            }
                .padding(.vertical, 7)
                .background(
                    Color.gray.opacity(0.2)
                )
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
        }
    }
}

#Preview {
    CustomColorPicker(
        text : "Color",
        selectedColor: .constant(.red)
    )
}
