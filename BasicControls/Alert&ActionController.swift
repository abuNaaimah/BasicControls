//
//  Alert&ActionController.swift
//  BasicControls
//
//  Created by Tops on 10/17/16.
//  Copyright © 2016 Tops. All rights reserved.
//

import UIKit

class Alert_ActionController: UIViewController

{
    var str1=""
    var str2=""
    

    override func viewDidLoad() {
        super.viewDidLoad()

        
        lbl_unm.text=str1
        lbl_pass.text=str2
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet var lbl_pass: UILabel!
    @IBOutlet var lbl_unm: UILabel!
    @IBAction func btn_home(sender: AnyObject)
    {
        //let home=self.storyboard!.instantiateViewControllerWithIdentifier("main") as! ViewController
        self.navigationController!.popViewControllerAnimated(true)
    }
    @IBAction func btn_alert(sender: AnyObject)
    {
        let alert=UIAlertController(title: "Alertview iOS9", message: "Alertview in SWIFT", preferredStyle: .Alert)
        let ok=UIAlertAction(title: "OK", style: .Default, handler: {ACTION in
        
        
             self.view.backgroundColor=UIColor.whiteColor()
        })
        let ok1=UIAlertAction(title: "Cancel", style: .Cancel, handler:{ACTION in
        
            self.view.backgroundColor=UIColor.yellowColor()
        
        
        })
        
        let can=UIAlertAction(title: "MORE", style: .Destructive, handler: nil)
        alert.addAction(ok)
        alert.addAction(can)
         alert.addAction(ok1)
        self.presentViewController(alert, animated: true, completion: nil)
    }

    @IBAction func btn_action(sender: AnyObject)
    {
        let alert=UIAlertController(title: "Alertview iOS9", message: "Alertview in SWIFT", preferredStyle: .ActionSheet)
        let ok=UIAlertAction(title: "OK", style: .Default, handler: nil)
        let can=UIAlertAction(title: "MORE", style: .Cancel, handler: nil)
        alert.addAction(ok)
        alert.addAction(can)
        self.presentViewController(alert, animated: true, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
