//
//  ChainAnimationContainer.swift
//
//
//  Created by Christopher White on 08/03/2023.
//

import SwiftUI

class ChainAnimationContainer: ObservableObject {
    var animationBlocks: [ChainAnimationBlock] = []

    func startAnimating(_: @escaping () -> Void) {
        print("Start animating called")

        var offset: Double = 0

        for block in animationBlocks {
            guard let animation = block.animation, let closure = block.closure else { continue }

            withAnimation(animation.animation.delay(offset)) {
                closure()
            }

            offset += animation.duration
        }

        dump(animationBlocks)
    }
}
