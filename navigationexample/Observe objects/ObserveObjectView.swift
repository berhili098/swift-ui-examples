//
//  ObserveObjectView.swift
//  navigationexample
//
//  Created by Oussama Berhili on 6/2/2025.
//

import SwiftUI
import Observation


@Observable
class SomeViewModel  {
     var data1 : String = "Hello world"
     var data2 : String = "We Love Dev"
}


struct RandomNumberView: View {
    @State var randomNumber = Int.random(in: 0...1000)
    var body: some View {
       Text("Random Number: \(randomNumber)")
        Button("Generate Random Number", action: {
            randomNumber = Int.random(in: 0...1000)
            
    })
               }
               }


    

struct ObserveObjectView: View {
      var viewModel = SomeViewModel()
    var body: some View {
        VStack{
            Text(viewModel.data1)
                .font(.largeTitle)
            Text(viewModel.data2)
                
            Button("Click me" ,  action:{
                viewModel.data1 = viewModel.data1 == "Hello world" ?   "New Data 1" : "Hello world"
                viewModel.data2 =  viewModel.data2 != "We Love Dev" ? "We Love Dev" : "New Data 2"
            })
            RandomNumberView()
        } .font(.largeTitle)
    }
}

#Preview {
    ObserveObjectView()
}
