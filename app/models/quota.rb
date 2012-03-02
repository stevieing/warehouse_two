class Quota < ActiveRecord::Base
  include ResourceTools

  def self.map_internal_to_external_attributes
    # Internal DB column => External resource method
    {
      :internal_id         => :internal_id,
      :quota_limit         => :quota_limit,
      :request_type        => :request_type,
      :project_internal_id => :project_internal_id,
      :project_uuid        => :project_uuid,
      :project_name        => :project_name,
    }
  end
  
end
