//
//  AnimateRotationEffectAnchors.swift
//  BMS_AnimationBook
//
//  Created by Eric Davenport on 2/2/21.
//

import SwiftUI

struct AnimateRotationEffectAnchors: View {
  @State private var change = false
  var body: some View {
    VStack(spacing: 15) {
      TitleText("Animatable Properties")
      SubtitleText("Rotation Around Anchors")
      BannerText("You can rotate around an anchor of yur choosing. The default is rotation around the cnter anchor.", backColor: .red, textColor: .white)
      
      Button("Change") {
        self.change.toggle()
      }
      
      Spacer()
      
      RoundedRectangle(cornerRadius: 20)
        .fill(Color.red)
        .shadow(radius: 8)
        .frame(width: 320, height: 200)
        .overlay(Text("Rotate from top left")
                  .foregroundColor(.white))
        .rotationEffect(.degrees(change ? 220 : 0), anchor: .topLeading)
        .animation(.easeInOut)
      
      RoundedRectangle(cornerRadius: 20)
        .fill(Color.red)
        .shadow(radius: 8)
        .frame(width: 320, height: 200)
        .overlay(Text("Rotate from bottom right")
                  .foregroundColor(.white))
        .rotationEffect(.degrees(change ? 220 : 0), anchor: .bottomTrailing)
        .animation(.easeInOut)
      
      Spacer()
    }.font(.title)
  }
}

struct AnimateRotationEffectAnchors_Previews: PreviewProvider {
  static var previews: some View {
    AnimateRotationEffectAnchors()
  }
}
