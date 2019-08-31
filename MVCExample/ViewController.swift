//
//  ViewController.swift
//  MVCExample
//
//  Created by Kerim CAGLAR on 30.08.2019.
//  Copyright © 2019 Kerim CAGLAR. All rights reserved.
//

import UIKit


let myUrl = "http://bucayapimarket.com/json.php"
let url = URL(string: myUrl)
let myData = try? Data(contentsOf: url!)
let jsonDecoder = JSONDecoder()

class ViewController: UIViewController {
    
    var items = [Campaign]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let campaigns = try? jsonDecoder.decode([Campaign].self, from: myData!)
        self.items = campaigns!
        //dump(campaigns?.first)
        
        var baslikArray = [String]()
        var icerikArray = [String]()
        var tarihArray = [String]()
        var resimArray = [String]()
        var durumArray = [String]()
 
        guard let campaignCollection = campaigns else { return }
        
        for campaign in campaignCollection {
           
            baslikArray.append(campaign.baslik!)
            icerikArray.append(campaign.icerik!)
            tarihArray.append(campaign.tarih!)
            resimArray.append(campaign.resim!)
            durumArray.append(campaign.durum!)
        }
        
        print(baslikArray)
    }


}
extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "campaignCell") as? CampaignTableViewCell else { return UITableViewCell() }

        let model = self.items[indexPath.row]
        
        cell.configure(with: model)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
}
