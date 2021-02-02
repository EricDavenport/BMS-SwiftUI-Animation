//
//  ChallengeTwo_PtTwo.swift
//  BMS_AnimationBook
//
//  Created by Eric Davenport on 2/2/21.
//

import SwiftUI

struct ChallengeTwo_PtTwo: View {
  @State private var show = false
  @State var username: String
  var body: some View {
    VStack {
      TitleText("Challenge II")
      SubtitleText("Show Login")
      
      Spacer()
      
      Text("Already have an account?")
        .padding(.bottom)
      Button("Login Now") {
        self.show.toggle()
      }
      Image(systemName: "lock.shield")
      VStack {
        TextField("Username", text: $username)
          .padding()
        TextField("Password", text: $username)
          .padding()
      }
      .textFieldStyle(RoundedBorderTextFieldStyle())
      .offset(x: show ? -400 : 0, y: 0)
      .animation(.default)
      
      Spacer()
      
    }.font(.title)
  }
}

struct ChallengeTwo_PtTwo_Previews: PreviewProvider {
  static var username = ""
  static var previews: some View {
    ChallengeTwo_PtTwo(username: username)
  }
}
