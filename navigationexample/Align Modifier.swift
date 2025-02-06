//
//  Align Modifier.swift
//  navigationexample
//
//  Created by Oussama Berhili on 5/2/2025.
//

import SwiftUI

struct AlignModifier : ViewModifier {
    let alignment : Alignment
    init(alignment: Alignment = .center) {
        self.alignment = alignment
    }
        
    func body(content: Content) -> some View {
        content.frame(
            maxWidth: .infinity,
            maxHeight: .infinity,
            alignment: alignment
        )
    }
}



extension View{
    func align(alignment: Alignment = .center) -> some View {
        self.modifier(AlignModifier(alignment: alignment))
    }
}
struct Align_Modifier: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .align(alignment: .center)
    }
}

#Preview {
    Align_Modifier()
}
