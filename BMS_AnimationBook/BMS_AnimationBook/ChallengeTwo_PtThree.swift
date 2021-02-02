//
//  ChallengeTwo_PtThree.swift
//  BMS_AnimationBook
//
//  Created by Eric Davenport on 2/2/21.
//

import SwiftUI

struct ChallengeTwo_PtThree: View {
  @State private var show = false
  var body: some View {
    VStack {
      TitleText("Challenge III")
      SubtitleText("Show a Menu")
      Button("Open Menu") {
        self.show.toggle()
      }
      Spacer()
      
      RoundedRectangle(cornerRadius: 20)
        .frame(width: 380, height: 300)
        .overlay(VStack(spacing: 1) {
          Image(systemName: "wand.and.stars")
            .foregroundColor(.white)
          Text("My Menu!")
            .foregroundColor(.white)
        })
        .foregroundColor(.blue)
        .opacity(show ? 0.0 : 1)
        .scaleEffect(show ? 0.0 : 1, anchor: .bottom)
        .animation(.default)
    }
  }
}

struct ChallengeTwo_PtThree_Previews: PreviewProvider {
  static var previews: some View {
    ChallengeTwo_PtThree()
  }
}
