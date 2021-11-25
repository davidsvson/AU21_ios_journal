//
//  Journal.swift
//  Journal
//
//  Created by David Svensson on 2021-11-25.
//

import Foundation


class Journal {
    private var entries = [JournalEntry]()
    
    //computed property
    var count : Int {
        return entries.count
    }
    
    func add(entry: JournalEntry) {
        entries.append(entry)
    }
    
    func entry(index: Int) -> JournalEntry? {
        if index >= 0 && index < entries.count {
            return entries[index]
        }
        
        return nil
    }

    
}
