# frozen_string_literal: true

# Be sure to restart your server when you modify this file.

# A wrapper for MailChimp API 3.0 and Export API
Gibbon::Request.api_key = ENV["MC_API_KEY"]
Gibbon::Request.symbolize_keys = true
Gibbon::Request.throws_exceptions = false
Gibbon::Request.timeout = 15
