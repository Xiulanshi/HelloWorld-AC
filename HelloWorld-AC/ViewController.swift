//
//  ViewController.swift
//  HelloWorld-AC
//
//  Created by Xiulan Shi on 1/7/16.
//  Copyright © 2016 Xiulan Shi. All rights reserved.
//

import UIKit // Use import keyword to access external framework (e.g. UIKit)

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Expose the method to Interface Builder using the @IBAction keyword (allows to connect source code to user interface objects in interface builder)
    // Use the func keyword to declare a method
    // showMessage is the Method name
    // method parameters are defined within parentheses ()
    
    @IBAction func showMessage() {
        
        // create the message
        let alertController = UIAlertController(title: "Welcome to My First App", message: "Hello World", preferredStyle: UIAlertControllerStyle.Alert)
        
        // to add an action to the alert so it displays a "OK" button
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
        
        // showing the alert message on screen
        self.presentViewController(alertController, animated: true, completion: nil)
        
        /* In Swift, you use the self property to refer to the current instance (or object). 
         To display the alert, we ask the current view controller to present the alertController with animation. In most cases, the self keyword is optional. You can simply the code to the following:
        presentViewController(alertController, animated: true, completion: nil)
*/

    }


}


