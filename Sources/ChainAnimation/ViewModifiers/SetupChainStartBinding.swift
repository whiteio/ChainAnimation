//
//  SetupChainStartBinding.swift
//
//
//  Created by Christopher White on 08/03/2023.
//

import SwiftUI

struct SetupChainStartBinding: ViewModifier {
  @EnvironmentObject var chainAnimations: ChainAnimationContainer
  @Binding var enabled: Bool

  func body(content: Content) -> some View {
    content
      .onChange(of: enabled) { newValue in
        print("ANIMATION ABOUT TO START")
        guard newValue else { return }

        dump(chainAnimations)
        print("IN ANIMATION MODE")
        chainAnimations.startAnimating { }
      }
  }
}
