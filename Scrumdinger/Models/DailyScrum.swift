//
//  DailyScrum.swift
//  Scrumdinger
//
//  Created by mingxing zhang on 2024/5/10.
//

import Foundation

struct DailyScrum: Identifiable {
    let id: UUID
    var title: String
    var attendees: [Attendee]
    var lengthInMinutes: Int
    var theme: Theme
    
    init(id: UUID = UUID(), title: String, attendees: [String], lengthInMinutes: Int, theme: Theme) {
        self.id = id
        self.title = title
        self.attendees = attendees.map{ Attendee(name: $0)}
        self.lengthInMinutes = lengthInMinutes
        self.theme = theme
    }
    
    
}

extension DailyScrum {
    struct Attendee: Identifiable {
        let id: UUID
        var name: String
        
        init(id: UUID = UUID(), name: String) {
            self.id = id
            self.name = name
        }
    }
}


extension DailyScrum {
    static let sampleData: [DailyScrum] = 
    [
        DailyScrum(title: "Design", attendees: ["Jon", "Marie", "Val"], lengthInMinutes: 10, theme: .yellow),
        DailyScrum(title: "App Dev", attendees: ["Kofi", "Marie", "Val"], lengthInMinutes: 5, theme: .orange),
        DailyScrum(title: "Web Dev", attendees: ["Jon", "Kofi", "Val"], lengthInMinutes: 15, theme: .poppy),
        DailyScrum(title: "Testing", attendees: ["Jon", "Marie", "Kofi"], lengthInMinutes: 20, theme: .periwinkle),
        DailyScrum(title: "Planning", attendees: ["Jon", "Marie", "Val"], lengthInMinutes: 10, theme: .teal),
    ]
}
