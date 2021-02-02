//
//  AnimateTextSize.swift
//  BMS_AnimationBook
//
//  Created by Eric Davenport on 2/2/21.
//

import SwiftUI

struct AnimateTextSize: View {
  @State private var change = false
  var body: some View {
    VStack(spacing: 20) {
      TitleText("Animatable PRoperties")
      SubtitleText("Text Size")
      BannerText("Take a look at what happens when you try to animate the font size of a text view", backColor: .blue, textColor: .white)
      
      Button("Change") {
        self.change.toggle()
      }
      
      Spacer()
      
      Text("Hello!")
        // bad UI
//        .font(.system(size: change ? 80 : 20))
        .font(.system(size: 80))
        // bad UI when going from small to big - rever for better visual effect -> start small by bool statement
        .scaleEffect(change ? 1 : 0.25)
        .animation(.easeInOut)
        .border(Color.blue)
      
      Spacer()
    }.font(.title)
  }
}

struct AnimateTextSize_Previews: PreviewProvider {
  static var previews: some View {
    AnimateTextSize()
  }
}
