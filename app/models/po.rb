class Po < ActiveRecord::Base

      belongs_to :requisition
      has_many :poapps
     
	attr_accessible  :invoiceno , :pono, :vname,
       :vadd,:podate,:requisitner,:forby,:forto,:terms,
       :name,
      :particular,
       :unit,
      :quantity,
      :total,
      :requisition_id,
      :requisition_attributes

      validates  :invoiceno , :pono, :vname,
       :vadd,:podate,:requisitner,:forby,:forto,:terms,
       :name,
      :particular,
       :unit,
      :quantity,
      :total, :requisition_id, presence: true

  end
