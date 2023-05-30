//
//  CountriesTableViewCell.swift
//  Countries
//
//  Created by Ahmet Ali ÇETİN on 29.05.2023.
//

import UIKit

class CountriesTableViewCell: UITableViewCell {

    static let id: String = Constants.cellID
    
    private let flagImage: UIImageView = {
        let img = UIImageView()
        img.image = UIImage(systemName: "person.fill")
        img.contentMode = .scaleAspectFit
        img.backgroundColor = .white
        img.frame = CGRect(x: 10, y: 10, width: 100, height: 200)
        img.layer.cornerRadius = 10
        return img
    }()
    
    private let countryNameLabel: UILabel = {
        let label = UILabel()
        label.text = "Hello World"
        label.textColor = .label
        label.font = .systemFont(ofSize: 20, weight: .bold)
        return label
    }()
    
    private let descriptionLabel: UILabel = {
        let label = UILabel()
        label.text = "Hello World, this is a description label and i want to see how long can i that."
        label.textColor = .secondaryLabel
        label.font = .systemFont(ofSize: 16, weight: .regular)
        label.numberOfLines = 2
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.addSubview(flagImage)
        contentView.addSubview(countryNameLabel)
        contentView.addSubview(descriptionLabel)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        flagImage.translatesAutoresizingMaskIntoConstraints = false
        countryNameLabel.translatesAutoresizingMaskIntoConstraints = false
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let flagImageConstraints = [
            flagImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 15),
            flagImage.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -350),
            flagImage.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 15),
            flagImage.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -15)
        ]
        
        let countryNameLabelConstraints = [
            countryNameLabel.leadingAnchor.constraint(equalTo: flagImage.trailingAnchor, constant: 15),
            countryNameLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -15),
            countryNameLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 15),
        ]
        
        let descriptionLabelConstraints = [
            descriptionLabel.leadingAnchor.constraint(equalTo: flagImage.trailingAnchor, constant: 15),
            descriptionLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -15),
            descriptionLabel.topAnchor.constraint(equalTo: countryNameLabel.bottomAnchor, constant: 0),
            descriptionLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -15)
        ]
        
        NSLayoutConstraint.activateMultiple(flagImageConstraints, countryNameLabelConstraints, descriptionLabelConstraints)
    }
    
    func setUIElements(image: String, countryName: String, descriptionName: String) {
        flagImage.image = UIImage(systemName: image)
        countryNameLabel.text = countryName
        descriptionLabel.text = descriptionName
    }
    
    
    

}
