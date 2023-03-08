//
//  ChainAnimationBuilder.swift
//
//
//  Created by Christopher White on 08/03/2023.
//

import SwiftUI

@resultBuilder
public enum ChainAnimationBuilder {

  static func buildBlock() -> [ChainAnimationBlock] { [] }

  static func buildBlock(_ components: ChainAnimationBlocksConvertible...) -> [ChainAnimationBlock] {
    components.flatMap { $0.asChainAnimations() }
  }

  static func buildIf(_ value: ChainAnimationBlocksConvertible?) -> ChainAnimationBlocksConvertible {
    value ?? []
  }

  static func buildEither(first: ChainAnimationBlocksConvertible) -> ChainAnimationBlocksConvertible {
    first
  }

  static func buildEither(second: ChainAnimationBlocksConvertible) -> ChainAnimationBlocksConvertible {
    second
  }
}
