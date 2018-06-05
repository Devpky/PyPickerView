//
//  SecondViewController.swift
//  PickerViewExt
//
//  Created by Pawan Yadav on 05/06/18.
//  Copyright © 2018 invetech. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController,pyProtocol
{

    
      var arrayValue = ["ios","apple","swift","ios","apple","swift","ios","apple","swift","ios","apple","swift"]
    
    

    override func viewDidLoad()
    {
        super.viewDidLoad()
      pickerExtension.sharedInstance.delegatea = self
    }

    
    @IBAction func PickerButton(_ sender: UIButton)
    {
        
        pickerExtension.sharedInstance.pickerMethode(arrayValue: arrayValue as NSArray, viewController: self)
    }
    
    
    func dataPassing(index: Int)
    {
        print(index)
    }

}
