//
//  CustomCell.swift
//  SettingsAppImplementation
//
//  Created by Мустафа Натур on 15.02.2023.
//

import Foundation
import UIKit

class CustomCell: UITableViewCell {
    
    let nameLabel = UILabel()
    let iconImageView = UIImageView()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(iconImageView)
        addSubview(nameLabel)
        accessoryType = .disclosureIndicator

        configureImageView()
        configureNameLabel()
    }
    
    func set(with model:CellModel) {
        nameLabel.text = model.name
        iconImageView.image = model.icon
        iconImageView.backgroundColor = model.color
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureNameLabel() {
        nameLabel.numberOfLines = 0
        nameLabel.adjustsFontSizeToFitWidth = true
        
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        nameLabel.leadingAnchor.constraint(equalTo: iconImageView.trailingAnchor, constant: 20).isActive = true
        
    }
    
    private func configureImageView() {
        iconImageView.backgroundColor = .systemPink
        iconImageView.tintColor = .white
        iconImageView.layer.cornerRadius = 5
        iconImageView.contentMode = .scaleAspectFit
        iconImageView.clipsToBounds = true

        iconImageView.translatesAutoresizingMaskIntoConstraints = false
        iconImageView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        iconImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10).isActive = true
        iconImageView.heightAnchor.constraint(equalToConstant: 30).isActive = true
        iconImageView.widthAnchor.constraint(equalTo: iconImageView.heightAnchor).isActive = true

    }

}
