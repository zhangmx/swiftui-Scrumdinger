//
//  ScrumTimer.swift
//  Scrumdinger
//
//  Created by mingxing zhang on 2024/5/20.
//

import Foundation

class ScrumTimer: ObservableObject {
   @Published var activeSpeaker = ""
   @Published var secondsElapsed = 0
   @Published var secondsRemaining = 0
   // ...
}
