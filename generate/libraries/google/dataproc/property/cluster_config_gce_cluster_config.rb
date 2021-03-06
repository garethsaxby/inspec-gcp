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
  module Dataproc
    module Property
      class ClusterConfigGceClusterConfig
        attr_reader :arguments

        attr_reader :zone_uri

        attr_reader :network_uri

        attr_reader :subnetwork_uri

        attr_reader :internal_ip_only

        attr_reader :service_account_scopes

        attr_reader :tags

        attr_reader :metadata

        def initialize(arguments = nil, parent_identifier = nil)
          @arguments = arguments
          return if arguments.nil?
          @parent_identifier = parent_identifier
          @zone_uri = arguments['zoneUri']
          @network_uri = arguments['networkUri']
          @subnetwork_uri = arguments['subnetworkUri']
          @internal_ip_only = arguments['internalIpOnly']
          @service_account_scopes = arguments['serviceAccountScopes']
          @tags = arguments['tags']
          @metadata = arguments['metadata']
        end

        def to_s
          "#{@parent_identifier} ClusterConfigGceClusterConfig"
        end

        def self.un_parse(item, current_path)
          return if item.nil?
          way_to_parse = {
            'zone_uri' => ->(x, path) { x.nil? ? [] : ["its('#{path}.zone_uri') { should cmp #{x.inspect} }"] },
            'network_uri' => ->(x, path) { x.nil? ? [] : ["its('#{path}.network_uri') { should cmp #{x.inspect} }"] },
            'subnetwork_uri' => ->(x, path) { x.nil? ? [] : ["its('#{path}.subnetwork_uri') { should cmp #{x.inspect} }"] },
            'internal_ip_only' => ->(x, path) { x.nil? ? [] : ["its('#{path}.internal_ip_only') { should cmp #{x.inspect} }"] },
            'service_account_scopes' => ->(x, path) { x.nil? ? [] : x.map { |single| "its('#{path}.service_account_scopes') { should include #{single.inspect} }" } },
            'tags' => ->(x, path) { x.nil? ? [] : x.map { |single| "its('#{path}.tags') { should include #{single.inspect} }" } },
            'metadata' => ->(x, path) { x.nil? ? [] : x.map { |k, v| "its('#{path}.metadata') { should include(#{k.inspect} => #{v.inspect}) }" } },
          }
          way_to_parse.map do |k, v|
            v.call(item.method(k).call, current_path)
          end
        end

        def to_json(*_args)
          @arguments.to_json
        end

        # other is a string representation of this object
        def ==(other)
          @arguments == JSON.parse(other)
        end
      end
    end
  end
end
