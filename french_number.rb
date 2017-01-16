class Number

  #/RSRBX07/exo-pierre/french_number.rb + add self
  def self.spell_in_french num
    units_strings = ["zero", "un", "deux", "trois", "quatre", "cinq", "six", "sept", "huit", "neuf","dix","onze","douze","treize","quatorze","quinze","seize"]
    return units_strings[num] if num < 17

    deci_strings = ["","dix", "vingt", "trente", "quarante", "cinquante", "soixante", "soixante-dix", "quatrevingt", "quatrevingt-dix"]
    return deci_strings[num/10] + " et " + spell_in_french(num % 10) if num == 21 or num == 31 or num == 41 or num == 51 or num == 61
    
    return deci_strings[num/10] + "-" + spell_in_french(num % 10) if (10..99).include? num 
  end

end

