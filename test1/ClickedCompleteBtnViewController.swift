//
//  ClickedCompleteBtnViewController.swift
//  test1
//
//  Created by 구본의 on 2021/02/02.
//

import UIKit

class ClickedCompleteBtnViewController: UIViewController {

    var information: UILabel!
    
    
    override func loadView() {
        view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        
        information = UILabel()
        information.translatesAutoresizingMaskIntoConstraints = false
        information.text = "IT융합대학 열람실 2층 \n37번 좌석을 예약하셨습니다 \n00:00 까지 예약확정을 완료하셔야합니다. \n(확정을 하지 않을 경우 예약한 실/좌석은 자동으로 반납됩니다.)"
        information.font = UIFont.systemFont(ofSize: 20)
        let attrString = NSMutableAttributedString(string: information.text!)
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = 5      //줄간격
        attrString.addAttribute(NSAttributedString.Key.paragraphStyle, value: paragraphStyle, range: NSMakeRange(0, attrString.length))
        information.attributedText = attrString
        information.sizeToFit()
        information.setContentHuggingPriority(UILayoutPriority(1), for: .vertical)
        information.numberOfLines = 5
        view.addSubview(information)
        
        let go = UIButton(type: .system)
        go.translatesAutoresizingMaskIntoConstraints = false
        go.setTitle("예약 확정 바로가기", for: .normal)
        go.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        go.backgroundColor = #colorLiteral(red: 0.1294117719, green: 0.2156862766, blue: 0.06666667014, alpha: 1)
        go.tintColor = .white
        go.widthAnchor.constraint(equalToConstant: 350.0).isActive = true
        go.heightAnchor.constraint(equalToConstant: 45.0).isActive = true
        view.addSubview(go)
        
        
        
        

        NSLayoutConstraint.activate([
            
            information.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            information.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor, constant: 10),
            information.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor, constant: 10),
            
            
            go.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            go.topAnchor.constraint(equalTo: information.bottomAnchor, constant: 10),
            go.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor, constant: -500),
            
            //go.heightAnchor.constraint(equalToConstant: 45)

            
        ])
        
        
        
        
        
        
       
    
    
    
    }
    

}
