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
  module AccessContextManager
    module Property
      class AccessLevelBasicConditionsDevicePolicyOsConstraints
        attr_reader :minimum_version

        attr_reader :os_type

        def initialize(args = nil, parent_identifier = nil)
          return if args.nil?
          @parent_identifier = parent_identifier
          @minimum_version = args['minimumVersion']
          @os_type = args['osType']
        end

        def to_s
          "#{@parent_identifier} AccessLevelBasicConditionsDevicePolicyOsConstraints"
        end
      end

      class AccessLevelBasicConditionsDevicePolicyOsConstraintsArray
        def self.parse(value, parent_identifier)
          return if value.nil?
          return AccessLevelBasicConditionsDevicePolicyOsConstraints.new(value, parent_identifier) unless value.is_a?(::Array)
          value.map { |v| AccessLevelBasicConditionsDevicePolicyOsConstraints.new(v, parent_identifier) }
        end
      end
    end
  end
end
