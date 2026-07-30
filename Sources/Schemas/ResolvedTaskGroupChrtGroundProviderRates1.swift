import Foundation

public struct ResolvedTaskGroupChrtGroundProviderRates1: Codable, Hashable, Sendable {
    public let accountsPayableRateSheets: [ChrtGroundProviderRates1]?
    public let accountsReceivableRateSheets: [ChrtGroundProviderRates1]?
    public let taskGroup: TaskGroup1
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        accountsPayableRateSheets: [ChrtGroundProviderRates1]? = nil,
        accountsReceivableRateSheets: [ChrtGroundProviderRates1]? = nil,
        taskGroup: TaskGroup1,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.accountsPayableRateSheets = accountsPayableRateSheets
        self.accountsReceivableRateSheets = accountsReceivableRateSheets
        self.taskGroup = taskGroup
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.accountsPayableRateSheets = try container.decodeIfPresent([ChrtGroundProviderRates1].self, forKey: .accountsPayableRateSheets)
        self.accountsReceivableRateSheets = try container.decodeIfPresent([ChrtGroundProviderRates1].self, forKey: .accountsReceivableRateSheets)
        self.taskGroup = try container.decode(TaskGroup1.self, forKey: .taskGroup)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.accountsPayableRateSheets, forKey: .accountsPayableRateSheets)
        try container.encodeIfPresent(self.accountsReceivableRateSheets, forKey: .accountsReceivableRateSheets)
        try container.encode(self.taskGroup, forKey: .taskGroup)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case accountsPayableRateSheets = "accounts_payable_rate_sheets"
        case accountsReceivableRateSheets = "accounts_receivable_rate_sheets"
        case taskGroup = "task_group"
    }
}