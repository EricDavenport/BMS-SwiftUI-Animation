//
//  AnimateRoundedCorners.swift
//  BMS_AnimationBook
//
//  Created by Eric Davenport on 2/2/21.
//

import SwiftUI

struct AnimateRoundedCorners: View {
  @State private var change = false
  
  var body: some View {
    VStack(spacing: 20) {
      TitleText("Animatable Properties")
      SubtitleText("Corner Radius")
      BannerText("You provide a value to set the corner radius of a viere. The change of this property can be animated.")
      
      Button("Change") {
        self.change.toggle()
      }
      
      RoundedRectangle(cornerRadius: change ? 0 : 70)
        .foregroundColor(.blue)
        .padding()
        .animation(.easeInOut)
      
      Text("You can Not animate the cornerRadius modifier")
        .padding(25)
        .background(Color.blue)
        .cornerRadius(change ? 0 : .infinity) // cannot animate this
        .animation(.easeInOut)  // This will not work
      
    }.font(.title)
  }
}

struct AnimateRoundedCorners_Previews: PreviewProvider {
  static var previews: some View {
    AnimateRoundedCorners()
  }
}
