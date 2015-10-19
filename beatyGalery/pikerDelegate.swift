//
//  pikerDelegate.swift
//  beatyGalery
//
//  Created by test on 8/7/15.
//  Copyright (c) 2015 Mrtang. All rights reserved.
//

import UIKit

extension ViewController:UIPickerViewDataSource{
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int{
            return 1
    }
    
    // returns the # of rows in each component..
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
       return names.count
    }
}

extension ViewController:UIPickerViewDelegate{
    
     func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String!{
       return names[row]
        
        }
    
//func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int){
        //self.result = names[row]
   // }
       
    
}