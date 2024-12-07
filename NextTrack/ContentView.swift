//
//  ContentView.swift
//  NextTrack
//
//  Created by Irina Deeva on 07/12/24.
//

import SwiftUI

struct ContentView: View {
  @State var isNextTrack: Bool = false

  var body: some View {
    Button {
      withAnimation(.interpolatingSpring(stiffness: 100, damping: 15)) {
        isNextTrack.toggle()
      } completion: {
        isNextTrack.toggle()
      }
    } label: {
      GeometryReader { proxy in
        let size = proxy.size.width / 2

        HStack(spacing: -1) {
          buttonImage
            .frame(width: isNextTrack ? size : 0)
            .opacity(isNextTrack ? 1 : 0)

          buttonImage
            .frame(width: size)

          buttonImage
            .frame(width: isNextTrack ? 1 : size)
            .opacity(isNextTrack ? 0 : 1)
        }
      }
    }
    .frame(width: 50, height: 100)

  }

  var buttonImage: some View {
    Image(systemName: "play.fill")
      .resizable()
      .scaledToFit()
  }
}

#Preview {
  ContentView()
}
