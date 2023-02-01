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
  
  @State var buyerOne = BuyerOne()
  @State var buyerTwo = BuyerTwo()
  
  @State private var firstBuyerName = "Buyer One"
  @State private var secondBuyerName = "Buyer Two"
  
  
  
  @State private var B1DOB = "01/01/1971"
  @State private var B2DOB = "00/00/0000"
  
  
  
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
        
        
        Spacer()
        
        
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
                .font(Font.custom("MarcellusSC-Regular", size: 16))
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
                .font(Font.custom("MarcellusSC-Regular", size: 16))
                .foregroundColor(.white)
                .navigationBarTitle("")
                .navigationBarHidden(true)
            })
        }
          
        }
        
        
        HStack {
          
          VStack {
            
            Text("\(buyerOne.firstName) \(buyerOne.middleName) \(buyerOne.lastName)")
              .font(Font.custom("MarcellusSC-Regular", size: 25))
              .bold()
              .padding(.leading, 70)
            
            Text(buyerOne.address)
              .font(Font.custom("MarcellusSC-Regular", size: 20))
              .bold()
              .padding(.leading, 70)
            
            Text(buyerOne.addressSecond)
              .font(Font.custom("MarcellusSC-Regular", size: 20))
              .bold()
              .padding(.leading, 70)
            
            
            Text("\(buyerOne.city) \(buyerOne.state)")
              .font(Font.custom("MarcellusSC-Regular", size: 20))
              .bold()
              .padding(.leading, 70)
            
            Text(buyerOne.gotDL ? "ID Number: \(buyerOne.DLID)" : "")
              .font(Font.custom("MarcellusSC-Regular", size: 20))
              .bold()
              .padding(.leading, 70)
            
            Text(buyerOne.gotDL ? "Expires: \(buyerOne.dlExpire)" : "")
              .font(Font.custom("MarcellusSC-Regular", size: 20))
              .bold()
              .padding(.leading, 70)
            
            
            
            
            
            
          }
          
          
          Spacer()
          
          VStack {
            Text("\(buyerTwo.firstName) \(buyerTwo.middleName) \(buyerTwo.lastName)")
            
              .font(Font.custom("MarcellusSC-Regular", size: 25))
              .bold()
              .padding(.trailing, 70)
            
            Text(buyerTwo.address)
              .font(Font.custom("MarcellusSC-Regular", size: 20))
              .bold()
              .padding(.trailing, 70)
            
            Text(buyerTwo.addressSecond)
              .font(Font.custom("MarcellusSC-Regular", size: 20))
              .bold()
              .padding(.trailing, 70)
            
            Text("\(buyerTwo.city) \(buyerTwo.state)")
              .font(Font.custom("MarcellusSC-Regular", size: 20))
              .bold()
              .padding(.trailing, 70)
            
            Text(buyerTwo.gotDL ? "ID Number: \(buyerTwo.DLID)" : "")
              .font(Font.custom("MarcellusSC-Regular", size: 20))
              .bold()
              .padding(.trailing, 70)
            
            Text(buyerTwo.gotDL ? "Expires: \(buyerTwo.dlExpire)" : "")
              .font(Font.custom("MarcellusSC-Regular", size: 20))
              .bold()
              .padding(.trailing, 70)
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
              
              buyerOne.firstName = String(extractedData)
              
            } else if pdf417Code == "DCS" {
              
              buyerOne.lastName = String(extractedData)
              
            } else if pdf417Code == "DAD" {
              
              buyerOne.middleName = String(extractedData)
            } else if pdf417Code == "DAG" {
              
              buyerOne.address = String(extractedData)
            } else if pdf417Code == "DAI" {
              
              buyerOne.city = String(extractedData)
            } else if pdf417Code == "DAJ" {
              
              buyerOne.state = String(extractedData)
            } else if pdf417Code == "DAQ" {
              
              buyerOne.DLID = String(extractedData)
              buyerOne.gotDL = true
              
            } else if pdf417Code == "DAH" {
              
              buyerOne.addressSecond = String(extractedData)
            } else if pdf417Code == "DBA" {
              
              buyerOne.dlExpire = String(extractedData)
            }
            
            
            
            
            else if pdf417Code == "DBB" {
              
              B1DOB = String(extractedData)
            }
          }
        }
      }
      print(buyerOne.firstName + " " + buyerOne.lastName)
      firstBuyerName = buyerOne.firstName.capitalizingFirstLetter() + " " + buyerOne.lastName.capitalizingFirstLetter()
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
              
              buyerTwo.firstName = String(extractedData)
            } else if pdf417Code == "DCS" {
              
              buyerTwo.lastName = String(extractedData)
            } else if pdf417Code == "DAD" {
              
              buyerTwo.middleName = String(extractedData)
            } else if pdf417Code == "DAG" {
              
              buyerTwo.address = String(extractedData)
            } else if pdf417Code == "DAI" {
              
              buyerTwo.city = String(extractedData)
            } else if pdf417Code == "DAJ" {
              
              buyerTwo.state = String(extractedData)
            } else if pdf417Code == "DAQ" {
              
              buyerTwo.DLID = String(extractedData)
              buyerTwo.gotDL = true
              
            } else if pdf417Code == "DAH" {
              
              buyerTwo.addressSecond = String(extractedData)
            } else if pdf417Code == "DBA" {
              
              buyerTwo.dlExpire = String(extractedData)
            }
            
            
            
            
            else if pdf417Code == "DBB" {
              
              B1DOB = String(extractedData)
            }
            
            
          }
        }
      }
      
      secondBuyerName = buyerTwo.firstName.capitalizingFirstLetter() + " " + buyerTwo.lastName.capitalizingFirstLetter()
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


