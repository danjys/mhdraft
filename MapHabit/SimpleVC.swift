//
//  SimpleVC.swift
//  MapHabit
//
//  Created by Dhananjaya Somanna on 10/14/18.
//  Copyright © 2018 Dhananjaya Somanna. All rights reserved.
//

import UIKit

class SimpleVC: UIViewController {

    @IBOutlet weak var movieImage: UIImageView!
    var imageName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        self.movieImage.image = UIImage(named: imageName)
        self.title = imageName
    }
    
    func customInit(imageName: String) {
        self.imageName = imageName
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
