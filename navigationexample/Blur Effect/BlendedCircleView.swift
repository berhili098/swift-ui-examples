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
    init(color: Color, circleRadius: Double = 100, offsetX: Double, offsetY: Double, blurRadius: Double, blendMode: BlendMode) {
        self.color = color
        self.circleRadius = circleRadius
        self.offsetX = offsetX
        self.offsetY = offsetY
        self.blurRadius = blurRadius
        self.blendMode = blendMode
    }
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
