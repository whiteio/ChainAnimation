// MARK: - ChainAnimation
//
// public struct ChainAnimation {
//  public private(set) var text = "Hello, World!"
//
//  public init() { }
// }

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
        ChainAnimationGroup(duration: 1, chainAnimations: {
          ChainAnimationBlock(animation: .linear(duration: 4)) {
            opacity = 0.5
          }
          ChainAnimationBlock(animation: .easeIn) {
            scale = 1.5
          }
        })
        ChainAnimationBlock(animation: .easeIn(duration: 1)) {
          opacity = 0.25
        }
      }
  }
}

// MARK: - ContentView_Previews

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
