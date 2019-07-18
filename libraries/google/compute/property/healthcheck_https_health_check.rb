# frozen_string_literal: false

# ----------------------------------------------------------------------------
#
#     ***     AUTO GENERATED CODE    ***    AUTO GENERATED CODE     ***
#
# ----------------------------------------------------------------------------
#
#     This file is automatically generated by Magic Modules and manual
#     changes will be clobbered when the file is regenerated.
#
#     Please read more about how to change this file in README.md and
#     CONTRIBUTING.md located at the root of this package.
#
# ----------------------------------------------------------------------------
module GoogleInSpec
  module Compute
    module Property
      class HealthCheckHttpsHealthCheck
        attr_reader :host

        attr_reader :request_path

        attr_reader :response

        attr_reader :port

        attr_reader :port_name

        attr_reader :proxy_header

        attr_reader :port_specification

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @host = args['host']
          @request_path = args['requestPath']
          @response = args['response']
          @port = args['port']
          @port_name = args['portName']
          @proxy_header = args['proxyHeader']
          @port_specification = args['portSpecification']
        end

        def to_s
          "#{@parent_identifier} HealthCheckHttpsHealthCheck"
        end
      end
    end
  end
end
