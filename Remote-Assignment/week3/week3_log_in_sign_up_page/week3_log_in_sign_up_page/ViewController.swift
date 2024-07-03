//
//  ViewController.swift
//  week3_log_in_sign_up_page
//
//  Created by 小妍寶 on 2024/7/2.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    
    @IBOutlet weak var logInSegment: UISegmentedControl!
    @IBOutlet weak var checkTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var checkLabel: UILabel!
    @IBOutlet weak var accountTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        checkDisableToType()
    }
    
//  check label跟check textfield的變色處理
    @IBAction func checkDisableToType(){
        if logInSegment.selectedSegmentIndex == 0 {
            checkTextField.delegate = self
            checkTextField.isUserInteractionEnabled = false
            checkTextField.backgroundColor = .darkGray
            checkLabel.textColor = .gray
        } else {
            checkTextField.isUserInteractionEnabled = true
            checkTextField.backgroundColor = .white
            checkLabel.textColor = .black
        }
    }
    
// 警報顯示的函數
    @IBAction func showAlert(alertTitle: String,message : String){
        let alert = UIAlertController(title: alertTitle, message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated:true, completion: nil)
    }
    
 
// 按鈕按下後會執行對輸入資訊的檢查
    @IBAction func buttonTouched(){
        
        let accountText = accountTextField.text!
        let passwordText = passwordTextField.text!
        let checkText = checkTextField.text!
        
        //        log in
    if logInSegment.selectedSegmentIndex == 0  {
        
//           帳號是空的，印出帳號不能為空
        
        if accountText == "" {
        showAlert(alertTitle: "Error", message: "Account should not be empty.")
        } 
//           帳號是錯的，印出登入錯誤
        else if  accountText != "appworks_school" {
            showAlert(alertTitle: "Error", message: "Log in failed.")
        } 
//            帳號正確且密碼是空的，印出密碼不能為空
        else if passwordText.isEmpty {
        showAlert(alertTitle: "Error", message: "Password should not be empty.")
        } 
//            帳號正確且密碼錯誤，印出登入失敗
        else if passwordText != "1234"{
            showAlert(alertTitle: "Error", message: "Log in failed.")
        }
        else { return }
            //            sign in
    } else {
//            帳號是空的，印出帳號不能為空
        if  accountText == "" {
            showAlert(alertTitle: "Error", message: "Account should not be empty.")
        } 
//            帳號有值且密碼是空的，印出密碼不能為空
        else if passwordText == "" {
        showAlert(alertTitle: "Error", message: "Password should not be empty.")
        } 
        else if checkText == "" {
            showAlert(alertTitle: "Error", message: "check the password.")
        }
//            帳號有值、密碼有值且密碼不等於二次驗證，印出註冊失敗
        else if passwordText != checkText {
            showAlert(alertTitle: "Error", message: "Sign in failed.")
        } else { return }
    }
    }
}
