#changed file extensively in order to work
class Module
  def attr_accessor_with_history(attr_name)
    attr_reader attr_name
    attr_reader "#{attr_name}_history"
    class_eval %Q{
      def #{attr_name}=(value)
        @#{attr_name}_history = [] if @#{attr_name}_history.nil?
        @#{attr_name}_history << @#{attr_name}
        @#{attr_name} = value
      end
    }

    class_eval do
      def history(name)
        instance_variable_get("@#{name}_history")
      end
    end
  end
end
