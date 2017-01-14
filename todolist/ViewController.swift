//
//  ViewController.swift
//  todolist
//
//  Created by david on 2016-12-03.
//  Copyright © 2016 david. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var data : [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.addList(listLabel: "dgsdfg")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func addList(listLabel:String){
        data.append(listLabel)
        tableView.reloadData()
    }
    
    func deleteList(row:Int){
        if row < data.count{
            data.remove(at: row)
            tableView.reloadData()
        }else{
            
        }
    }
    
    
    
    

   
    @IBAction func btnAdd(_ sender: Any) {
        performSegue(withIdentifier: "segue", sender: self)
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        var cell = tableView.dequeueReusableCell(withIdentifier: "reuse")! as! cell_TableViewCell
        
        cell.tf1.text = data[indexPath.row]
        
        
        cell.vc = self
        
        cell.index = indexPath.row
        
        return cell
    }
    
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var vc = segue.destination
        
        
    }
    
    
}

