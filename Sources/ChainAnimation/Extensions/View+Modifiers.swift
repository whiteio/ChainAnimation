//
//  View+Modifiers.swift
//
//
//  Created by Christopher White on 08/03/2023.
//

import Foundation
import SwiftUI

extension View {
  public func createChainAnimation(
    _ enabled: Binding<Bool>,
    @ChainAnimationBuilder _ content: @escaping () -> [ChainAnimationBlock])
    -> some View
  {
    setupChainStartBinding(enabled)
      .addBlocksToEnvironment(content)
      .environmentObject(ChainAnimationContainer())
  }
}

extension View {
  func addBlocksToEnvironment(@ChainAnimationBuilder _ content: @escaping () -> [ChainAnimationBlock]) -> some View {
    modifier(CreateChainViewModifier(chainContent: content))
  }

  func setupChainStartBinding(_ enabled: Binding<Bool>) -> some View {
    modifier(SetupChainStartBinding(enabled: enabled))
  }
}
