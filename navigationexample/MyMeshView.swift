//
//  MyMeshView.swift
//  navigationexample
//
//  Created by Oussama Berhili on 5/2/2025.
//

import SwiftUI

struct MyMeshView: View {
    @State private var points : [SIMD2<Float>] = [
        [0.323,0.199], [0.5,0], [1,0],
        [0,0.5], [0.909,0.196], [1,0.5],
        [0,1], [0.5,1], [0.862,0.871]
        
    ]
    @State private var colors : [Color] = [
        .indigo , .indigo , .indigo,
        .brown , .green , .white,
            .purple , .black , .mint
        
        ]
    @State private var background : Color = .green
    func randomizePointsAndColors(){
        let someColors : [Color] = [
            .indigo ,.gray, .indigo,
                .brown , .white,
                .purple  , .mint    ,
            .brown , .white,
                .purple  , .mint
            
            ]
        points[4].x = Float.random(in: 0...1)
        points[4].y = Float.random(in: 0...1)
        colors[4] = someColors.randomElement() ?? .indigo
        
        points[0].x = Float.random(in: 0.2...0.4)
        points[0].y = Float.random(in: 0.1...0.3)
        colors[0] = someColors.randomElement() ?? .indigo
        
        points[8].x = Float.random(in: 0.6...0.8)
        points[8].y = Float.random(in: 0.7...0.9)
        colors[8] = someColors.randomElement() ?? .indigo
        
        background = someColors.randomElement() ?? .green
    }
    var mesh : some View {
        MeshGradient(
        width: 3 ,
        height: 3,
        points: points,
        colors: colors,
        background: background
    )}
    let duration : Double = 5.0
    var animation : Animation {
        Animation.linear(duration: duration)
            .repeatForever(autoreverses: false)
    }
    var timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()

    var body: some View {
        
            mesh
            .animation(animation , value: points)
            .onReceive(timer){
                _ in
             
                randomizePointsAndColors()
                
            }
            .ignoresSafeArea()
            
        
        
    }
}

#Preview {
    MyMeshView()
}
