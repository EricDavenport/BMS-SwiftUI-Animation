//
//  AnimateColor.swift
//  BMS_AnimationBook
//
//  Created by Eric Davenport on 2/2/21.
//

import SwiftUI

struct AnimateColor: View {
  @State private var change = false
  
  var body: some View {
    VStack(spacing: 20) {
      TitleText("Animate Properties")
      SubtitleText("Color")
      BannerText("You can animate the change from one color to another", backColor: .blue, textColor: .white)
      
      Text("With Animation")
      RoundedRectangle(cornerRadius: 20)
        .foregroundColor(change ? .orange : .blue)
        .padding()
        .animation(.easeInOut)
      
      Text("Without animation")
      RoundedRectangle(cornerRadius: 20)
        .foregroundColor(change ? .orange : .blue)
        .padding()
      
      Button("Change") {
        self.change.toggle()
      }
    }.font(.title)
  }
}

struct AnimateColor_Previews: PreviewProvider {
  static var previews: some View {
    AnimateColor()
  }
}
