//
//  NewJournalEntryViewController.swift
//  Journal
//
//  Created by David Svensson on 2021-11-25.
//

import UIKit

class NewJournalEntryViewController: UIViewController {

    @IBOutlet weak var navBar: UINavigationItem!
    @IBOutlet weak var journalEntryTextView: UITextView!
    
    var journal : Journal?
    var  journalVC : JournalTableTableViewController?
    
    var entry = JournalEntry(content:"")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navBar.title = entry.date
        
        journalEntryTextView.becomeFirstResponder()
    }
    @IBAction func cancel(_ sender: UIBarButtonItem) {
       // navigationController?.popViewController(animated: true)
        dismiss(animated: true, completion: nil)
    }
    

    @IBAction func save(_ sender: UIBarButtonItem) {
        
        if let entryText = journalEntryTextView.text {
            entry.content = entryText
            
            journal?.add(entry: entry)
            journalVC?.refresh()
            dismiss(animated: true, completion: nil)
           // navigationController?.popViewController(animated: true)
            
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
