import Foundation

/// [CONFIG] Routing addresses for the CargoHUB message.
public struct CargojsonAddressing: Codable, Hashable, Sendable {
    public let routeVia: CargojsonParticipantAddress?
    public let routeAnswerVia: CargojsonParticipantAddress?
    public let senderAddresses: [CargojsonParticipantAddress]?
    public let finalRecipientAddresses: [CargojsonParticipantAddress]?
    public let replyAnswerTo: [CargojsonParticipantAddress]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        routeVia: CargojsonParticipantAddress? = nil,
        routeAnswerVia: CargojsonParticipantAddress? = nil,
        senderAddresses: [CargojsonParticipantAddress]? = nil,
        finalRecipientAddresses: [CargojsonParticipantAddress]? = nil,
        replyAnswerTo: [CargojsonParticipantAddress]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.routeVia = routeVia
        self.routeAnswerVia = routeAnswerVia
        self.senderAddresses = senderAddresses
        self.finalRecipientAddresses = finalRecipientAddresses
        self.replyAnswerTo = replyAnswerTo
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.routeVia = try container.decodeIfPresent(CargojsonParticipantAddress.self, forKey: .routeVia)
        self.routeAnswerVia = try container.decodeIfPresent(CargojsonParticipantAddress.self, forKey: .routeAnswerVia)
        self.senderAddresses = try container.decodeIfPresent([CargojsonParticipantAddress].self, forKey: .senderAddresses)
        self.finalRecipientAddresses = try container.decodeIfPresent([CargojsonParticipantAddress].self, forKey: .finalRecipientAddresses)
        self.replyAnswerTo = try container.decodeIfPresent([CargojsonParticipantAddress].self, forKey: .replyAnswerTo)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.routeVia, forKey: .routeVia)
        try container.encodeIfPresent(self.routeAnswerVia, forKey: .routeAnswerVia)
        try container.encodeIfPresent(self.senderAddresses, forKey: .senderAddresses)
        try container.encodeIfPresent(self.finalRecipientAddresses, forKey: .finalRecipientAddresses)
        try container.encodeIfPresent(self.replyAnswerTo, forKey: .replyAnswerTo)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case routeVia
        case routeAnswerVia
        case senderAddresses
        case finalRecipientAddresses
        case replyAnswerTo
    }
}