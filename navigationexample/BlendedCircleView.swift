//
//  BlendedCircleView.swift
//  navigationexample
//
//  Created by Oussama Berhili on 6/2/2025.
//

import SwiftUI

struct BlendedCircleView: View {
    let color : Color
    let circleRadius : Double
    let offsetX : Double
    let offsetY : Double
    let blurRadius : Double
    let blendMode : BlendMode
    var body: some View {
        Circle()
            .fill(color)
            .frame(width: circleRadius, height: circleRadius)
            .offset(x:offsetX , y: offsetY)
            .blur(radius: blurRadius)
      
    }
}

#Preview {
    BlendedCircleView(
        color: .blue,
        circleRadius: 100,
        offsetX: 50,
        offsetY: 50,
        blurRadius: 10,
        blendMode: .colorBurn
    )
}
