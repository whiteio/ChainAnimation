//
//  AnimationType.swift
//
//
//  Created by Christopher White on 08/03/2023.
//

import SwiftUI

// MARK: - AnimationType

public enum AnimationType {
  case `default`
  case easeIn(duration: Double)
  case easeOut(duration: Double)
  case easeInOut(duration: Double)
  case linear(duration: Double)
  case custom(animation: Animation)
}

extension AnimationType {
  var underlyingAnimation: Animation {
    switch self {
    case .default:
      return Animation.default
    case .easeIn(let duration):
      return Animation.easeIn(duration: duration)
    case .easeOut(let duration):
      return Animation.easeOut(duration: duration)
    case .easeInOut(let duration):
      return Animation.easeInOut(duration: duration)
    case .linear(let duration):
      return Animation.linear(duration: duration)
    case .custom(let animation):
      return animation
    }
  }
}

extension AnimationType {
  var duration: Double {
    switch self {
    case .default:
      return 0.1
    case .easeIn(let duration):
      return duration
    case .easeOut(let duration):
      return duration
    case .easeInOut(let duration):
      return duration
    case .linear(let duration):
      return duration
    case .custom:
      return 0.1
    }
  }
}
