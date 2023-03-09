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

struct Previews_View_Modifiers_LibraryContent: LibraryContentProvider {
    @State var scaleValue: CGFloat = 1
    @State var opacityValue: CGFloat = 1
    @State var enabled: Bool = false

    @LibraryContentBuilder
    func modifiers(base: Text) -> [LibraryItem] {
        LibraryItem(base.createChainAnimation($enabled, {
            ChainAnimationBlock(animation: .linear(duration: 0.1)) {
                scaleValue = 1.5
                opacityValue = 0.5
            }
            ChainAnimationBlock(animation: .easeIn(duration: 0.5)) {
                scaleValue = 1
                opacityValue = 1
            }
        }), category: .effect)
    }
}
