//
//  ScrollTransitionsView.swift
//  navigationexample
//
//  Created by Oussama Berhili on 6/2/2025.
//

import SwiftUI

struct ScrollTransitionsView: View {
    
    
    var body: some View {
        ScrollView(.horizontal){
            HStack{
                ForEach(images , id: \.self){ image in
                    ZStack {
                        MyImageView(name:image )
                            .scrollTransition(axis: .horizontal ){
                                content , phase in
                                let value = phase.value
                                let contrast = phase.isIdentity ? 1 : 3 * (1+phase.value)
                                let opacity = cos((.pi/2)*value)
                                let brightness = abs(phase.value) * 0.3
                                return content
                                    .offset(
                                        x: value * (-500)
                                    )
                                    .opacity(opacity)
                                    .contrast(contrast)
                                    .brightness(brightness)
                                
                                    
                            }
                    }.containerRelativeFrame(.horizontal)
                        .clipShape(.rect(cornerRadius:30))
                }
            }
        }
    }
}

#Preview {
    ScrollTransitionsView()

}
