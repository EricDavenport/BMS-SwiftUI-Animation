//
//  AnimateHueRotation.swift
//  BMS_AnimationBook
//
//  Created by Eric Davenport on 2/2/21.
//

import SwiftUI

struct AnimateHueRotation: View {
  @State private var change = false
  var body: some View {
    VStack(spacing: 20) {
      TitleText("Animatable Properties")
      SubtitleText("Hue")
      BannerText("Another wat to xhange color is to change the hue on the color wheel by rotation the current point.", backColor: .blue, textColor: .white)
      RoundedRectangle(cornerRadius: 20)
        .foregroundColor(.blue)
        .padding()
        .hueRotation(Angle.degrees(change ? 170 : 0))
        .animation(.easeInOut)
            
      Button("Change") {
        self.change.toggle()
      }
    }.font(.title)
  }
}

struct AnimateHueRotation_Previews: PreviewProvider {
  static var previews: some View {
    AnimateHueRotation()
  }
}
