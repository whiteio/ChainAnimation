//
//  Array+Extras.swift
//  
//
//  Created by Christopher White on 08/03/2023.
//

import Foundation

extension Array: ChainAnimationBlocksConvertible where Element == ChainAnimationBlock {
    func asChainAnimations() -> [ChainAnimationBlock] {
        self
    }
}
