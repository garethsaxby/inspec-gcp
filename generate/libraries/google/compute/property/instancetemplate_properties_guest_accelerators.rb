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
      class InstanceTemplatePropertiesGuestAccelerators
        attr_reader :arguments

        attr_reader :accelerator_count

        attr_reader :accelerator_type

        def initialize(arguments = nil, parent_identifier = nil)
          @arguments = arguments
          return if arguments.nil?
          @parent_identifier = parent_identifier
          @accelerator_count = arguments['acceleratorCount']
          @accelerator_type = arguments['acceleratorType']
        end

        def to_s
          "#{@parent_identifier} InstanceTemplatePropertiesGuestAccelerators"
        end

        def self.un_parse(item, current_path)
          return if item.nil?
          way_to_parse = {
            'accelerator_count' => ->(x, path) { x.nil? ? [] : ["its('#{path}.accelerator_count') { should cmp #{x.inspect} }"] },
            'accelerator_type' => ->(x, path) { x.nil? ? [] : ["its('#{path}.accelerator_type') { should cmp #{x.inspect} }"] },
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

      class InstanceTemplatePropertiesGuestAcceleratorsArray
        def self.parse(value, parent_identifier)
          return if value.nil?
          return InstanceTemplatePropertiesGuestAccelerators.new(value, parent_identifier) unless value.is_a?(::Array)
          value.map { |v| InstanceTemplatePropertiesGuestAccelerators.new(v, parent_identifier) }
        end

        def self.un_parse(arr, path)
          return if arr.nil?
          value.map { |v| InstanceTemplatePropertiesGuestAccelerators.un_parse(v, path) }
        end
      end
    end
  end
end
