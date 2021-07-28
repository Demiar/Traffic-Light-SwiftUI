//
//  Circle.swift
//  Traffic Light SwiftUI
//
//  Created by Алексей on 27.07.2021.
//

import SwiftUI

struct CircleCustom: View {
    var width: CGFloat = 100
    var height: CGFloat = 100
    var color: Color
    var opacity = 1.0
    var body: some View {
        Circle()
            .frame(width: width, height: height)
            .foregroundColor(color)
            .opacity(opacity)
            .padding()
    }
}

struct Circle_Previews: PreviewProvider {
    static var previews: some View {
        CircleCustom(width: 100, height: 100, color: .red, opacity: 0.5)
    }
}
