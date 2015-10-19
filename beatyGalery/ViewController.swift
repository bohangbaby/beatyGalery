//
//  ViewController.swift
//  beatyGalery
//
//  Created by test on 8/7/15.
//  Copyright (c) 2015 Mrtang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var beautySelector: UIPickerView!
    let names = ["杨幂","王菲","朴树","许巍"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        beautySelector.dataSource = self
        beautySelector.delegate = self
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "segueToPhotoView"{
            if let a = segue.destinationViewController as? photoViewController{
                 a.photoFileName = names[beautySelector.selectedRowInComponent(0)]
            }
          // self.hidesBottomBarWhenPushed = true
    }
}
    @IBAction func close(segue:UIStoryboardSegue){
        if segue.identifier == "closeSegue" {
        //self.hidesBottomBarWhenPushed = false
            println("close")
        }
    }
}
