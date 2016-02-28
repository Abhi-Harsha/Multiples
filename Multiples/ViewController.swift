//
//  ViewController.swift
//  Multiples
//
//  Created by Abhishek H P on 2/25/16.
//  Copyright © 2016 Abhishek H P. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //Properties
    var multipleToAdd = 0
    var currMultiple = 0
    var maxMultiple = 0
    var resultMultiple = 0
    
    //Outlets
    @IBOutlet weak var backgroundImg: UIImageView!
    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var multiplesTxt: UITextField!
    @IBOutlet weak var playBtn: UIButton!
    
    @IBOutlet weak var addLabel: UILabel!
    @IBOutlet weak var addBtn: UIButton!
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func onPressPlayButton(sender: UIButton!){
       
        
        if(multiplesTxt.text != nil && multiplesTxt != ""){
            
            logo.hidden = true
            multiplesTxt.hidden = true
            playBtn.hidden = true
            addLabel.hidden = false
            addBtn.hidden = false
            
            multipleToAdd = Int(multiplesTxt.text!)!
        }
    }
    
    @IBAction func onPressAddBtn(sender: UIButton!){
        addLabel.hidden = true
        resultLabel.hidden = false
        maxMultiple = multipleToAdd * 5
        
        resultMultiple = currMultiple + multipleToAdd
        
        updateResultLabel()
        
        currMultiple = resultMultiple
        if currMultiple >= maxMultiple{
            reStartGame()
        }
    }
    
    func updateResultLabel(){
        resultLabel.text = "\(currMultiple) + \(multipleToAdd) = \(resultMultiple)"
    }
    
    func reStartGame(){
        multipleToAdd = 0
        currMultiple = 0
        maxMultiple = 0
        
        multiplesTxt.text = nil
        logo.hidden = false
        multiplesTxt.hidden = false
        playBtn.hidden = false
        addLabel.hidden = true
        addBtn.hidden = true
        resultLabel.hidden = true
        
    }
}

