//
//  initializeObjects.swift
//  Perfect-App-Template
//
//  Created by Jonathan Guthrie on 2017-02-20.
//	Copyright (C) 2017 PerfectlySoft, Inc.
//
//===----------------------------------------------------------------------===//
//
// This source file is part of the Perfect.org open source project
//
// Copyright (c) 2015 - 2016 PerfectlySoft Inc. and the Perfect project authors
// Licensed under Apache License v2.0
//
// See http://perfect.org/licensing.html for license information
//
//===----------------------------------------------------------------------===//
//

import PerfectLocalAuthentication
import PostgresStORM

extension Utility {
	static func initializeObjects() {

		PostgresConnector.quiet = true

		// Account
		Account.setup()

		// Application
		Application.setup()

		// Access Token
		AccessToken.setup()

		// OAuth2Codes
		OAuth2Codes.setup()

		PostgresConnector.quiet = false
	}
}
