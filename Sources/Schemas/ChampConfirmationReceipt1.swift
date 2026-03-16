import Foundation

public struct ChampConfirmationReceipt1: Codable, Hashable, Sendable {
    public let schemaVersion: Int?
    public let id: String
    public let champId: String
    public let type: ConfirmationReceipt
    public let messageHeader: CargojsonMessageHeader
    public let referencedMessageType: String
    public let airWaybillNumber: String
    public let origin: String
    public let destination: String
    public let rejected: Bool
    public let textMessage: String
    public let referenceMessageContent: String?
    /// Must be a string starting with `org_`
    public let orgId: String?
    public let taskGroupId: String?
    public let receivedAt: Date
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        schemaVersion: Int? = nil,
        id: String,
        champId: String,
        type: ConfirmationReceipt,
        messageHeader: CargojsonMessageHeader,
        referencedMessageType: String,
        airWaybillNumber: String,
        origin: String,
        destination: String,
        rejected: Bool,
        textMessage: String,
        referenceMessageContent: String? = nil,
        orgId: String? = nil,
        taskGroupId: String? = nil,
        receivedAt: Date,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.schemaVersion = schemaVersion
        self.id = id
        self.champId = champId
        self.type = type
        self.messageHeader = messageHeader
        self.referencedMessageType = referencedMessageType
        self.airWaybillNumber = airWaybillNumber
        self.origin = origin
        self.destination = destination
        self.rejected = rejected
        self.textMessage = textMessage
        self.referenceMessageContent = referenceMessageContent
        self.orgId = orgId
        self.taskGroupId = taskGroupId
        self.receivedAt = receivedAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.schemaVersion = try container.decodeIfPresent(Int.self, forKey: .schemaVersion)
        self.id = try container.decode(String.self, forKey: .id)
        self.champId = try container.decode(String.self, forKey: .champId)
        self.type = try container.decode(ConfirmationReceipt.self, forKey: .type)
        self.messageHeader = try container.decode(CargojsonMessageHeader.self, forKey: .messageHeader)
        self.referencedMessageType = try container.decode(String.self, forKey: .referencedMessageType)
        self.airWaybillNumber = try container.decode(String.self, forKey: .airWaybillNumber)
        self.origin = try container.decode(String.self, forKey: .origin)
        self.destination = try container.decode(String.self, forKey: .destination)
        self.rejected = try container.decode(Bool.self, forKey: .rejected)
        self.textMessage = try container.decode(String.self, forKey: .textMessage)
        self.referenceMessageContent = try container.decodeIfPresent(String.self, forKey: .referenceMessageContent)
        self.orgId = try container.decodeIfPresent(String.self, forKey: .orgId)
        self.taskGroupId = try container.decodeIfPresent(String.self, forKey: .taskGroupId)
        self.receivedAt = try container.decode(Date.self, forKey: .receivedAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.schemaVersion, forKey: .schemaVersion)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.champId, forKey: .champId)
        try container.encode(self.type, forKey: .type)
        try container.encode(self.messageHeader, forKey: .messageHeader)
        try container.encode(self.referencedMessageType, forKey: .referencedMessageType)
        try container.encode(self.airWaybillNumber, forKey: .airWaybillNumber)
        try container.encode(self.origin, forKey: .origin)
        try container.encode(self.destination, forKey: .destination)
        try container.encode(self.rejected, forKey: .rejected)
        try container.encode(self.textMessage, forKey: .textMessage)
        try container.encodeIfPresent(self.referenceMessageContent, forKey: .referenceMessageContent)
        try container.encodeIfPresent(self.orgId, forKey: .orgId)
        try container.encodeIfPresent(self.taskGroupId, forKey: .taskGroupId)
        try container.encode(self.receivedAt, forKey: .receivedAt)
    }

    public enum ConfirmationReceipt: String, Codable, Hashable, CaseIterable, Sendable {
        case confirmationReceipt = "confirmation receipt"
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case schemaVersion
        case id = "_id"
        case champId
        case type
        case messageHeader
        case referencedMessageType
        case airWaybillNumber
        case origin
        case destination
        case rejected
        case textMessage
        case referenceMessageContent
        case orgId
        case taskGroupId
        case receivedAt
    }
}