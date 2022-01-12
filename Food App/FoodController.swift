//
//  FoodController.swift
//  Food App
//
//  Created by Youssef Bhl on 12/01/2022.
//

import UIKit

class FoodController: UIViewController {
    
    @IBOutlet weak var foodImageV: UIImageView!
    @IBOutlet weak var foodNameLabel: UILabel!
    @IBOutlet weak var countryNameLabel: UILabel!
    @IBOutlet weak var foodDescLabel: UILabel!
    
    var foodImageName: String?
    var foodName: String?
    var foodOriginCountry: String?
    var foodDesc: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let foodImageName = foodImageName else {
            return
        }
        foodImageV.image = UIImage(named: foodImageName)
        guard let foodName = foodName else {
            return
        }
        foodNameLabel.text = foodName
        guard let foodOriginCountry = foodOriginCountry else {
            return
        }
        countryNameLabel.text = foodOriginCountry
        guard let foodDesc = foodDesc else {
            return
        }
        foodDescLabel.text = foodDesc
        foodImageV.layer.cornerRadius = 20
    }
    

}
