//
//  NewJournalEntryViewController.swift
//  Journal
//
//  Created by David Svensson on 2021-11-25.
//

import UIKit

class NewJournalEntryViewController: UIViewController {

    @IBOutlet weak var journalEntryTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func save(_ sender: UIBarButtonItem) {
        
        if let entryText = journalEntryTextView.text {
            let newJournalEntry = JournalEntry(content: entryText)
            print(newJournalEntry.content)
            
            // TODO: lägg till entry till vår Journal
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
