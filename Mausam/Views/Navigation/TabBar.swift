//
//  TabBar.swift
//  Mausam
//
//  Created by Sudhanshu Ranjan on 17/12/24.
//

import SwiftUI

struct TabBar: View {
  
  var action: () -> Void
  
  var body: some View {
    ZStack {
      
      
      Arc()
        .fill(Color.tabBarBackground)
        .frame(height: 88)
        .overlay {
          Arc()
            .stroke(Color.tabBarBackground, lineWidth: 0.5)
        }
      
      //Mark: Tab Items
      HStack {
        //Mark: Expand Button
        Button(action: action, label: {
          Image(systemName: "mappin.and.ellipse")
            .frame(width: 44, height: 44)
        })
        
        Spacer()
        
        //Mark: Navigation Button
        NavigationLink {
          
        } label: {
          Image(systemName: "list.star")
            .frame(width: 44, height: 44)
        }
      }
      .font(.title2)
      .foregroundColor(.white)
      .padding(.vertical, 24)
      .padding(.horizontal, 32)
    }.frame(maxHeight: .infinity, alignment: .bottom)
      .ignoresSafeArea()
  }  
}

#Preview {
  TabBar(action: {})
    .preferredColorScheme(.dark)
}
