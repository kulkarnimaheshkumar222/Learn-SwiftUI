//
//  ContentView.swift
//  SwiftUIBasics
//
//  Created by Mahesh Kulkarni on 07/01/23.
//

import SwiftUI

struct ContentView: View {
    
    var colorList:[Color] = [
        .red,
        .green,
        .blue
    ]
    
    var secondColorList:[Color] = [
        .blue,
        .purple,
        .pink
    ]
    @State private var isScreenTapped: Bool = false
    @State private var offSetY: CGFloat = -1000
    
    var body: some View {
        ZStack {
            LinearGradient(colors: isScreenTapped ? colorList : secondColorList, startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            Text("SwiftUI Basics")
                .padding()
                .font(.largeTitle)
                .foregroundColor(.white)
                .offset(y: offSetY)
        }
        .onTapGesture {
            isScreenTapped.toggle()
            withAnimation(.easeIn(duration: 1)) {
                if isScreenTapped {
                    offSetY = -1000
                } else {
                    offSetY = 0
                }
            }
           
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
