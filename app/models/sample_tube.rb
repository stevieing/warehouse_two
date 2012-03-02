class SampleTube < ActiveRecord::Base
  include ResourceTools

  def self.map_internal_to_external_attributes
    # Internal DB column => External resource method
    {
      :internal_id             => :id,
      :name                    => :name,
      :barcode                 => :barcode,
      :barcode_prefix          => :barcode_prefix,
      :state                   => :qc_state,
      :closed                  => :closed,
      :two_dimensional_barcode => :two_dimensional_barcode,
      :concentration           => :concentration,
      :volume                  => :volume,
      :sample_uuid             => :sample_uuid,
      :sample_internal_id      => :sample_internal_id,
      :sample_name             => :sample_name,
      :scanned_in_date         => :scanned_in_date
    }
  end

end
