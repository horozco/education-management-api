class ApiConstraints
  def initialize(options)
    @version, @default = options.values_at(:version, :default)
  end

  def matches?(req)
    @default || req.headers['Accept'].include?("application/vnd.example.v#{@version}")
  end
end
