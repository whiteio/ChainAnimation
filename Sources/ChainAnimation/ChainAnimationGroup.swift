//
//  ChainAnimationGroup.swift
//
//
//  Created by Christopher White on 08/03/2023.
//

import SwiftUI

// MARK: - ChainAnimationGroup

/// A type which can group a collection of chain animation blocks
struct ChainAnimationGroup {
  var duration: TimeInterval
  @ChainAnimationBuilder var chainAnimations: () -> [ChainAnimationBlock]
}

// MARK: ChainAnimationBlocksConvertible

extension ChainAnimationGroup: ChainAnimationBlocksConvertible {
  public func asChainAnimations() -> [ChainAnimationBlock] {
    [ChainAnimationBlock(value: .group(chainAnimations()))]
  }
}
