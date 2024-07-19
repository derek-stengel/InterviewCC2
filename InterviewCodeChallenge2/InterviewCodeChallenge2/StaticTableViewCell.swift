//
//  StaticTableViewCell.swift
//  InterviewCodeChallenge2
//
//  Created by Derek Stengel on 7/19/24.
//


import UIKit

class StaticTableViewCell: UITableViewCell {
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        // Set corner radius and masksToBounds for the contentView
        self.contentView.layer.cornerRadius = 10
        self.contentView.layer.masksToBounds = true
        
        // Optionally, add other customization like borders or shadows
        self.contentView.layer.borderWidth = 1.0
        self.contentView.layer.borderColor = UIColor.lightGray.cgColor
    }
}

