//
//  AnimateAlignment.swift
//  BMS_AnimationBook
//
//  Created by Eric Davenport on 2/2/21.
//

import SwiftUI

struct AnimateAlignment: View {
  @State private var change = false
  
  var body: some View {
    VStack(spacing: 20) {
      TitleText("Animatable Properties")
      SubtitleText("Alignment Change")
      BannerText("You can animate the alinment change inside a container view.", backColor: .blue, textColor: .white)
      
      VStack(alignment: change ? .trailing : .leading) {
        RoundedRectangle(cornerRadius: 20)
          .frame(width: 100, height: 100)
          .foregroundColor(.blue)
          .animation(.default)
        HStack {
          Spacer()
        }
      }
      
      BannerText("Inside an HStack:", backColor: .blue, textColor: .white)
      
      HStack(alignment: change ? .bottom : .top) {
        RoundedRectangle(cornerRadius: 20)
          .foregroundColor(.blue)
          .frame(width: 100, height: 100)
          .animation(.default)
        VStack {
          Spacer()
        }
      }.frame(maxHeight: .infinity)
      
      Button("Change") {
        self.change.toggle()
      }
    }.font(.title)
  }
}

struct AnimateAlignment_Previews: PreviewProvider {
  static var previews: some View {
    AnimateAlignment()
  }
}
