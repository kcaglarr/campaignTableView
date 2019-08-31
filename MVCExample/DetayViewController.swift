//
//  DetailViewController.swift
//  MVCExample
//
//  Created by Kerim CAGLAR on 31.08.2019.
//  Copyright © 2019 Kerim CAGLAR. All rights reserved.
//

import UIKit

class DetayViewController: UIViewController {
    
   
    @IBOutlet weak var desLabel: UILabel!
    
    private var model: Campaign!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.desLabel.text = self.model.icerik
        
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    convenience init(with model: Campaign) {
        self.init(nibName: nil, bundle:nil)
        self.model = model
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
