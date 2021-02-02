//
//  ChallengeTwo_Page45.swift
//  BMS_AnimationBook
//
//  Created by Eric Davenport on 2/2/21.
//

import SwiftUI

struct ChallengeTwo_Page45: View {
  @State private var change = false
  var offsetValue: CGFloat = 250 // Centralized offset value
  var body: some View {
    VStack {
      TitleText("Putting it All Together")
      SubtitleText("End Result")
      BannerText("This is the final animation you will be building.", backColor: change ? .orange : .red, textColor: .white)
        .animation(.default)
      Spacer()
      
      VStack (spacing: 1){
        HStack(alignment: .bottom, spacing: 1) {
          Rectangle()
            .frame(width: 90, height: 45)
            .offset(x: change ? -offsetValue : 0, y : 0)
          Rectangle()
            .frame(width: 45, height: 90)
            .offset(x: 0, y : change ? -offsetValue : 0)
        }.offset(x: -22.5)
        
        HStack(alignment: .top, spacing: 1) {
          Rectangle()
            .frame(width: 45, height: 90)
            .offset(x: 0, y : change ? offsetValue : 0)
          Rectangle()
            .frame(width: 90, height: 45)
            .offset(x: change ? offsetValue : 0, y : 0)
        }.offset(x: 22.5)
      }
      .foregroundColor(change ? .orange : .red)
      .opacity(change ? 0 : 1)
      .rotationEffect(.degrees(change ? 0 : -90), anchor: .center)
      .animation(.default)
      
      Spacer()
      
      Button("Change") {
        self.change.toggle()
      }
    }
  }
}

struct ChallengeTwo_Page45_Previews: PreviewProvider {
  static var previews: some View {
    ChallengeTwo_Page45()
  }
}
