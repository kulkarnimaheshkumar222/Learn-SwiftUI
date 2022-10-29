//
//  KeyView.swift
//  CalculatorApp
//
//  Created by Mahesh Kulkarni on 02/09/22.
//

import SwiftUI

struct KeyView: View {
   
    @State var value = "0"
    @State var runningNumber = 0
    @State var currentOperation: Operation = .none
    @State private var changeColor = false
    var cornerRadius:CGFloat = 15
    var buttons:[[Keys]] = [
        [.clear,.negative,.percentage,.divide],
        [.seven,.eight,.nine,.multiply],
        [.four,.five,.six,.substract],
        [.one,.two,.three,.add],
        [.zero,.decimal,.equal]
    ]
   
    var body: some View {
        VStack {
            Spacer()
            HStack {
            RoundedRectangle(cornerRadius: cornerRadius)
                .foregroundColor(changeColor ? Color("num").opacity(0.4): Color.pink.opacity(0.2))
                .scaleEffect(changeColor ? 1.5: 1.0)
                .frame(width: 350, height: 280)
                .animation(.easeInOut.speed(0.17).repeatForever(), value: changeColor)
                .onAppear(perform: {
                    self.changeColor.toggle()
                })
                .overlay(
                Text(value)
                    .bold()
                    .font(.system(size: 100))
                    .foregroundColor(.black)
                )
            }.padding()
            
            Text("Hello Mahesh")
        }
    }
}

struct KeyView_Previews: PreviewProvider {
    static var previews: some View {
        KeyView()
    }
}
