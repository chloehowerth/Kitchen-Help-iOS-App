//
//  SearchPageViewController.swift
//  Kitchen Help
//
//  Created by Miranda Richardson on 2/8/18.
//  Copyright © 2018 Miranda Richardson. All rights reserved.
//

import UIKit

class SearchPageViewController: UIViewController {
   
   
    
    
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var ingreEnter: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ingreEnter.delegate = self as? UITextFieldDelegate
        textView.delegate = self as? UITextViewDelegate
    }
    
    @IBAction func enterTapped(_ sender: Any) {
        textView.text = ingreEnter.text!
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func textFieldDidBeginEditing(textField: UITextField) {
        textField.text = ""
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
