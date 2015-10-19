//
//  photoViewController.swift
//  beatyGalery
//
//  Created by test on 8/7/15.
//  Copyright (c) 2015 Mrtang. All rights reserved.
//

import UIKit
import Social

class photoViewController: UIViewController {

    @IBOutlet weak var photoImageView: UIImageView!
    var photoFileName:String!
    var image:String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        switch photoFileName {
        case "王菲":  image = "wangfei"
        case "许巍":  image = "xuwei"
        case "杨幂":  image = "yangmi"
        case "朴树":  image = "pushu"
        default: image = ""
                   }
        
        photoImageView.image = UIImage(named: image)
        navigationItem.title = photoFileName
        
        let edgeguesture = UIScreenEdgePanGestureRecognizer(target: self, action: "goback:")
        edgeguesture.edges = UIRectEdge.Left
        self.view.addGestureRecognizer(edgeguesture)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func shareTapped(sender: AnyObject) {
        var controller:SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeTwitter)
        controller.setInitialText("分享到推特")
        controller.addImage(photoImageView.image)
        self.presentViewController(controller, animated: true, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation */
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "closeSegue" {
            if let a = segue.destinationViewController as? UIViewController{
                a.hidesBottomBarWhenPushed = false
            }
        }

    }
    
    func goback(recongnizer:UIScreenEdgePanGestureRecognizer) {
        var x = recongnizer.translationInView(self.view).x
        var distance = x / 2
       // if recongnizer.state == UIGestureRecognizerState.Ended {
            self.performSegueWithIdentifier("closeSegue", sender: self)
            return
      //  }
        
       // recongnizer.view?.center = CGPointMake(self.view.center.x + distance, self.view.center.y)
        

        //self.navigationController?.popViewControllerAnimated(true)
    }
    
   // override func viewWillDisappear(animated: Bool) {
     //   println("viewWillDisappear");
    //}
    
    //@IBAction func leftButtonClicked(sender: AnyObject) {
      //  self.performSegueWithIdentifier("leftButtonUnwindSegue", sender: sender)
    //}
    
    
    

}
