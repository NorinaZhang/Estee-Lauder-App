//
//  AddJournalViewController.swift
//  esteeLauder
//
//  Created by Student on 8/17/22.
//

import UIKit

class AddJournalViewController: UIViewController {
    var previousVC = JournalTableViewController()
    
    @IBOutlet weak var Journaltext: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func completeTapped(_ sender: Any) {
        
        let journal = Journal()

        if let titleText = Journaltext.text {
          journal.name = titleText
        }
        
        previousVC.journals.append(journal)
        previousVC.tableView.reloadData()
        navigationController?.popViewController(animated: true)
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
