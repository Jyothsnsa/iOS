import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var heightinFeetOutlet: UITextField!
    
    @IBOutlet weak var heightinInchesOutlet: UITextField!
    
    @IBOutlet weak var weightOutlet: UITextField!
    
    @IBOutlet weak var imageOulet: UIImageView!
    
    
    @IBOutlet weak var displayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        displayLabel.text = ""
    }

    @IBAction func calculationOfBMI(_ sender: Any)
    {
        //reading the height in feet and storing it in a variable heightFT
        let heighFT = Double(heightinFeetOutlet.text!) ?? 0.0
        
        //reading the height in inches and storing it in a variable heightInches
        
        let heightInches = Double(heightinInchesOutlet.text!) ?? 0.0
        
        //converting the height in feet to inches to calculate the total height in inches
        
        let height = (heighFT*12) + heightInches
        
        //reading the weight in lbs and storing it in a variable weight
        
        let weight = Double(weightOutlet.text!) ?? 0.0
        
        // calculating the BodyMassIndex based on the givn formula
        
        let bm = (703*weight) / (height*height)
        
        //rounding up the BMI to one decimal value
        
        let BMI = round(bm * 10)/10.0
        
        //Displaying the image and the output based on the BMI
        
        if(BMI <= 18.5){
            imageOulet.image = UIImage(named: "underWeight")
            displayLabel.text = "Your Body Mass Index is \(BMI).\nThis is considered UnderWeight."
        }
        else if(BMI >= 18.6 && BMI
                  <= 24.9){
            imageOulet.image = UIImage(named: "normal")
            displayLabel.text = "Your Body Mass Index is \(BMI).\nThis is considered Normal👍."
        }
        else if( BMI >= 25 && BMI <= 29.9 ){
            imageOulet.image = UIImage(named: "overWeight")
            displayLabel.text = "Your Body Mass Index is \(BMI).\nThis is considered OverWeight."
        }
        else if(BMI >= 30.0){
            imageOulet.image = UIImage(named: "obese")
            displayLabel.text = "Your Body Mass Index is \(BMI).\nThis is considered Obesity."
        }
        
        
    }
    
}
