//
//  ContentView.swift
//  GreetingsApp
//
//  Created by Mahesh Kulkarni on 27/12/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
        Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
        Text("Greetings")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(Color.purple)
                .padding()
                .background(Color.orange.opacity(0.4))
                .cornerRadius(/*@START_MENU_TOKEN@*/20.0/*@END_MENU_TOKEN@*/)
                .shadow(color: .orange.opacity(0.4), radius: 5, x: 10, y: 10)
                
        }
         .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
