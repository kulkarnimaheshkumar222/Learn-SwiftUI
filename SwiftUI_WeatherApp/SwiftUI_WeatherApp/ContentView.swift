//
//  ContentView.swift
//  SwiftUI_WeatherApp
//
//  Created by Mahesh Kulkarni on 29/07/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            BackgroundView(topColor: .blue, bottomColor: Color("lightblue"))
            VStack {
                Text("Capertino, CA")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding()
                VStack(spacing:10){
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180, alignment: .center)
                    Text("76°")
                        .font(.system(size: 70, weight: .medium, design: .default))
                        .foregroundColor(.white)
                }
                .padding(.bottom,40)
                HStack(spacing:20) {
                    WeatherView(dayOfWeek: "TUE",
                                imageName: "cloud.sun.fill",
                                temperature: 74)
                    WeatherView(dayOfWeek: "WED",
                                imageName: "sun.max.fill",
                                temperature: 74)
                    WeatherView(dayOfWeek: "THURS",
                                imageName: "wind.snow",
                                temperature: 74)
                    WeatherView(dayOfWeek: "FRI",
                                imageName: "sunset.fill",
                                temperature: 60)
                    WeatherView(dayOfWeek: "SAT",
                                imageName: "snow",
                                temperature: 25)
                }
                
                Spacer()
                
                Button {
                    print("tapped")
                } label: {
                    Text("Change Day Time")
                        .frame(width: 280, height: 60, alignment: .center)
                        .background(.white)
                        .font(.system(size: 28, weight: .bold, design: .default))
                        .cornerRadius(10)
                }
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

struct WeatherView: View {
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack {
            Text(dayOfWeek)
                .foregroundColor(.white)
                .font(.system(size: 16, weight: .medium, design: .default))
            Image(systemName: imageName)
                .resizable()
                .renderingMode(.original)
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40, alignment: .leading)
            Text("\(temperature)°")
                .font(.system(size: 28, weight: .medium, design: .default))
                .foregroundColor(.white)
        }
    }
}

struct BackgroundView: View {
    var topColor: Color
    var bottomColor: Color
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [topColor,bottomColor]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
        .edgesIgnoringSafeArea(.all)
    }
}
