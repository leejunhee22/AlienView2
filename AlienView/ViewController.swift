//
//  ViewController.swift
//  AlienView
//
//  Created by D7703_18 on 2018. 4. 3..
//  Copyright © 2018년 D7703_18. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var alienlab: UILabel!
    @IBOutlet weak var alienimage: UIImageView!
    var counter = 1
    var direction = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        alienimage.image = UIImage(named: "frame1.pag")
    }

    @IBAction func butUp(_ sender: Any) {
        //counter가 5라면 값을 감소시키기 위해 direction을 0으로 변경
        if counter == 5{
            direction = 0
        }
            //counter가 1이라면 값을 증가시키기 위해 direction을 1으로 변경
        else if counter == 1{
            direction = 1
        }
        
        //direction이 1이면 counter를 1씩 증가
        if direction == 1{
            counter = counter + 1
        }
            //direction이 0이면 counter를 1씩 감소
        else if direction == 0{
            counter = counter - 1
        }
        
        alienimage.image = UIImage(named: "frame\(counter).png")
        alienlab.text = "\(counter)"
    }
    
    }

