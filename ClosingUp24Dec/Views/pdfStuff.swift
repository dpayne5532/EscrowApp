//
//  pdfStuff.swift
//  ClosingUp24Dec
//
//  Created by Dan Payne on 1/21/22.
//

import Foundation
import PDFKit
import SwiftUI
import PencilKit

struct PDFKitRepresentedView: UIViewRepresentable {
  let url: URL
  
  init(_ url: URL) {
    self.url = url
  }
  
  func makeUIView(context: UIViewRepresentableContext<PDFKitRepresentedView>) -> PDFKitRepresentedView.UIViewType {
    // Create a `PDFView` and set its `PDFDocument`.
    let pdfView = PDFView()
    pdfView.document = PDFDocument(url: self.url)
    
    return pdfView
  }
  
  func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<PDFKitRepresentedView>) {
    // Update the view.
  }
}




struct PDFKitView: View {
  var url: URL
  
  var body: some View {
    PDFKitRepresentedView(url)
  }
}







//
//class DrawingViewController: UIViewController {
//
//    lazy var canvas: PKCanvasView = {
//        let v = PKCanvasView()
//        v.drawingPolicy = .pencilOnly
//        v.minimumZoomScale = 1
//        v.maximumZoomScale = 2
//        v.translatesAutoresizingMaskIntoConstraints = false
//        return v
//
//
//
//
//    }()
//    
//    lazy var toolPicker: PKToolPicker = {
//        let toolPicker = PKToolPicker()
//        toolPicker.addObserver(self)
//        return toolPicker
//    }()
//    
//    
//    var drawingData = Data()
//    
//    var drawingChanged: (Data) -> Void = { _ in }
//    
//    
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        view.addSubview(canvas)
//        
//        
//        NSLayoutConstraint.activate([canvas.leadingAnchor.constraint(equalTo: view.leadingAnchor),
//                                     canvas.trailingAnchor.constraint(equalTo: view.trailingAnchor),
//                                     canvas.topAnchor.constraint(equalTo: view.topAnchor),
//                                     canvas.bottomAnchor.constraint(equalTo: view.bottomAnchor),
//                                    ])
//     
//        toolPicker.setVisible(true, forFirstResponder: canvas)
//        toolPicker.addObserver(canvas)
//        canvas.delegate = self
//        canvas.becomeFirstResponder()
//        
//        if let drawing = try? PKDrawing(data: drawingData) {
//            canvas.drawing = drawing
//        }
//        
//        
//        
//        
//    }
//}
//
//
//
//extension DrawingViewController: PKToolPickerObserver, PKCanvasViewDelegate {
//    func canvasViewDrawingDidChange(_ canvasView: PKCanvasView) {
//        drawingChanged(canvasView.drawing.dataRepresentation())
//    }
//}
