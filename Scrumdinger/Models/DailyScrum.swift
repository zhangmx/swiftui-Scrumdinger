//
//  DailyScrum.swift
//  Scrumdinger
//
//  Created by mingxing zhang on 2024/5/10.
//

import Foundation

struct DailyScrum: Identifiable, Codable {
    let id: UUID
    var title: String
    var attendees: [Attendee]
    var lengthInMinutes: Int
    var lengthInMinutesAsDouble: Double {
        get {
            Double(lengthInMinutes)
        }
        set {
            lengthInMinutes = Int(newValue)
        }
    }
    var theme: Theme
    var history: [History] = []
    
    init(id: UUID = UUID(), title: String, attendees: [String], lengthInMinutes: Int, theme: Theme) {
        self.id = id
        self.title = title
        self.attendees = attendees.map{ Attendee(name: $0)}
        self.lengthInMinutes = lengthInMinutes
        self.theme = theme
    }
    
    
}

extension DailyScrum {
    struct Attendee: Identifiable, Codable {
        let id: UUID
        var name: String
        
        init(id: UUID = UUID(), name: String) {
            self.id = id
            self.name = name
        }
    }
    
    static var emptyScrum: DailyScrum {
        DailyScrum(title: "", attendees: [], lengthInMinutes: 5, theme: .sky)
    }
}


extension DailyScrum {
    static let sampleData: [DailyScrum] = 
    [
        DailyScrum(title: "Design", attendees: ["Jon", "Marie", "Val"], lengthInMinutes: 1, theme: .yellow),
        DailyScrum(title: "App Dev", attendees: ["Kofi", "Marie", "Val"], lengthInMinutes: 2, theme: .orange),
        DailyScrum(title: "Web Dev", attendees: ["Jon", "Kofi", "Val"], lengthInMinutes: 15, theme: .poppy),
        DailyScrum(title: "Testing", attendees: ["Jon", "Marie", "Kofi"], lengthInMinutes: 20, theme: .periwinkle),
        DailyScrum(title: "Planning", attendees: ["Jon", "Marie", "Val"], lengthInMinutes: 10, theme: .teal),
    ]
}
