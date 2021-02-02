//
//  AnimateTrim.swift
//  BMS_AnimationBook
//
//  Created by Eric Davenport on 2/2/21.
//

import SwiftUI

struct AnimateTrim: View {
  @State private var change = false
  @State private var circleProgress: CGFloat = 1.0
  
  var body: some View {
    VStack {
      TitleText("Animatable Properties")
      SubtitleText("Trim")
      BannerText("Animating the trim of a circle is a great way to show progress.", backColor: .green)
      
      Button("Change") {
        self.change.toggle()
        self.circleProgress = self.change ? 0.01 : 1
      }
      
      Spacer()
      
      Circle()
        .trim(from: 0, to: circleProgress)  // animate trim
        .stroke(Color.green, style: StrokeStyle(lineWidth: 8, lineCap: CGLineCap.round))
        .frame(height: 300)
        .rotationEffect(.degrees(-90))   // start from top
        .padding(40)
        .animation(.default)
      
      Spacer()
      
    }.font(.title)
  }
}

struct AnimateTrim_Previews: PreviewProvider {
  static var previews: some View {
    AnimateTrim()
  }
}
