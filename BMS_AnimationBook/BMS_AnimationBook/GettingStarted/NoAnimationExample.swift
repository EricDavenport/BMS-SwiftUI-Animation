//
//  ContentView.swift
//  BMS_AnimationBook
//
//  Created by Eric Davenport on 2/2/21.
//

import SwiftUI

struct NoAnimationExample: View {
  @State private var change = false
  var body: some View {
    VStack {
//      TitleText("Example")
//      SubtitleText("Parts of Animation")
//      BannerText("The button chsanges a variable that then changees a view's property. That property change causes a change on the screen.")
      
      Circle()
        .foregroundColor(.orange)
        .frame(width: 100, height: 100)
        // variable changes the Y position
        .offset(x: change ? 120 : 0, y: change ? 300 : 0)
        .animation(.easeInOut)
      
      Spacer()
      
      Button("Change") {
        // the button triggers the variables change
        self.change.toggle()
      }.padding(.bottom)
    }.font(.title)
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    NoAnimationExample()
  }
}
