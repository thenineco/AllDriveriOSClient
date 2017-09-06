//
//  CollectionCell.swift
//  Driver
//
//  Created by Александр Сабри on 28/12/2016.
//  Copyright © 2016 Александр Сабри. All rights reserved.
//

import UIKit

class InterestCollectionViewCell: UICollectionViewCell
{
    // MARK: - Public API
    var interest: Interest! {
        didSet {
            updateUI()
        }
    }
    
    // MARK: - Private
    
    @IBOutlet weak var featuredImageView: UIImageView!
    @IBOutlet weak var interestTitleLabel: UILabel!
    
    fileprivate func updateUI()
    {
        interestTitleLabel?.text! = interest.title
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.layer.cornerRadius = 10.0
        self.clipsToBounds = true
    }
}
