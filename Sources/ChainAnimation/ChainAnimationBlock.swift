//
//  ChainAnimationBlock.swift
//  
//
//  Created by Christopher White on 08/03/2023.
//

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

extension ChainAnimationBlock {
    enum Value {
        case duration(Double)
        case group([ChainAnimationBlock])
    }
}

extension ChainAnimationBlock: ChainAnimationBlocksConvertible {
    func asChainAnimations() -> [ChainAnimationBlock] {
        [self]
    }
}

extension ChainAnimationBlock {
    struct Empty: ChainAnimationBlocksConvertible {
        func asChainAnimations() -> [ChainAnimationBlock] {
            []
        }
    }
}
