//
//  ArtistViewController.swift
//  HW2.4
//
//  Created by Мустафа Натур on 13.02.2023.
//

import UIKit

class ArtistViewController: UIViewController {

    let infoLabel:UILabel = {
        let label = UILabel()
        label.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
        label.numberOfLines = 0
        return label
    }()
    
    let contentView = UIView()
    
    let scrollView:UIScrollView = {
        let scrollView = UIScrollView()
        return scrollView
    }()
    
    let imageView:UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "Carti")
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "About artist"
        view.backgroundColor = .systemBackground
        view.addSubview(scrollView)
        scrollView.frame = view.bounds
        
        scrollView.addSubview(contentView)
        contentView.frame =  scrollView.bounds
        contentView.addSubview(imageView)
        contentView.addSubview(infoLabel)
        
        setConstrainsImage()
        setConstrainsLabel()
        scrollView.contentSize = CGSize(width: view.bounds.size.width, height: contentView.frame.height * 1.3)

    }
    
    func setConstrainsLabel() {
        infoLabel.translatesAutoresizingMaskIntoConstraints = false
        infoLabel.centerXAnchor.constraint(equalTo: imageView.centerXAnchor).isActive = true
        infoLabel.widthAnchor.constraint(equalToConstant: contentView.bounds.width - 32).isActive = true
        infoLabel.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 40).isActive = true
    }
    
    func setConstrainsImage() {
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 50
        imageView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor).isActive = true
        imageView.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: -60).isActive = true
        imageView.widthAnchor.constraint(equalTo: scrollView.widthAnchor).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 500).isActive = true
    }
}
