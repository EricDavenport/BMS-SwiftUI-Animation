//
//  PageEnum.swift
//  BMS_AnimationBook
//
//  Created by Eric Davenport on 2/8/21.
//

import Foundation
import SwiftUI

enum Pages: String, CaseIterable, Identifiable {
  var id: String { UUID().uuidString}
  case noAnimationExample = "No Animation Example"
  case challengeOnePartOne = "Challenge One - Part 1"
  case challendeOnePartTwo = "Challenge One -Part 2"
  case animateColor = "Animate Color"
  case animateHueRotation = "Animate Hue Rotation"
  case animateOffset = "Animate OffSet"
  case animateAlignment = "Animate Alignment"
  case animateOpacity = "Animate Opacity"
  case animateRotation = "Animate Rotation"
  case animateSizeFrame = "Animate Size Frame"
  case animateSizeScaleEffect = "Animate Size Scale Effect"
  case animiateScaleEffectAnchors = "Animate Scale Effect Anchors"
  case animateRoundedCorners = "Animate Rounded Corners"
  case animateTextSize = "Animate Text Size"
  case animateTrim = "Animate Trim"
  case challengeTwoPartOne = "Challenge 2 - Part 1"
  case challengeTwoPartTwo = "Challenge 2 - Part 2"
  case challengeTwoPartThree = "Challenge 2 - Part 3"
  case triggerView = "Trigger View"
}



