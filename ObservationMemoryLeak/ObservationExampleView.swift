//
//  ObservationExampleView.swift
//  ObservationMemoryLeak
//
//  Created by xipingping on 3/19/24.
//

import Observation
import SwiftUI


@available(iOS 17.0, *)
@Observable final class ObservableModel {
  var count = 0

  init() {
    print("init", self)
  }

  deinit {
    print("deinit", self)
  }
}

@available(iOS 17.0, *)
struct ObservationExampleView: View {
  var model = ObservableModel()

  let plainModel = PlainModel()

  var body: some View {
    Text("count: \(model.count)")
    Text("Drag to dismiss")
  }
}

#Preview {
  Group {
    if #available(iOS 17.0, *) {
      ObservationExampleView()
    } else {
      Text("⚠️ test on an iOS 17 device")
    }
  }
}
