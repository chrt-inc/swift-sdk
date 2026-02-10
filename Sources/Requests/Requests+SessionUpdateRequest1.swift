import Foundation

extension Requests {
    public struct SessionUpdateRequest1: Codable, Hashable, Sendable {
        public let sessionId: String
        public let comments: String?
        public let deleteComments: Bool?
        public let `public`: Bool?
        public let offChrtOrderId: String?
        public let deleteOffChrtOrderId: Bool?
        public let flightNumber: String?
        public let deleteFlightNumber: Bool?
        public let faFlightIds: [String]?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            sessionId: String,
            comments: String? = nil,
            deleteComments: Bool? = nil,
            public: Bool? = nil,
            offChrtOrderId: String? = nil,
            deleteOffChrtOrderId: Bool? = nil,
            flightNumber: String? = nil,
            deleteFlightNumber: Bool? = nil,
            faFlightIds: [String]? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.sessionId = sessionId
            self.comments = comments
            self.deleteComments = deleteComments
            self.public = `public`
            self.offChrtOrderId = offChrtOrderId
            self.deleteOffChrtOrderId = deleteOffChrtOrderId
            self.flightNumber = flightNumber
            self.deleteFlightNumber = deleteFlightNumber
            self.faFlightIds = faFlightIds
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.sessionId = try container.decode(String.self, forKey: .sessionId)
            self.comments = try container.decodeIfPresent(String.self, forKey: .comments)
            self.deleteComments = try container.decodeIfPresent(Bool.self, forKey: .deleteComments)
            self.public = try container.decodeIfPresent(Bool.self, forKey: .public)
            self.offChrtOrderId = try container.decodeIfPresent(String.self, forKey: .offChrtOrderId)
            self.deleteOffChrtOrderId = try container.decodeIfPresent(Bool.self, forKey: .deleteOffChrtOrderId)
            self.flightNumber = try container.decodeIfPresent(String.self, forKey: .flightNumber)
            self.deleteFlightNumber = try container.decodeIfPresent(Bool.self, forKey: .deleteFlightNumber)
            self.faFlightIds = try container.decodeIfPresent([String].self, forKey: .faFlightIds)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.sessionId, forKey: .sessionId)
            try container.encodeIfPresent(self.comments, forKey: .comments)
            try container.encodeIfPresent(self.deleteComments, forKey: .deleteComments)
            try container.encodeIfPresent(self.public, forKey: .public)
            try container.encodeIfPresent(self.offChrtOrderId, forKey: .offChrtOrderId)
            try container.encodeIfPresent(self.deleteOffChrtOrderId, forKey: .deleteOffChrtOrderId)
            try container.encodeIfPresent(self.flightNumber, forKey: .flightNumber)
            try container.encodeIfPresent(self.deleteFlightNumber, forKey: .deleteFlightNumber)
            try container.encodeIfPresent(self.faFlightIds, forKey: .faFlightIds)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case sessionId = "session_id"
            case comments
            case deleteComments = "delete_comments"
            case `public`
            case offChrtOrderId = "off_chrt_order_id"
            case deleteOffChrtOrderId = "delete_off_chrt_order_id"
            case flightNumber = "flight_number"
            case deleteFlightNumber = "delete_flight_number"
            case faFlightIds = "fa_flight_ids"
        }
    }
}