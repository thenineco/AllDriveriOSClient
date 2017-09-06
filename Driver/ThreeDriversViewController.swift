//
//  ThreeDriversViewController.swift
//  Driver
//
//  Created by Александр Сабри on 28/12/2016.
//  Copyright © 2016 Александр Сабри. All rights reserved.
//

import UIKit

class ThreeDriversViewController: UIViewController {
    @IBOutlet weak var time1: UILabel!
    @IBOutlet weak var time2: UILabel!
    @IBOutlet weak var time3: UILabel!
    
    var seconds = 10
    var timer = Timer()
    
    func counter (){
        seconds -= 1
        time1.text = String(seconds)
        time2.text = String(seconds)
        time3.text = String(seconds)
        
        if (seconds == 0) {
            timer.invalidate()
            changescrean()
            //                self.present(SecondViewController(), animated: true, completion: nil)
        }
    }
    
    func changescrean(){
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        
        let secondViewController = storyBoard.instantiateViewController(withIdentifier: "Finish") as! Finish
        //        self.present(<#T##viewControllerToPresent: UIViewController##UIViewController#>, animated: <#T##Bool#>, completion: <#T##(() -> Void)?##(() -> Void)?##() -> Void#>)
        
        self.present(secondViewController, animated:true, completion:nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        time1.text = String(seconds)
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(StopwatchView.counter), userInfo: nil, repeats: true)
        
        
        // Do any additional setup after loading the view.
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
