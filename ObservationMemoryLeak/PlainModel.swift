//
//  PlainModel.swift
//  ObservationMemoryLeak
//
//  Created by xipingping on 3/19/24.
//

import Foundation

final class PlainModel {
  init() {
    print("init", self)
  }

  deinit {
    print("deinit", self)
  }
}
