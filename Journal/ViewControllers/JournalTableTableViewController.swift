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
    
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
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
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == newEntrySegueId {
            let destinationVC = segue.destination as? NewJournalEntryViewController
            destinationVC?.journal = journal
        } else if ( segue.identifier == journalEntrySegueId) {
//            if let destinationVC = segue.destination as? JournalEntryViewController {
//                if let cell = sender as? UITableViewCell {
//                    if let indexPath = tableView.indexPath(for: cell) {
//                        if let entry = journal.entry(index: indexPath.row) {
//                            destinationVC.journalEntry = entry
//                        }
//                    }
//                }
//            }
            
//            if let destinationVC = segue.destination as? JournalEntryViewController,
//                let cell = sender as? UITableViewCell,
//                let indexPath = tableView.indexPath(for: cell),
//                let entry = journal.entry(index: indexPath.row) {
//                    destinationVC.journalEntry = entry
//                }
            
            guard let destinationVC = segue.destination as? JournalEntryViewController else { return }
            guard let cell = sender as? UITableViewCell else { return }
            guard let indexPath = tableView.indexPath(for: cell) else { return }
            guard let entry = journal.entry(index: indexPath.row) else { return }
                    
            destinationVC.journalEntry = entry
                
        }
    }
}
