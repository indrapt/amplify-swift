//
// Copyright Amazon.com Inc. or its affiliates.
// All Rights Reserved.
//
// SPDX-License-Identifier: Apache-2.0
//

import XCTest
@testable import Amplify
@testable import AWSCognitoAuthPlugin

class AWSCognitoAuthPluginConfigTests: XCTestCase {

    override func tearDown() async throws {
        await Amplify.reset()
    }

    /// Test Auth configuration with invalid config for auth
    ///
    /// - Given: Given an invalid auth config
    /// - When:
    ///    - I configure auth with the invalid configuration
    /// - Then:
    ///    - I should get an exception.
    ///
    func testThrowsOnMissingConfig() throws {
        let plugin = AWSCognitoAuthPlugin()
        try Amplify.add(plugin: plugin)

        let categoryConfig = AuthCategoryConfiguration(plugins: ["NonExistentPlugin": true])
        let amplifyConfig = AmplifyConfiguration(auth: categoryConfig)
        do {
            try Amplify.configure(amplifyConfig)
            XCTFail("Should have thrown a pluginConfigurationError if not supplied with a plugin-specific config.")
        } catch {
            guard case PluginError.pluginConfigurationError = error else {
                XCTFail("Should have thrown a pluginConfigurationError if not supplied with a plugin-specific config.")
                return
            }
        }

    }

    /// Test Auth configuration with valid config for user pool and identity pool
    ///
    /// - Given: Given valid config for user pool and identity pool
    /// - When:
    ///    - I configure auth with the given configuration
    /// - Then:
    ///    - I should not get any error while configuring auth
    ///
    func testConfigWithUserPoolAndIdentityPool() throws {
        let plugin = AWSCognitoAuthPlugin()
        try Amplify.add(plugin: plugin)

        let categoryConfig = AuthCategoryConfiguration(plugins: [
            "awsCognitoAuthPlugin": [
                "CredentialsProvider": ["CognitoIdentity": ["Default":
                    ["PoolId": "xx",
                     "Region": "us-east-1"]
                    ]],
                "CognitoUserPool": ["Default": [
                    "PoolId": "xx",
                    "Region": "us-east-1",
                    "AppClientId": "xx",
                    "AppClientSecret": "xx"]]
            ]
        ])
        let amplifyConfig = AmplifyConfiguration(auth: categoryConfig)
        do {
            try Amplify.configure(amplifyConfig)
        } catch {
            XCTFail("Should not throw error. \(error)")
        }
    }

    /// Test Auth configuration with valid config for only identity pool
    ///
    /// - Given: Given valid config for only identity pool
    /// - When:
    ///    - I configure auth with the given configuration
    /// - Then:
    ///    - I should not get any error while configuring auth
    ///
    func testConfigWithOnlyIdentityPool() throws {
        let plugin = AWSCognitoAuthPlugin()
        try Amplify.add(plugin: plugin)

        let categoryConfig = AuthCategoryConfiguration(plugins: [
            "awsCognitoAuthPlugin": [
                "CredentialsProvider": ["CognitoIdentity": ["Default":
                    ["PoolId": "cc",
                     "Region": "us-east-1"]
                    ]]
            ]
        ])
        let amplifyConfig = AmplifyConfiguration(auth: categoryConfig)
        do {
            try Amplify.configure(amplifyConfig)
        } catch {
            XCTFail("Should not throw error. \(error)")
        }
    }

    /// Test Auth configuration with valid config for only user pool
    ///
    /// - Given: Given valid config for only user pool
    /// - When:
    ///    - I configure auth with the given configuration
    /// - Then:
    ///    - I should not get any error while configuring auth
    ///
    func testConfigWithOnlyUserPool() throws {
        let plugin = AWSCognitoAuthPlugin()
        try Amplify.add(plugin: plugin)

        let categoryConfig = AuthCategoryConfiguration(plugins: [
            "awsCognitoAuthPlugin": [
                "CognitoUserPool": ["Default": [
                    "PoolId": "xx",
                    "Region": "us-east-1",
                    "AppClientId": "xx",
                    "AppClientSecret": "xx"]]
            ]
        ])
        let amplifyConfig = AmplifyConfiguration(auth: categoryConfig)
        do {
            try Amplify.configure(amplifyConfig)
        } catch {
            XCTFail("Should not throw error. \(error)")
        }
    }

    /// Test Auth configuration with invalid config for user pool and identity pool
    ///
    /// - Given: Given invalid config for user pool and identity pool
    /// - When:
    ///    - I configure auth with the given configuration
    /// - Then:
    ///    - I should get an exception.
    ///
    func testConfigWithInvalidUserPoolAndIdentityPool() throws {
        let plugin = AWSCognitoAuthPlugin()
        try Amplify.add(plugin: plugin)

        let categoryConfig = AuthCategoryConfiguration(plugins: [
            "awsCognitoAuthPlugin": [
                "CredentialsProvider": ["CognitoIdentity": ["Default":
                    ["xx": "xx",
                     "xx2": "us-east-1"]
                    ]],
                "CognitoUserPool": ["Default": [
                    "xx": "xx",
                    "xx2": "us-east-1"
                    ]]
            ]
        ])
        let amplifyConfig = AmplifyConfiguration(auth: categoryConfig)
        do {
            try Amplify.configure(amplifyConfig)
            XCTFail("Should have thrown a AuthError.configuration error if both cognito service config are invalid")
        } catch {
            guard case AuthError.configuration = error else {
                XCTFail("Should have thrown a AuthError.configuration error if both cognito service config are invalid")
                return
            }
        }
    }

    /// Test Auth configuration with nil value
    ///
    /// - Given: Given a nil config for user pool and identity pool
    /// - When:
    ///    - I configure auth with the given configuration
    /// - Then:
    ///    - I should get an exception.
    ///
    func testConfigureFailureForNilConfiguration() throws {
        let plugin = AWSCognitoAuthPlugin()
        do {
            try plugin.configure(using: nil)
            XCTFail("Auth configuration should not succeed")
        } catch {
            guard let pluginError = error as? PluginError,
                case .pluginConfigurationError = pluginError
            else {
                    XCTFail("Should throw invalidConfiguration exception. But received \(error) ")
                    return
            }
        }
    }

    /// Test Auth configuration with valid config for user pool and identity pool, with network preferences
    ///
    /// - Given: Given valid config for user pool and identity pool, and network preferences
    /// - When:
    ///    - I configure auth with the given configuration and network preferences
    /// - Then:
    ///    - I should not get any error while configuring auth
    ///
    func testConfigWithUserPoolAndIdentityPoolWithNetworkPreferences() throws {
        let plugin = AWSCognitoAuthPlugin(
            networkPreferences: .init(
                maxRetryCount: 2,
                timeoutIntervalForRequest: 60,
                timeoutIntervalForResource: 60))
        try Amplify.add(plugin: plugin)

        let categoryConfig = AuthCategoryConfiguration(plugins: [
            "awsCognitoAuthPlugin": [
                "CredentialsProvider": ["CognitoIdentity": ["Default":
                                                                ["PoolId": "xx",
                                                                 "Region": "us-east-1"]
                                                           ]],
                "CognitoUserPool": ["Default": [
                    "PoolId": "xx",
                    "Region": "us-east-1",
                    "AppClientId": "xx",
                    "AppClientSecret": "xx"]]
            ]
        ])
        let amplifyConfig = AmplifyConfiguration(auth: categoryConfig)
        do {
            try Amplify.configure(amplifyConfig)
            
            let escapeHatch = plugin.getEscapeHatch()
            guard case .userPoolAndIdentityPool(let userPoolClient, let identityPoolClient) = escapeHatch else {
                XCTFail("Expected .userPool, got \(escapeHatch)")
                return
            }
            XCTAssertNotNil(userPoolClient)
            XCTAssertNotNil(identityPoolClient)

        } catch {
            XCTFail("Should not throw error. \(error)")
        }
    }
    
    /// Test Auth configuration with valid config for user pool and identity pool, with secure storage preferences
    ///
    /// - Given: Given valid config for user pool and identity pool, and secure storage preferences
    /// - When:
    ///    - I configure auth with the given configuration and secure storage preferences
    /// - Then:
    ///    - I should not get any error while configuring auth
    ///
    func testConfigWithUserPoolAndIdentityPoolWithSecureStoragePreferences() throws {
        let plugin = AWSCognitoAuthPlugin(
            secureStoragePreferences: .init(
                accessGroup: AccessGroup(name: "xx")
            )
        )
        try Amplify.add(plugin: plugin)

        let categoryConfig = AuthCategoryConfiguration(plugins: [
            "awsCognitoAuthPlugin": [
                "CredentialsProvider": ["CognitoIdentity": ["Default":
                                                                ["PoolId": "xx",
                                                                 "Region": "us-east-1"]
                                                           ]],
                "CognitoUserPool": ["Default": [
                    "PoolId": "xx",
                    "Region": "us-east-1",
                    "AppClientId": "xx",
                    "AppClientSecret": "xx"]]
            ]
        ])
        let amplifyConfig = AmplifyConfiguration(auth: categoryConfig)
        do {
            try Amplify.configure(amplifyConfig)
            
            let escapeHatch = plugin.getEscapeHatch()
            guard case .userPoolAndIdentityPool(let userPoolClient, let identityPoolClient) = escapeHatch else {
                XCTFail("Expected .userPool, got \(escapeHatch)")
                return
            }
            XCTAssertNotNil(userPoolClient)
            XCTAssertNotNil(identityPoolClient)

        } catch {
            XCTFail("Should not throw error. \(error)")
        }
    }
    
    /// Test Auth configuration with valid config for user pool and identity pool, with network preferences and secure storage preferences
    ///
    /// - Given: Given valid config for user pool and identity pool, network preferences, and secure storage preferences
    /// - When:
    ///    - I configure auth with the given configuration, network preferences, and secure storage preferences
    /// - Then:
    ///    - I should not get any error while configuring auth
    ///
    func testConfigWithUserPoolAndIdentityPoolWithNetworkPreferencesAndSecureStoragePreferences() throws {
        let plugin = AWSCognitoAuthPlugin(
            networkPreferences: .init(
                maxRetryCount: 2,
                timeoutIntervalForRequest: 60,
                timeoutIntervalForResource: 60),
            secureStoragePreferences: .init(
                accessGroup: AccessGroup(name: "xx")
            )
        )
        try Amplify.add(plugin: plugin)

        let categoryConfig = AuthCategoryConfiguration(plugins: [
            "awsCognitoAuthPlugin": [
                "CredentialsProvider": ["CognitoIdentity": ["Default":
                                                                ["PoolId": "xx",
                                                                 "Region": "us-east-1"]
                                                           ]],
                "CognitoUserPool": ["Default": [
                    "PoolId": "xx",
                    "Region": "us-east-1",
                    "AppClientId": "xx",
                    "AppClientSecret": "xx"]]
            ]
        ])
        let amplifyConfig = AmplifyConfiguration(auth: categoryConfig)
        do {
            try Amplify.configure(amplifyConfig)
            
            let escapeHatch = plugin.getEscapeHatch()
            guard case .userPoolAndIdentityPool(let userPoolClient, let identityPoolClient) = escapeHatch else {
                XCTFail("Expected .userPool, got \(escapeHatch)")
                return
            }
            XCTAssertNotNil(userPoolClient)
            XCTAssertNotNil(identityPoolClient)

        } catch {
            XCTFail("Should not throw error. \(error)")
        }
    }

    /// Test that the Auth plugin emits `InternalConfigureAuth` that is used by the Logging Category
    ///
    /// - Given: Given a valid config
    /// - When:
    ///    - I configure auth with the given configuration
    /// - Then:
    ///    - I should receive `InternalConfigureAuth` Hub event
    ///
    func testEmittingInternalConfigureAuthHubEvent() throws {
        let expectation = expectation(description: "conifguration should complete")
        let subscription = Amplify.Hub.publisher(for: .auth).sink { payload in

            if payload.eventName == "InternalConfigureAuth" {
                expectation.fulfill()
            }
        }
        let plugin = AWSCognitoAuthPlugin()
        try Amplify.add(plugin: plugin)

        let categoryConfig = AuthCategoryConfiguration(plugins: [
            "awsCognitoAuthPlugin": [
                "CredentialsProvider": [
                    "CognitoIdentity": [
                        "Default": [
                            "PoolId": "cc",
                             "Region": "us-east-1"
                        ]
                    ]
                ]
            ]
        ])
        let amplifyConfig = AmplifyConfiguration(auth: categoryConfig)
        do {
            try Amplify.configure(amplifyConfig)
        } catch {
            XCTFail("Should not throw error. \(error)")
        }
        wait(for: [expectation], timeout: 5.0)
        subscription.cancel()
    }

}
