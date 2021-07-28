//
//  ContentView.swift
//  Traffic Light SwiftUI
//
//  Created by Алексей on 27.07.2021.
//

import SwiftUI

struct ContentView: View {
    @State private var colorIndex = 0
    @State private var selectedLight: Color = Color.white
    @State private var buttonText = "START"
    private var colors: [Color] = [.red, .yellow, .green]
    var body: some View {
        ZStack{
            Color(.black)
                .ignoresSafeArea()
            VStack{
                Spacer()
                ForEach(colors, id: \.self){ color in
                    CircleCustom(color: color,
                                 opacity: selectedLight == color ? 1.0 : 0.2
                    )
                }
                Spacer()
                Button(action: {
                    buttonText = "NEXT"
                    if colorIndex == colors.count {
                        colorIndex = 0
                    }
                    selectedLight = colors[colorIndex]
                    colorIndex += 1

                }) {
                    Text(buttonText)
                        .foregroundColor(.white)
                        .bold()
                        .font(.title)
                }
                .padding()
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.white, lineWidth: 4)
                )
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
