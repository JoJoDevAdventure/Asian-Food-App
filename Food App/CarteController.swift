//
//  ViewController.swift
//  Food App
//
//  Created by Youssef Bhl on 12/01/2022.
//

import UIKit

class CarteController: UIViewController {
    
    var food: Food = Food(name: "", desc: "", country: "", image: "")
    
    @IBOutlet var foodImages: [RoundedBorderedImg]!
    let segueIdentifier = "showFoodetails"
 
    override func viewDidLoad() {
        super.viewDidLoad()
        for img in foodImages {
            let tag = img.tag
            img.image = UIImage(named: foods[tag].image)
            img.isUserInteractionEnabled = true
            img.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(tappedFoodDetail)))
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.isHidden = false
    }
    
    
    @objc func tappedFoodDetail(_ gesture: UITapGestureRecognizer) {
        guard let tag = gesture.view?.tag else {return}
        food.image = foods[tag].image
        food.desc = foods[tag].desc
        food.country = foods[tag].country
        food.name = foods[tag].name
        performSegue(withIdentifier: segueIdentifier, sender: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == segueIdentifier {
            if let n = segue.destination as? FoodController {
                n.foodImageName = food.image
                n.foodName = food.name
                n.foodDesc = food.desc
                n.foodOriginCountry = food.country
            }
        }
    }
}

