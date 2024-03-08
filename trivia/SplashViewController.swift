//
//  SplashViewController.swift
//  trivia
//
//  Created by Jorge Luna Reyna on 01/03/24.
//

import UIKit

class SplashViewController: UIViewController {

    
    @IBOutlet weak var imgvLogo: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let w = 0.60 * view.frame.width
        let h = 0.70 * w
        let x = (view.frame.width - w) / 2.0
        let y = -h
        imgvLogo.frame = CGRect(x: x, y: y, width: w, height: h)
        imgvLogo.alpha = 0

    }
    
    override func viewDidAppear(_ animated: Bool) {
        UIView.animate(withDuration: 2){
            self.imgvLogo.frame.origin.y = (self.view.frame.height - self.imgvLogo.frame.height) / 2
            self.imgvLogo.alpha = 1
        }completion: { res in
            self.performSegue(withIdentifier: "sgSplash", sender: nil)
        }
    }


}
