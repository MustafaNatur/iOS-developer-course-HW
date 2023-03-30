//
//  NewsViewController.swift
//  ProjectYoung
//
//  Created by Мустафа Натур on 24.03.2023.
//

import UIKit

class NewsViewController: UIViewController {

    let imageView = UIImageView()
    let tableView = UITableView(frame: .zero, style: .plain)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureNavigationController()
        configureImageView()
        configureTableView()
        setTableViewDelegates()
        tableView.reloadData()
        imageView.bringSubviewToFront(tableView)
    }
    
    func configureNavigationController() {
        title = "News"
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        navigationController?.navigationBar.largeTitleTextAttributes = [NSAttributedString.Key.font: UIFont(name: "HelveticaNeue-Bold", size: 50)!, NSAttributedString.Key.foregroundColor: UIColor.white]
    }

    
    func configureImageView() {
        view.addSubview(imageView)
        imageView.frame = view.bounds
        imageView.image = UIImage(named: "backgroundImageBlured")
        imageView.isUserInteractionEnabled = true
        imageView.backgroundColor = UIColor.white.withAlphaComponent(0.1)
    }
    
    func configureTableView() {
        imageView.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        tableView.rowHeight = 400
        tableView.register(CustomTableViewCell.self, forCellReuseIdentifier: "CustomTableViewCell")
        tableView.backgroundColor = .clear
        tableView.separatorStyle = .none
        
    }
    
    func setTableViewDelegates() {
         tableView.delegate = self
         tableView.dataSource = self
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

extension NewsViewController:UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        10
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomTableViewCell") as! CustomTableViewCell
        cell.set(text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore", image: UIImage(named: "exmpl"))
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        400
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = MarketViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    
}
