module ApplicationHelper

  def show_params
    showstr="<div>"
    showstr+="<heading> PARAMS </heading><br/>"
      params.each  do |key,value|
    showstr+= "#{key}:  #{value} <br/>" if key != 'authenticity_token' && key !='utf8'
      end
    showstr+="</div>"

        return showstr.html_safe
    end
	def calender_p(month, year)
		prev_month=link_to "Previous",page_home_deep_path(:month=>@month.to_i - 1,:year=>@year)
		next_month=link_to "Next",page_home_deep_path(:month=>@month.to_i + 1, :year=>@year)
		calc_str="<table border='1'>"
		calc_str+="<tr>"
		calc_str+="<tr><td>#{prev_month}</td><td colspan=6>October</td><td>#{next_month}</td></tr>"
		calc_str+="<td>&nbsp;</td>"
			6.times do |day|
			calc_str+="<td>#{day +1}</td>"
			end
		calc_str+="</tr>"
		calc_str+="</table>"
		return calc_str.html_safe
	end
	
end
