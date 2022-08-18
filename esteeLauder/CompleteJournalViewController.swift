//
//  CompleteJournalViewController.swift
//  esteeLauder
//
//  Created by Student on 8/17/22.
//

import UIKit

class CompleteJournalViewController: UIViewController {

    @IBOutlet weak var titleLabel: UITextView!
    
    var previousVC = JournalTableViewController()
    var selectedJournal = Journal()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = selectedJournal.name
    }
    
    
    @IBAction func returnTapped(_ sender: Any) {
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
