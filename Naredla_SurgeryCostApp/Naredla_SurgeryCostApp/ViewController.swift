//
//  ViewController.swift
//  Naredla_SurgeryCostApp
//
//  Created by Naredla,Jyothsna on 10/4/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var PName: UITextField!
    
    
    @IBOutlet weak var SType: UITextField!
    
    
    @IBOutlet weak var Cost: UITextField!
    
    
    
    @IBOutlet weak var ImageOL: UIImageView!
    
    

    @IBOutlet weak var outputOL: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func Btnclicked(_ sender: UIButton) {
        var patientname = PName.text!
        var surgeryType = SType.text!
        var price  = Double (Cost.text!) ?? 0.0
                if(patientname != " " && surgeryType.lowercased() == "heart" && price != 0)
                {
                    ImageOL.image = UIImage(named: "heart")
                    var totalSurgeryCost = ((price*(1+11.75))-(500))
                    outputOL.text = "\(patientname): \n Total Cost for Heart🫀 surgery is $\(totalSurgeryCost)"
                }
                else if(patientname != " " && surgeryType.lowercased() == "knee replacement" && price != 0)
                {
                    ImageOL.image = UIImage(named: "Knee")
                    var totalSurgeryCost = ((price*(1+13.5))-(750))
                    outputOL.text = "\(patientname): Total Cost for Knee surgery is $\(totalSurgeryCost)"
                }
                else if(patientname != " " && surgeryType.lowercased() == "brain" && price != 0)
                {
                    ImageOL.image = UIImage(named: "Brain")
                    var totalSurgeryCost = ((price*(1+6.25))-(350))
                    outputOL.text = "\(patientname):+\n+ Total Cost for brain🧠 surgery is $\(totalSurgeryCost)"
                }
                else
                {
                    ImageOL.image = UIImage(named: "noresult")
                    outputOL.text = "Enter all details"
                }
    }
    
}

