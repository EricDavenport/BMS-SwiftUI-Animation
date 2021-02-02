//
//  AnimateScaleEffectAnchors.swift
//  BMS_AnimationBook
//
//  Created by Eric Davenport on 2/2/21.
//

import SwiftUI

struct AnimateScaleEffectAnchors: View {
  @State private var change: Bool = false
  var body: some View {
    VStack(spacing: 10) {
      TitleText("Animatable Properties")
      SubtitleText("Scale From anchors")
      BannerText("You can scale around an anchor of you choosing. The default is scaling from the centr anchor.", backColor: .blue, textColor: .white)
      
      Button("Change") {
        self.change.toggle()
      }
      
      RoundedRectangle(cornerRadius: 20)
        .fill(Color.blue)
        .overlay(Text("Scale From Top")
                  .foregroundColor(.white))
        .scaleEffect(change ? 1 : 0.25, anchor: .top)
        .animation(.default)
      
      RoundedRectangle(cornerRadius: 20)
        .fill(Color.blue)
        .overlay(Text("Scale from right")
                  .foregroundColor(.white))
        .scaleEffect(change ? 0.25 : 1, anchor: .trailing)
        .animation(.default)
      
      RoundedRectangle(cornerRadius: 20)
        .fill(Color.blue)
        .overlay(Text("Scale From Top")
                  .foregroundColor(.white))
        .scaleEffect(change ? 1 : 0.5, anchor: .bottomLeading)
        .animation(.default)
      
    }.font(.title)
  }
}

struct AnimateScaleEffectAnchors_Previews: PreviewProvider {
  static var previews: some View {
    AnimateScaleEffectAnchors()
  }
}
