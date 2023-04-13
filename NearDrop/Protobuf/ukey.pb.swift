// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: ukey.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

// Copyright 2020 Google LLC
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     https://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

enum Securegcm_Ukey2HandshakeCipher: SwiftProtobuf.Enum {
  typealias RawValue = Int
  case reserved // = 0

  /// NIST P-256 used for ECDH, SHA512 used for
  case p256Sha512 // = 100

  /// commitment
  case curve25519Sha512 // = 200

  init() {
    self = .reserved
  }

  init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .reserved
    case 100: self = .p256Sha512
    case 200: self = .curve25519Sha512
    default: return nil
    }
  }

  var rawValue: Int {
    switch self {
    case .reserved: return 0
    case .p256Sha512: return 100
    case .curve25519Sha512: return 200
    }
  }

}

#if swift(>=4.2)

extension Securegcm_Ukey2HandshakeCipher: CaseIterable {
  // Support synthesized by the compiler.
}

#endif  // swift(>=4.2)

struct Securegcm_Ukey2Message {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Identifies message type
  var messageType: Securegcm_Ukey2Message.TypeEnum {
    get {return _messageType ?? .unknownDoNotUse}
    set {_messageType = newValue}
  }
  /// Returns true if `messageType` has been explicitly set.
  var hasMessageType: Bool {return self._messageType != nil}
  /// Clears the value of `messageType`. Subsequent reads from it will return its default value.
  mutating func clearMessageType() {self._messageType = nil}

  /// Actual message, to be parsed according to
  var messageData: Data {
    get {return _messageData ?? Data()}
    set {_messageData = newValue}
  }
  /// Returns true if `messageData` has been explicitly set.
  var hasMessageData: Bool {return self._messageData != nil}
  /// Clears the value of `messageData`. Subsequent reads from it will return its default value.
  mutating func clearMessageData() {self._messageData = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  enum TypeEnum: SwiftProtobuf.Enum {
    typealias RawValue = Int
    case unknownDoNotUse // = 0
    case alert // = 1
    case clientInit // = 2
    case serverInit // = 3
    case clientFinish // = 4

    init() {
      self = .unknownDoNotUse
    }

    init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .unknownDoNotUse
      case 1: self = .alert
      case 2: self = .clientInit
      case 3: self = .serverInit
      case 4: self = .clientFinish
      default: return nil
      }
    }

    var rawValue: Int {
      switch self {
      case .unknownDoNotUse: return 0
      case .alert: return 1
      case .clientInit: return 2
      case .serverInit: return 3
      case .clientFinish: return 4
      }
    }

  }

  init() {}

  fileprivate var _messageType: Securegcm_Ukey2Message.TypeEnum? = nil
  fileprivate var _messageData: Data? = nil
}

#if swift(>=4.2)

extension Securegcm_Ukey2Message.TypeEnum: CaseIterable {
  // Support synthesized by the compiler.
}

#endif  // swift(>=4.2)

struct Securegcm_Ukey2Alert {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var type: Securegcm_Ukey2Alert.AlertType {
    get {return _type ?? .badMessage}
    set {_type = newValue}
  }
  /// Returns true if `type` has been explicitly set.
  var hasType: Bool {return self._type != nil}
  /// Clears the value of `type`. Subsequent reads from it will return its default value.
  mutating func clearType() {self._type = nil}

  var errorMessage: String {
    get {return _errorMessage ?? String()}
    set {_errorMessage = newValue}
  }
  /// Returns true if `errorMessage` has been explicitly set.
  var hasErrorMessage: Bool {return self._errorMessage != nil}
  /// Clears the value of `errorMessage`. Subsequent reads from it will return its default value.
  mutating func clearErrorMessage() {self._errorMessage = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  enum AlertType: SwiftProtobuf.Enum {
    typealias RawValue = Int

    /// Framing errors
    case badMessage // = 1

    /// message_type has an undefined value
    case badMessageType // = 2

    /// message_type received does not correspond to
    case incorrectMessage // = 3

    /// expected type at this stage of the protocol
    case badMessageData // = 4

    /// ClientInit and ServerInit errors
    case badVersion // = 100

    /// suitable version to speak with client.
    case badRandom // = 101

    /// length
    case badHandshakeCipher // = 102

    /// The next protocol is missing, unknown, or
    case badNextProtocol // = 103

    /// unsupported
    case badPublicKey // = 104

    /// Other errors
    case internalError // = 200

    init() {
      self = .badMessage
    }

    init?(rawValue: Int) {
      switch rawValue {
      case 1: self = .badMessage
      case 2: self = .badMessageType
      case 3: self = .incorrectMessage
      case 4: self = .badMessageData
      case 100: self = .badVersion
      case 101: self = .badRandom
      case 102: self = .badHandshakeCipher
      case 103: self = .badNextProtocol
      case 104: self = .badPublicKey
      case 200: self = .internalError
      default: return nil
      }
    }

    var rawValue: Int {
      switch self {
      case .badMessage: return 1
      case .badMessageType: return 2
      case .incorrectMessage: return 3
      case .badMessageData: return 4
      case .badVersion: return 100
      case .badRandom: return 101
      case .badHandshakeCipher: return 102
      case .badNextProtocol: return 103
      case .badPublicKey: return 104
      case .internalError: return 200
      }
    }

  }

  init() {}

  fileprivate var _type: Securegcm_Ukey2Alert.AlertType? = nil
  fileprivate var _errorMessage: String? = nil
}

#if swift(>=4.2)

extension Securegcm_Ukey2Alert.AlertType: CaseIterable {
  // Support synthesized by the compiler.
}

#endif  // swift(>=4.2)

struct Securegcm_Ukey2ClientInit {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// highest supported version for rollback
  var version: Int32 {
    get {return _version ?? 0}
    set {_version = newValue}
  }
  /// Returns true if `version` has been explicitly set.
  var hasVersion: Bool {return self._version != nil}
  /// Clears the value of `version`. Subsequent reads from it will return its default value.
  mutating func clearVersion() {self._version = nil}

  /// protection
  var random: Data {
    get {return _random ?? Data()}
    set {_random = newValue}
  }
  /// Returns true if `random` has been explicitly set.
  var hasRandom: Bool {return self._random != nil}
  /// Clears the value of `random`. Subsequent reads from it will return its default value.
  mutating func clearRandom() {self._random = nil}

  var cipherCommitments: [Securegcm_Ukey2ClientInit.CipherCommitment] = []

  /// Next protocol that the client wants to speak.
  var nextProtocol: String {
    get {return _nextProtocol ?? String()}
    set {_nextProtocol = newValue}
  }
  /// Returns true if `nextProtocol` has been explicitly set.
  var hasNextProtocol: Bool {return self._nextProtocol != nil}
  /// Clears the value of `nextProtocol`. Subsequent reads from it will return its default value.
  mutating func clearNextProtocol() {self._nextProtocol = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  /// One commitment (hash of ClientFinished containing public key) per supported
  /// cipher
  struct CipherCommitment {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    var handshakeCipher: Securegcm_Ukey2HandshakeCipher {
      get {return _handshakeCipher ?? .reserved}
      set {_handshakeCipher = newValue}
    }
    /// Returns true if `handshakeCipher` has been explicitly set.
    var hasHandshakeCipher: Bool {return self._handshakeCipher != nil}
    /// Clears the value of `handshakeCipher`. Subsequent reads from it will return its default value.
    mutating func clearHandshakeCipher() {self._handshakeCipher = nil}

    var commitment: Data {
      get {return _commitment ?? Data()}
      set {_commitment = newValue}
    }
    /// Returns true if `commitment` has been explicitly set.
    var hasCommitment: Bool {return self._commitment != nil}
    /// Clears the value of `commitment`. Subsequent reads from it will return its default value.
    mutating func clearCommitment() {self._commitment = nil}

    var unknownFields = SwiftProtobuf.UnknownStorage()

    init() {}

    fileprivate var _handshakeCipher: Securegcm_Ukey2HandshakeCipher? = nil
    fileprivate var _commitment: Data? = nil
  }

  init() {}

  fileprivate var _version: Int32? = nil
  fileprivate var _random: Data? = nil
  fileprivate var _nextProtocol: String? = nil
}

struct Securegcm_Ukey2ServerInit {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// highest supported version for rollback
  var version: Int32 {
    get {return _version ?? 0}
    set {_version = newValue}
  }
  /// Returns true if `version` has been explicitly set.
  var hasVersion: Bool {return self._version != nil}
  /// Clears the value of `version`. Subsequent reads from it will return its default value.
  mutating func clearVersion() {self._version = nil}

  /// protection
  var random: Data {
    get {return _random ?? Data()}
    set {_random = newValue}
  }
  /// Returns true if `random` has been explicitly set.
  var hasRandom: Bool {return self._random != nil}
  /// Clears the value of `random`. Subsequent reads from it will return its default value.
  mutating func clearRandom() {self._random = nil}

  /// Selected Cipher and corresponding public key
  var handshakeCipher: Securegcm_Ukey2HandshakeCipher {
    get {return _handshakeCipher ?? .reserved}
    set {_handshakeCipher = newValue}
  }
  /// Returns true if `handshakeCipher` has been explicitly set.
  var hasHandshakeCipher: Bool {return self._handshakeCipher != nil}
  /// Clears the value of `handshakeCipher`. Subsequent reads from it will return its default value.
  mutating func clearHandshakeCipher() {self._handshakeCipher = nil}

  var publicKey: Data {
    get {return _publicKey ?? Data()}
    set {_publicKey = newValue}
  }
  /// Returns true if `publicKey` has been explicitly set.
  var hasPublicKey: Bool {return self._publicKey != nil}
  /// Clears the value of `publicKey`. Subsequent reads from it will return its default value.
  mutating func clearPublicKey() {self._publicKey = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _version: Int32? = nil
  fileprivate var _random: Data? = nil
  fileprivate var _handshakeCipher: Securegcm_Ukey2HandshakeCipher? = nil
  fileprivate var _publicKey: Data? = nil
}

struct Securegcm_Ukey2ClientFinished {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// public key matching selected handshake
  var publicKey: Data {
    get {return _publicKey ?? Data()}
    set {_publicKey = newValue}
  }
  /// Returns true if `publicKey` has been explicitly set.
  var hasPublicKey: Bool {return self._publicKey != nil}
  /// Clears the value of `publicKey`. Subsequent reads from it will return its default value.
  mutating func clearPublicKey() {self._publicKey = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _publicKey: Data? = nil
}

#if swift(>=5.5) && canImport(_Concurrency)
extension Securegcm_Ukey2HandshakeCipher: @unchecked Sendable {}
extension Securegcm_Ukey2Message: @unchecked Sendable {}
extension Securegcm_Ukey2Message.TypeEnum: @unchecked Sendable {}
extension Securegcm_Ukey2Alert: @unchecked Sendable {}
extension Securegcm_Ukey2Alert.AlertType: @unchecked Sendable {}
extension Securegcm_Ukey2ClientInit: @unchecked Sendable {}
extension Securegcm_Ukey2ClientInit.CipherCommitment: @unchecked Sendable {}
extension Securegcm_Ukey2ServerInit: @unchecked Sendable {}
extension Securegcm_Ukey2ClientFinished: @unchecked Sendable {}
#endif  // swift(>=5.5) && canImport(_Concurrency)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "securegcm"

extension Securegcm_Ukey2HandshakeCipher: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "RESERVED"),
    100: .same(proto: "P256_SHA512"),
    200: .same(proto: "CURVE25519_SHA512"),
  ]
}

extension Securegcm_Ukey2Message: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".Ukey2Message"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "message_type"),
    2: .standard(proto: "message_data"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularEnumField(value: &self._messageType) }()
      case 2: try { try decoder.decodeSingularBytesField(value: &self._messageData) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._messageType {
      try visitor.visitSingularEnumField(value: v, fieldNumber: 1)
    } }()
    try { if let v = self._messageData {
      try visitor.visitSingularBytesField(value: v, fieldNumber: 2)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Securegcm_Ukey2Message, rhs: Securegcm_Ukey2Message) -> Bool {
    if lhs._messageType != rhs._messageType {return false}
    if lhs._messageData != rhs._messageData {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Securegcm_Ukey2Message.TypeEnum: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "UNKNOWN_DO_NOT_USE"),
    1: .same(proto: "ALERT"),
    2: .same(proto: "CLIENT_INIT"),
    3: .same(proto: "SERVER_INIT"),
    4: .same(proto: "CLIENT_FINISH"),
  ]
}

extension Securegcm_Ukey2Alert: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".Ukey2Alert"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "type"),
    2: .standard(proto: "error_message"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularEnumField(value: &self._type) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self._errorMessage) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._type {
      try visitor.visitSingularEnumField(value: v, fieldNumber: 1)
    } }()
    try { if let v = self._errorMessage {
      try visitor.visitSingularStringField(value: v, fieldNumber: 2)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Securegcm_Ukey2Alert, rhs: Securegcm_Ukey2Alert) -> Bool {
    if lhs._type != rhs._type {return false}
    if lhs._errorMessage != rhs._errorMessage {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Securegcm_Ukey2Alert.AlertType: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "BAD_MESSAGE"),
    2: .same(proto: "BAD_MESSAGE_TYPE"),
    3: .same(proto: "INCORRECT_MESSAGE"),
    4: .same(proto: "BAD_MESSAGE_DATA"),
    100: .same(proto: "BAD_VERSION"),
    101: .same(proto: "BAD_RANDOM"),
    102: .same(proto: "BAD_HANDSHAKE_CIPHER"),
    103: .same(proto: "BAD_NEXT_PROTOCOL"),
    104: .same(proto: "BAD_PUBLIC_KEY"),
    200: .same(proto: "INTERNAL_ERROR"),
  ]
}

extension Securegcm_Ukey2ClientInit: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".Ukey2ClientInit"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "version"),
    2: .same(proto: "random"),
    3: .standard(proto: "cipher_commitments"),
    4: .standard(proto: "next_protocol"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularInt32Field(value: &self._version) }()
      case 2: try { try decoder.decodeSingularBytesField(value: &self._random) }()
      case 3: try { try decoder.decodeRepeatedMessageField(value: &self.cipherCommitments) }()
      case 4: try { try decoder.decodeSingularStringField(value: &self._nextProtocol) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._version {
      try visitor.visitSingularInt32Field(value: v, fieldNumber: 1)
    } }()
    try { if let v = self._random {
      try visitor.visitSingularBytesField(value: v, fieldNumber: 2)
    } }()
    if !self.cipherCommitments.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.cipherCommitments, fieldNumber: 3)
    }
    try { if let v = self._nextProtocol {
      try visitor.visitSingularStringField(value: v, fieldNumber: 4)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Securegcm_Ukey2ClientInit, rhs: Securegcm_Ukey2ClientInit) -> Bool {
    if lhs._version != rhs._version {return false}
    if lhs._random != rhs._random {return false}
    if lhs.cipherCommitments != rhs.cipherCommitments {return false}
    if lhs._nextProtocol != rhs._nextProtocol {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Securegcm_Ukey2ClientInit.CipherCommitment: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = Securegcm_Ukey2ClientInit.protoMessageName + ".CipherCommitment"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "handshake_cipher"),
    2: .same(proto: "commitment"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularEnumField(value: &self._handshakeCipher) }()
      case 2: try { try decoder.decodeSingularBytesField(value: &self._commitment) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._handshakeCipher {
      try visitor.visitSingularEnumField(value: v, fieldNumber: 1)
    } }()
    try { if let v = self._commitment {
      try visitor.visitSingularBytesField(value: v, fieldNumber: 2)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Securegcm_Ukey2ClientInit.CipherCommitment, rhs: Securegcm_Ukey2ClientInit.CipherCommitment) -> Bool {
    if lhs._handshakeCipher != rhs._handshakeCipher {return false}
    if lhs._commitment != rhs._commitment {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Securegcm_Ukey2ServerInit: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".Ukey2ServerInit"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "version"),
    2: .same(proto: "random"),
    3: .standard(proto: "handshake_cipher"),
    4: .standard(proto: "public_key"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularInt32Field(value: &self._version) }()
      case 2: try { try decoder.decodeSingularBytesField(value: &self._random) }()
      case 3: try { try decoder.decodeSingularEnumField(value: &self._handshakeCipher) }()
      case 4: try { try decoder.decodeSingularBytesField(value: &self._publicKey) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._version {
      try visitor.visitSingularInt32Field(value: v, fieldNumber: 1)
    } }()
    try { if let v = self._random {
      try visitor.visitSingularBytesField(value: v, fieldNumber: 2)
    } }()
    try { if let v = self._handshakeCipher {
      try visitor.visitSingularEnumField(value: v, fieldNumber: 3)
    } }()
    try { if let v = self._publicKey {
      try visitor.visitSingularBytesField(value: v, fieldNumber: 4)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Securegcm_Ukey2ServerInit, rhs: Securegcm_Ukey2ServerInit) -> Bool {
    if lhs._version != rhs._version {return false}
    if lhs._random != rhs._random {return false}
    if lhs._handshakeCipher != rhs._handshakeCipher {return false}
    if lhs._publicKey != rhs._publicKey {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Securegcm_Ukey2ClientFinished: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".Ukey2ClientFinished"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "public_key"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularBytesField(value: &self._publicKey) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every if/case branch local when no optimizations
    // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
    // https://github.com/apple/swift-protobuf/issues/1182
    try { if let v = self._publicKey {
      try visitor.visitSingularBytesField(value: v, fieldNumber: 1)
    } }()
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Securegcm_Ukey2ClientFinished, rhs: Securegcm_Ukey2ClientFinished) -> Bool {
    if lhs._publicKey != rhs._publicKey {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
