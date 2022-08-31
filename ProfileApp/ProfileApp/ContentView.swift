//
//  ContentView.swift
//  ProfileApp
//
//  Created by Mahesh Kulkarni on 31/08/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            Image(ImageView.background.name)
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            VStack(alignment: .center,spacing: 18) {
                Spacer()
                VStack(alignment: .center, spacing: 15) {
                    Image(ImageView.userImg.name)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180, alignment: .center)
                        .clipShape(Circle())
                        .shadow(color: .pink, radius: 5)
                    Text(LabelConstants.yourNameLbl)
                        .fontWeight(.bold)
                        .font(Font.system(size: 30))
                        .foregroundColor(.white)
                        .font(.system(.largeTitle))
                        .shadow(radius: 5)
                    Text(LabelConstants.jobTitleLbl)
                        .fontWeight(.semibold)
                        .font(Font.system(size: 20))
                        .foregroundColor(.white)
                    HStack(alignment: .center, spacing: 40) {
                        Image(systemName: ImageView.heart.name)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        Image(systemName: ImageView.network.name)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        Image(systemName: ImageView.message.name)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        Image(systemName: ImageView.phone.name)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }
                    .foregroundColor(.white)
                    .frame(width: 250, height: 50, alignment: .center)
                    .shadow(color: .pink, radius: 5, y: 5)
                }
                Spacer()
                
                VStack(alignment: .center, spacing: 5) {
                    RoundedRectangle(cornerRadius: 120)
                        .frame(width: 200, height: 50, alignment: .center)
                        .foregroundColor(.white)
                        .shadow(color: .pink, radius: 8,y:8)
                        .padding()
                        .overlay(
                            Text("Follow")
                            .fontWeight(.bold)
                            .foregroundColor(.pink)
                            .font(.system(size: 30))
                        )
                    HStack(alignment: .center, spacing: 60) {
                        VStack(alignment: .center, spacing: 5) {
                            Text("1775")
                                .font(.title)
                                .foregroundColor(.pink)
                            Text("Appreciations")
                                .font(.caption)
                                .foregroundColor(.gray)
                        }
                        VStack(alignment: .center, spacing: 5) {
                            Text("800")
                                .font(.title)
                                .foregroundColor(.pink)
                            Text("Follwers")
                                .font(.caption)
                                .foregroundColor(.gray)
                        }
                        VStack(alignment: .center, spacing: 5) {
                            Text("231")
                                .font(.title)
                                .foregroundColor(.pink)
                            Text("Following")
                                .font(.caption)
                                .foregroundColor(.gray)
                        }
                    }
                    Text(LabelConstants.abtyouLbl)
                        .fontWeight(.regular)
                        .font(.system(size: 40))
                        .font(.caption)
                     
                    Text(LabelConstants.description)
                        .font(.system(.body))
                        .foregroundColor(.black)
                        .multilineTextAlignment(.center)
                        .opacity(0.7)
                        .padding(.horizontal)
                       
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
