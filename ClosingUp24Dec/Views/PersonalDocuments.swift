//
//  PersonalDocuments.swift
//  ClosingUp24Dec
//
//  Created by Dan Payne on 12/25/21.
//
import CodeScanner
import SwiftUI





struct PersonalDocuments: View {
    @State private var isShowingScanner = false
    @State private var isShowingScannerTwo = false
    @State private var firstBuyerName = "Buyer One"
    @State private var secondBuyerName = "Buyer Two"
    @State private var buyerFirstName = ""
    @State private var buyerLastName = ""
    @State private var buyerFirstNameTwo = ""
    @State private var buyerLastNameTwo = ""
    
    
    private let pdf417Map: [String: String] = [
        "DAA":"Full Name",
        "DAB":"Family Name",
        "DAC":"Given Name",
        "DAD":"Middle Name",
        "DAE":"Name Suffix",
        "DAF":"Name Prefix",
        "DAG":"Mailing Street Address1",
        "DAH":"Mailing Street Address2",
        "DAI":"Mailing City",
        "DAJ":"Mailing Jurisdiction Code",
        "DAK":"Mailing Postal Code",
        "DAL":"Residence Street Address1",
        "DAM":"Residence Street Address2",
        "DAN":"Residence City",
        "DAO":"Residence Jurisdiction Code",
        "DAP":"Residence Postal Code",
        "DAQ":"License or ID Number",
        "DAR":"License Classification Code",
        "DAS":"License Restriction Code",
        "DAT":"License Endorsements Code",
        "DAU":"Height in FT_IN",
        "DAV":"Height in CM",
        "DAW":"Weight in LBS",
        "DAX":"Weight in KG",
        "DAY":"Eye Color",
        "DAZ":"Hair Color",
        "DBA":"License Expiration Date",
        "DBB":"Date of Birth",
        "DBC":"Sex",
        "DBD":"License or ID Document Issue Date",
        "DBE":"Issue Timestamp",
        "DBF":"Number of Duplicates",
        "DBG":"Medical Indicator Codes",
        "DBH":"Organ Donor",
        "DBI":"Non-Resident Indicator",
        "DBJ":"Unique Customer Identifier",
        "DBK":"Social Security Number",
        "DBL":"Date Of Birth",
        "DBM":"Social Security Number",
        "DBN":"Full Name",
        "DBO":"Family Name",
        "DBP":"Given Name",
        "DBQ":"Middle Name or Initial",
        "DBR":"Suffix",
        "DBS":"Prefix",
        "DCA":"Virginia Specific Class",
        "DCB":"Virginia Specific Restrictions",
        "DCD":"Virginia Specific Endorsements",
        "DCE":"Physical Description Weight Range",
        "DCF":"Document Discriminator",
        "DCG":"Country territory of issuance",
        "DCH":"Federal Commercial Vehicle Codes",
        "DCI":"Place of birth",
        "DCJ":"Audit information",
        "DCK":"Inventory Control Number",
        "DCL":"Race Ethnicity",
        "DCM":"Standard vehicle classification",
        "DCN":"Standard endorsement code",
        "DCO":"Standard restriction code",
        "DCP":"Jurisdiction specific vehicle classification description",
        "DCQ":"Jurisdiction-specific",
        "DCR":"Jurisdiction specific restriction code description",
        "DCS":"Last Name",
        "DCT":"First Name",
        "DCU":"Suffix",
        "DDA":"Compliance Type",
        "DDB":"Card Revision Date",
        "DDC":"HazMat Endorsement Expiry Date",
        "DDD":"Limited Duration Document Indicator",
        "DDE":"Family Name Truncation",
        "DDF":"First Names Truncation",
        "DDG":"Middle Names Truncation",
        "DDH":"Under 18 Until",
        "DDI":"Under 19 Until",
        "DDJ":"Under 21 Until",
        "DDK":"Organ Donor Indicator",
        "DDL":"Veteran Indicator",
        "PAA":"Permit Classification Code",
        "PAB":"Permit Expiration Date",
        "PAC":"Permit Identifier",
        "PAD":"Permit IssueDate",
        "PAE":"Permit Restriction Code",
        "PAF":"Permit Endorsement Code",
        "ZVA":"Court Restriction Code"
    ]
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    
    var buyOneDone = false
    var buyTwo = "Buyer 2"
    var buyTwoDone = false
   
       
    var body: some View {
        ZStack {
            Color("rahDarkRed")
                .ignoresSafeArea()
            VStack {
                HStack {
                    Button { isShowingScanner = true
                        
                    }
                label: {
                    RoundedRectangle(cornerRadius: 25)
                        .fill(RadialGradient(gradient: Gradient(colors: [Color("rahRed"), .black]), center: .center, startRadius: 40, endRadius: 200))
                        .padding(.horizontal)
                        .frame(width: 380, height: 70)
                        .shadow(color: .black, radius: 10, x: 3, y: 3   )
                        .overlay(HStack {
                            Text(firstBuyerName)
                                .font(Font.custom("PaytoneOne-Regular", size: 16))
                                .foregroundColor(.white)
                                .navigationBarTitle("")
                                .navigationBarHidden(true)
                        })
                }
                .padding()
                    Spacer()
                    
                    Button {
                        isShowingScannerTwo = true
                    }
                label: {
                    RoundedRectangle(cornerRadius: 25)
                        .fill(RadialGradient(gradient: Gradient(colors: [Color("rahRed"), .black]), center: .center, startRadius: 40, endRadius: 200))
                        .padding(.horizontal)
                        .frame(width: 380, height: 70)
                        .shadow(color: .black, radius: 10, x: 3, y: 3   )
                        .overlay(HStack {
                            Text(secondBuyerName)
                                .font(Font.custom("PaytoneOne-Regular", size: 16))
                                .foregroundColor(.white)
                                .navigationBarTitle("")
                                .navigationBarHidden(true)
                        })
                }
                    
                }
                
                Spacer()
                
                Button(action: {
                    
                    self.presentationMode.wrappedValue.dismiss()
                }) {
                    Text("Tap Here When Complete")
                        .foregroundColor(.white)
                        .font(Font.custom("PaytoneOne-Regular", size: 40))
                    
                }
            }
            .navigationBarTitle("")
            .navigationBarBackButtonHidden(true)
            .navigationBarHidden(true)
            
        }
        .sheet(isPresented: $isShowingScanner) {
            CodeScannerView(codeTypes: [.pdf417], simulatedData:  "Dan Payne\nDpayne5532@icloud.com", completion: handleScan)
        }
        .sheet(isPresented: $isShowingScannerTwo) {
            CodeScannerView(codeTypes: [.pdf417], simulatedData:  "Dan Payne\nDpayne5532@icloud.com", completion: handleScanTwo)
        }
        
        
        
        
    }
    
    func handleScan(result: Result<ScanResult, ScanError>) {
        isShowingScanner = false
        switch result {
        case .success(let result):
            let licenseData = result.string.components(separatedBy: "\n")
            var customerProfile: [[String: String]] = []
            for item in licenseData {
                var metaDataItem = item
                if metaDataItem.count > 3 {
                    if let dlCodeRange = metaDataItem.range(of: "DAQ") {
                        let dlStart = dlCodeRange.lowerBound
                        let dlEnd = metaDataItem.index(metaDataItem.endIndex, offsetBy: 0)
                        let dlNoRange = dlStart..<dlEnd
                        metaDataItem = String(metaDataItem[dlNoRange])
                    }
                    // Get the 3 letter code
                    let pdf417Code = String(metaDataItem.prefix(3))
                    // See if the code exists in the map
                    if pdf417Map[pdf417Code] != nil {
                        // Code exists in map, save to profile
                        let start = metaDataItem.index(metaDataItem.startIndex, offsetBy: 3)
                        let end = metaDataItem.index(metaDataItem.endIndex, offsetBy: 0)
                        let range = start..<end
                        let extractedData = metaDataItem[range]
                        customerProfile.append([pdf417Map[pdf417Code]!: String(extractedData)])
                        print(pdf417Code)
                        print("Extracted Data: \(extractedData)")
                        
                        if pdf417Code == "DAC" {
                   //         print(extractedData)
                            buyerFirstName += extractedData
                        } else if pdf417Code == "DCS" {
                //            print(extractedData)
                            buyerLastName += extractedData
                        }
                    }
                }
            }
            print(buyerFirstName + " " + buyerLastName)
            firstBuyerName = buyerFirstName.capitalizingFirstLetter() + " " + buyerLastName.capitalizingFirstLetter()
        case .failure(let error):
            print("Scanning failed: \(error.localizedDescription)")
            
        }
    }
    
    func handleScanTwo(result: Result<ScanResult, ScanError>) {
        isShowingScannerTwo = false
        switch result {
        case .success(let result):
            let licenseData = result.string.components(separatedBy: "\n")
            var customerProfile: [[String: String]] = []
            for item in licenseData {
                var metaDataItem = item
                if metaDataItem.count > 3 {
                    if let dlCodeRange = metaDataItem.range(of: "DAQ") {
                        let dlStart = dlCodeRange.lowerBound
                        let dlEnd = metaDataItem.index(metaDataItem.endIndex, offsetBy: 0)
                        let dlNoRange = dlStart..<dlEnd
                        metaDataItem = String(metaDataItem[dlNoRange])
                    }
                    // Get the 3 letter code
                    let pdf417Code = String(metaDataItem.prefix(3))
                    // See if the code exists in the map
                    if pdf417Map[pdf417Code] != nil {
                        // Code exists in map, save to profile
                        let start = metaDataItem.index(metaDataItem.startIndex, offsetBy: 3)
                        let end = metaDataItem.index(metaDataItem.endIndex, offsetBy: 0)
                        let range = start..<end
                        let extractedData = metaDataItem[range]
                        customerProfile.append([pdf417Map[pdf417Code]!: String(extractedData)])
                        print(pdf417Code)
                        print("Extracted Data: \(extractedData)")
                        
                        if pdf417Code == "DAC" {
                   //         print(extractedData)
                            buyerFirstNameTwo += extractedData
                        } else if pdf417Code == "DCS" {
                //            print(extractedData)
                            buyerLastNameTwo += extractedData
                        }
                    }
                }
            }
            print(buyerFirstNameTwo + " " + buyerLastNameTwo)
            secondBuyerName = buyerFirstNameTwo.capitalizingFirstLetter() + " " + buyerLastNameTwo.capitalizingFirstLetter()
        case .failure(let error):
            print("Scanning failed: \(error.localizedDescription)")
            
        }
    }
    
    
}





extension String {
    func capitalizingFirstLetter() -> String {
      return prefix(1).uppercased() + self.lowercased().dropFirst()
    }

    mutating func capitalizeFirstLetter() {
      self = self.capitalizingFirstLetter()
    }
}



struct PersonalDocuments_Previews: PreviewProvider {
    static var previews: some View {
        PersonalDocuments()
    }
}


