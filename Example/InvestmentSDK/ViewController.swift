//
//  ViewController.swift
//  InvestmentSDK
//
//  Created by Amrendra on 12/19/2020.
//  Copyright (c) 2020 Amrendra. All rights reserved.
//

import UIKit
import InvestmentSDK

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        accessFunctionFromPOD()
        
        accessResourcesFromPOD()
    }
    
    // Access Resources from POD spac library
    func accessResourcesFromPOD() {
        let frameworkBundle = Bundle(for: InvestmentCalculate.self)
        if let path = frameworkBundle.path(forResource: "Resources", ofType: "bundle") {
            let resourceBundle = Bundle(url: URL(fileURLWithPath: path))
            let image = UIImage(named: "MyPic2014.jpg", in: resourceBundle, compatibleWith: nil)
            print("image ref = \(image)")
            imageView.image = image
        }
        
    }
    
    // Access Funcation and variables of Pod library
    func accessFunctionFromPOD() {
        let rd = InvestmentCalculate(with: 4)
        print("rd is  = \(rd.calculateRD(for: 1000))")
        rd.accessPrivateMethod()
        
        let rdDefault = InvestmentCalculate()
        print("\nDefault rd = \(rdDefault.calculateRD(for: 200))")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

