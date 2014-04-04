class NoWhitespaceValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless value.nil?
      record.errors.add(attribute, "can't contain whitespaces") if value.match(/\s+/)
    end
  end
end
