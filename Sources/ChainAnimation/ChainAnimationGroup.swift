//
//  ChainAnimationGroup.swift
//
//
//  Created by Christopher White on 08/03/2023.
//

import SwiftUI

// MARK: - ChainAnimationGroup

/// A type which can group a collection of chain animation blocks
public struct ChainAnimationGroup {
  var name: String
  @ChainAnimationBuilder var chainAnimations: () -> [ChainAnimationBlock]
}

// MARK: ChainAnimationBlocksConvertible

extension ChainAnimationGroup: ChainAnimationBlocksConvertible {
    public func _asChainAnimations() -> [ChainAnimationBlock] {
    [ChainAnimationBlock(value: .group(chainAnimations()))]
  }
}
