//
//  TrafficCircle.swift
//  TrafficLightUI
//
//  Created by Артем Репин on 01.06.2021.
//

import SwiftUI

struct TrafficCircle: View {
    let color: Color
    let opacity: Double
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .opacity(opacity)
            .frame(width: 150, height: 150)
            .overlay(Circle().stroke(Color.white, lineWidth: 3))
            .shadow(color: color, radius: 10)
    }
}

struct TrafficCircle_Previews: PreviewProvider {
    static var previews: some View {
        TrafficCircle(color: .green, opacity: 1)
    }
}
