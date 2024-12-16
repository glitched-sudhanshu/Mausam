//
//  HomeView.swift
//  Mausam
//
//  Created by Sudhanshu Ranjan on 16/12/24.
//

import SwiftUI

struct HomeView: View {
  var body: some View {
    NavigationView {
      ZStack {
        
        //Mark: Background color
        Color.background
          .ignoresSafeArea()
        
        //Mark: Background Image
        Image("Background")
          .resizable()
          .ignoresSafeArea()
        
        //Mark: House Image
        Image("House")
          .frame(maxHeight: .infinity, alignment: .top)
          .padding(.top, 257)
        
        //Marl: Info
        VStack(spacing: -10) {
          Text("Montreal")
            .font(.largeTitle)
          
          VStack {
            Text(attributedString)
            Text("H:24°   L:18°")
              .font(.title3.weight(.semibold))
          }
          Spacer()
        }.padding(.top, 51)
        
        //Mark: Tab Bar
        TabBar(action: {})
      }
      .navigationBarHidden(true)
    }
  }
  
  private var attributedString: AttributedString {
    var string = AttributedString("19°" + "\n " + "Mostly Clear")
    if let temp = string.range(of: "19°") {
      string[temp].font = .system(size: 96, weight: .thin)
      string[temp].foregroundColor = .primary
    }
    if let pipe = string.range(of: " | ") {
      string[pipe].font = .title3.weight(.semibold)
      string[pipe].foregroundColor = .secondary
    }
    if let weather = string.range(of: "Mostly Clear") {
      string[weather].font = .title3.weight(.semibold)
      string[weather].foregroundColor = .secondary
    }
    return string
  }
}

#Preview {
  HomeView()
    .preferredColorScheme(.dark)
}
