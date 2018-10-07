//
//  ViewController.swift
//  UIActionSheets
//
//  Created by KDH on 07/10/2018.
//  Copyright © 2018 KDH. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func actionSheets(_ sender: Any) {
        let actionSheets = UIAlertController(title: "TItle", message: "Message", preferredStyle: .actionSheet)
        
        let action1 = UIAlertAction(title: "Action 1", style: .default, handler: {
            (alert: UIAlertAction!) -> Void in
            self.label.text = "Action 1 was triggered."
        })
        let action2 = UIAlertAction(title: "Action 2", style: .default, handler: {
            (alert: UIAlertAction!) -> Void in
            self.label.text = "Action 2 was triggered."
        })
        let cancel = UIAlertAction(title: "Cancel", style: .cancel, handler: {
            (alert: UIAlertAction!) -> Void in
        })
        
        actionSheets.addAction(action1)
        actionSheets.addAction(action2)
        actionSheets.addAction(cancel)
        
        self.present(actionSheets, animated: true, completion: nil)
        
    }

}
