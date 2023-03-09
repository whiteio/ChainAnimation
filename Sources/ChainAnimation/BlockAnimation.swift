//
//  AnimationType.swift
//
//
//  Created by Christopher White on 08/03/2023.
//

import SwiftUI

// MARK: - AnimationType

/// Animations available for each chain animation block

public struct BlockAnimation {
    // MARK: Public

    public static var easeIn: Self {
        BlockAnimation(animation: .easeIn, duration: defaultDuration)
    }

    public static var easeOut: Self {
        BlockAnimation(animation: .easeOut, duration: defaultDuration)
    }

    public static var easeInOut: Self {
        BlockAnimation(animation: .easeInOut, duration: defaultDuration)
    }

    public static var linear: Self {
        BlockAnimation(animation: .linear, duration: defaultDuration)
    }

    public static func easeIn(duration: Double) -> Self {
        BlockAnimation(animation: .easeIn(duration: duration), duration: duration)
    }

    public static func easeOut(duration: Double) -> Self {
        BlockAnimation(animation: .easeOut(duration: duration), duration: duration)
    }

    public static func easeInOut(duration: Double) -> Self {
        BlockAnimation(animation: .easeInOut(duration: duration), duration: duration)
    }

    public static func linear(duration: Double) -> Self {
        BlockAnimation(animation: .linear(duration: duration), duration: duration)
    }

    public static func custom(animation: Animation) -> Self {
        BlockAnimation(animation: animation, duration: defaultDuration)
    }

    // MARK: Internal

    static var defaultDuration = 1.0

    var animation: Animation
    var duration: Double
}
