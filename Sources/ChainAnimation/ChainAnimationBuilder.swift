//
//  ChainAnimationBuilder.swift
//
//
//  Created by Christopher White on 08/03/2023.
//

import SwiftUI

/// A result builder that you use to compose chained animations.
///
/// This [Result Builder](https://docs.swift.org/swift-book/LanguageGuide/AdvancedOperators.html#ID630)
/// combines any number of ``ChainAnimationBlocksConvertible`` instances into a single composite
/// instance, including support for conditionals.
///
/// You don't call the methods of the result builder directly. Instead, Swift
/// uses them to combine the elements that you declare in any closure that has
/// the `@ChainAnimationBuilder` attribute.`.
@resultBuilder
public enum ChainAnimationBuilder {

  /// Produces empty chain animation block content
  public static func buildBlock() -> [ChainAnimationBlock] { [] }

  /// Adds ability to build an array from statement blocks
  /// - Parameter components: Statement blocks which can be combined to create an array of blocks
  /// - Returns: An array of chainable animation blocks
  public static func buildBlock(_ components: ChainAnimationBlocksConvertible...) -> [ChainAnimationBlock] {
    components.flatMap { $0._asChainAnimations() }
  }

  /// Builds a partial result that's conditionally present.
  ///
  /// This method provides support for `if` statements. It produces optional
  /// animation block content that is visible only when the condition evaluates to `true`.
  ///
  /// - Parameter content: The content to use if the condition is `true`.
  public static func buildIf(_ value: ChainAnimationBlocksConvertible?) -> ChainAnimationBlocksConvertible {
    value ?? []
  }

  /// Builds a partial result from a condition that's true.
  ///
  /// This method provides support for `if` statements with an `else` clause
  /// and `switch` statements. It produces optional animation block content that is
  /// visible when the condition evaluates to `true`.
  ///
  /// - Parameter first: The content to use if the condition is `true`.
  public static func buildEither(first: ChainAnimationBlocksConvertible) -> ChainAnimationBlocksConvertible {
    first
  }

  /// Builds a partial result from a condition that's false.
  ///
  /// This method provides support for `if` statements with an `else` clause
  /// and `switch` statements. It produces optional animation block content that is
  /// visible when the condition evaluates to `false`.
  ///
  /// - Parameter second: The content to use if the condition is `false`.
  public static func buildEither(second: ChainAnimationBlocksConvertible) -> ChainAnimationBlocksConvertible {
    second
  }
}
