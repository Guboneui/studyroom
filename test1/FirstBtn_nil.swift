//
//  FirstBtn_nil.swift
//  test1
//
//  Created by 구본의 on 2021/02/01.
//

import UIKit

class FirstBtn_nil: UIViewController {
    
    var FirstBtn_nil_text: UILabel!
    
    override func loadView() {
        view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        
        FirstBtn_nil_text = UILabel()
        FirstBtn_nil_text.translatesAutoresizingMaskIntoConstraints = false
        FirstBtn_nil_text.textAlignment = .center
        FirstBtn_nil_text.text = "예약 후 자리를 확정 해 주세요!"
        FirstBtn_nil_text.font = UIFont.systemFont(ofSize: 30)
        FirstBtn_nil_text.textColor = .black
        FirstBtn_nil_text.backgroundColor = .white
        view.addSubview(FirstBtn_nil_text)

            
           
            
            
        NSLayoutConstraint.activate([

            
            FirstBtn_nil_text.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            FirstBtn_nil_text.topAnchor.constraint(equalTo: view.topAnchor, constant: 100)
            
            
        ])
            
    }
}
