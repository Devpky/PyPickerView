//
//  ViewController.swift
//  PickerViewExt
//
//  Created by Pawan Yadav on 05/06/18.
//  Copyright © 2018 invetech. All rights reserved.
//

import UIKit


class ViewController: UIViewController,pyProtocol
{
    
    var arrayValue = ["ios","apple","swift","ios","apple","swift","ios","apple","swift","ios","apple","swift"]
    
    @IBOutlet weak var lblIndex: UILabel!
    @IBOutlet weak var lblTitle: UILabel!
    
    func dataPassing(index: Int)
    {
     
        lblIndex.text = "\(index)"
        lblTitle.text = arrayValue[index]
        
    }
    
    override func viewWillAppear(_ animated: Bool)
    {
        pickerExtension.sharedInstance.delegatea = self
        
    }

    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
      
    }

  

    @IBAction func PickerButton(_ sender: UIButton)
    {
        pickerExtension.sharedInstance.pickerMethode(arrayValue: arrayValue as NSArray, viewController: self)
    }
    

}

