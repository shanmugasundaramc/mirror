module ApplicationHelper
	def calender(month, year)	
		prev_month=link_to "Previous",page_home_path(:month=>@month.to_i - 1)
		calc_str="<table border='1'>"
		calc_str+="<tr>"
		calc_str+="<tr><td>#{prev_month}</td><td colspan=6>October</td></tr>"
		calc_str+="<td>&nbsp;</td>"
			6.times do |day|
			calc_str+="<td>#{day +1}</td>"
			end
		calc_str+="</tr>"
		calc_str+="</table>"
		return calc_str.html_safe
	end
	
end
