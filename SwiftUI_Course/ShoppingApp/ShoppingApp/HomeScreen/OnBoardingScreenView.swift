//
//  OnBoardingScreenView.swift
//  ShoppingApp
//
//  Created by Mahesh Kulkarni on 29/10/22.
//

import SwiftUI

struct OnBoardingScreenView: View {
    var body: some View {
        NavigationView {
            VStack(spacing:30) {
                Image("img")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .padding()
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("Order Your Favourite Fruits")
                        .fontWeight(.bold)
                        .font(.largeTitle)
                    
                    Text("Eat fresh fruits and try to be healthy")
                        .fontWeight(.regular)
                        .font(.title3)
                }
                
                Spacer()
                
                NavigationLink {
                    HomeScreenView()
                } label: {
                    RoundedRectangle(cornerRadius: 12)
                        .fill(Color("6"))
                        .frame(width: 280, height: 60, alignment: .trailing)
                        .overlay(
                            HStack(spacing: 10) {
                                Text("Next")
                                    .font(.largeTitle)
                                
                                    .fontWeight(.bold)
                                Image(systemName: "chevron.right")
                                
                            }.foregroundColor(.black)
                        )
                }
                 Spacer()
            }
            .navigationBarHidden(true)
        }
    }
}

struct OnBoardingScreenView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingScreenView()
    }
}
