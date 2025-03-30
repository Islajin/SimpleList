//
//  ViewController.swift
//  SimpleList
//
//  Created by yeonjin on 3/30/25.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    //UITableViewDataSource : tableView가 데이터 소스 역할을 할 수 있음
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
        //필수메소드로 테이블 뷰의 개수를 나타낸다.
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->UITableViewCell {
        
        //#1 화면에 표시할 셀은 dequeueReusableCell (사용할 수 있는 재사용 큐를 확인한 후에 리턴해줌 , withIdentifier : "cell" 우리가ㅏ 메인스토리 보드에 만든 설계도를 찾아서 리턴함 ㅑ)
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        //#2 셀 안에 자동으로 추가된 레이블은 textLabel로 접근이 가능함
        cell.textLabel?.text = "\(indexPath.section)-\(indexPath.row)" //section 인덱스, row인덱스 표기 하는중
            
        //#3 cell을 리턴해줌
        return cell
        //필수 메소드로, 어떤 데이터를 어떻게 표시해야 하는지를 나타냄
        //리턴 값이 UITableViewCell 임 즉, 셀을 만들고 데이터를 채워둔 새로운 셀을 만들어서 리턴하는 것임
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

