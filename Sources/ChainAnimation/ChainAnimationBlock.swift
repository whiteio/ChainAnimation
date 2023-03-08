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

  public init(animation: AnimationType, closure: @escaping () -> Void) {
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
  public func _asChainAnimations() -> [ChainAnimationBlock] {
    [self]
  }
}

// MARK: ChainAnimationBlock.Empty

public extension ChainAnimationBlock {
    struct Empty: ChainAnimationBlocksConvertible {
      public func _asChainAnimations() -> [ChainAnimationBlock] {
      []
    }
  }
}
