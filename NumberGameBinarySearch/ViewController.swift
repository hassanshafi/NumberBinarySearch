//
//  ViewController.swift
//  NumberGameBinarySearch
//
//  Created by mani on 19/06/2018.
//  Copyright © 2018 OokyDooky. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
var searchNumber = Int()
    var numberArray = [Int]()
    @IBOutlet weak var textFieldNumber: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       // numberGuessingUsingBinarySearch(searchNumber:64)
        numberGuessingUsingBinarySearchCUSTOM(searchNumber:8192)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberGuessingUsingBinarySearchCUSTOM(searchNumber:Int){
        
        for i in 0 ... 10000 {
            numberArray.append(i)
        }
      
        
        // lower bound
        // upper bound
        // while number is not found flag is false
        //
        
        
        
        
        var isnumberFound = false
        var lowerBound = 0.0
        var upperBound = 10000.0
        
        while !isnumberFound {
            
            var average = (lowerBound + upperBound) / 2.0
            var averageInt = Int(round(Double(average)))
            print(averageInt)
            
            if numberArray[averageInt] == searchNumber {
                print("found")
                print(numberArray[averageInt])
                isnumberFound = true
            }
                // 3
                // average == 5
            else if (lowerBound > upperBound) {
                print("cant find it")
                isnumberFound = true
                
            }
                
            else {
                if numberArray[averageInt] < searchNumber {
                    lowerBound = average
                }
                else  {
                    //if numberArray[averageInt] > searchNumber
                    upperBound = average
                }
                
            }
          
            
        }
        
        
        
    }
    
    
    func numberGuessingUsingBinarySearch(searchNumber:Int){
        
        for i in 0 ... 100 {
            numberArray.append(i)
        }
        print(numberArray)
        
        // lower bound
        // upper bound
        // while number is not found flag is false
        //
        
        
        
        
        var isnumberFound = false
        var lowerBound = 0.0
        var upperBound = 100.0
        
        while !isnumberFound {

            var average = (lowerBound + upperBound) / 2.0
           var averageInt = Int(round(Double(average)))
            print(averageInt)

            if numberArray[averageInt] == searchNumber {
                print("found")
                print(numberArray[averageInt])
                isnumberFound = true
            }
            // 3
                // average == 5
            else if (lowerBound > upperBound) {
                print("cant find it")
                isnumberFound = true

            }

            else {
                if numberArray[averageInt] < searchNumber {
                    lowerBound = average + 1
                }
                else  {
                    //if numberArray[averageInt] > searchNumber
                    upperBound = average - 1
                }

            }
//
//
//
//
//        }


//        var average = lowerBound + upperBound / 2
//        print(average)
//
//        if searchNumber > average {
//           lowerBound = 50
//            average = lowerBound + upperBound / 2
//        }
//        else if searchNumber < average {
//            lowerBound = 0
//            upperBound = 50
//           average = lowerBound + upperBound / 2
//        }
        
    }
    


}
}
extension ViewController : UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField.text!.count >= 3 {
        // numberGuessingUsingBinarySearch()
       textField.resignFirstResponder()
       }

        return true
    }
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if textField.text!.count >= 3 {
            searchNumber = Int(textField.text!)!
            //numberGuessingUsingBinarySearch()
            textField.resignFirstResponder()
        }
        
        return true
    }
}

