//
//  ViewController.swift
//  VisualComponents
//
//  Created by LABORATORIO MAC UAM on 27/7/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myFirstLabel: UILabel!
    
    @IBOutlet weak var myFirstActionSwitch: UISwitch!
    
    @IBOutlet weak var mySegmentedControl: UISegmentedControl!
    @IBOutlet weak var myFirstButton: UIButton!
    @IBOutlet weak var labelStepper: UILabel!
    
    
    @IBOutlet weak var myStepper: UIStepper!
    @IBOutlet weak var myPageControl: UIPageControl!
    var labelBlue = false
    var labelButton = false
    
    private let values = ["uno", "dos", "tres", "cuatro", "cinco"]
    var n = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myFirstLabel.text = "cambio de label"
        myFirstActionSwitch.isOn = true
        
        mySegmentedControl.removeAllSegments()
        for t in 1...5 {
            mySegmentedControl.insertSegment(withTitle: values[n], at: t, animated: true)
            n = n+1
        }
        
    }
    
    @IBAction func miFirstAction(_ sender: Any) {
        // Manera tecnica
        /*
        myFirstLabel.textColor = myFirstLabel.textColor == .black ? .blue : .black
        */
        
        if labelBlue{
            myFirstLabel.textColor = .black
        }
        else{
            myFirstLabel.textColor = .green
        }
        labelBlue.toggle()
    }
    
    @IBAction func myFirstActionSwitch(_ sender: Any) {
        myFirstButton.tintColor = myFirstButton.tintColor == .black ? .green : .black
        
        myFirstButton.backgroundColor = myFirstActionSwitch.isOn ? .black : .green
    }
    
    @IBAction func mySegmented(_ sender: Any) {
        myPageControl.currentPage = mySegmentedControl.selectedSegmentIndex
    }
    
    @IBAction func myPage(_ sender: Any) {
        mySegmentedControl.selectedSegmentIndex = myPageControl.currentPage
    }
    
    @IBAction func stepperTouchUp(_ sender: Any) {
        
    }
    
    //Slider y progressView sincronizados
}

