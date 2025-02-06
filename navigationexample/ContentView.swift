//
//  ContentView.swift
//  navigationexample
//
//  Created by Oussama Berhili on 5/2/2025.
//

import SwiftUI


enum NotifyMeAboutType {
    case directMessages
    case mentions
    case anything
}

enum ProfileImageSize {
    
    case small
    case medium
    case large
}
    

struct ContentView: View {
    @State private var text: [String] = ["Exploring Views", "SwiftUI", "Navigation"]
    @State private var backgroundColor: Color = .white
    @State private var index: Int = 0
    @State private var selectedDate = Date()
    @State private var notifyMeAbout = NotifyMeAboutType.mentions
    @State private var playNotificationSounds = false
    @State private var sendReadReceipts = false
    @State private var profileImageSize = ProfileImageSize.medium
    @State private var showProfileImagePicker: Bool = false
    @State private var showNotificationSettings: Bool = false
    @State private var sliderValue: Double = 0.5
    private let currentDate = Date()
    private let dateBefore18Years = Calendar.current.date(byAdding: .year, value: -18, to: Date()) ?? Date()
    
    
    var foregroundColor : Color {
        backgroundColor.isLight() ? .black : .white
        
    }
    
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            
            
            
            
            
            Form {
                Section(
                     header: Text(text[index])
                ){
                    
                    // button with arrow in this form
                    
                    Button {
                        index = (index + 1) % text.count
                    } label: {
                        HStack  {
                            Text("Next")
                            Spacer()
                            Image(systemName: "chevron.forward")
//                                .foregroundStyle(.gray.opacity(0.5))
                            
                        }
                    }
                    
                    
                    ColorPicker("Pick a color", selection: $backgroundColor)
                        
                    
                    
                    DatePicker("Date", selection: $selectedDate , in:dateBefore18Years...)
                        
                }
                
               
                Picker("Notify Me About:", selection: $notifyMeAbout) {
                    Text("Direct Messages").tag(NotifyMeAboutType.directMessages)
                    Text("Mentions").tag(NotifyMeAboutType.mentions)
                    Text("Anything").tag(NotifyMeAboutType.anything)
                }.pickerStyle(.automatic)
                Toggle("Play notification sounds", isOn: $playNotificationSounds)
                Toggle("Send read receipts", isOn: $sendReadReceipts)
                
                
                Picker("Profile Image Size:", selection: $profileImageSize) {
                    Text("Large").tag(ProfileImageSize.large)
                    Text("Medium").tag(ProfileImageSize.medium)
                    Text("Small").tag(ProfileImageSize.small)
                }
                .pickerStyle(.inline)
                
                
                Button("Clear Image Cache") {}
                Slider(value: $sliderValue  , in : 0...1)
                Text("Slider Value: \(sliderValue.isSubnormal) \(sliderValue)")
            
                
                
            }
            
//            .foregroundStyle(foregroundColor)
            
                        
            
        }
        
    }
}

#Preview {
    ContentView()
}
