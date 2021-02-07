//
//  ViewController.swift
//  NavigationSample
//
//  Created by Gautham Sritharan on 2021-02-05.
//

import UIKit
import RxCocoa
import RxSwift

class HomeVC: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var btnScreen2: UIButton!
    @IBOutlet weak var btnScreen4: UIButton!
    
    // MARK: - Variables
    private let bag = DisposeBag()
    
    // MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configUI()
        addObservers()
    }
    // MARK: - ConfigUI
    
    func configUI() {
        btnScreen2.layer.cornerRadius = 5
        btnScreen4.layer.cornerRadius = 5
    }
    
    // MARK: - Observers
    func addObservers() {
        
        btnScreen2.rx.tap
            .subscribe() {[ weak self ] event in
                self?.pressedScreen2()
            }
            .disposed(by: bag)
        
        btnScreen4.rx.tap
            .subscribe() {[weak self] event in
                self?.pressedScreen3()
            }
            .disposed(by: bag)
    }
    
    // MARK: - Outlet Action
    func pressedScreen2() {
        ApplicationServiceProvider.shared.pushToViewController(in: .Main, for: .Screen2VC, from: self)
    }
    
    func pressedScreen3() {
        ApplicationServiceProvider.shared.pushToViewController(in: .Main, for: .Screen3VC, from: self)
    }
}

