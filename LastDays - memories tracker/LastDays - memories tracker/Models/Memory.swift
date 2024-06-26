//
//  Memory.swift
//  LastDays - memories tracker
//
//  Created by Firdavs Juraev on 04/04/24.
//

import Foundation

class Note {
    let id = UUID()
    var text: String = ""
    var lastUpdated: Date = Date()
    
    var title: String {
        return text.trimmingCharacters(in: .whitespacesAndNewlines).components(separatedBy: .newlines).first ?? "" // returns the first line of the text
    }
    
    var desc: String {
        var lines = text.trimmingCharacters(in: .whitespacesAndNewlines).components(separatedBy: .newlines)
        lines.removeFirst()
        return "\(lastUpdated.formatted()) \(lines.first ?? "")" // return second line
    }
}
