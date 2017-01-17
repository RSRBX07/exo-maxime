class Fixself

  def in_french
    units_strings = ["zero", "un", "deux", "trois", "quatre", "cinq", "six", "sept", "huit", "neuf","dix","onze","douze","treize","quatorze","quinze","seize"]
    return units_strings[self] if self < 17

    deci_strings = ["","dix", "vingt", "trente", "quarante", "cinquante", "soixante", "soixante-dix", "quatrevingt", "quatrevingt-dix"]
    return deci_strings[self/10] + " et " + (self % 10).spell_in_french if self == 21 or self == 31 or self == 41 or self == 51 or self == 61
    
    return deci_strings[self/10] + "-" + (self % 10).spell_in_french if (10..99).include? self 
  end
end


