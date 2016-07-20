//
//  ViewController.swift
//  UIFun
//
//  Created by Michael Dippery on 6/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // TODO: Set up IB outlets

    @IBOutlet weak var paintBucketView: UIImageView!
    @IBOutlet weak var firstSegmentedControl: UISegmentedControl!
    @IBOutlet weak var secondSegmentedControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // TODO: Set the initial paint color to "red"
        
        self.paintBucketView.paintColorName = "red"
        
        print(mixColors(withFirst: "blue", second: "yellow"))
        
    }

    func mixColors(withFirst first: String, second: String) -> String {
        // TODO: Mix colors and return a string indicating the name of the mixed color
        // (e.g., "red", "purple", "blue")
        
        
        switch (first, second) {
        
        case ("red", "red"):
            return "red"
        
        case ("yellow", "yellow"):
            return "yellow"
        
        case ("blue", "blue"):
            return "blue"
        
        case("red", "yellow"):
            return "orange"
        
        case("yellow", "red"):
            return "orange"
        
        case("red", "blue"):
            return "purple"
        
        case("blue", "red"):
            return "purple"
        
        case("blue", "yellow"):
            return "green"
        
        case("yellow", "blue"):
            return "green"
        
        default:
            return ""
        }
        /*
        
         // First Implementation:
         
        var returnString = String()
        
        if first == "red" && second == "red" {
            returnString = "red"
        }
        
        if first == "yellow" && second == "yellow" {
            returnString = "yellow"
        }
        
        if first == "blue" && second == "blue" {
            returnString = "blue"
        }
        
        if (first == "red" && second == "yellow") {
            returnString = "orange"
        }
        
        if (first == "yellow" && second == "red") {
            returnString = "orange"
        }
        
        if (first == "red" && second == "blue") {
            returnString = "purple"
        }
        
        if (first == "blue" && second == "red") {
            returnString = "purple"
        }
        
        if (first == "blue" && second == "yellow") {
            returnString = "green"
        }
        
        if (first == "yellow" && second == "blue") {
            returnString = "green"
        }
        
        return returnString
        */
        
    }

    @IBAction func colorSelected(sender: UISegmentedControl) {
        // TODO: Mix each selected color and set the paint color to the mixed color
        
        let firstIndex = self.firstSegmentedControl.selectedSegmentIndex
        let secondIndex = self.secondSegmentedControl.selectedSegmentIndex
        
        // Store Segmented Control Indexes into a tuple
        let indices = (firstIndex, secondIndex)
        
        // Switch off of the tuple:
        switch indices {
        case (0,0):
            self.paintBucketView.paintColorName = mixColors(withFirst: "red", second: "red")
            print("color is red")
            
        case(1,1):
            self.paintBucketView.paintColorName = mixColors(withFirst: "yellow", second: "yellow")
            print("color is yellow")
            
        case(2,2):
            self.paintBucketView.paintColorName = mixColors(withFirst: "blue", second: "blue")
            print("color is blue")
            
        case(0,1):
            self.paintBucketView.paintColorName = mixColors(withFirst: "red", second: "yellow")
            print("color is orange")
            
        case(1,0):
            self.paintBucketView.paintColorName = mixColors(withFirst: "yellow", second: "red")
            print("color is orange")
            
        case(0,2):
            self.paintBucketView.paintColorName = mixColors(withFirst: "red", second: "blue")
            print("color is purple")
            
        case(2,0):
            self.paintBucketView.paintColorName = mixColors(withFirst: "blue", second: "red")
            print("color is purple")
            
        case(2,1):
            self.paintBucketView.paintColorName = mixColors(withFirst: "blue", second: "yellow")
            print("color is green")
            
        case(1,2):
            self.paintBucketView.paintColorName = mixColors(withFirst: "yellow", second: "blue")
            print("color is green")
            
        default:
            break
        }
        
        /*
        // First Implementation:
        if firstSegmentedControl.selectedSegmentIndex == 0 && secondSegmentedControl.selectedSegmentIndex == 0 {
            
            self.paintBucketView.paintColorName = mixColors(withFirst: "red", second: "red")
            print("color is red")
            
        }
        
        else if (firstSegmentedControl.selectedSegmentIndex == 1 && secondSegmentedControl.selectedSegmentIndex == 1) {
            
            self.paintBucketView.paintColorName = mixColors(withFirst: "yellow", second: "yellow")
            print("color is yellow")

        }
        
        else if firstSegmentedControl.selectedSegmentIndex == 2 && secondSegmentedControl.selectedSegmentIndex == 2 {
            
            self.paintBucketView.paintColorName = mixColors(withFirst: "blue", second: "blue")
            print("color is blue")
        }
        
        else if firstSegmentedControl.selectedSegmentIndex == 0 && secondSegmentedControl.selectedSegmentIndex == 1 {
            
            self.paintBucketView.paintColorName = mixColors(withFirst: "red", second: "yellow")
            print("color is orange")

        }
        
        else if firstSegmentedControl.selectedSegmentIndex == 1 && secondSegmentedControl.selectedSegmentIndex == 0 {
            
            self.paintBucketView.paintColorName = mixColors(withFirst: "yellow", second: "red")
            print("color is orange")

        }
        
        else if firstSegmentedControl.selectedSegmentIndex == 0 && secondSegmentedControl.selectedSegmentIndex == 2 {
            
            self.paintBucketView.paintColorName = mixColors(withFirst: "red", second: "blue")
            print("color is purple")

        }
        
        else if firstSegmentedControl.selectedSegmentIndex == 2 && secondSegmentedControl.selectedSegmentIndex == 0 {
            
            self.paintBucketView.paintColorName = mixColors(withFirst: "blue", second: "red")
            print("color is purple")

        }
        
        else if firstSegmentedControl.selectedSegmentIndex == 2 && secondSegmentedControl.selectedSegmentIndex == 1  {
            
            self.paintBucketView.paintColorName = mixColors(withFirst: "blue", second: "yellow")
            print("color is green")

        }
        
        else if firstSegmentedControl.selectedSegmentIndex == 1 && secondSegmentedControl.selectedSegmentIndex == 2 {
            
            self.paintBucketView.paintColorName = mixColors(withFirst: "yellow", second: "blue")
            print("color is green")

        } 
        */
    }
}
