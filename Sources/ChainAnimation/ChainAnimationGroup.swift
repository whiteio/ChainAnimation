//
//  ChainAnimationGroup.swift
//
//
//  Created by Christopher White on 08/03/2023.
//

import SwiftUI

// MARK: - ChainAnimationGroup

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
