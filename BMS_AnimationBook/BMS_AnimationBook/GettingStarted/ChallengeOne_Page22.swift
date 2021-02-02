//
//  ChallengeOne_Page22.swift
//  BMS_AnimationBook
//
//  Created by Eric Davenport on 2/2/21.
//

import SwiftUI
// Use any color you want
// move the circle using on y th eoffset modifier
// use the easeInOut animation curve
// you can use any device/Simulator size
// using hard-code values are fine
struct ChallengeOne_Page22: View {
  @State private var change = false
  
  var body: some View {
    VStack {
      TitleText("Challenge One")
      SubtitleText("Mobve the circle Shape")
      
      Spacer()
      
      Circle()
        .size(width: 100, height: 100)
        .offset(x: change ? 10 : 300, y: change ? 0 : 599)
        .animation(.easeInOut)
      
      Button("Change") {
        self.change.toggle()
      }
    }
  }
}

struct ChallengeOne_Page22_Previews: PreviewProvider {
  static var previews: some View {
    ChallengeOne_Page22()
  }
}
