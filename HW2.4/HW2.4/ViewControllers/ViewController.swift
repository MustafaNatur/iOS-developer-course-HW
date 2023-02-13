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
        table.register(CustomCell.self, forCellReuseIdentifier: "CustomCell")
        table.rowHeight = 100
        return table
    }()
    // createTableView
    // setConstrains
    // create Cell
    // setConstains
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configureViewController()
        configureTableView()
        
    }
    
    func configureViewController() {
        title = "Music"
        view.addSubview(tableView)
        view.backgroundColor = .systemBackground
    }

    func configureTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.frame = view.bounds
        tableView.reloadData()
    }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell") as! CustomCell
        
        cell.setData(model: CellModel(name: songs[indexPath.row].name, author: songs[indexPath.row].autor, image: songs[indexPath.row].image!))
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return songs.count
    }
}

