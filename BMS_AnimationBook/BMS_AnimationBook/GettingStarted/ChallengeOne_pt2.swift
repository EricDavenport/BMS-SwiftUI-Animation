//
//  ChallengeOne_pt2.swift
//  BMS_AnimationBook
//
//  Created by Eric Davenport on 2/2/21.
//

import SwiftUI

struct ChallengeOne_pt2: View {
  @State private var change = false
  var body: some View {
    VStack {
      TitleText("Challenge")
      SubtitleText("Move the Ciclr Shape")
      Spacer()
      Circle()
        .size(width: 100, height: 100)
        .foregroundColor(.green)
        .offset(x: 160, y: change ? 600 : 0)
        .animation(.easeIn)
      
      Button("Change") {
        self.change.toggle()
      }
    }
  }
}

struct ChallengeOne_pt2_Previews: PreviewProvider {
  static var previews: some View {
    ChallengeOne_pt2()
  }
}
