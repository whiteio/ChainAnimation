//
//  Array+Extras.swift
//
//
//  Created by Christopher White on 08/03/2023.
//

import Foundation

extension [ChainAnimationBlock]: ChainAnimationBlocksConvertible {
  public func _asChainAnimations() -> [ChainAnimationBlock] {
    self
  }
}
