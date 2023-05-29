//
//  CountriesTableViewCell.swift
//  Countries
//
//  Created by Ahmet Ali ÇETİN on 29.05.2023.
//

import UIKit

class CountriesTableViewCell: UITableViewCell {

    private let flagImage: UIImageView = {
        let img = UIImageView()
        
        return img
    }()
    
    private let nameLabel: UILabel = {
        let name = UILabel()
        name.textColor = .label
        name.font = .systemFont(ofSize: 20, weight: .bold)
        return name
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.addSubview(flagImage)
        contentView.addSubview(nameLabel)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        let flagImageConstraints = [
            flagImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            flagImage.trailingAnchor.constraint(equalTo: nameLabel.leadingAnchor, constant: 10),
            flagImage.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            flagImage.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 10)
        ]
        
        let nameLabelConstraints = [
            nameLabel.leadingAnchor.constraint(equalTo: flagImage.trailingAnchor, constant: 10),
            nameLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 20),
            nameLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            nameLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10)
        ]
        
        NSLayoutConstraint.activateMultiple(flagImageConstraints, nameLabelConstraints)
        
    }
    
    
    
    

}
