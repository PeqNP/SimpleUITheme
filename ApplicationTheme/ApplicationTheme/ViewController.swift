/**
 
 Copyright © 2018 Upstart Illustration LLC. All rights reserved.
 */

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel! {
        didSet {
            themer.apply(.inputField, to: nameLabel)
        }
    }
    
    @IBOutlet weak var nameTextField: UITextField! {
        didSet {
            themer.apply(.inputField, to: nameTextField)
        }
    }
    
    @IBOutlet weak var submitButton: UIButton! {
        didSet {
            themer.apply(.primary, to: submitButton)
        }
    }
    
    @IBOutlet weak var tableView: UITableView! {
        didSet {
            themer.apply(.main, to: tableView)
            tableView.dataSource = self
        }
    }
    
    private var themer: ApplicationThemer!
    
    func inject(themer: ApplicationThemer) {
        self.themer = themer
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension ViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}
