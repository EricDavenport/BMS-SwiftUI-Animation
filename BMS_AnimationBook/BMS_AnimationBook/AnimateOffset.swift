//
//  AnimateOffset.swift
//  BMS_AnimationBook
//
//  Created by Eric Davenport on 2/2/21.
//

import SwiftUI

struct AnimateOffset: View {
  @State private var change = false
  var body: some View {
    VStack(spacing: 20) {
      TitleText("Animatable Properties")
      SubtitleText("Offset")
      BannerText("Animate the location of a cview using X and Y coordinates.", backColor: .blue, textColor: .white)
      
      RoundedRectangle(cornerRadius: 20)
        .foregroundColor(.blue)
        .frame(width: 100, height: 100)
        .offset(x: change ? 140 : -140, y: 0)
        .animation(.default)
      
      BannerText("Offset also uses a CGSize object. A width with positive value moves right, negative values move left. For height, positive values move up, negative values move down.", backColor: .blue, textColor: .white)
      
      RoundedRectangle(cornerRadius: 20)
        .foregroundColor(.blue)
        .frame(width: 100, height: 100)
        .offset(change
            ? CGSize(width: 140, height: 0)
            : CGSize(width: -140, height: 0))
        .animation(.default)
      
      Button("Change") {
        self.change.toggle()
      }
    }.font(.title)
  }
}

struct AnimateOffset_Previews: PreviewProvider {
  static var previews: some View {
    AnimateOffset()
  }
}
