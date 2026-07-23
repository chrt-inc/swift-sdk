import Foundation

public enum InvoiceTypeEnum1: String, Codable, Hashable, CaseIterable, Sendable {
    case accountsReceivable = "accounts_receivable"
    case accountsPayable = "accounts_payable"
}