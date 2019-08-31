//
//  CampaignTableViewCell.swift
//  MVCExample
//
//  Created by Kerim CAGLAR on 31.08.2019.
//  Copyright © 2019 Kerim CAGLAR. All rights reserved.
//

import UIKit

class CampaignTableViewCell: UITableViewCell {
    
    @IBOutlet private weak var campaignImageVıew: UIImageView!
    
    @IBOutlet private weak var tarihLabel: UILabel!
    
    @IBOutlet private weak var baslıkLabel: UILabel!
    
    private var model: Campaign?
    
    override func awakeFromNib() {
        self.campaignImageVıew.image = UIImage(named: "filli")
    }
    
    func configure(with model: Campaign) {
        self.tarihLabel.text = model.tarih
        self.baslıkLabel.text = model.baslik
    }
}
