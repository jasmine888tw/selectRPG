//
//  ViewController.swift
//  rpgSelect
//
//  Created by juicemeart on 2017/5/22.
//  Copyright © 2017年 juicemeart. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    //這裡是控制群
    @IBOutlet weak var switchHuman: UISwitch!
    @IBOutlet weak var humanText: UILabel!
    @IBOutlet weak var age: UISlider!
    @IBOutlet weak var world: UISegmentedControl!
    @IBOutlet weak var agelabel: UILabel!

    
    @IBAction func ageSlider(_ sender: Any) {
         agelabel.text = "\(Int(age.value))"
    }//UISlider再拉一次Action的Value Change過來，slider的value記得調整最高最低值
    
    @IBAction func swish(_ sender: UISwitch) {
        if (sender.isOn) == true{
            humanText.text = "我是人類"
        }
        else{
            humanText.text = "我不是人類"
        }
    }
   //這裡是圖片群
    @IBOutlet weak var blankBlue: UIView!
    @IBOutlet weak var ansDevil: UIImageView!
    @IBOutlet weak var ansVillager: UIImageView!
    @IBOutlet weak var ansBraver: UIImageView!
    @IBOutlet weak var ansBad: UIImageView!
    @IBOutlet weak var again: UIButton!
    
    @IBAction func imWhat(_ sender: Any) {
        if switchHuman.isOn && age.value<100 && world.selectedSegmentIndex==0{
            blankBlue.isHidden = false
            ansDevil.isHidden = true
            ansVillager.isHidden = true
            ansBraver.isHidden = false//勇者
            ansBad.isHidden = true
            again.isHidden = true
        }
        
        else if switchHuman.isOn && age.value<100 && world.selectedSegmentIndex==2{
            blankBlue.isHidden = false
            ansDevil.isHidden = true
            ansVillager.isHidden = false//村民
            ansBraver.isHidden = true
            ansBad.isHidden = true
            again.isHidden = true
        }
            
        else if switchHuman.isOn==false && age.value==666 && world.selectedSegmentIndex==1{
            blankBlue.isHidden = false
            ansDevil.isHidden = false//魔王
            ansVillager.isHidden = true
            ansBraver.isHidden = true
            ansBad.isHidden = true
            again.isHidden = false
        }
            
        else{
            blankBlue.isHidden = false
            ansDevil.isHidden = true
            ansVillager.isHidden = true
            ansBraver.isHidden = true
            ansBad.isHidden = false//嘍嘍
            again.isHidden = true
            
        }
    }
    
    @IBAction func againStart(_ sender: Any) {
        blankBlue.isHidden = true
        ansDevil.isHidden = true
        ansVillager.isHidden = true
        ansBraver.isHidden = true
        ansBad.isHidden = true
        again.isHidden = true
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

