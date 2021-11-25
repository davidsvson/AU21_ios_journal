//
//  JournalEntry.swift
//  Journal
//
//  Created by David Svensson on 2021-11-25.
//

import Foundation


struct JournalEntry {
    var content : String
    private var unformatedDate : Date
    private var dateFormatter = DateFormatter()
    
    var date : String {
        return dateFormatter.string(from: unformatedDate)
    }
    
    init(content: String ) {
        self.unformatedDate = Date()
        self.content = content
        dateFormatter.dateFormat = "yyyy-MM-dd"
    }
    
    init(content: String, date: Date ) {
        self.unformatedDate = date
        self.content = content
        dateFormatter.dateFormat = "yyyy-MM-dd"
    }
    
}
