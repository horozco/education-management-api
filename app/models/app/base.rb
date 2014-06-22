module App
  class Base
    attr_reader :created_at, :updated_at

    def initialize(args = {})
      method_strings = methods.map(&:to_s)
      args.each do |attribute, value|
        send("#{attribute}=", value) if method_strings.include?("#{attribute}=")
        instance_variable_set("@#{attribute}", value) if method_strings.include?(attribute.to_s)
      end
    end

    def persisted?
      id.present?
    end

    def touch
      now = Time.now.utc
      @created_at = now if @created_at.nil?
      @updated_at = now
    end

    def ==(other)
      self.id == other.id
    end
  end
end
