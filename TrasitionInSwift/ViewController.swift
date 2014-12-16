//
//  ViewController.swift
//  TrasitionInSwift
//
//  Created by Varun Tomar on 09/12/14.
//  Copyright (c) 2014 Corebits. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPopoverPresentationControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func pushViewController(sender: AnyObject) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        var secondViewController = SecondViewController()
        
        secondViewController = storyboard.instantiateViewControllerWithIdentifier("SecondViewController") as SecondViewController
        
        self.navigationController?.pushViewController(secondViewController, animated: true)
        
    }
    
    
    @IBAction func presentViewController(sender: AnyObject) {
    
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        var secondViewController = SecondViewController()
        
        secondViewController = storyboard.instantiateViewControllerWithIdentifier("SecondViewController") as SecondViewController
        
        self.navigationController?.presentViewController(secondViewController, animated: true, completion: nil)
        
    }
    
    
    
    @IBAction func popoverViewController(sender: AnyObject) {
        
        var secondViewController = SecondViewController()
        secondViewController.modalPresentationStyle = .Popover
        
        secondViewController.preferredContentSize = CGSizeMake(300, 150)
        
        secondViewController.view.backgroundColor = UIColor.purpleColor()
        
        let popoverPresentationViewController = secondViewController.popoverPresentationController
        
        popoverPresentationViewController?.delegate = self
        popoverPresentationViewController?.permittedArrowDirections = .Up
        
        popoverPresentationViewController?.sourceView = sender as UIView
        
        self.navigationController?.presentViewController(secondViewController, animated: true, completion: nil)
        

    }
    
    
    func adaptivePresentationStyleForPresentationController(controller: UIPresentationController) -> UIModalPresentationStyle {
        return .None
    }
    
}

