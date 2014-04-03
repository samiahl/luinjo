class HttpUrlValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    record.errors.add(:url, "has to be a valid HTTP scheme url") if URI::extract(value, ["http", "https"]).empty?
  end
end
