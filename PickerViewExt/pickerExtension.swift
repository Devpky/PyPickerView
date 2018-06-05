//
//  pickerExtension.swift
//  PickerViewExt
//
//  Created by Pawan Yadav on 05/06/18.
//  Copyright © 2018 invetech. All rights reserved.
//

import Foundation
import UIKit

protocol pyProtocol
{
    func dataPassing(index : Int)
}



class pickerExtension:UIViewController ,UIPickerViewDataSource ,UIPickerViewDelegate
{
    static let sharedInstance = pickerExtension()
    
    var array = [String]()
    
    let myView = UIView()
    let myPicker = UIPickerView()
    
    var delegatea:pyProtocol!
    
    
    
    func pickerMethode(arrayValue : NSArray , viewController : UIViewController)
    {

        
        myView.frame = CGRect(x: 0, y: viewController.view.frame.size.height - 250, width: UIScreen.main.bounds.width, height: 250)
        
        
        myPicker.frame = CGRect(x: 0, y: 36, width: self.myView.frame.size.width, height: self.myView.frame.size.height-36)
        
        myPicker.delegate = self
        array = arrayValue as! [String]
        myPicker.backgroundColor = UIColor .white
        myPicker.reloadAllComponents()
        
        myView.addSubview(myPicker)
        
        
        
        
        
        let toolBar = UIToolbar()
        toolBar.barStyle = .default
        toolBar.isTranslucent = true
        toolBar.tintColor = UIColor(red: 92/255, green: 216/255, blue: 255/255, alpha: 1)
        
        toolBar.sizeToFit()
        
        // Adding Button ToolBar
        let doneButton = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(pickerExtension.doneClick))
        let spaceButton = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let cancelButton = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(pickerExtension.cancelClick))
        toolBar.setItems([cancelButton, spaceButton, doneButton], animated: false)
        toolBar.isUserInteractionEnabled = true
        
        myView.addSubview(toolBar)
        
        
        
        viewController.view.addSubview(myView)
        
    }
    
    
    
    
    @objc func doneClick()
    {
        self.myView.removeFromSuperview()
    }
    @objc func cancelClick()
    {
        self.myView.removeFromSuperview()
    }
    
    
    
}






extension pickerExtension
{
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int
    {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
        return array.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        
        delegatea.dataPassing(index : row)
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
    {
        return array[row]
    }
}
