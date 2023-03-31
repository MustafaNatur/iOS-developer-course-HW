//
//  CustomTableViewCell.swift
//  ProjectYoung
//
//  Created by Мустафа Натур on 24.03.2023.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    
    let content = {
        let view = UIView()
        view.layer.cornerRadius = 25
        view.clipsToBounds = true
//        view.image = UIImage(named: "exmpl")
        view.backgroundColor = UIColor.white.withAlphaComponent(0.1)
        view.applyBlurEffect()
        return view
    }()
    
    let FirstNewsImageView = {
        let view = UIImageView()
        view.layer.cornerRadius = 25
        view.clipsToBounds = true
        view.image = UIImage(named: "exmpl")
        view.contentMode = .scaleAspectFill
        return view
    }()
    
    let SecondNewsImageView = {
        let view = UIImageView()
        view.layer.cornerRadius = 25
        view.clipsToBounds = true
        view.image = UIImage(named: "exmpl")
        view.contentMode = .scaleAspectFill
        return view
    }()
    
    let ThirdNewsImageView = {
        let view = UIImageView()
        view.layer.cornerRadius = 25
        view.clipsToBounds = true
        view.image = UIImage(named: "exmpl")
        view.contentMode = .scaleAspectFill
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
        configureFirstImageView()
        configureSecondImageView()
        configureThirdImageView()

    }
    
    func configureFirstImageView() {
        content.addSubview(FirstNewsImageView)
        FirstNewsImageView.translatesAutoresizingMaskIntoConstraints = false
        FirstNewsImageView.topAnchor.constraint(equalTo: content.topAnchor, constant: 16).isActive = true
        FirstNewsImageView.leftAnchor.constraint(equalTo: content.leftAnchor, constant: 16).isActive = true
        FirstNewsImageView.bottomAnchor.constraint(equalTo: content.bottomAnchor, constant: -16).isActive = true
        FirstNewsImageView.widthAnchor.constraint(equalTo: content.widthAnchor, multiplier: 1/2, constant: -22).isActive = true
    }
    
    func configureSecondImageView() {
        content.addSubview(SecondNewsImageView)
        SecondNewsImageView.translatesAutoresizingMaskIntoConstraints = false
        SecondNewsImageView.topAnchor.constraint(equalTo: content.topAnchor, constant: 16).isActive = true
        SecondNewsImageView.rightAnchor.constraint(equalTo: content.rightAnchor, constant: -16).isActive = true
        SecondNewsImageView.widthAnchor.constraint(equalTo: content.widthAnchor, multiplier: 1/2 , constant: -22).isActive = true
        SecondNewsImageView.heightAnchor.constraint(equalTo: FirstNewsImageView.heightAnchor, multiplier: 1/2, constant: -8).isActive = true
    }
    
    func configureThirdImageView() {
        content.addSubview(ThirdNewsImageView)
        ThirdNewsImageView.translatesAutoresizingMaskIntoConstraints = false
        ThirdNewsImageView.bottomAnchor.constraint(equalTo: content.bottomAnchor, constant: -16).isActive = true
        ThirdNewsImageView.rightAnchor.constraint(equalTo: content.rightAnchor, constant: -16).isActive = true
        ThirdNewsImageView.widthAnchor.constraint(equalTo: content.widthAnchor, multiplier: 1/2 , constant: -22).isActive = true
        ThirdNewsImageView.heightAnchor.constraint(equalTo: FirstNewsImageView.heightAnchor, multiplier: 1/2, constant: -8).isActive = true
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

    func set(text: String, image1:UIImage?, image2:UIImage?, image3:UIImage?) {
        articleLabel.text = text
        FirstNewsImageView.image = image1
        SecondNewsImageView.image = image2
        ThirdNewsImageView.image = image3
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
