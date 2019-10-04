//
//  GeneralModelCell.swift
//  SwiftComp
//
//  Created by Banghua Zhao on 10/1/19.
//  Copyright © 2019 Banghua Zhao. All rights reserved.
//

import UIKit

class GeneralModelCell: UITableViewCell {
    
    var generalModel: GeneralModel? {
        didSet {
            generalImageView.image = generalModel?.image
            nameLabel.text = generalModel?.name
        }
    }
    
    let generalImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 15)
        label.adjustsFontSizeToFitWidth = true
        label.textColor = .blackThemeColor
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.backgroundColor = .whiteThemeColor
        
        addSubview(generalImageView)
        generalImageView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 12).isActive = true
        generalImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 8).isActive = true
        generalImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -8).isActive = true
        generalImageView.widthAnchor.constraint(equalToConstant: 30).isActive = true
        
        addSubview(nameLabel)
        nameLabel.leftAnchor.constraint(equalTo: generalImageView.rightAnchor, constant: 12).isActive = true
        nameLabel.widthAnchor.constraint(equalTo: self.widthAnchor, constant: -120).isActive = true
        nameLabel.centerYAnchor.constraint(equalTo: generalImageView.centerYAnchor, constant: 0).isActive = true
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
