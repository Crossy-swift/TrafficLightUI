//
//  TrafficButton.swift
//  TrafficLightUI
//
//  Created by Артем Репин on 01.06.2021.
//

import SwiftUI

struct TrafficButton: View {
    
    var buttonName: String
    
    let action: () -> Void
    
    var body: some View {
        Button(action: action, label: {
            Text(buttonName)
                .bold()
                .frame(width: 170, height: 70)
                .background(Color(.blue))
                .foregroundColor(.white)
                .clipShape(Capsule())
                .overlay(Capsule().stroke(Color.white, lineWidth: 3))
        })
    }
}

struct TrafficButton_Previews: PreviewProvider {
    static var previews: some View {
        TrafficButton(buttonName: "Start", action: {})
    }
}
