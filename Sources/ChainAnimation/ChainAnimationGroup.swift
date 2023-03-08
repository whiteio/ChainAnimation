//
//  ChainAnimationGroup.swift
//
//
//  Created by Christopher White on 08/03/2023.
//

import SwiftUI

// MARK: - ChainAnimationGroup

struct ChainAnimationGroup {
  var name: String
  @ChainAnimationBuilder var chainAnimations: () -> [ChainAnimationBlock]
}

// MARK: ChainAnimationBlocksConvertible

extension ChainAnimationGroup: ChainAnimationBlocksConvertible {
  func asChainAnimations() -> [ChainAnimationBlock] {
    [ChainAnimationBlock(value: .group(chainAnimations()))]
  }
}
