//
//  DrinkViewController.swift
//  pagetransitionmodal
//
//  Created by Chaicharn Vijarnsatit on 9/14/2560 BE.
//  Copyright © 2560 Chaicharn Vijarnsatit. All rights reserved.
//

import UIKit

class DrinkViewController: UIViewController {
    var pName: String = ""
    var resultdata: String = ""

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var Label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        Label.text = pName
        imageView.image = UIImage(named :pName+".jpeg")
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backMethod(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
