//
//  TableOfContentsPage.swift
//  BMS_AnimationBook
//
//  Created by Eric Davenport on 2/8/21.
//

import SwiftUI

struct TableOfContentsPage: View {
  var body: some View {
    List {
      Section(header: Text("Getting Started")) {
        ForEach (Pages.allCases) { page in
          NavigationLink(
            destination: AnimateOpacity()) {
            Text("\(page.rawValue)")
          }
        }
      }
    }
    .listStyle(InsetGroupedListStyle())
  }
  
//  func navigate(_ page: Pages) -> some View {
//    switch page {
//    case .noAnimationExample:
//      return NoAnimationExample()
//    case .challengeOnePartOne:
//      return ChallengeOne_Page22()
//    case .challendeOnePartTwo:
//      return ChallengeOne_pt2()
//    case .animateColor:
//      return AnimateColor()
//    case .animateHueRotation:
//      return AnimateHueRotation()
//    case .animateOffset:
//      return AnimateOffset()
//    case .animateAlignment:
//      return AnimateAlignment()
//    case .animateOpacity:
//      return AnimateOpacity()
//    case .animateRotation:
//      return AnimateRotation()
//    case .animateSizeFrame:
//      return AnimateSizeFrame()
//    case .animateSizeScaleEffect:
//      return AnimateSizeScaleEffect()
//    case .animiateScaleEffectAnchors:
//      return AnimateScaleEffectAnchors()
//    case .animateRoundedCorners:
//      return AnimateRoundedCorners()
//    case .animateTextSize:
//      return AnimateTextSize()
//    case .animateTrim:
//      return AnimateTrim()
//    case .challengeTwoPartOne:
//      return ChallengeTwo_Page45()
//    case .challengeTwoPartTwo:
//      return ChallengeTwo_PtTwo(username: "Lilmann")
//    case .challengeTwoPartThree:
//      return ChallengeTwo_PtThree()
//    case .triggerView:
//      return TriggerView()
//    }
//  }
}


struct TableOfContentsPage_Previews: PreviewProvider {
  static var previews: some View {
    TableOfContentsPage()
  }
}
