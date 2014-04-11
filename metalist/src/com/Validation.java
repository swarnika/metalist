package com;

public class Validation
{
	public boolean isLengthZero(String str)
	{
		boolean msg;
		try
		{
			if (str.length() == 0)
			{
				msg = true;
			}
			else
			{
				msg = false;
			}
		}
		catch(Exception e)
		{
			msg = true;
		}
		return msg;
	}

	public boolean isValidNumber(String str)
	{
		boolean msg;
		try
		{
			if (str.matches("[0-9]*"))
			{
				msg = true;
			}
			else
			{
				msg = false;
			}
		}
		catch(Exception e)
		{
			msg = false;
		}
		return msg;
	}

	public boolean isValidLength(String str, int length)
	{
		boolean msg;
		try
		{
			if (str.length() <= length)
			{
				msg = true;
			}
			else
			{
				msg = false;
			}
		}
		catch(Exception e)
		{
			msg = false;
		}
		return msg;
	}

	public boolean isValidOneDecimalNumber(String str)
	{
		boolean msg;
		if (str.matches("[0-9]*\\.?[0-9]{0,1}"))
		{
			msg = true;
		}
		else
		{
			msg = false;
		}
		return msg;
	}

	public boolean isValidTwoDecimalNumber(String str)
	{
		boolean msg;
		String pattern = "[0-9]{0,11}\\.?[0-9]{0,2}";
		String patternWithDecimal = "[0-9]{0,11}+\\.[0-9]{0,2}";
		
		if(str.length()>11)
		{
			if (str.matches(patternWithDecimal))
			{
				msg = true;
			}
			else
			{
				msg = false;
			}
		}
		else
		{
			if (str.matches(pattern))
			{
				msg = true;
			}
			else
			{
				msg = false;
			}
		}
		return msg;
	}

	public boolean isValidFourDecimalNumber(String str)
	{
		boolean msg;
		if (str.matches("[0-9]*\\.?[0-9]{0,4}"))
		{
			msg = true;
		}
		else
		{
			msg = false;
		}
		return msg;
	}

	public boolean isReferenceNo(String str)
	{
		boolean msg;
		try
		{
			if (str.matches("[a-zA-Z]{2,4}\\/?[a-zA-Z]*[0-9]*\\/?[a-zA-Z]*[0-9]*\\/?[a-zA-Z]*[0-9]*"))
			{
				msg = true;
			}
			else
			{
				msg = false;
			}
		}
		catch(Exception e)
		{
			msg = true;
		}
		return msg;
	}

	public boolean isValidString(String str)
	{
		boolean msg;
		if (str.matches("[a-zA-Z ]*"))
		{
			msg = true;
		}
		else
		{
			msg = false;
		}
		return msg;
	}

	public boolean isEmailValid(String str)
	{
		boolean msg;
		if (str.matches("[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,4}$"))
		{
			msg = true;
		}
		else
		{
			msg = false;

		}
		return msg;
	}

	public boolean zipCode(String str)
	{
		boolean msg;
		if (str.matches("[a-zA-Z0-9]*") && str.length() < 11)
		{
			msg = true;
		}
		else
		{
			msg = false;
		}
		return msg;
	}

	public boolean faxNo(String str)
	{
		boolean msg;
		if (str.matches("[0-9]*") && str.length() < 16)
		{
			msg = true;
		}
		else
		{
			msg = false;
		}
		return msg;
	}

	public boolean webSite(String str)
	{
		boolean msg;
		if (str.matches("www.[0-9]*[a-zA-Z]*[0-9]*[a-zA-Z]*[.]*[a-zA-Z]*") || str.equals(""))
		{
			msg = true;
		}
		else
		{
			msg = false;
		}
		return msg;
	}

	public boolean isValidDate(String str)
	{
		boolean msg;
		if (str.matches("[0-9]{2}/[0-9]{2}/[0-9]{4}") || !str.equals(""))
		{
			msg = true;
		}
		else
		{
			msg = false;
		}
		return msg;
	}

	public boolean isValidDateSalesFunnel(String str)
	{
		boolean msg;
		if (str.matches("[0-9]{2}/[0-9]{2}/[0-9]{4}") || str.equals(""))
		{
			msg = true;
		}
		else
		{
			msg = false;
		}
		return msg;
	}

	public boolean isValidPhoneNo(String str)
	{
		boolean msg;
		if ((str.matches("[0-9]*") && (str.length() < 16)))
		{
			msg = true;
		}
		else
		{
			msg = false;
		}
		return msg;
	}

	public boolean mobileNo(String str)
	{
		boolean msg;
		if ((str.matches("[0-9]*") && (str.length() < 16)))
		{
			msg = true;
		}
		else
		{
			msg = false;
		}
		return msg;
	}

	public boolean isAlphanum(String str)
	{
		boolean msg;
		if ((str.matches("[.]*[a-zA-Z]*[0-9]*[.]*[ ]*[a-zA-Z]*[0-9]*[#]*") && !str.matches("[0-9]*")))
		{
			msg = true;
		}
		else
		{
			msg = false;
		}
		return msg;
	}

	public boolean passLength(String str)
	{
		boolean msg;
		if ((str.length() > 6))
		{
			msg = true;
		}
		else
		{
			msg = false;
		}
		return msg;
	}

	public boolean notContainSpace(String str)
	{
		boolean msg = true;
		for (int i = 0; i < str.length(); i++)
		{
			if (str.charAt(i) == ' ')
			{
				msg = false;
			}
		}
		return msg;
	}

}
