//
//  ViewController.swift
//  test1
//
//  Created by 구본의 on 2021/01/29.
//

import UIKit

class ViewController: UIViewController {
    
    
    var mySeat: UILabel!
    var location: UILabel!
    var seatNum: UILabel!
    var reserveTime: UILabel!
    
   
    override func loadView() {
        view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        
        mySeat = UILabel()
        mySeat.translatesAutoresizingMaskIntoConstraints = false
        mySeat.textAlignment = .center
        mySeat.text = "나의 자리"
        mySeat.font = UIFont.systemFont(ofSize: 30)
        mySeat.textColor = .black
        mySeat.backgroundColor = #colorLiteral(red: 0.7254902124, green: 0.4784313738, blue: 0.09803921729, alpha: 1)
        view.addSubview(mySeat)
        
        
        location = UILabel()
        location.translatesAutoresizingMaskIntoConstraints = false
        location.text = "장소: " + "IT융합대학 열람실"
        location.font = UIFont.systemFont(ofSize: 15)
        location.sizeToFit()
        location.numberOfLines = 1
        location.setContentHuggingPriority(UILayoutPriority(1), for: .vertical)
        view.addSubview(location)
        
        seatNum = UILabel()
        seatNum.translatesAutoresizingMaskIntoConstraints = false
        seatNum.text = "자리 번호: " + "12"
        seatNum.font = UIFont.systemFont(ofSize: 15)
        seatNum.sizeToFit()
        seatNum.numberOfLines = 1
        seatNum.setContentHuggingPriority(UILayoutPriority(1), for: .vertical)
        view.addSubview(seatNum)
        
        reserveTime = UILabel()
        reserveTime.translatesAutoresizingMaskIntoConstraints = false
        reserveTime.text = "예약 시간: " + "12:00" + " ~ " + "14:00"
        reserveTime.font = UIFont.systemFont(ofSize: 15)
        reserveTime.sizeToFit()
        reserveTime.numberOfLines = 1
        reserveTime.setContentHuggingPriority(UILayoutPriority(1), for: .vertical)
        view.addSubview(reserveTime)
        
        let extend = UIButton(type: .system)
        extend.translatesAutoresizingMaskIntoConstraints = false
        extend.setTitle("연장", for: .normal)
        extend.widthAnchor.constraint(equalToConstant: 60.0).isActive = true
        extend.heightAnchor.constraint(equalToConstant: 45.0).isActive = true
        extend.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        extend.backgroundColor = #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)
        view.addSubview(extend)
        
        
        let returned = UIButton(type: .system)
        returned.translatesAutoresizingMaskIntoConstraints = false
        returned.setTitle("반납", for: .normal)
        returned.widthAnchor.constraint(equalToConstant: 60.0).isActive = true
        returned.heightAnchor.constraint(equalToConstant: 45.0).isActive = true
        returned.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        returned.backgroundColor = #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)
        view.addSubview(returned)
        
        
        
        NSLayoutConstraint.activate([
            mySeat.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            mySeat.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5),
            mySeat.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: 20),

            location.topAnchor.constraint(equalTo: mySeat.bottomAnchor, constant: 30),
            location.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            location.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            seatNum.topAnchor.constraint(equalTo: location.bottomAnchor, constant: 20),
            seatNum.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            seatNum.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            reserveTime.topAnchor.constraint(equalTo: seatNum.bottomAnchor, constant: 20),
            reserveTime.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            reserveTime.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            extend.topAnchor.constraint(equalTo: reserveTime.bottomAnchor, constant: 30),
            extend.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100),
            //extend.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 10),
            
            
            //extend.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -20),
            //extend.heightAnchor.constraint(equalToConstant: 50),
            //extend.widthAnchor.constraint(equalToConstant: 50),
            
            returned.topAnchor.constraint(equalTo: reserveTime.bottomAnchor, constant: 30),
            returned.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -100)
            
            
            //returned.centerYAnchor.constraint(equalTo: extend.centerYAnchor),
            //returned.heightAnchor.constraint(equalToConstant: 50),
            //returned.widthAnchor.constraint(equalToConstant: 50),
            
        ])
        
    }
    

}

