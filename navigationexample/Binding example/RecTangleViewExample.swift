//
//  BindingExampleView.swift
//  navigationexample
//
//  Created by Oussama Berhili on 6/2/2025.
//

import SwiftUI

struct RecTangleViewExample: View {
    let dim : CGFloat
    let color : Color
        
    init(dim: CGFloat = 50, color: Color) {
        self.dim = dim
        self.color = color
    }
        
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .fill(color)
            .frame(width: dim, height: dim)
        
    }
}

#Preview {
    RecTangleViewExample(
        
        color : .blue
    )
}
