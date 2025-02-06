//
//  StateExampleView.swift
//  navigationexample
//
//  Created by Oussama Berhili on 6/2/2025.
//

import SwiftUI

struct StateExampleView: View {
    @State  var bgColor : Color = .green
    @State  var fontTitle : Font = .largeTitle
    @State var fontSubTitle : Font = .title
    @State var titleName : String = "State Example"
    @State var subTitleName : String = "Exploring State"
    @State var sunRotation : Double = 0
    @State var moonRotation : Double = 0
    @State private var selectedFirstImageName : String = "sun.horizon"
    @State private var selectedSecondImageName : String = "moon.zzz.fill"
    let imageNames = ["sun.horizon", "moon.zzz.fill" , "cloud.sun" , "cloud.moon" , "cloud.bolt.rain.fill"]
    func selectRandomBackgroundColor(){
        withAnimation(.easeInOut(duration: 0.5)){
            bgColor = colors.randomElement() ?? .green
                                                }
       
    }
    func randomizeImages(){
        withAnimation(.easeInOut(duration: 0.5)){
            selectedFirstImageName = imageNames.randomElement() ?? "sun.horizon"
            selectedSecondImageName = imageNames.randomElement() ?? "moon.zzz.fill"
            while selectedFirstImageName == selectedSecondImageName {
                
                selectedSecondImageName = imageNames.randomElement() ?? "moon.zzz.fill"
            }
                                                }
       
    }
    var body: some View {
    
        ZStack{
            bgColor
                .opacity(0.8)
                .ignoresSafeArea()
            VStack(){
                VStack(alignment: .leading) {
                    Text(titleName)
                        .font(fontTitle)
                        .fontWeight(.semibold)
                    Text(subTitleName)
                        .font(fontSubTitle)
                }
                .onTapGesture {
                    
                    titleName = titleName == "Hello" ? "State Example" : "Hello"
                    subTitleName = subTitleName == "Happy Coding" ? "Exploring State" : "Happy Coding"
                }
               
                Spacer()
                           HStack{
                               Image(systemName:selectedFirstImageName)
                                   .imageScale(.large)
                                   .rotationEffect(Angle(degrees: sunRotation))
                                   
                               Image(systemName: selectedSecondImageName)
                                   .imageScale(.large)
                                   .rotationEffect(Angle(degrees: moonRotation))
                               
                           }.foregroundStyle(.black)
                    .onTapGesture {
                        withAnimation(.easeInOut(duration: 0.5)){
                            moonRotation -= 90
                            sunRotation += 90
                        }
                    }
                Spacer()
                HStack{
                    Button("Background", action: {
                        selectRandomBackgroundColor()
                    })
                    Spacer()
                    Button("Change Image", action: {
                        randomizeImages()
                    })
                }
                
                
            }.padding()
           
        }
    }
}

#Preview {
    StateExampleView()
}
