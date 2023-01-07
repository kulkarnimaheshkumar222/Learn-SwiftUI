//
//  ContentView.swift
//  GreetingsApp
//
//  Created by Mahesh Kulkarni on 27/12/22.
//

import SwiftUI


struct ContentView: View {
    let messages = [
    DataItemModel(text: LocalizedStringKey("Hello there!"), color: Color("Green")),
    DataItemModel(text: LocalizedStringKey("Welcome to swift Programming"), color: Color("Gray")),
    DataItemModel(text:LocalizedStringKey("Are you Ready to?"), color: Color("Yellow")),
    DataItemModel(text: LocalizedStringKey("Start exploring"), color: Color("Red")),
    DataItemModel(text: LocalizedStringKey("Boom !!"), color:Color("Purple"))
    ]
    @State var isRotated: Bool = false
    @State var captionIndex: Int = 0
    
    var captions: [LocalizedStringKey] = [
        LocalizedStringKey("Exploring iOS 15 Programming !!"),
        LocalizedStringKey("Enjoy Learning SwiftUI !!"),
        LocalizedStringKey("Explore Swift Programming !!"),
        LocalizedStringKey("Let's Learn MVVM Pattern !!")
    ]
    
    var body: some View {
        content
    }
    
    private var content: some View {
        ZStack {
            backGroundView
            VStack(alignment: .leading) {
                topHeaderView
                Spacer()
                messagesView
                Spacer()
                Spacer()
            }
            .padding()
        }
    }
    
    ///  This is header View Which shows greetings
    
    private var topHeaderView: some View {
        HStack {
            VStack(alignment: .leading,spacing: 0) {
                Text(LocalizedStringKey("Greeting"))
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Text(captions[captionIndex])
                    .font(.headline)
                    .fontWeight(.thin)
                    
            }
            .padding()
            .onTapGesture {
                let length = captions.count
                captionIndex = Int.random(in: 0..<length)
            }
            Spacer()
            Circle()
                .strokeBorder(AngularGradient(gradient: Gradient(colors: [
                    .pink,
                    .blue,
                    .yellow
                ]), center: .center, angle: .zero),
                              lineWidth: 15)
                .rotationEffect(isRotated ? .zero : .degrees(360))
                .frame(width: 70, height: 70)
                .onTapGesture {
                    withAnimation {
                        isRotated.toggle()
                    }
                }
        }
        
    }
    
    /// This Shows actual messages which changes colors randomly when we tap on it.

    private var messagesView: some View {
        ForEach(messages) { dataItem in
            TextView(text: dataItem.text, color: dataItem.color)
        }
    }
    
    private var backGroundView: some View {
        LinearGradient(colors: [.red,.green,.blue], startPoint: .topLeading, endPoint: .bottomTrailing)
            .opacity(0.3)
            .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView()
            .preferredColorScheme(.dark)
    }
}


