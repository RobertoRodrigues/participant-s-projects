

function Frame(score1, score2)
  return {
  		result = function()
  			if score1 == "-" then
  				return 0
  			else
  				return 1
  			end
  		end
  	}
end