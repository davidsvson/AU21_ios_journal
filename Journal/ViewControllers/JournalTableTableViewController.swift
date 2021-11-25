//
//  JournalTableTableViewController.swift
//  Journal
//
//  Created by David Svensson on 2021-11-25.
//

import UIKit

class JournalTableTableViewController: UITableViewController {
    
    let newEntrySegueId = "createJournalEntry"
    let journalEntrySegueId = "showJournalEntry"

    let cellIdentity = "JournalEntryCell"
    
  // var journalEntries = [JournalEntry]()
    
    let journal = Journal()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        journal.add(entry: JournalEntry(content: "Åt mat"))
        journal.add(entry: JournalEntry(content: "sov"))
        

        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
       
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return journal.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentity, for: indexPath)

        let journalEntry = journal.entry(index: indexPath.row)
        cell.textLabel?.text = journalEntry?.date

        return cell
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
