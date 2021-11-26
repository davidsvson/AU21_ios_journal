//
//  JournalEntryViewController.swift
//  Journal
//
//  Created by David Svensson on 2021-11-26.
//

import UIKit

class JournalEntryViewController: UIViewController {

    @IBOutlet weak var entryTextView: UITextView!
    
    var journalEntry : JournalEntry?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        entryTextView.text = journalEntry?.content
        
    }
}
