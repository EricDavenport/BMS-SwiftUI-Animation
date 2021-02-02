//
//  AnimateGemoetryReader.swift
//  BMS_AnimationBook
//
//  Created by Eric Davenport on 2/2/21.
//

import SwiftUI

struct AnimateGemoetryReader: View {
  @State private var change = false
  var body: some View {
    VStack(spacing: 20) {
      TitleText("Animatablw Properties")
      SubtitleText("in Gemoetry Reader")
      BannerText("YOu can animate the center point (position) of a view within a GeometryReader's coordinate space.", backColor: .blue, textColor: .blue)
      
      GeometryReader { gr in
        RoundedRectangle(cornerRadius: 20)
          .foregroundColor(.blue)
          .frame(width: 100, height: 100)
          .position(self.change ? CGPoint(x: 100, y: 100) : CGPoint(x: 300, y: 300))
          .animation(.default)
      }
      
      Button("Change") {
        self.change.toggle()
      }
    }.font(.title)
  }
}

struct AnimateGemoetryReader_Previews: PreviewProvider {
  static var previews: some View {
    AnimateGemoetryReader()
  }
}
