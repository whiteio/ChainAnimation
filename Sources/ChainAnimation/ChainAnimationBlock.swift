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
    var animation: BlockAnimation?

    public init(animation: BlockAnimation, closure: @escaping () -> Void) {
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
        case group([ChainAnimationBlock])
    }
}

// MARK: ChainAnimationBlocksConvertible

extension ChainAnimationBlock: ChainAnimationBlocksConvertible {
    public func asChainAnimations() -> [ChainAnimationBlock] {
        [self]
    }
}

// MARK: ChainAnimationBlock.Empty

public extension ChainAnimationBlock {
    struct Empty: ChainAnimationBlocksConvertible {
        public func asChainAnimations() -> [ChainAnimationBlock] {
            []
        }
    }
}
