module ApplicationHelper
def calender(month, year)
calc_str="<table border='1'>"
calc_str+="<tr>"
calc_str+="<td>&nbsp;</td>"
6.times do |day|
calc_str+="<td>#{day +1}</td>"
end
calc_str+="</tr>"
calc_str+="</table>"
return calc_str.html_safe
end

end
