//
//  ViewController.swift
//  SimpleList
//
//  Created by yeonjin on 3/30/25.
//

import UIKit

class ViewController: UIViewController {
    
    let fruits = ["apple", "banana", "orange", "kiwi"]
    //UITableViewDataSource : tableView가 데이터 소스 역할을 할 수 있음
    
    let languages = ["Swift", "Objective-C", "C#", "Java", "HTML"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

extension ViewController :  UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
        //numberOfSections 에서 2를 리턴하는 것 ->section의 개수가 2개임을 알려줌
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        switch section {
        case 0 : return fruits.count
        case 1 : return languages.count
        default :
            return 0
            
            //필수메소드로 테이블 뷰의 개수를 나타낸다.
            
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->UITableViewCell {

        //#1 화면에 표시할 셀은 dequeueReusableCell (사용할 수 있는 재사용 큐를 확인한 후에 리턴해줌 , withIdentifier : "cell" 우리가ㅏ 메인스토리 보드에 만든 설계도를 찾아서 리턴함 ㅑ)
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        //#2 셀 안에 자동으로 추가된 레이블은 textLabel로 접근이 가능함
        //cellForRowAt은 반복적으로 호출되기 때문에 해당 메소드에서 for문을 쓸 필요가 없다.
        //cell의 위치는 indexPath라는 파라미터로 전달되고, row, section 인덱스를 두개가 저장되어 있음
        
        switch indexPath.section {
        case 0 :
            cell.textLabel?.text = fruits[indexPath.row]
        case 1 :
            cell.textLabel?.text = languages[indexPath.row]
        default :
            break
        }
    
        
        //section 인덱스, row인덱스 표기 하는중
            
        //#3 cell을 리턴해줌
        return cell
        //필수 메소드로, 어떤 데이터를 어떻게 표시해야 하는지를 나타냄
        //리턴 값이 UITableViewCell 임 즉, 셀을 만들고 데이터를 채워둔 새로운 셀을 만들어서 리턴하는 것임
    }
    
}

extension ViewController : UITableViewDelegate{
    //UITableViewDelegate는 필수메소드가 없다.
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(fruits[indexPath.row])
    }
}
