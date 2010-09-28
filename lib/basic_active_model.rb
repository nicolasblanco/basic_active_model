class BasicActiveModel
  extend ActiveModel::Naming
  include ActiveModel::Validations
  include ActiveModel::MassAssignmentSecurity
  include ActiveModel::Conversion
  
  def persisted?
    false
  end
  
  def initialize(attributes = {})
    if attributes.present?
      sanitize_for_mass_assignment(attributes).each { |k, v| send("#{k}=", v) if respond_to?("#{k}=") }
    end
  end
end

