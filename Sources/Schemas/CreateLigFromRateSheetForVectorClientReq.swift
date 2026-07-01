import Foundation

public struct CreateLigFromRateSheetForVectorClientReq: Codable, Hashable, Sendable {
    public let rateSheetId: String?
    public let taskGroupId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        rateSheetId: String? = nil,
        taskGroupId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.rateSheetId = rateSheetId
        self.taskGroupId = taskGroupId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.rateSheetId = try container.decodeIfPresent(String.self, forKey: .rateSheetId)
        self.taskGroupId = try container.decode(String.self, forKey: .taskGroupId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.rateSheetId, forKey: .rateSheetId)
        try container.encode(self.taskGroupId, forKey: .taskGroupId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case rateSheetId = "rate_sheet_id"
        case taskGroupId = "task_group_id"
    }
}