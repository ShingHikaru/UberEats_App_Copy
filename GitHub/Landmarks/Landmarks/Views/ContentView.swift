//
//  ContentView.swift
//  Landmarks
//
//  Created by Hikaru Shing on 2022/05/28.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .frame(height:300)
            
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            VStack(alignment: .leading) {
            Text("Turtle Rock!")
              .font(.title)
    //          .padding()
                
            HStack {
              Text("Joshua Tree National Park")
//                .font(.subheadline)
              Spacer()
              Text("California")
              
            }
            .font(.subheadline)
            .foregroundColor(.secondary)
                
            Divider()
            Text("About Turtle Rock")
                .font(.title2)
            Text("Descriptive text goes here.")
            Spacer()
                
                
          }
            .padding()
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
      ContentView()
        .previewInterfaceOrientation(.portraitUpsideDown)
    }
}

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    var datePicker = UIDatePicker()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let toolbar = UIToolbar(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 35))
        let spacelItem = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: self, action: nil)
        let doneItem = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(done))
        toolbar.setItems([spacelItem, doneItem], animated: true)
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy年 M月d日"
        datePicker.date = formatter.date(from: "2000年 1月1日")!
        datePicker.datePickerMode = .date
        datePicker.preferredDatePickerStyle = .wheels
        textField.inputView = datePicker
        textField.inputAccessoryView = toolbar
    }
    
    @objc func done() {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy年 M月d日"
        textField.text = formatter.string(from: datePicker.date)
        self.view.endEditing(true)
    }
}
