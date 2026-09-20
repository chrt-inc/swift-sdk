import Foundation

/// One end of a route. Timestamps here are epoch seconds, not ISO strings.
public struct CourieStopResponse1: Codable, Hashable, Sendable {
    public let address: CourieAddressResponse1?
    public let attemptedAt: Int?
    public let attempts: [CourieStopAttemptResponse1]?
    public let companyName: String?
    public let completedAt: Int?
    public let contactName: String?
    public let driver: CourieDriverResponse1?
    public let driverAnswers: [CourieDriverAnswerResponse1]?
    public let driverStopSequenceNumber: Int?
    public let due: Int?
    public let instruction: String?
    public let locationScans: [CourieLocationScanResponse1]?
    public let orderId: String?
    public let phone: String?
    public let ready: Int?
    public let stopSequenceNumber: Int?
    public let suite: String?
    public let type: CourieStopTypeEnum1
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        address: CourieAddressResponse1? = nil,
        attemptedAt: Int? = nil,
        attempts: [CourieStopAttemptResponse1]? = nil,
        companyName: String? = nil,
        completedAt: Int? = nil,
        contactName: String? = nil,
        driver: CourieDriverResponse1? = nil,
        driverAnswers: [CourieDriverAnswerResponse1]? = nil,
        driverStopSequenceNumber: Int? = nil,
        due: Int? = nil,
        instruction: String? = nil,
        locationScans: [CourieLocationScanResponse1]? = nil,
        orderId: String? = nil,
        phone: String? = nil,
        ready: Int? = nil,
        stopSequenceNumber: Int? = nil,
        suite: String? = nil,
        type: CourieStopTypeEnum1,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.address = address
        self.attemptedAt = attemptedAt
        self.attempts = attempts
        self.companyName = companyName
        self.completedAt = completedAt
        self.contactName = contactName
        self.driver = driver
        self.driverAnswers = driverAnswers
        self.driverStopSequenceNumber = driverStopSequenceNumber
        self.due = due
        self.instruction = instruction
        self.locationScans = locationScans
        self.orderId = orderId
        self.phone = phone
        self.ready = ready
        self.stopSequenceNumber = stopSequenceNumber
        self.suite = suite
        self.type = type
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.address = try container.decodeIfPresent(CourieAddressResponse1.self, forKey: .address)
        self.attemptedAt = try container.decodeIfPresent(Int.self, forKey: .attemptedAt)
        self.attempts = try container.decodeIfPresent([CourieStopAttemptResponse1].self, forKey: .attempts)
        self.companyName = try container.decodeIfPresent(String.self, forKey: .companyName)
        self.completedAt = try container.decodeIfPresent(Int.self, forKey: .completedAt)
        self.contactName = try container.decodeIfPresent(String.self, forKey: .contactName)
        self.driver = try container.decodeIfPresent(CourieDriverResponse1.self, forKey: .driver)
        self.driverAnswers = try container.decodeIfPresent([CourieDriverAnswerResponse1].self, forKey: .driverAnswers)
        self.driverStopSequenceNumber = try container.decodeIfPresent(Int.self, forKey: .driverStopSequenceNumber)
        self.due = try container.decodeIfPresent(Int.self, forKey: .due)
        self.instruction = try container.decodeIfPresent(String.self, forKey: .instruction)
        self.locationScans = try container.decodeIfPresent([CourieLocationScanResponse1].self, forKey: .locationScans)
        self.orderId = try container.decodeIfPresent(String.self, forKey: .orderId)
        self.phone = try container.decodeIfPresent(String.self, forKey: .phone)
        self.ready = try container.decodeIfPresent(Int.self, forKey: .ready)
        self.stopSequenceNumber = try container.decodeIfPresent(Int.self, forKey: .stopSequenceNumber)
        self.suite = try container.decodeIfPresent(String.self, forKey: .suite)
        self.type = try container.decode(CourieStopTypeEnum1.self, forKey: .type)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.address, forKey: .address)
        try container.encodeIfPresent(self.attemptedAt, forKey: .attemptedAt)
        try container.encodeIfPresent(self.attempts, forKey: .attempts)
        try container.encodeIfPresent(self.companyName, forKey: .companyName)
        try container.encodeIfPresent(self.completedAt, forKey: .completedAt)
        try container.encodeIfPresent(self.contactName, forKey: .contactName)
        try container.encodeIfPresent(self.driver, forKey: .driver)
        try container.encodeIfPresent(self.driverAnswers, forKey: .driverAnswers)
        try container.encodeIfPresent(self.driverStopSequenceNumber, forKey: .driverStopSequenceNumber)
        try container.encodeIfPresent(self.due, forKey: .due)
        try container.encodeIfPresent(self.instruction, forKey: .instruction)
        try container.encodeIfPresent(self.locationScans, forKey: .locationScans)
        try container.encodeIfPresent(self.orderId, forKey: .orderId)
        try container.encodeIfPresent(self.phone, forKey: .phone)
        try container.encodeIfPresent(self.ready, forKey: .ready)
        try container.encodeIfPresent(self.stopSequenceNumber, forKey: .stopSequenceNumber)
        try container.encodeIfPresent(self.suite, forKey: .suite)
        try container.encode(self.type, forKey: .type)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case address
        case attemptedAt
        case attempts
        case companyName
        case completedAt
        case contactName
        case driver
        case driverAnswers
        case driverStopSequenceNumber
        case due
        case instruction
        case locationScans
        case orderId
        case phone
        case ready
        case stopSequenceNumber
        case suite
        case type
    }
}