import Foundation

/// Model for partial updates to courier pay driver statement - all fields are optional
public struct CourierPayDriverStatementClientUpdate1: Codable, Hashable, Sendable {
    public let statementStatus: StatementStatusEnum?
    public let statementCompletedAtTimestamp: Date?
    /// Must be a string starting with `user_`
    public let statementCompletedByUserId: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        statementStatus: StatementStatusEnum? = nil,
        statementCompletedAtTimestamp: Date? = nil,
        statementCompletedByUserId: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.statementStatus = statementStatus
        self.statementCompletedAtTimestamp = statementCompletedAtTimestamp
        self.statementCompletedByUserId = statementCompletedByUserId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.statementStatus = try container.decodeIfPresent(StatementStatusEnum.self, forKey: .statementStatus)
        self.statementCompletedAtTimestamp = try container.decodeIfPresent(Date.self, forKey: .statementCompletedAtTimestamp)
        self.statementCompletedByUserId = try container.decodeIfPresent(String.self, forKey: .statementCompletedByUserId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.statementStatus, forKey: .statementStatus)
        try container.encodeIfPresent(self.statementCompletedAtTimestamp, forKey: .statementCompletedAtTimestamp)
        try container.encodeIfPresent(self.statementCompletedByUserId, forKey: .statementCompletedByUserId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case statementStatus = "statement_status"
        case statementCompletedAtTimestamp = "statement_completed_at_timestamp"
        case statementCompletedByUserId = "statement_completed_by_user_id"
    }
}