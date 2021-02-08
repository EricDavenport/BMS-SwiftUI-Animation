//
//  TriggerView.swift
//  BMS_AnimationBook
//
//  Created by Eric Davenport on 2/8/21.
//

import SwiftUI

struct TriggerView: View {
  @State private var showButtons = false
  
  var body: some View {
    ZStack(alignment: .bottomTrailing) {
      VStack {
        TitleText("Triggers")
        SubtitleText("Buttons")
        BannerText("You've seen this example a lot now. The tap of a button triggers the animation.", backColor: .green)
        Spacer()
      }
        Group {
          // bag badge
          Button(action: { self.showButtons.toggle() }) {
            Image(systemName: "bag.badge.plus")
              .padding(24)
              .rotationEffect(.degrees(showButtons ? 0 : -90))
          }
          .background(Circle().fill(Color.green)
                        .shadow(radius: 10, x: 4, y: 4))
          .offset(x: 0, y: showButtons ? -110 : 0)
          .opacity(showButtons ? 1 : 0)
          
          // gauge badge
          Button(action: { self.showButtons.toggle() }) {
            Image(systemName: "gauge.badge.plus")
              .padding(24)
              .rotationEffect(.degrees(showButtons ? 0 : 90))
          }
          .background(Circle().fill(Color.green)
                        .shadow(radius: 10, x: 4, y: 4))
          .offset(x: showButtons ? -110 : 0, y: showButtons ? -110 : 0)
          .opacity(showButtons ? 1 : 0)
          
          // calendar badge
          Button(action: { self.showButtons.toggle() }) {
            Image(systemName: "calendar.badge.plus")
              .padding(24)
              .rotationEffect(.degrees(showButtons ? 0 : 90))
          }
          .background(Circle().fill(Color.green)
                        .shadow(radius: 10, x: 4, y: 4))
          .offset(x: showButtons ? -110 : 0, y:  0)
          .opacity(showButtons ? 1 : 0)
          
          // top badge "+"
          Button(action: { self.showButtons.toggle() }) {
            Image(systemName: "plus")
              .padding(24)
              .rotationEffect(.degrees(showButtons ? 45 : 0))
          }
          .background(Circle().fill(Color.green)
                        .shadow(radius: 10, x: 4, y: 4))
        }
        .padding(.trailing, 20)
        .accentColor(.white)
        .animation(.easeInOut)
      }
  }
}

struct TriggerView_Previews: PreviewProvider {
  static var previews: some View {
    TriggerView()
  }
}
