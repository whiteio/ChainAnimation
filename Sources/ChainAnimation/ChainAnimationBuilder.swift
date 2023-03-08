//
//  ChainAnimationBuilder.swift
//
//
//  Created by Christopher White on 08/03/2023.
//

import SwiftUI

@resultBuilder
public enum ChainAnimationBuilder {

  public static func buildBlock() -> [ChainAnimationBlock] { [] }

  public static func buildBlock(_ components: ChainAnimationBlocksConvertible...) -> [ChainAnimationBlock] {
    components.flatMap { $0._asChainAnimations() }
  }

  public static func buildIf(_ value: ChainAnimationBlocksConvertible?) -> ChainAnimationBlocksConvertible {
    value ?? []
  }

  public static func buildEither(first: ChainAnimationBlocksConvertible) -> ChainAnimationBlocksConvertible {
    first
  }

  public static func buildEither(second: ChainAnimationBlocksConvertible) -> ChainAnimationBlocksConvertible {
    second
  }
}
