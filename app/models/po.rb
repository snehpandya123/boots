class Po < ActiveRecord::Base
	attr_accessible  :invoiceno , :pono, :vname,
       :vadd,:podate,:requisitner,:forby,:forto,:terms,
       :name,
      :particular,
       :unit,
      :quantity,
      :total

      validates  :invoiceno , :pono, :vname,
       :vadd,:podate,:requisitner,:forby,:forto,:terms,
       :name,
      :particular,
       :unit,
      :quantity,
      :total, presence: true

  end
