//
//  BlockAnimation.swift
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
        .init(animation: .easeIn, duration: defaultDuration)
    }

    public static var easeOut: Self {
        .init(animation: .easeOut, duration: defaultDuration)
    }

    public static var easeInOut: Self {
        .init(animation: .easeInOut, duration: defaultDuration)
    }

    public static var linear: Self {
        .init(animation: .linear, duration: defaultDuration)
    }

    public static func easeIn(duration: Double) -> Self {
        .init(animation: .easeIn(duration: duration), duration: duration)
    }

    public static func easeOut(duration: Double) -> Self {
        .init(animation: .easeOut(duration: duration), duration: duration)
    }

    public static func easeInOut(duration: Double) -> Self {
        .init(animation: .easeInOut(duration: duration), duration: duration)
    }

    public static func linear(duration: Double) -> Self {
        .init(animation: .linear(duration: duration), duration: duration)
    }

    public static func custom(animation: Animation) -> Self {
        .init(animation: animation, duration: defaultDuration)
    }

    // MARK: Internal

    static var defaultDuration = 1.0

    var animation: Animation
    var duration: Double
}
