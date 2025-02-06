//
//  ColorCircle.swift
//  navigationexample
//
//  Created by Oussama Berhili on 6/2/2025.
//

import SwiftUI

struct ColorCircle: View {
    let color : Color
    let isSelcted : Bool
    let selectedDim : CGFloat = 30
    let notSelectedDim : CGFloat = 20
    var dim : CGFloat{
        isSelcted ? selectedDim : notSelectedDim
    }
    
    var body: some View {
        Circle()
            .fill(color)
            .frame(width: dim, height: dim)
            
    }
}

#Preview {
    VStack{
        ColorCircle(color: .blue, isSelcted: true)
        ColorCircle(color: .red, isSelcted: false)
    }
}
