# Class to convert from the inputted temperature and unit to the target
class Convert
  # Sets the constants so that a constant can be edited in one location
  C_TO_F_CONVERSION1  = 1.8
  C_TO_F_CONVERSION2  = 32
  K_TO_F_CONVERSION1  = 1.8
  K_TO_F_CONVERSION2  = 459.67
  R_TO_F_CONVERSION   = 459.67
  F_TO_C_CONVERSION1  = 32
  F_TO_C_CONVERSION2  = 1.8
  K_TO_C_CONVERSION   = 273.15
  R_TO_C_CONVERSION1  = 491.67
  R_TO_C_CONVERSION2  = 1.8
  F_TO_K_CONVERSION1  = 32
  F_TO_K_CONVERSION2  = 1.8
  F_TO_K_CONVERSION3  = 273.15
  C_TO_K_CONVERSION   = 273.15
  R_TO_K_CONVERSION   = 1.8
  F_TO_R_CONVERSION   = 459.67
  C_TO_R_CONVERSION1  = 273.15
  C_TO_R_CONVERSION2  = 1.8
  K_TO_R_CONVERSION   = 1.8
  
  # The conversions to farenheit
  def Farenheit(intemp, inunit)
    if inunit == 'c'
      ((intemp * C_TO_F_CONVERSION1) + C_TO_F_CONVERSION2)
    elsif inunit == 'k'
      ((intemp * K_TO_F_CONVERSION1) - K_TO_F_CONVERSION2)
    elsif inunit == 'r'
      intemp - R_TO_F_CONVERSION
    end
  end

  # The conversions to Celsius
  def Celsius(intemp, inunit)
    if inunit == 'f'
      ((intemp - F_TO_C_CONVERSION1) / F_TO_C_CONVERSION2)
    elsif inunit == 'k'
      intemp - K_TO_C_CONVERSION
    elsif inunit == 'r'
      ((intemp - R_TO_C_CONVERSION1) / R_TO_C_CONVERSION2)
    end
  end

  # The conversions to Kelvin
  def Kelvin(intemp, inunit)
    if inunit == 'f'
      (((intemp - F_TO_K_CONVERSION1) / F_TO_K_CONVERSION2) + F_TO_K_CONVERSION3)
    elsif inunit == 'c'
      intemp + C_TO_K_CONVERSION
    elsif inunit == 'r'
      intemp / R_TO_K_CONVERSION
    end
  end

  # The conversions to Rankine
  def Rankine(intemp, inunit)
    if inunit == 'c'
      ((intemp + C_TO_R_CONVERSION1) * C_TO_R_CONVERSION2)
    elsif inunit == 'k'
      intemp * K_TO_R_CONVERSION
    elsif inunit == 'f'
      intemp + F_TO_R_CONVERSION
    end
  end
end
