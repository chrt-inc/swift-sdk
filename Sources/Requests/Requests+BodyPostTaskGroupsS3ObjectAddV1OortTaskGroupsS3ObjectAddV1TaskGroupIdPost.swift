import Foundation

extension Requests {
    public struct BodyPostTaskGroupsS3ObjectAddV1OortTaskGroupsS3ObjectAddV1TaskGroupIdPost {
        public let file: FormFile

        public init(
            file: FormFile
        ) {
            self.file = file
        }
    }
}

extension Requests.BodyPostTaskGroupsS3ObjectAddV1OortTaskGroupsS3ObjectAddV1TaskGroupIdPost: MultipartFormDataConvertible {
    var multipartFormFields: [MultipartFormField] {
        [
            .file(file, fieldName: "file")
        ]
    }
}