//
//  ViewController.swift
//  CalculatorDemoIOS
//
//  Created by Rustam Keneev on 4/1/21.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    private var textResult : UILabel = UILabel()
    var test = ""
    var one: Double?
    var two: Double?
    var operation = ""


    override func viewDidLoad() {
        super.viewDidLoad()
        lazyVarUI()
        initViews()
        setupUIButton()
    }

    func lazyVarUI(){
        view.backgroundColor = UIColor.black
        textResult.text = "0"
        textResult.textColor = UIColor.white
        textResult.textAlignment = .right
        textResult.font = UIFont.systemFont(ofSize: 50)
        
        
    }
    
    func initViews(){
        view.addSubview(textResult)
        textResult.snp.makeConstraints{(make) in
            make.left.equalToSuperview().offset(20)
            make.right.equalToSuperview().offset(-20)
            make.top.equalToSuperview().offset(view.frame.width * 0.4)
        }
    }
    
    func setupUIButton(){
        let clear = createButton(color: UIColor.gray, text: "C")
        let changeNumber = createButton(color: UIColor.gray, text: "-/+")
        let percent = createButton(color: UIColor.gray, text: "%")
        let deliveri = createButton(color: UIColor.orange, text: "/")
        let multiply = createButton(color: UIColor.orange, text: "*")
        let minus = createButton(color: UIColor.orange, text: "-")
        let plus = createButton(color: UIColor.orange, text: "+")
        let result = createButton(color: UIColor.orange, text: "=")
        let buttom7 = createButton(color: UIColor.darkGray, text: "7")
        let buttom8 = createButton(color: UIColor.darkGray, text: "8")
        let buttom9 = createButton(color: UIColor.darkGray, text: "9")
        let buttom6 = createButton(color: UIColor.darkGray, text: "6")
        let buttom5 = createButton(color: UIColor.darkGray, text: "5")
        let buttom4 = createButton(color: UIColor.darkGray, text: "4")
        let buttom3 = createButton(color: UIColor.darkGray, text: "3")
        let buttom2 = createButton(color: UIColor.darkGray, text: "2")
        let buttom1 = createButton(color: UIColor.darkGray, text: "1")
        let buttom0 = createButton(color: UIColor.darkGray, text: "0")
        let point = createButton(color: UIColor.darkGray, text: ".")
        let stup = createButton(color: UIColor.darkGray, text: "^")


        var wHut = (view.frame.width / 4.0) - (4 * 4.4)
        
        
        clear.snp.makeConstraints{(make) in
            clear.layer.cornerRadius = wHut / 2
            make.left.equalToSuperview().offset(20)
            make.height.width.equalTo(wHut)
            make.top.equalTo(textResult.snp.bottom).offset(10)
        }
        changeNumber.snp.makeConstraints{(make) in
            changeNumber.layer.cornerRadius = wHut / 2
            make.left.equalTo(clear.snp.right).offset(10)
            make.height.width.equalTo(wHut)
            make.top.equalTo(textResult.snp.bottom).offset(10)
        }
        percent.snp.makeConstraints{(make) in
            percent.layer.cornerRadius = wHut / 2
            make.left.equalTo(changeNumber.snp.right).offset(10)
            make.height.width.equalTo(wHut)
            make.top.equalTo(textResult.snp.bottom).offset(10)
        }
        deliveri.snp.makeConstraints{(make) in
            deliveri.layer.cornerRadius = wHut / 2
            make.height.width.equalTo(wHut)
            make.right.equalToSuperview().offset(-20)
            make.top.equalTo(textResult.snp.bottom).offset(10)
        }
        buttom7.snp.makeConstraints{(make) in
            buttom7.layer.cornerRadius = wHut / 2
            make.left.equalToSuperview().offset(20)
            make.height.width.equalTo(wHut)
            make.top.equalTo(clear.snp.bottom).offset(10)
        }
        buttom8.snp.makeConstraints{(make) in
            buttom8.layer.cornerRadius = wHut / 2
            make.height.width.equalTo(wHut)
            make.left.equalTo(buttom7.snp.right).offset(10)
            make.top.equalTo(clear.snp.bottom).offset(10)
        }
        buttom9.snp.makeConstraints{(make) in
            buttom9.layer.cornerRadius = wHut / 2
            make.left.equalTo(buttom8.snp.right).offset(10)
            make.top.equalTo(clear.snp.bottom).offset(10)
            make.height.width.equalTo(wHut)
        }
        multiply.snp.makeConstraints{(make) in
            multiply.layer.cornerRadius = wHut / 2
            make.height.width.equalTo(wHut)
            make.right.equalToSuperview().offset(-20)
            make.top.equalTo(clear.snp.bottom).offset(10)
        }
        buttom4.snp.makeConstraints{(make) in
            buttom4.layer.cornerRadius = wHut / 2
            make.left.equalToSuperview().offset(20)
            make.height.width.equalTo(wHut)
            make.top.equalTo(buttom7.snp.bottom).offset(10)
        }
        buttom5.snp.makeConstraints{(make) in
            buttom5.layer.cornerRadius = wHut / 2
            make.height.width.equalTo(wHut)
            make.left.equalTo(buttom4.snp.right).offset(10)
            make.top.equalTo(buttom7.snp.bottom).offset(10)
        }
        buttom6.snp.makeConstraints{(make) in
            buttom6.layer.cornerRadius = wHut / 2
            make.height.width.equalTo(wHut)
            make.left.equalTo(buttom5.snp.right).offset(10)
            make.top.equalTo(buttom7.snp.bottom).offset(10)
        }
        minus.snp.makeConstraints{(make) in
            minus.layer.cornerRadius = wHut / 2
            make.height.width.equalTo(wHut)
            make.right.equalToSuperview().offset(-20)
            make.top.equalTo(buttom7.snp.bottom).offset(10)
        }
        buttom1.snp.makeConstraints{(make) in
            buttom1.layer.cornerRadius = wHut / 2
            make.left.equalToSuperview().offset(20)
            make.height.width.equalTo(wHut)
            make.top.equalTo(buttom4.snp.bottom).offset(10)
        }
        buttom2.snp.makeConstraints{(make) in
            buttom2.layer.cornerRadius = wHut / 2
            make.left.equalTo(buttom1.snp.right).offset(10)
            make.height.width.equalTo(wHut)
            make.top.equalTo(buttom4.snp.bottom).offset(10)
        }
        buttom3.snp.makeConstraints{(make) in
            buttom3.layer.cornerRadius = wHut / 2
            make.left.equalTo(buttom2.snp.right).offset(10)
            make.height.width.equalTo(wHut)
            make.top.equalTo(buttom4.snp.bottom).offset(10)
        }
        plus.snp.makeConstraints{(make) in
            plus.layer.cornerRadius = wHut / 2
            make.right.equalToSuperview().offset(-20)
            make.height.width.equalTo(wHut)
            make.top.equalTo(buttom4.snp.bottom).offset(10)
        }
        buttom0.snp.makeConstraints{(make) in
            buttom0.layer.cornerRadius = wHut / 2
            make.left.equalToSuperview().offset(20)
            make.width.equalTo((wHut * 2) + 10)
            make.height.equalTo(wHut)
            make.top.equalTo(plus.snp.bottom).offset(10)
        }
        point.snp.makeConstraints{(make) in
            point.layer.cornerRadius = wHut / 2
            make.left.equalTo(buttom0.snp.right).offset(10)
            make.height.width.equalTo(wHut)
            make.top.equalTo(buttom1.snp.bottom).offset(10)
        }
        result.snp.makeConstraints{(make) in
            result.layer.cornerRadius = wHut / 2
            make.right.equalToSuperview().offset(-20)
            make.height.width.equalTo(wHut)
            make.top.equalTo(plus.snp.bottom).offset(10)
        }
    }
   
    private func createButton(color:UIColor,text:String)->UIButton{
        let button = UIButton()
        view.addSubview(button)
        button.setTitle(text, for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        button.backgroundColor = color
        button.addTarget(self, action: #selector(clickButton), for: .touchUpInside)
        return button
    }
    
    @objc func clickButton(view: UIButton){
        if view.titleLabel?.text == "C" {
            if test == ""{
                textResult.text == "0"
            }else{
                test.removeLast()
                if test.count <= 0 {
                    textResult.text = "0"
                }else{
                    textResult.text = test
                }
            }
            return
        }
        if view.titleLabel?.text == "+" {
            textResult.text = "0"
            operation = "+"
            one = Double(test)
            test = ""
            return
        }
        if view.titleLabel?.text == "-" {
            textResult.text = "0"
            operation = "-"
            one = Double(test)
            test = ""
            return
        }
        if view.titleLabel?.text == "/" {
            textResult.text = "0"
            operation = "/"
            one = Double(test)
            test = ""
            return
        }
        if view.titleLabel?.text == "*" {
            textResult.text = "0"
            operation = "*"
            one = Double(test)
            test = ""
            return
        }
        if view.titleLabel?.text == "=" {
            two = Double(test)
            if operation == "+" {
                test = String((one ?? 0.0) + (two ?? 0.0))
                two = (one ?? 0.0) + (two ?? 0.0)
                one = nil
                textResult.text = test
            }
            if operation == "-" {
                test = String((one ?? 0.0) - (two ?? 0.0))
                two = (one ?? 0.0) - (two ?? 0.0)
                one = nil
                textResult.text = test
            }
            if operation == "/" {
                test = String((one ?? 0.0) / (two ?? 0.0))
                two = (one ?? 0.0) / (two ?? 0.0)
                one = nil
                textResult.text = test
            }
            if operation == "*" {
                test = String((one ?? 0.0) * (two ?? 0.0))
                two = (one ?? 0.0) * (two ?? 0.0)
                one = nil
                textResult.text = test
            }
            
            return
        }
        
        test = test + (view.titleLabel?.text ?? "")
        textResult.text = test
    }
}

