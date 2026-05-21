import Foundation

extension Requests {
    public struct BodyPostDriverComplianceDocumentsS3ObjectAddV1ShippingDriversComplianceDocumentsS3ObjectAddV1DriverComplianceDocumentIdPost {
        public let file: FormFile

        public init(
            file: FormFile
        ) {
            self.file = file
        }
    }
}

extension Requests.BodyPostDriverComplianceDocumentsS3ObjectAddV1ShippingDriversComplianceDocumentsS3ObjectAddV1DriverComplianceDocumentIdPost: MultipartFormDataConvertible {
    var multipartFormFields: [MultipartFormField] {
        [
            .file(file, fieldName: "file")
        ]
    }
}