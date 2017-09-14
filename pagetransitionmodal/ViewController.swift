//
//  ViewController.swift
//  pagetransitionmodal
//
//  Created by Chaicharn Vijarnsatit on 9/14/2560 BE.
//  Copyright © 2560 Chaicharn Vijarnsatit. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {
    let vfood = ["Beef","Chicken","Fish","Pork"]
    let vdrink = ["Beer","Soda","Tea","Water"]
    @IBOutlet weak var inputText: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.pickerView.delegate = self
        self.pickerView.dataSource = self
        pickerView.selectRow(2, inComponent: 0, animated: true)
        pickerView.selectRow(3, inComponent: 1, animated: true)
 
    }
    
    @IBOutlet weak var pickerView: UIPickerView!
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0{
            return vfood.count
        }else{
            return vdrink.count
        }
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0{
            return vfood[row]
            
        }else{
            return vdrink[row]
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "drinkSegue"{
            let vDrink = vdrink[pickerView.selectedRow(inComponent: 1)]
            
            (segue.destination as! DrinkViewController).pName = vDrink
        }else{
            let vFood = vfood[pickerView.selectedRow(inComponent: 0)]
            
            (segue.destination as! SecondViewController).pName = vFood
        }
    
}
}
