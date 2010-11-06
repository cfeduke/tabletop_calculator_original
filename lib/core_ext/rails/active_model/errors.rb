module ActiveModel
  class Errors
    def full_message_per_field
      messages_per_field = []
      handled_attributes = []

      each do |attribute, messages|
        next if handled_attributes.include? attribute
        messages = Array.wrap(messages)
        next if messages.empty?

        if attribute == :base
          messages_per_field << messages.first
        else
          attr_name = attribute.to_s.gsub('.', '_').humanize
          attr_name = @base.class.human_attribute_name(attribute, :default => attr_name)
          options = { :default => "%{attribute} %{message}", :attribute => attr_name }

          messages_per_field << I18n.t(:"errors.format", options.merge(:message => messages.first))
        end

        handled_attributes << attribute
      end

      messages_per_field
    end
  end
end