//
//  DetailViewController.swift
//  MVCExample
//
//  Created by Kerim CAGLAR on 31.08.2019.
//  Copyright © 2019 Kerim CAGLAR. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var desc: String = ""
    @IBOutlet weak var descriptionTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        descriptionTextView.text = desc

        // Do any additional setup after loading the view.
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
