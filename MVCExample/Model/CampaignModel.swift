//
//  CampaignModel.swift
//  MVCExample
//
//  Created by Kerim CAGLAR on 30.08.2019.
//  Copyright © 2019 Kerim CAGLAR. All rights reserved.
//

import Foundation

struct Campaign:Codable {
    var baslik:String?
    var icerik:String?
    var tarih:String?
    var resim:String?
    var durum:String?
}
