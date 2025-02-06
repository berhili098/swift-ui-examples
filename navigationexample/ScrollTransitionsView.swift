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
                ForEach(0..<10){ index in
                    ZStack {
                        Image( images[index])
                            .resizable()
                            .scaledToFit()
                            .clipShape(.rect(cornerRadius: 20))
//                            .padding()
                            .frame(maxWidth:350, maxHeight: 350)
                    }
                }
            }
        }
    }
}

#Preview {
    ScrollTransitionsView()

}
