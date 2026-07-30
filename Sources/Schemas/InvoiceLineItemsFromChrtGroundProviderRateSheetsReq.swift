import Foundation

public struct InvoiceLineItemsFromChrtGroundProviderRateSheetsReq: Codable, Hashable, Sendable {
    public let taskGroupChrtGroundProviderRateSheetIds: [TaskGroupChrtGroundProviderRateSheetIds1]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        taskGroupChrtGroundProviderRateSheetIds: [TaskGroupChrtGroundProviderRateSheetIds1],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.taskGroupChrtGroundProviderRateSheetIds = taskGroupChrtGroundProviderRateSheetIds
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.taskGroupChrtGroundProviderRateSheetIds = try container.decode([TaskGroupChrtGroundProviderRateSheetIds1].self, forKey: .taskGroupChrtGroundProviderRateSheetIds)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.taskGroupChrtGroundProviderRateSheetIds, forKey: .taskGroupChrtGroundProviderRateSheetIds)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case taskGroupChrtGroundProviderRateSheetIds = "task_group_chrt_ground_provider_rate_sheet_ids"
    }
}