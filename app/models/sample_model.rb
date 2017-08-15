# class SampleModel
#   attr_accessor :name, :age
# end

def calculate_tip(subtot, perc)
    tip = subtot.to_f * (perc.to_f/100)
    tip
    tip.round(2)
end

def calculate_total(subtot, tip)
    final = subtot.to_f + tip.to_f
    final
    final.round(2)
end

def individual_total(total, party)
    individual = total.to_f / party.to_f
    individual.round(2)
end



