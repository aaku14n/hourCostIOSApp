//
//  MainVC.swift
//  hourIOSApp
//
//  Created by Aakarsh Yadav on 03/10/20.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var hourTxt: CurrencyInput!
    @IBOutlet weak var wageTxt: CurrencyInput!

    @IBOutlet weak var hourLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        let clcBtn = UIButton(frame: CGRect(x:0,y:0,width:view.frame.size.width,height:60))
        clcBtn.backgroundColor = #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)
        clcBtn.setTitle("Calculator", for: .normal)
        clcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        clcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        hourTxt.inputAccessoryView = clcBtn
        wageTxt.inputAccessoryView = clcBtn
//        // Do any additional setup after loading the view.
        hourLbl.isHidden = true

    }
    @objc func calculate(){
        print("We are here")
        if let wageTxt = wageTxt.text, let hourTxt = hourTxt.text {
            if let wage = Double(wageTxt), let hour = Double(hourTxt) {
                view.endEditing(true)
                hourLbl.isHidden = false
                hourLbl.text = "\(Wage.getHours(forWage: hour, andPrice: wage))"
            }
        }
    }
    

    @IBAction func clearCalculator(_ sender: Any) {
        hourLbl.isHidden = true
        hourTxt.text = ""
        wageTxt.text = ""
    }
}
