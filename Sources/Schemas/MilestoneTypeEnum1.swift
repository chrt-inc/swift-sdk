import Foundation

public enum MilestoneTypeEnum1: String, Codable, Hashable, CaseIterable, Sendable {
    case image
    case signature
    case barcodeScan = "barcode_scan"
    case qrCodeScan = "qr_code_scan"
    case userAction = "user_action"
    case detectedByApp = "detected_by_app"
    case other
    case orderInProgress = "order_in_progress"
}