// MARK: - ChainAnimation

public struct ChainAnimation {
  public private(set) var text = "Hello, World!"

  public init() { }
}

import SwiftUI

// MARK: - ContentView

struct ContentView: View {
  @State var opacity: Double = 1
  @State var scale: CGFloat = 1
  @State var shouldAnimate = false

  var body: some View {
    Button("Animate it!", action: {
      shouldAnimate = true
    })
    Text("Hello, World!")
      .opacity(opacity)
      .scaleEffect(scale)
      .createChainAnimation($shouldAnimate) {
        ChainAnimationGroup(name: "test", chainAnimations: {
          ChainAnimationBlock(animation: .linear(duration: 4)) {
            opacity = 0.5
          }
          ChainAnimationBlock(animation: .easeIn(duration: 0.1)) {
            scale = 1.5
          }
        })
        ChainAnimationBlock(animation: .easeIn(duration: 1)) {
          opacity = 0.25
        }
      }
  }
}
