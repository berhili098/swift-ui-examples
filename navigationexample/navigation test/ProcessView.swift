//
//  ProcessView.swift
//  navigationexample
//
//  Created by Oussama Berhili on 5/2/2025.
//

import SwiftUI

struct ProcessView: View {
    let name: String
    let age: String

    var numericalAge: Int {
        return Int(age) ?? 0
    }

    var body: some View {
        Text("You have entered the following information")

        Text("Name: \(name)")
        Text("Age: \(age)")

        if numericalAge > 18 {
            Text("you can drink \(name)")
        } else if numericalAge <= 0 {
            Text("invalid input")
        }

        else {
            Text("you can't drink \(name)")
        }
    }
}

#Preview {
    ProcessView(name: "Oussama", age: "25")
}
