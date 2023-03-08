//
//  ChainAnimationBlock.swift
//
//
//  Created by Christopher White on 08/03/2023.
//

// MARK: - ChainAnimationBlock

public struct ChainAnimationBlock {
  var value: Value?
  var closure: (() -> Void)?
  var animation: AnimationType?

  init(animation: AnimationType, closure: @escaping () -> Void) {
    self.animation = animation
    self.closure = closure
  }

  init(value: Value) {
    self.value = value
  }
}

// MARK: ChainAnimationBlock.Value

extension ChainAnimationBlock {
  enum Value {
    case duration(Double)
    case group([ChainAnimationBlock])
  }
}

// MARK: ChainAnimationBlocksConvertible

extension ChainAnimationBlock: ChainAnimationBlocksConvertible {
  func asChainAnimations() -> [ChainAnimationBlock] {
    [self]
  }
}

// MARK: ChainAnimationBlock.Empty

extension ChainAnimationBlock {
  struct Empty: ChainAnimationBlocksConvertible {
    func asChainAnimations() -> [ChainAnimationBlock] {
      []
    }
  }
}
