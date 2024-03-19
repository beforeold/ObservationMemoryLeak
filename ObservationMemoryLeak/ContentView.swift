//
//  ContentView.swift
//  ObservationMemoryLeak
//
//  Created by xipingping on 3/19/24.
//

import SwiftUI

struct ContentView: View {
  @State private var showsPerceptionView = false

  @State private var showsObservationView = false

  var body: some View {
    NavigationView {
      Form {
        Button("Show Perception View") {
          self.showsPerceptionView = true
        }

        Button("Show Observation View") {
          self.showsObservationView = true
        }
      }
      .sheet(isPresented: self.$showsPerceptionView) {
        PerceptionExampleView()
      }
      .sheet(isPresented: self.$showsObservationView) {
        if #available(iOS 17.0, *) {
          ObservationExampleView()
        } else {
          Text("⚠️ test on an iOS 17 device")
        }
      }
      .navigationTitle("Leaks")
    }
  }
}

#Preview {
  ContentView()
}
