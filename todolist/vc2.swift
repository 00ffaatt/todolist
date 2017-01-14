//
//  vc2.swift
//  todolist
//
//  Created by david on 2016-12-03.
//  Copyright © 2016 david. All rights reserved.
//

import UIKit

class vc2: UIViewController {

    @IBOutlet weak var tf1: UITextField!
    
    

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    

    @IBAction func btnAdd(_ sender: Any) {
        var vc = navigationController?.viewControllers[0] as! ViewController
        
        
        
        
        vc.addList(listLabel: self.tf1.text!)
        self.navigationController?.popViewController(animated: false)
        
        
        
    }
    
    @IBAction func mainView(_ sender: Any) {
        tf1.resignFirstResponder()
    }
    
 
    
    
    
}


