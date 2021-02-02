//
//  AnimateRotation.swift
//  BMS_AnimationBook
//
//  Created by Eric Davenport on 2/2/21.
//

import SwiftUI

struct AnimateRotation: View {
  @State private var change = false
  var body: some View {
    VStack(spacing: 20) {
     TitleText("Animatable Properties")
      SubtitleText("Rotation Effect")
      BannerText("Totations aree also animatable.", backColor: .pink, textColor: .white)
      
      Button("Change") {
        self.change.toggle()
      }
      
      Spacer()
      
      RoundedRectangle(cornerRadius: 20)
        .foregroundColor(.pink)
        .frame(width: 300, height: 300)
        .overlay(Image(systemName: "arrow.right")
                  .foregroundColor(.black))
        .rotationEffect(.degrees(change ? 900 : 0))
        .animation(.easeInOut)
      
      Spacer()
      
    }.font(.title)
  }
}

struct AnimateRotation_Previews: PreviewProvider {
  static var previews: some View {
    AnimateRotation()
  }
}
