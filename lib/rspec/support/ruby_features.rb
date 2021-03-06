module RSpec
  module Support
    # @api private
    #
    # Provides query methods for ruby features that differ among
    # implementations.
    module RubyFeatures
      def optional_and_splat_args_supported?
        Method.method_defined?(:parameters)
      end
      module_function :optional_and_splat_args_supported?

      def kw_args_supported?
        RUBY_VERSION >= '2.0.0' && RUBY_ENGINE != 'rbx'
      end
      module_function :kw_args_supported?

      def required_kw_args_supported?
        RUBY_VERSION >= '2.1.0' && RUBY_ENGINE != 'rbx'
      end
      module_function :required_kw_args_supported?

      def module_prepends_supported?
        RUBY_VERSION.to_f >= 2.0
      end
      module_function :module_prepends_supported?
    end
  end
end
