//
//  ViewController.swift
//  simple_calc
//
//  Created by 川尻諒 on 2018/04/13.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate {

    @IBOutlet weak var left: UITextField!
    @IBOutlet weak var right: UITextField!
    @IBOutlet weak var four_arithmetic: UIPickerView!
    @IBOutlet weak var result: UILabel!
    
    let arithmetic = ["+","-","×","÷"]
    
    @IBAction func calc(sender: AnyObject) {
        let GetLeftNum : Int = Int(left.text!)!
        let GetRightNum: Int = Int(right.text!)!
        
        //1列目の選択されている値のインデックス番号を取得する
        switch four_arithmetic.selectedRow(inComponent: 0) {
        case 0:
            result.text = String(GetLeftNum + GetRightNum)
        case 1:
            result.text = String(GetLeftNum - GetRightNum)
        case 2:
            result.text = String(GetLeftNum * GetRightNum)
        case 3:
            result.text = String(GetLeftNum / GetRightNum)
        default:
            break
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //pickerに表示する列数を返す
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1  //列数:1
    }
    
    //pickerに表示する行数(選択肢数)を返す
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return arithmetic.count;  // 選択肢:4
    }
    
    //PickerViewへの文字列の表示
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return arithmetic[row]
    }


}

