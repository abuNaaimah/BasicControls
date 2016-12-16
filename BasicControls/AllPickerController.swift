//
//  AllPickerController.swift
//  BasicControls
//
//  Created by Tops on 10/17/16.
//  Copyright © 2016 Tops. All rights reserved.
//

import UIKit

class AllPickerController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    let pkrdata=["iOS","Windows","Andorid","Blackberry","JAVA","Symbain","BADA"]
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        // Do any additional setup after loading the view.
    }

    @IBOutlet var img_put: UIImageView!
    @IBAction func btn_photo(sender: AnyObject)
    {
        let imgpkr=UIImagePickerController.init()
        imgpkr.delegate=self
        presentViewController(imgpkr, animated: true, completion: nil)
    }
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject])
    {
        self.dismissViewControllerAnimated(true, completion: nil)
        var img=UIImage()
        img=info[UIImagePickerControllerOriginalImage] as! UIImage
        img_put.image=img
        
        
        
    }
    @IBAction func select_date(sender: UIDatePicker)
    {
        var mydt=NSDate.init()
        mydt=sender.date
        let dtfrm=NSDateFormatter.init()
        dtfrm.dateFormat="dd-MMM-yyyy hh:mm a"
        txt_pkrdata.text=dtfrm.stringFromDate(mydt)
        
        
        
    }
    @IBOutlet var txt_pkrdata: UITextField!
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int
    {
        return 1
    }
    
   
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
        return pkrdata.count
    }
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
    {
        return pkrdata[row]
    }

    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        
        let alert=UIAlertController(title: "Pickrdata", message: pkrdata[row], preferredStyle: .Alert)
        let ok=UIAlertAction(title: "OK", style: .Default, handler: nil)
        let ok2=UIAlertAction(title: "MORE", style: .Destructive, handler: nil)
        alert.addAction(ok)
        alert.addAction(ok2)
        presentViewController(alert, animated: true, completion: nil)
        //txt_pkrdata.text=pkrdata[row]
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
