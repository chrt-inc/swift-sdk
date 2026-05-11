import Foundation

extension Requests {
    public struct ScheduledPingReq: Codable, Hashable, Sendable {
        public let message: String?
        public let scheduleSpec: ScheduleSpec?
        public let catchupWindowSeconds: Int?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            message: String? = nil,
            scheduleSpec: ScheduleSpec? = nil,
            catchupWindowSeconds: Int? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.message = message
            self.scheduleSpec = scheduleSpec
            self.catchupWindowSeconds = catchupWindowSeconds
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.message = try container.decodeIfPresent(String.self, forKey: .message)
            self.scheduleSpec = try container.decodeIfPresent(ScheduleSpec.self, forKey: .scheduleSpec)
            self.catchupWindowSeconds = try container.decodeIfPresent(Int.self, forKey: .catchupWindowSeconds)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.message, forKey: .message)
            try container.encodeIfPresent(self.scheduleSpec, forKey: .scheduleSpec)
            try container.encodeIfPresent(self.catchupWindowSeconds, forKey: .catchupWindowSeconds)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case message
            case scheduleSpec = "schedule_spec"
            case catchupWindowSeconds = "catchup_window_seconds"
        }
    }
}