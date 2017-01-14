//
//  cell_TableViewCell.swift
//  todolist
//
//  Created by david on 2016-12-03.
//  Copyright © 2016 david. All rights reserved.
//

import UIKit

class cell_TableViewCell: UITableViewCell {

    var index : Int?
    
    var vc : ViewController?
    

    @IBOutlet weak var tf1: UITextField!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    @IBAction func btnDelete(_ sender: Any) {
        vc?.deleteList(row: index!)
        
    }

}
