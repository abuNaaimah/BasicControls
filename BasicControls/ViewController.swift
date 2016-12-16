//
//  ViewController.swift
//  BasicControls
//
//  Created by Tops on 10/17/16.
//  Copyright © 2016 Tops. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet var lbl_sldrvalue: UILabel!
    @IBAction func sldr_val(sender: UISlider)
    {
        lbl_sldrvalue.text=String(format: "%.0f", sender.value)
        
    }
    
    @IBAction func stpr_value(sender: UIStepper)
    {
        lbl_sldrvalue.text=String(format: "%.0f", sender.value)
    }
    
    @IBAction func btn_next(sender: AnyObject)
    {
        let nxt=self.storyboard!.instantiateViewControllerWithIdentifier("next") as! Alert_ActionController
        self.navigationController!.pushViewController(nxt, animated: true)
    }
    @IBAction func select_seg(sender: UISegmentedControl)
    {
        if sender.selectedSegmentIndex==0
        {
            self.view.backgroundColor=UIColor .blackColor()

        }
        else if sender.selectedSegmentIndex==1
        {
            self.view.backgroundColor=UIColor .yellowColor()

        }
        else if sender.selectedSegmentIndex==2
        {
            self.view.backgroundColor=UIColor .blueColor()
        }
        else
        {
            self.view.backgroundColor=UIColor .whiteColor()
        }
    }
    @IBOutlet var txt_unm: UITextField!
    @IBOutlet var txt_pass: UITextField!

    @IBAction func btn_swtc(sender: UISwitch)
    {
        if sender.on
        {
            self.view.backgroundColor=UIColor .yellowColor()
        }
        else
        {
            self.view.backgroundColor=UIColor .redColor()
        }
    }
    @IBAction func btn_click(sender: AnyObject)
    {
        let nxt=self.storyboard!.instantiateViewControllerWithIdentifier("next") as! Alert_ActionController
        nxt.str1=txt_unm.text!
        nxt.str2=txt_pass.text!
        
        self.navigationController!.pushViewController(nxt, animated: true)

        
    }
}

