//
//  BlurEffectsView.swift
//  navigationexample
//
//  Created by Oussama Berhili on 6/2/2025.
//

import SwiftUI

struct BlurEffectsView: View {
    @State private var mainBlurRadius : Double = 10.0
    @State private var redBlurRadius : Double = 10.0
    @State private var blueBlurRadius : Double = 10.0
   
    let blendModes :[BlendMode] = [
        .plusLighter,.softLight,.normal
    ]
    let min : Double = 0
    let max : Double = 50
    @State private var blendModeIndex = 0
    var blendModeV : BlendMode {
        blendModes[blendModeIndex]
    }
    
    var body: some View {
        ZStack {
            LinearGradient(
                colors : colors ,
                startPoint : .topLeading,
                endPoint : .bottomTrailing
            ).blur(radius: mainBlurRadius)
            
            Rectangle()
                .fill(.ultraThinMaterial)
                .clipShape(.rect(cornerRadius:30))
                .overlay{
                    Text("Cool Blur Effects")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(.white)
                        .padding()
                }.padding()
            BlendedCircleView(
                color: .red,
                circleRadius: 200,
                offsetX: -100,
                offsetY: 100,
                blurRadius: redBlurRadius,
                blendMode: blendModeV
            )
            BlendedCircleView(
                color: .blue,
                circleRadius: 150,
                offsetX: 120,
                offsetY: -80,
                blurRadius: blueBlurRadius,
                blendMode: blendModeV
            )
        } .onTapGesture {
            print("ok")
            blendModeIndex = (blendModeIndex + 1) % blendModes.count
            print("blendModeIndex: \(blendModeIndex)")
        }
        
        // Sliders
        VStack {
            SliderTextView(value: $mainBlurRadius, min: min, max: max, text: "main blur radius", color: .purple)
            SliderTextView(value: $redBlurRadius, min: min, max: max, text: "red blur radius", color: .red)
            SliderTextView(value: $blueBlurRadius, min: min, max: max, text: "blur blur radius", color: .blue)
            
        }.padding()
       
    }
}

#Preview {
    BlurEffectsView()
}
