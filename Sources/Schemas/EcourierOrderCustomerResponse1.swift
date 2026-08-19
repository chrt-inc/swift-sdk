import Foundation

/// The customer an order belongs to.
///
/// This is what the customer check reads. `FindOrder`'s `CustomerCode` filter is
/// undocumented, so the sync asserts `customer_code` here on every
/// hydrated order before persisting it, keeping the mirror to our customer's
/// orders rather than trusting the query.
public struct EcourierOrderCustomerResponse1: Codable, Hashable, Sendable {
    public let customerCode: String?
    public let customerId: String?
    public let name: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        customerCode: String? = nil,
        customerId: String? = nil,
        name: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.customerCode = customerCode
        self.customerId = customerId
        self.name = name
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.customerCode = try container.decodeIfPresent(String.self, forKey: .customerCode)
        self.customerId = try container.decodeIfPresent(String.self, forKey: .customerId)
        self.name = try container.decodeIfPresent(String.self, forKey: .name)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.customerCode, forKey: .customerCode)
        try container.encodeIfPresent(self.customerId, forKey: .customerId)
        try container.encodeIfPresent(self.name, forKey: .name)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case customerCode = "@CustomerCode"
        case customerId = "@CustomerID"
        case name = "@Name"
    }
}