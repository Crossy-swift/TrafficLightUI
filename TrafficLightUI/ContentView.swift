//
//  ContentView.swift
//  TrafficLightUI
//
//  Created by Артем Репин on 01.06.2021.
//

import SwiftUI

struct ContentView: View {
    
    private enum Light {
        case red, yellow, green
    }
    
    @State private var redLight = 0.3
    @State private var yellowLight = 0.3
    @State private var greenLight = 0.3
    @State private var buttonName = "START"
    @State private var light = Light.red
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack {
                TrafficCircle(color: .red, opacity: redLight)
                TrafficCircle(color: .yellow, opacity: yellowLight)
                TrafficCircle(color: .green, opacity: greenLight)
                Spacer()
                TrafficButton(buttonName: buttonName, action: buttonPressed)
            }.padding(.top, 20)
        }
    }
    
    private func buttonPressed() {
        if buttonName == "START" {
            buttonName = "NEXT"
        }
        
        let lightOn = 1.0
        let lightOff = 0.3
        
        switch light {
        case .red:
            redLight = lightOn
            light = .yellow
            greenLight = lightOff
        case .yellow:
            redLight = lightOff
            yellowLight = lightOn
            light = .green
        case .green:
            light = .red
            yellowLight = lightOff
            greenLight = lightOn
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
