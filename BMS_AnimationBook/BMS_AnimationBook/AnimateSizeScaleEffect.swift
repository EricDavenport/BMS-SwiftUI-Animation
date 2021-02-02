//
//  AnimateSizeScaleEffect.swift
//  BMS_AnimationBook
//
//  Created by Eric Davenport on 2/2/21.
//

import SwiftUI

struct AnimateSizeScaleEffect: View {
  @State private var change = false
  var body: some View {
    VStack(spacing: 20) {
      TitleText("Animmatable Properties")
      SubtitleText("Scale Effect")
      BannerText("You can animate the size of an object through the scaleEffect modifier", backColor: .blue, textColor: .white)
      
      Button("Change") {
        self.change.toggle()
      }
      
      RoundedRectangle(cornerRadius: 20)
        .foregroundColor(.blue)
        .padding()
        .scaleEffect(change ? 0.1 : 1)
        .animation(.easeInOut)
      
      BannerText("Notive how scale effect does NOT modify the layout", backColor: .blue, textColor: .white)
    
    }.font(.title)
  }
}

struct AnimateSizeScaleEffect_Previews: PreviewProvider {
  static var previews: some View {
    AnimateSizeScaleEffect()
  }
}
