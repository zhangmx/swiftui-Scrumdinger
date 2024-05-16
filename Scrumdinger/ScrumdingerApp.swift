//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by mingxing zhang on 2024/5/8.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    
    @State private var scrums = DailyScrum.sampleData
    
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: $scrums)
        }
    }
}
