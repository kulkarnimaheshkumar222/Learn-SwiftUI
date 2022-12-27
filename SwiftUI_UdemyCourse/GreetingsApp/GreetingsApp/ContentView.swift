//
//  ContentView.swift
//  GreetingsApp
//
//  Created by Mahesh Kulkarni on 27/12/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            TextView(text: "Hello there!", color: .green)
            
            TextView(text: "Welcome to swift Programming", color: .gray)
            
            TextView(text: "Are you Ready to?", color: .yellow)
            
            TextView(text: "Start exploring", color: .red)
            
            TextView(text: "Boom !!", color: .purple)
            
        }
         .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct TextView: View {
    let text: String
    let color:Color
    var body: some View {
        Text(text)
            .font(.title2)
            .fontWeight(.semibold)
            .foregroundColor(Color.white)
            .padding()
            .background(color.opacity(0.8))
            .cornerRadius(/*@START_MENU_TOKEN@*/20.0/*@END_MENU_TOKEN@*/)
            .shadow(color: color.opacity(0.4), radius: 5, x: 10, y: 10)
    }
}
