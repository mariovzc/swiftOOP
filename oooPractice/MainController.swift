//
//  ViewController.swift
//  oooPractice
//
//  Created by Mario Vizcaino on 5/6/16.
//
//

import UIKit


class MainController: UIViewController {
    var obj:BaseMini?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func createObject(sender: AnyObject) {
        print("Create object")
        obj = BaseMini()
        if (obj != nil) {
            alert("Object created");

        }else{
            alert("Fail to create")
        }
    }

    @IBAction func showProperties(sender: AnyObject) {
        if (obj != nil) {
            alert("The color: \(obj!.color), the Size: \(obj!.size) and doors \(obj!.doors.description)")
        }else{
            alert("The class is NILL!")
        }
    }

    @IBAction func start(sender: AnyObject) {
        alert((obj?.start())!)
    }
    
    @IBAction func run(sender: AnyObject) {
        alert((obj?.run())!)
    }
    
    func alert(message: String) {
        
        let alertController = UIAlertController(title: "I am the title", message: message, preferredStyle: .Alert)
        
        let defaultAction = UIAlertAction(title: "OK", style: .Default, handler: nil)
        alertController.addAction(defaultAction)
        
        presentViewController(alertController, animated: true, completion: nil)
        
    }
    
    @IBAction func charge(sender: AnyObject) {
        if (obj != nil) {
            alert((obj?.charge())!)
        }
    }
}

