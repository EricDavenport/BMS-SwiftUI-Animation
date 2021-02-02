//
//  AnimateSizeFrame.swift
//  BMS_AnimationBook
//
//  Created by Eric Davenport on 2/2/21.
//

import SwiftUI

struct AnimateSizeFrame: View {
  @State private var change = false
  var body: some View {
    VStack(spacing: 20) {
      TitleText("Animatable Properties")
      SubtitleText("Frame")
      BannerText("You can animatethe sizze of an object through the frame modifier'ss height and width parameters.", backColor: .purple, textColor: .white)
      
      Button("Change") {
        self.change.toggle()
      }
      
      RoundedRectangle(cornerRadius: 20)
        .foregroundColor(.purple)
        .frame(width: change ? 100 : 350, height: change ? 100 : 200)
        .scaleEffect(change ? 0.5 : 1)
        .animation(.easeInOut)
      
      BannerText("Notice how this changes the layout of the screen. You may want to  consider animating with the scaleEffect instead.", backColor: .purple, textColor: .white)
    
    }.font(.title)
  }
}

struct AnimateSizeFrame_Previews: PreviewProvider {
  static var previews: some View {
    AnimateSizeFrame()
  }
}
