//
//  ViewController.swift
//  ASW Calculator
//
//  Created by Bobby Deaton on 8/4/19.
//  Copyright © 2019 Bobby Deaton. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //left side of app
    @IBOutlet weak var f0Label: UILabel!
    @IBOutlet weak var spdLabel: UILabel!
    @IBOutlet weak var depthLabel: UILabel!
    @IBOutlet weak var rangeLabel: UILabel!
    @IBOutlet weak var radarLabel: UILabel!
    @IBOutlet weak var esmLabel: UILabel!
    @IBOutlet weak var visualLabel: UILabel!
    
    //middle section of app
    
    @IBOutlet weak var f1freqTextField: UITextField!
    @IBOutlet weak var f2freqTextField: UITextField!
    @IBOutlet weak var nullspaceTextField: UITextField!
    @IBOutlet weak var hyddepthTextField: UITextField!
    @IBOutlet weak var acaltitudeTextField: UITextField!
    @IBOutlet weak var f1timeLabel: UILabel! /* Hidden */
    @IBOutlet weak var f2timeLabel: UILabel! /* Hidden */
    @IBOutlet weak var timeDiffLabel: UILabel! /* Hidden */
    @IBOutlet weak var freqDiffLabel: UILabel! /* Hidden */
    @IBOutlet weak var calculateButton: UIButton!
    @IBOutlet weak var clearButton: UIButton!
    @IBOutlet weak var f1Button: UIButton!
    @IBOutlet weak var f2Button: UIButton!
    @IBOutlet weak var nullspaceButton: UIButton!
    @IBOutlet weak var hyddepthButton: UIButton!
    @IBOutlet weak var acaltitudeButton: UIButton!
    
    //calculator side of app
    @IBOutlet weak var resultsLabel: UILabel!
    @IBOutlet weak var acButton: UIButton!
    @IBOutlet weak var divButton: UIButton!
    @IBOutlet weak var multiplyButton: UIButton!
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var equalButton: UIButton!
    @IBOutlet weak var decimalButton: UIButton!
    @IBOutlet weak var zeroButton: UIButton!
    @IBOutlet weak var oneButton: UIButton!
    @IBOutlet weak var twoButton: UIButton!
    @IBOutlet weak var threeButton: UIButton!
    @IBOutlet weak var fourButton: UIButton!
    @IBOutlet weak var fiveButton: UIButton!
    @IBOutlet weak var sixButton: UIButton!
    @IBOutlet weak var sevenButton: UIButton!
    @IBOutlet weak var eightButton: UIButton!
    @IBOutlet weak var nineButton: UIButton!
    @IBOutlet weak var nintyButton: UIButton!
    @IBOutlet weak var twohundredButton: UIButton!
    @IBOutlet weak var fourhundredButton: UIButton!
    @IBOutlet weak var onethousandButton: UIButton!
    
    var numberOnScreen: Double = 0;
    var previousNumber: Double = 0;
    var performingMath = false
    var operation = 0;
    
    var mark1: Date?
    var mark2: Date?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    f0Label.layer.masksToBounds = true
    f0Label.layer.cornerRadius = 12
    spdLabel.layer.masksToBounds = true
    spdLabel.layer.cornerRadius = 12
    depthLabel.layer.masksToBounds = true
    depthLabel.layer.cornerRadius = 12
    rangeLabel.layer.masksToBounds = true
    rangeLabel.layer.cornerRadius = 12
    radarLabel.layer.masksToBounds = true
    radarLabel.layer.cornerRadius = 12
    esmLabel.layer.masksToBounds = true
    esmLabel.layer.cornerRadius = 12
    visualLabel.layer.masksToBounds = true
    visualLabel.layer.cornerRadius = 12
        
    f1freqTextField.layer.masksToBounds = true
    f1freqTextField.layer.cornerRadius = 8
    f2freqTextField.layer.masksToBounds = true
    f2freqTextField.layer.cornerRadius = 8
    nullspaceTextField.layer.masksToBounds = true
    nullspaceTextField.layer.cornerRadius = 8
    hyddepthTextField.layer.masksToBounds = true
    hyddepthTextField.layer.cornerRadius = 8
    acaltitudeTextField.layer.masksToBounds = true
    acaltitudeTextField.layer.cornerRadius = 8
    calculateButton.layer.masksToBounds = true
    calculateButton.layer.cornerRadius = 8
    clearButton.layer.masksToBounds = true
    clearButton.layer.cornerRadius = 8
        
    f1Button.layer.masksToBounds = true
    f1Button.layer.cornerRadius = 8
    f2Button.layer.masksToBounds = true
    f2Button.layer.cornerRadius = 8
    nullspaceButton.layer.masksToBounds = true
    nullspaceButton.layer.cornerRadius = 8
    hyddepthButton.layer.masksToBounds = true
    hyddepthButton.layer.cornerRadius = 8
    acaltitudeButton.layer.masksToBounds = true
    acaltitudeButton.layer.cornerRadius = 8

    // calculator buttons
    resultsLabel.layer.masksToBounds = true
    resultsLabel.layer.cornerRadius = 8
    acButton.layer.masksToBounds = true
    acButton.layer.cornerRadius = 8
    divButton.layer.masksToBounds = true
    divButton.layer.cornerRadius = 8
    multiplyButton.layer.masksToBounds = true
    multiplyButton.layer.cornerRadius = 8
    minusButton.layer.masksToBounds = true
    minusButton.layer.cornerRadius = 8
    addButton.layer.masksToBounds = true
    addButton.layer.cornerRadius = 8
    equalButton.layer.masksToBounds = true
    equalButton.layer.cornerRadius = 8
    decimalButton.layer.masksToBounds = true
    decimalButton.layer.cornerRadius = 8
    oneButton.layer.masksToBounds = true
    oneButton.layer.cornerRadius = 8
    twoButton.layer.masksToBounds = true
    twoButton.layer.cornerRadius = 8
    threeButton.layer.masksToBounds = true
    threeButton.layer.cornerRadius = 8
    fourButton.layer.masksToBounds = true
    fourButton.layer.cornerRadius = 8
    fiveButton.layer.masksToBounds = true
    fiveButton.layer.cornerRadius = 8
    sixButton.layer.masksToBounds = true
    sixButton.layer.cornerRadius = 8
    sevenButton.layer.masksToBounds = true
    sevenButton.layer.cornerRadius = 8
    eightButton.layer.masksToBounds = true
    eightButton.layer.cornerRadius = 8
    nineButton.layer.masksToBounds = true
    nineButton.layer.cornerRadius = 8
    nintyButton.layer.masksToBounds = true
    nintyButton.layer.cornerRadius = 8
    twohundredButton.layer.masksToBounds = true
    twohundredButton.layer.cornerRadius = 8
    fourhundredButton.layer.masksToBounds = true
    fourhundredButton.layer.cornerRadius = 8
    onethousandButton.layer.masksToBounds = true
    onethousandButton.layer.cornerRadius = 8
    zeroButton.layer.masksToBounds = true
    zeroButton.layer.cornerRadius = 8
    resultsLabel.text! = "0"
    }
    
    @IBAction func clearButton(_ sender: UIButton) {
        f1freqTextField.text = ""
        f1timeLabel.text = ""
        f2freqTextField.text = ""
        f2timeLabel.text = ""
        nullspaceTextField.text = ""
        hyddepthTextField.text = ""
        acaltitudeTextField.text = ""
        f0Label.text = "0.0"
        spdLabel.text = "0.0"
        depthLabel.text = "0.0"
        rangeLabel.text = "0.0"
        radarLabel.text = "0.0"
        esmLabel.text = "0.0"
        visualLabel.text = "0.0"
    }

    @IBAction func markF1(_ sender: UIButton) {
        mark1 = Date()
        let formatter = DateFormatter()
        formatter.timeZone = TimeZone.current
        formatter.dateFormat = "mm.ss"
        let dateString = formatter.string(from: mark1 ?? Date())
        f1timeLabel.text = dateString
        f1freqTextField.text = resultsLabel.text
        resultsLabel.text = "0"
    }

    @IBAction func markF2(_ sender: UIButton) {
        mark2 = Date()
        let formatter = DateFormatter()
        formatter.timeZone = TimeZone.current
        formatter.dateFormat = "mm.ss"
        let dateString = formatter.string(from: mark2 ?? Date())
        f2timeLabel.text = dateString
        f2freqTextField.text = resultsLabel.text
        resultsLabel.text = "0"
    }
    
    @IBAction func markNullSpace(_ sender: UIButton) {
        nullspaceTextField.text = resultsLabel.text
        resultsLabel.text = "0"
    }
    
    @IBAction func markHydDepth(_ sender: UIButton) {
        hyddepthTextField.text = resultsLabel.text
        resultsLabel.text = "0"
    }
    
    @IBAction func markACAltitude(_ sender: UIButton) {
        acaltitudeTextField.text = resultsLabel.text
        resultsLabel.text = "0"
    }
    
    @IBAction func calculateFormulas(_ sender: UIButton) {

        if let f1time = Double(f1timeLabel.text ?? "0.0"), let f2time = Double(f2timeLabel.text ?? "0.0") {
            let sum = f2time - f1time
            timeDiffLabel.text = String(format: "%.2f", sum) }
        if let f1freq = Double(f1freqTextField.text ?? "0.0"), let f2freq = Double(f2freqTextField.text ?? "0.0") {
            let sum = f1freq - f2freq
            freqDiffLabel.text? = String(format: "%.2f", sum) }
        if let val3 = Double(acaltitudeTextField.text ?? "0.0") {
            let sum1 =  sqrt(val3)
            radarLabel.text? = String(format: "%.2f", sum1 * 1.23) }
        if let val4 = Double(acaltitudeTextField.text ?? "0.0") {
            let sum1 =  sqrt(val4)
            esmLabel.text? = String(format: "%.2f", sum1 * 1.85) }
        if let val5 = Double(acaltitudeTextField.text ?? "0.0") {
            let sum1 =  sqrt(val5)
            visualLabel.text? = String(format: "%.2f", sum1 * 1.06) }
        if let f1 = Double(f1freqTextField.text ?? "0.0"), let f2 = Double(f2freqTextField.text ?? "0.0") {
            let sum = f1 + f2
            f0Label.text? = String(format: "%.2f", sum / 2) }
        if let fd = Double(freqDiffLabel.text ?? "0.0"), let f0 = Double(f0Label.text ?? "0.0") {
            let sum = fd / f0
            spdLabel.text? = String(format: "%.2f", sum * 1500) }
        if let val1 = Double(spdLabel.text ?? "0.0"), let val2 = Double(timeDiffLabel.text ?? "0.0") {
            let sum = val1 * 16.67 * val2
            rangeLabel.text? = String(format: "%.1f", sum) }
        if let range = Double(rangeLabel.text ?? "0.0"), let nullspace = Double(nullspaceTextField.text ?? "0.0"), let hyddepth = Double(hyddepthTextField.text ?? "0.0") {
            let sum1 = (range * 7500) / (nullspace * hyddepth)
            depthLabel.text? = String(format: "%.2f", sum1) }
        return }

    @IBAction func numbers(_ sender: UIButton) {
        if performingMath == true {
            
            resultsLabel.text! = String(sender.tag - 1)
            numberOnScreen = Double(resultsLabel.text!)!
            performingMath = false }
        else {
            resultsLabel.text! = resultsLabel.text! + String(sender.tag - 1)
            numberOnScreen = Double(resultsLabel.text!)! } }

    @IBAction func buttons(_ sender: UIButton) {
            if resultsLabel.text! != "" && sender.tag != 11 && sender.tag != 16 {
                previousNumber = Double(resultsLabel.text!)!
                operation = sender.tag
                performingMath = true; }
                
        else if sender.tag == 16 {
            if operation == 12 {
                resultsLabel.text = String(previousNumber / numberOnScreen) }
            else if operation == 13 {
                resultsLabel.text = String(previousNumber * numberOnScreen) }
            else if operation == 14 {
                resultsLabel.text = String(previousNumber - numberOnScreen) }
            else if operation == 15 {
                resultsLabel.text = String(previousNumber + numberOnScreen) }
        }
        else if sender.tag == 11 {
                resultsLabel.text = "0"
                previousNumber = 0;
                numberOnScreen = 0;
                operation = 0; }
    }
    
    @IBAction func decimal(_ sender: UIButton) {
        if performingMath || resultsLabel.text!.isEmpty
        {
            resultsLabel.text = "0."
            performingMath = false
        }
        else
        {
            if !resultsLabel.text!.contains(".") {
                resultsLabel.text = resultsLabel.text! + "."
            }
        }
        numberOnScreen = Double(resultsLabel.text!)!
    
    }
    
}

    

