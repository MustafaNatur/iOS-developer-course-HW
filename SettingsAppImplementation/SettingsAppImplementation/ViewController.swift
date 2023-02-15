//
//  ViewController.swift
//  SettingsAppImplementation
//
//  Created by Мустафа Натур on 15.02.2023.
//

import UIKit

class ViewController: UIViewController {

    let data = Model.getData()
    
    let tableView = {
        let table = UITableView(frame: .zero, style: .insetGrouped)
        table.register(CustomCell.self, forCellReuseIdentifier: "CustomCell")
        return table
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(tableView)
    
        configureViewController()
        configureTableView()

    }

    func configureViewController() {
        navigationController?.navigationBar.prefersLargeTitles = true
        title = "Settings"
        view.backgroundColor = .systemBackground
    }

    func configureTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.frame = view.bounds
        tableView.reloadData()
    }
}


extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let section = data[section]
        return section.title
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data[section].cells.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell") as! CustomCell
        cell.set(with: data[indexPath.section].cells[indexPath.row])
        return cell
    }
}

