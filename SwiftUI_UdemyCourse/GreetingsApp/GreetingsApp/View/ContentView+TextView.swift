//
//  ContentView+TextView.swift
//  GreetingsApp
//
//  Created by Mahesh Kulkarni on 07/01/23.
//

import SwiftUI

extension ContentView {
    struct TextView: View {
        let text: LocalizedStringKey
        @State var color:Color
        
        let colors: [Color] = [.red, .green, .blue, .yellow, .purple, .orange, .accentColor]
        var body: some View {
            Text(text)
                .font(.title2)
                .fontWeight(.semibold)
                .foregroundColor(Color.white)
                .padding()
                .background(color.opacity(0.8))
                .cornerRadius(/*@START_MENU_TOKEN@*/20.0/*@END_MENU_TOKEN@*/)
                .shadow(color: color.opacity(0.4), radius: 5, x: 10, y: 10)
                .onTapGesture {
                    let length = colors.count
                    let randomIndex = Int.random(in: 0..<length)
                    color = colors[randomIndex]
                }
        }
    }
}
