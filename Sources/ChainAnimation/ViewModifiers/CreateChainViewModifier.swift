//
//  CreateChainViewModifier.swift
//
//
//  Created by Christopher White on 08/03/2023.
//

import SwiftUI

struct CreateChainViewModifier: ViewModifier {
  @ChainAnimationBuilder var chainContent: () -> [ChainAnimationBlock]
  @EnvironmentObject var chainAnimations: ChainAnimationContainer

  func body(content: Content) -> some View {
    content
      .onAppear {
        chainAnimations.animationBlocks.append(contentsOf: chainContent())
      }
  }
}
