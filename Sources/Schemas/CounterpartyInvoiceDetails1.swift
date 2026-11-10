import Foundation

public struct CounterpartyInvoiceDetails1: Codable, Hashable, Sendable {
    public let billFrom: CounterpartyInvoiceAddressBlock1?
    public let billTo: CounterpartyInvoiceAddressBlock1?
    public let invoiceFrequency: CounterpartyInvoiceFrequencyEnum1?
    public let invoicePeriodNotes: String?
    public let invoiceRecipients: [CounterpartyInvoiceRecipient1]?
    public let label: String
    public let notes: String?
    public let offChrtReferenceId: String?
    public let paymentInstructions: String?
    public let paymentTermsNetDays: Int?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        billFrom: CounterpartyInvoiceAddressBlock1? = nil,
        billTo: CounterpartyInvoiceAddressBlock1? = nil,
        invoiceFrequency: CounterpartyInvoiceFrequencyEnum1? = nil,
        invoicePeriodNotes: String? = nil,
        invoiceRecipients: [CounterpartyInvoiceRecipient1]? = nil,
        label: String,
        notes: String? = nil,
        offChrtReferenceId: String? = nil,
        paymentInstructions: String? = nil,
        paymentTermsNetDays: Int? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.billFrom = billFrom
        self.billTo = billTo
        self.invoiceFrequency = invoiceFrequency
        self.invoicePeriodNotes = invoicePeriodNotes
        self.invoiceRecipients = invoiceRecipients
        self.label = label
        self.notes = notes
        self.offChrtReferenceId = offChrtReferenceId
        self.paymentInstructions = paymentInstructions
        self.paymentTermsNetDays = paymentTermsNetDays
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.billFrom = try container.decodeIfPresent(CounterpartyInvoiceAddressBlock1.self, forKey: .billFrom)
        self.billTo = try container.decodeIfPresent(CounterpartyInvoiceAddressBlock1.self, forKey: .billTo)
        self.invoiceFrequency = try container.decodeIfPresent(CounterpartyInvoiceFrequencyEnum1.self, forKey: .invoiceFrequency)
        self.invoicePeriodNotes = try container.decodeIfPresent(String.self, forKey: .invoicePeriodNotes)
        self.invoiceRecipients = try container.decodeIfPresent([CounterpartyInvoiceRecipient1].self, forKey: .invoiceRecipients)
        self.label = try container.decode(String.self, forKey: .label)
        self.notes = try container.decodeIfPresent(String.self, forKey: .notes)
        self.offChrtReferenceId = try container.decodeIfPresent(String.self, forKey: .offChrtReferenceId)
        self.paymentInstructions = try container.decodeIfPresent(String.self, forKey: .paymentInstructions)
        self.paymentTermsNetDays = try container.decodeIfPresent(Int.self, forKey: .paymentTermsNetDays)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.billFrom, forKey: .billFrom)
        try container.encodeIfPresent(self.billTo, forKey: .billTo)
        try container.encodeIfPresent(self.invoiceFrequency, forKey: .invoiceFrequency)
        try container.encodeIfPresent(self.invoicePeriodNotes, forKey: .invoicePeriodNotes)
        try container.encodeIfPresent(self.invoiceRecipients, forKey: .invoiceRecipients)
        try container.encode(self.label, forKey: .label)
        try container.encodeIfPresent(self.notes, forKey: .notes)
        try container.encodeIfPresent(self.offChrtReferenceId, forKey: .offChrtReferenceId)
        try container.encodeIfPresent(self.paymentInstructions, forKey: .paymentInstructions)
        try container.encodeIfPresent(self.paymentTermsNetDays, forKey: .paymentTermsNetDays)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case billFrom = "bill_from"
        case billTo = "bill_to"
        case invoiceFrequency = "invoice_frequency"
        case invoicePeriodNotes = "invoice_period_notes"
        case invoiceRecipients = "invoice_recipients"
        case label
        case notes
        case offChrtReferenceId = "off_chrt_reference_id"
        case paymentInstructions = "payment_instructions"
        case paymentTermsNetDays = "payment_terms_net_days"
    }
}