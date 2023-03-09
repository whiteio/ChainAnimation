//
//  SetupChainStartBinding.swift
//
//
//  Created by Christopher White on 08/03/2023.
//

import SwiftUI

/// Trigger the animation to start when the value of a binding changes to true
struct SetupChainStartBinding: ViewModifier {
  @EnvironmentObject var chainAnimations: ChainAnimationContainer
  @Binding var enabled: Bool

  func body(content: Content) -> some View {
    content
      .onChange(of: enabled) { newValue in
        guard newValue else { return }

        chainAnimations.startAnimating {
          enabled = false
        }
      }
  }
}
