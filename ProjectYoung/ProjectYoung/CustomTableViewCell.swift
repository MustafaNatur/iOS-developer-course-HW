//
//  CustomTableViewCell.swift
//  ProjectYoung
//
//  Created by Мустафа Натур on 24.03.2023.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    
    let content = {
        let view = UIImageView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 25
        view.clipsToBounds = true
        view.image = UIImage(named: "exmpl")
        return view
    }()
    
    let articleLabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.textAlignment = .left
        label.textColor = .white
        label.font = UIFont(name: "HelveticaNeue-Bold", size: 20)
        return label
    }()
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        

        // Configure the view for the selected state
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        backgroundColor = .clear
        configureContentView()
        
        
        //configureArticleLabel()
    }
    
    
    func configureArticleLabel() {
        content.addSubview(articleLabel)
        articleLabel.translatesAutoresizingMaskIntoConstraints = false
        articleLabel.bottomAnchor.constraint(equalTo: content.bottomAnchor).isActive = true
        articleLabel.widthAnchor.constraint(equalTo: content.widthAnchor).isActive = true
    }

    
    func configureContentView() {
        let margin:CGFloat = 50
        contentView.addSubview(content)
        content.bounds = contentView.bounds
        content.translatesAutoresizingMaskIntoConstraints = false
        content.widthAnchor.constraint(equalTo: contentView.widthAnchor, constant: -margin).isActive = true
        content.heightAnchor.constraint(equalTo: contentView.heightAnchor, constant: -margin).isActive = true
        content.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
        content.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
    }

    func set(text: String, image:UIImage?) {
        articleLabel.text = text
        content.image = image
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
