//
//  ScannerViewModel.swift
//  qrscanner sample
//
//  Created by Shu Urata on 2023/01/02.
//

import Foundation

class ScannerViewModel: ObservableObject {

    /// QRコードを読み取る時間間隔
    let scanInterval: Double = 1.0
    @Published var lastQrCode: String = "QRコード"
    @Published var isShowing: Bool = false

    /// QRコード読み取り時に実行される。
    func onFoundQrCode(_ code: String) {
        self.lastQrCode = code
        isShowing = false
    }
}
