//
//  File.swift
//  
//
//  Created by stan on 2020/5/14.
//

import Foundation
import UIKit
class GrandCalendar: UIView {
    
    public enum SelectType:Int{
        case single = 0
        case multi = 1
        case range = 2
    }
    
    open var startDate = Date(timeIntervalSince1970: 0){
        didSet{
            
        }
    }
    
    open var endDate = Date(timeIntervalSinceNow: 3600*24*30){
        didSet{
            
        }
    }
    
    open var selectType = SelectType.single{
        didSet{
            
        }
    }
    
    let btnCancel = UIButton()
    let btnConfirm = UIButton()
    let lblSecetion = UILabel()
    let tb = UITableView()
    override init(frame: CGRect) {
        super.init(frame: frame)
        initView()
    }
    
    func initView() {
        
        btnCancel.setTitle("取消", for: .normal)
        btnCancel.setTitleColor(UIColor.darkGray, for: .normal)
        btnCancel.addTarget(self, action: #selector(cancel), for: .touchUpInside)
        addSubview(btnCancel)
        btnConfirm.setTitle("取消", for: .normal)
        btnConfirm.setTitleColor(UIColor.darkGray, for: .normal)
        btnConfirm.addTarget(self, action: #selector(confirm), for: .touchUpInside)
        addSubview(btnConfirm)
        
        
    }
    
    @objc func cancel() {
        
    }
    
    @objc func confirm(){
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
}
