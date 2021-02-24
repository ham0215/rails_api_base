Rails.application.configure do
  return if Rails.env.test?

  config.lograge.enabled = true
  config.lograge.keep_original_rails_log = true
  config.lograge.logger = ActiveSupport::Logger.new "#{Rails.root}/log/lograge_#{Rails.env}.log"
  config.lograge.formatter = Lograge::Formatters::Json.new
=begin
  config.lograge.custom_options = lambda do |event|
    time = Time.current
    timestamp = { time: time.iso8601, seconds: time.to_i, nanos: time.nsec }

    if event.payload[:exception]
      exception = {
        exception: event.payload[:exception],
        exception_object: event.payload[:exception_object],
        exception_backtrace: event.payload[:exception_object].try(:backtrace)[0..9],
      }
      severity = :ERROR
    else
      severity = :INFO
    end

    {
      timestamp: timestamp,
      params: event.payload[:params],
      exception: exception,
      severity: severity,
    }
  end
=end
end
