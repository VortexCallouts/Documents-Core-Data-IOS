//
//  SingleNotesViewController.swift
//  DocumentsCoreData
//
//  Created by Davin Heilich on 9/19/19.
//  Copyright © 2019 Davin Heilich. All rights reserved.
//

import UIKit

class SingleNotesViewController: UIViewController {
    @IBOutlet weak var noteTextArea: UITextView!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var saveNote: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func saveNote(_ sender: Any) {
        let name = nameTextField.text ?? ""
        let noteText = noteTextArea.text ?? ""
        
        if let note = Document(name: name, textArea: noteText) {
            do{
                let managedContext = Document.managedObjectContext
                try managedContext?.save()
                
                self.navigationController?.popViewController(animated: true)
            }
            catch{
                print("Note Could Not Be Saved")
            }
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
