//
//  ViewController.swift
//  HW2.4
//
//  Created by Мустафа Натур on 11.02.2023.
//

import UIKit

class ViewController: UIViewController {
    
    let songs = Model.getSongs()
    
    var tableView:UITableView = {
        let table = UITableView()
        table.rowHeight = 100
        return table
    }()
    // createTableView
    // setConstrains
    // create Cell
    // setConstains
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //configureViewController()
        
    }


}

