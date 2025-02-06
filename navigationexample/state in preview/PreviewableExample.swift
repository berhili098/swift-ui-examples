//
//  PreviewableExample.swift
//  navigationexample
//
//  Created by Oussama Berhili on 6/2/2025.
//

import SwiftUI

struct PreviewableExample: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
//    PreviewableExample()
    @Previewable @State var isOn : Bool = false
    let msg = isOn ? "Disable animations": "Enable animations"
    Toggle(isOn: $isOn){
        Text(msg)
            .bold()
    }.padding()
}
