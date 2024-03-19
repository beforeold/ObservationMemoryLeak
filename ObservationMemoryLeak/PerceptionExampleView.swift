//
//  PerceptionExampleView.swift
//  ObservationMemoryLeak
//
//  Created by xipingping on 3/19/24.
//

import Perception
import SwiftUI

@Perceptible final class PerceptibleModel {
  var count = 0

  init() {
    print("init", self)
  }

  deinit {
    print("deinit", self)
  }
}

struct PerceptionExampleView: View {
  var model = PerceptibleModel()

  let plainModel = PlainModel()

  var body: some View {
    WithPerceptionTracking {
      VStack(spacing: 12) {
        Text("count: \(model.count)")
        Text("Leaks on iOS 16.x")
        Text("Drag to dismiss")
      }
    }
  }
}

#Preview {
  PerceptionExampleView()
}
