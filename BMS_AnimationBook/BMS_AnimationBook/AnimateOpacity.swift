//
//  AnimateOpacity.swift
//  BMS_AnimationBook
//
//  Created by Eric Davenport on 2/2/21.
//

import SwiftUI

struct AnimateOpacity: View {
  @State private var show = false
  var body: some View {
    VStack(spacing: 20) {
      TitleText("Animatable Properties")
      SubtitleText("Opacity")
      BannerText("Opacity is th equality if thickness, solid or opaqueness. The more opacity, the more solid something appeas (less transparent).", backColor: .green, textColor: .white)
      
      Button("Show/Hide") {
        self.show.toggle()
      }
      
      RoundedRectangle(cornerRadius: 20)
        .foregroundColor(.green)
        .padding()
        .opacity(show ? 0 : 1)
        .animation(.easeInOut)
        
    }.font(.title)
  }
}

struct AnimateOpacity_Previews: PreviewProvider {
  static var previews: some View {
    AnimateOpacity()
  }
}
