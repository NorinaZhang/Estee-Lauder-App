//
//  JournalTableViewController.swift
//  esteeLauder
//
//  Created by Student on 8/17/22.
//

import UIKit

class JournalTableViewController: UITableViewController {

    var journals : [Journal] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        journals = createJournal()
    }

    func createJournal() -> [Journal] {

      let swift = Journal()
      swift.name = "Learn Swift"
    

      let dog = Journal()

      return [swift, dog]
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

      // this gives us a single ToDo
      let journal = journals[indexPath.row]

      performSegue(withIdentifier: "moveToHome", sender: journal)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      return journals.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

      let journal = journals[indexPath.row]

     
      cell.textLabel?.text = journal.name

      return cell
    }

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      if let addVC = segue.destination as? AddJournalViewController {
        addVC.previousVC = self
      }
      
        if let completeVC = segue.destination as? CompleteJournalViewController {
            if let journal = sender as? Journal {
              completeVC.selectedJournal = journal
              completeVC.previousVC = self
            }
        
    }
}
}
