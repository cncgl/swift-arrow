//
//  ArrowPageViewController.swift
//  Arrow
//
//  Created by Shigeru on 2016/04/08.
//  Copyright © 2016年 concigel. All rights reserved.
//

import UIKit

class ArrowPageViewController: UIViewController {
    var image1: UIImage = UIImage(named: "leftarrow")!
    var image2: UIImage = UIImage(named: "rightarrow")!
    
    @IBOutlet weak var arrowView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // ランダムで表示する画像を変える
        let ran = arc4random_uniform(2)
        arrowView.image = (ran == 0) ? image1 : image2
        NSTimer.scheduledTimerWithTimeInterval(3.0, target: self,
                                                       selector: #selector(ArrowPageViewController.returnView), userInfo: nil, repeats: false)
    }

    func returnView() {
        // 元の画面にもどる
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
