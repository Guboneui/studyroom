//
//  SelectSeat.swift
//  test1
//
//  Created by 구본의 on 2021/02/01.
//

import UIKit

class SelectSeat: UIViewController {


//    var letterButtons = [UIButton]()
    var buttonView: UILabel!
    var showDate: UILabel!
    var startTime: UIView!
    var endTime: UIView!
  
    var startDatePicker: UIDatePicker!
    var endDatePicker: UIDatePicker!
    
    override func loadView() {
        view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        
        buttonView = UILabel()
        buttonView.translatesAutoresizingMaskIntoConstraints = false
        buttonView.text = "좌석 버튼 구현 추후 라벨에서 뷰로 변경 예정"
        view.addSubview(buttonView)
        
        
        showDate = UILabel()
        showDate.translatesAutoresizingMaskIntoConstraints = false
        showDate.text = "2021-01-26 화/현재시간"
        showDate.textAlignment = .center
        showDate.backgroundColor = #colorLiteral(red: 0.9389781356, green: 0.9391353726, blue: 0.9389573932, alpha: 1)
        showDate.font = UIFont.systemFont(ofSize: 20)
        view.addSubview(showDate)
        
        startTime = UIView()
        startTime.translatesAutoresizingMaskIntoConstraints = false
        startTime.widthAnchor.constraint(equalToConstant: 80.0).isActive = true
        startTime.heightAnchor.constraint(equalToConstant: 45.0).isActive = true
        startTime.backgroundColor = .yellow
        view.addSubview(startTime)
        
        
        endTime = UIView()
        endTime.translatesAutoresizingMaskIntoConstraints = false
        endTime.widthAnchor.constraint(equalToConstant: 80.0).isActive = true
        endTime.heightAnchor.constraint(equalToConstant: 45.0).isActive = true
        endTime.backgroundColor = .blue
        view.addSubview(endTime)
        
        
        let completeButton = UIButton(type: .system)
        completeButton.translatesAutoresizingMaskIntoConstraints = false
        completeButton.setTitle("완료", for: .normal)
        completeButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        completeButton.backgroundColor = #colorLiteral(red: 0.1294117719, green: 0.2156862766, blue: 0.06666667014, alpha: 1)
        completeButton.tintColor = .white
        completeButton.widthAnchor.constraint(equalToConstant: 350.0).isActive = true
        completeButton.heightAnchor.constraint(equalToConstant: 45.0).isActive = true
        view.addSubview(completeButton)
        
        
        startDatePicker = UIDatePicker()
        startDatePicker.datePickerMode = .time
        startDatePicker.translatesAutoresizingMaskIntoConstraints = false
        startDatePicker.widthAnchor.constraint(equalToConstant: 80.0).isActive = true
        startDatePicker.heightAnchor.constraint(equalToConstant: 20.0).isActive = true
        startDatePicker.backgroundColor = .white
        view.addSubview(startDatePicker)
        
        endDatePicker = UIDatePicker()
        endDatePicker.datePickerMode = .time
        endDatePicker.translatesAutoresizingMaskIntoConstraints = false
        endDatePicker.widthAnchor.constraint(equalToConstant: 80.0).isActive = true
        endDatePicker.heightAnchor.constraint(equalToConstant: 20.0).isActive = true
        endDatePicker.backgroundColor = .yellow
        view.addSubview(endDatePicker)
    
    
        NSLayoutConstraint.activate([
            buttonView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            buttonView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            buttonView.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -20),
            buttonView.heightAnchor.constraint(equalTo: view.widthAnchor),
            buttonView.topAnchor.constraint(equalTo: view.topAnchor, constant: 50),
           
            
            showDate.topAnchor.constraint(equalTo: buttonView.bottomAnchor, constant: 10),
            showDate.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            showDate.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -20),
            showDate.heightAnchor.constraint(equalTo: view.widthAnchor, constant: -320),
            
            startTime.topAnchor.constraint(equalTo: showDate.bottomAnchor, constant: 10),
            startTime.trailingAnchor.constraint(equalTo: view.centerXAnchor),
            startTime.widthAnchor.constraint(equalTo: view.layoutMarginsGuide.widthAnchor, multiplier: 0.5),
            startTime.heightAnchor.constraint(equalTo: view.layoutMarginsGuide.heightAnchor, multiplier: 0.25),

            endTime.topAnchor.constraint(equalTo: showDate.bottomAnchor, constant: 10),
            endTime.leadingAnchor.constraint(equalTo: view.centerXAnchor),
            endTime.widthAnchor.constraint(equalTo: view.layoutMarginsGuide.widthAnchor, multiplier: 0.5),
            endTime.heightAnchor.constraint(equalTo: view.layoutMarginsGuide.heightAnchor, multiplier: 0.25),

            
            completeButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            completeButton.topAnchor.constraint(equalTo: startTime.bottomAnchor, constant: 10),
            completeButton.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor, constant: -10),
            
            
            //view 가 필요가 없음. datepicker 자체의 영역이 존재 -> 위에서 만들어 놓은 start, end 영역과 동일
            //datepicker관련 영역 선택 필요 -> 추후 수정
            startDatePicker.topAnchor.constraint(equalTo: showDate.bottomAnchor, constant: 10),
            startDatePicker.trailingAnchor.constraint(equalTo: view.centerXAnchor),
            startDatePicker.widthAnchor.constraint(equalTo: view.layoutMarginsGuide.widthAnchor, multiplier: 0.3),
            startDatePicker.heightAnchor.constraint(equalTo: view.layoutMarginsGuide.heightAnchor, multiplier: 0.25),
            
            
            endDatePicker.topAnchor.constraint(equalTo: showDate.bottomAnchor, constant: 10),
            endDatePicker.leadingAnchor.constraint(equalTo: view.centerXAnchor),
            endDatePicker.widthAnchor.constraint(equalTo: view.layoutMarginsGuide.widthAnchor, multiplier: 0.3),
            endDatePicker.heightAnchor.constraint(equalTo: view.layoutMarginsGuide.heightAnchor, multiplier: 0.25),
            
            
        ])
        
        buttonView.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        
        
        
        
        
       
    
    
    
    }
    
    
    
}
    
    
    
    
    
    
    
    
    
    
    

