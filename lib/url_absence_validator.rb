class UrlAbsenceValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    record.errors.add(attribute, "can't containt URLs") unless value.nil? || URI::extract(value).empty?
  end
end
