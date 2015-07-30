//
//  ViewController.swift
//  Tic Tac Toe
//
//  Created by mocha on 7/28/15.
//  Copyright (c) 2015 mocha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var cross = true;
    var mapping = ["x1y3": -100, "x2y3": -100, "x3y3": -100, "x1y2": -100, "x2y2": -100, "x3y2": -100, "x1y1": -100, "x2y1": -100, "x3y1": -100];
    @IBOutlet var message: UILabel!
    @IBOutlet var x1y3: UIButton!
    @IBOutlet var x2y3: UIButton!
    @IBOutlet var x3y3: UIButton!
    @IBOutlet var x1y2: UIButton!
    @IBOutlet var x2y2: UIButton!
    @IBOutlet var x3y2: UIButton!
    @IBOutlet var x1y1: UIButton!
    @IBOutlet var x2y1: UIButton!
    @IBOutlet var x3y1: UIButton!
    @IBAction func x1y3Touch(sender: AnyObject) {
        loadImage(x1y3);
        mapping["x1y3"] = Int(cross);
        threeInARow();
    }
    @IBAction func x2y3Touch(sender: AnyObject) {
        loadImage(x2y3);
        mapping["x2y3"] = Int(cross);
        threeInARow();
    }
    @IBAction func x3y3Touch(sender: AnyObject) {
        loadImage(x3y3);
        mapping["x3y3"] = Int(cross);
        threeInARow();
    }
    @IBAction func x1y2Touch(sender: AnyObject) {
        loadImage(x1y2);
        mapping["x1y2"] = Int(cross);
        threeInARow();
    }
    @IBAction func x2y2Touch(sender: AnyObject) {
        loadImage(x2y2);
        mapping["x2y2"] = Int(cross);
        threeInARow();
    }
    @IBAction func x3y2Touch(sender: AnyObject) {
        loadImage(x3y2);
        mapping["x3y2"] = Int(cross);
        threeInARow();
    }
    @IBAction func x1y1Touch(sender: AnyObject) {
        loadImage(x1y1);
        mapping["x1y1"] = Int(cross);
        threeInARow();
    }
    @IBAction func x2y1TOuch(sender: AnyObject) {
        loadImage(x2y1);
        mapping["x2y1"] = Int(cross);
        threeInARow();
    }
    @IBAction func x3y1Touch(sender: AnyObject) {
        loadImage(x3y1);
        mapping["x3y1"] = Int(cross);
        threeInARow();
    }
    @IBAction func reset(sender: AnyObject) {
        x1y3.setImage(nil, forState: UIControlState.Normal);
        x2y3.setImage(nil, forState: UIControlState.Normal);
        x3y3.setImage(nil, forState: UIControlState.Normal);
        x1y2.setImage(nil, forState: UIControlState.Normal);
        x2y2.setImage(nil, forState: UIControlState.Normal);
        x3y2.setImage(nil, forState: UIControlState.Normal);
        x1y1.setImage(nil, forState: UIControlState.Normal);
        x2y1.setImage(nil, forState: UIControlState.Normal);
        x3y1.setImage(nil, forState: UIControlState.Normal);
        cross = true;
        mapping = ["x1y3": -100, "x2y3": -100, "x3y3": -100, "x1y2": -100, "x2y2": -100, "x3y2": -100, "x1y1": -100, "x2y1": -100, "x3y1": -100];
        message.text = nil;
        x1y3.enabled = true;
        x2y3.enabled = true;
        x3y3.enabled = true;
        x1y2.enabled = true;
        x2y2.enabled = true;
        x3y2.enabled = true;
        x1y1.enabled = true;
        x2y1.enabled = true;
        x3y1.enabled = true;
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func loadImage(button: UIButton) {
        if(button.currentImage == nil) {
            if(cross) {
                button.setImage(UIImage(named: "cross.png"), forState: UIControlState.Normal);
                cross = false;
            } else {
                button.setImage(UIImage(named: "nought.png"), forState: UIControlState.Normal);
                cross = true;
            }
        }
    }
    
    func threeInARow() {
        var multiple = mapping["x1y3"]! + mapping["x2y3"]! + mapping["x3y3"]!;
        if(multiple == 3 || multiple == 0) {
            success()
            return;
        }
        multiple = mapping["x1y2"]! + mapping["x2y2"]! + mapping["x3y2"]!;
        if(multiple == 3 || multiple == 0) {
            success()
            return;
        }
        multiple = mapping["x1y1"]! + mapping["x2y1"]! + mapping["x3y1"]!;
        if(multiple == 3 || multiple == 0) {
            success()
            return;
        }
        multiple = mapping["x1y3"]! + mapping["x1y2"]! + mapping["x1y1"]!;
        if(multiple == 3 || multiple == 0) {
            success()
            return;
        }
        multiple = mapping["x2y3"]! + mapping["x2y2"]! + mapping["x2y1"]!;
        if(multiple == 3 || multiple == 0) {
            success()
            return;
        }
        multiple = mapping["x3y3"]! + mapping["x3y2"]! + mapping["x3y1"]!;
        if(multiple == 3 || multiple == 0) {
            success()
            return;
        }
        multiple = mapping["x1y3"]! + mapping["x2y2"]! + mapping["x3y1"]!;
        if(multiple == 3 || multiple == 0) {
            success()
            return;
        }
        multiple = mapping["x1y1"]! + mapping["x2y2"]! + mapping["x3y3"]!;
        if(multiple == 3 || multiple == 0) {
            success()
            return;
        }
    }
    
    func success() {
        message.text = "Success!";
        x1y3.enabled = false;
        x2y3.enabled = false;
        x3y3.enabled = false;
        x1y2.enabled = false;
        x2y2.enabled = false;
        x3y2.enabled = false;
        x1y1.enabled = false;
        x2y1.enabled = false;
        x3y1.enabled = false;
    }
}

