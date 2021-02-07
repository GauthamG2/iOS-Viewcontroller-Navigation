//
//  Screen2VC.swift
//  NavigationSample
//
//  Created by Gautham Sritharan on 2021-02-05.
//

import UIKit
import RxSwift
import RxCocoa

class Screen2VC: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var btnScreen3: UIButton!
    
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
        btnScreen3.layer.cornerRadius = 5
    }
    // MARK: - Observers
    
    func addObservers() {
        
        btnScreen3.rx.tap
            .subscribe() {[ weak self ] event in
                self?.pressedScreen3()
            }
            .disposed(by: bag)
    }
    
    // MARK: - Outlet Action
    
    func pressedScreen3() {
        ApplicationServiceProvider.shared.pushToViewController(in: .Main, for: .Screen3VC, from: self)
    }
}
