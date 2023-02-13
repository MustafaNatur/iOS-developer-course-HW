//
//  CustomCell.swift
//  HW2.4
//
//  Created by Мустафа Натур on 13.02.2023.
//

import Foundation
import UIKit

final class CellModel {
    let name:String
    let author:String
    let image:UIImage
    
    init(name:String, author:String, image:UIImage) {
        self.name = name
        self.author = author
        self.image = image
    }
}

class CustomCell: UITableViewCell {
    
    let songNameLabel = UILabel()
    let songAuthorLabel = UILabel()
    let songImageView = UIImageView()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(songImageView)
        addSubview(songNameLabel)
        addSubview(songAuthorLabel)
       

        configureImageView()
        configureNameLabel()
        configureAuthorLabel()
        
    }
    
    func setData(model:CellModel) {
        songNameLabel.text = model.name
        songImageView.image = model.image
        songAuthorLabel.text = model.author
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureNameLabel() {
        songNameLabel.numberOfLines = 0
        songNameLabel.adjustsFontSizeToFitWidth = true
        
        songNameLabel.translatesAutoresizingMaskIntoConstraints = false
        songNameLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: -7).isActive = true
        songNameLabel.leadingAnchor.constraint(equalTo: songImageView.trailingAnchor, constant: 20).isActive = true
        
    }
    
    private func configureAuthorLabel() {
        songAuthorLabel.numberOfLines = 0
        songAuthorLabel.textColor = .gray
        songAuthorLabel.font = UIFont.systemFont(ofSize: 12, weight: .light)
        
        songAuthorLabel.translatesAutoresizingMaskIntoConstraints = false
        songAuthorLabel.leadingAnchor.constraint(equalTo: songNameLabel.leadingAnchor).isActive = true
        songAuthorLabel.bottomAnchor.constraint(equalTo: songImageView.bottomAnchor).isActive = true
        
    }
    
    private func configureImageView() {
        songImageView.backgroundColor = .red
        songImageView.layer.cornerRadius = 5
        songImageView.contentMode = .scaleAspectFill
        songImageView.clipsToBounds = true

        songImageView.translatesAutoresizingMaskIntoConstraints = false
        songImageView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        songImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10).isActive = true
        songImageView.heightAnchor.constraint(equalToConstant: 60).isActive = true
        songImageView.widthAnchor.constraint(equalTo: songImageView.heightAnchor, multiplier: 4/3).isActive = true

    }

}
