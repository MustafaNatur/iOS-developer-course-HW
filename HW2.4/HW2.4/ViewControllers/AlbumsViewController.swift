//
//  ViewController.swift
//  HW2.4
//
//  Created by Мустафа Натур on 11.02.2023.
//

import UIKit

class AlbumsViewController: UIViewController {
    
    var albums = Model.getAlbums()
    
    var tableView:UITableView = {
        let table = UITableView()
        table.register(CustomCell.self, forCellReuseIdentifier: "CustomCell")
        table.rowHeight = 100
        return table
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configureViewController()
        configureTableView()
        
    }
    
    func configureViewController() {
        title = "Albums"
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

extension AlbumsViewController: UITableViewDelegate, UITableViewDataSource {

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell") as! CustomCell
        
        cell.setData(model: CellModel(name: albums[indexPath.row].name, author: albums[indexPath.row].autor, image: albums[indexPath.row].image!))
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return albums.count
    }

}

