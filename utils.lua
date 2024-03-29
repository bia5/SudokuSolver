--https://stackoverflow.com/questions/1426954/split-string-in-lua
function mysplit(inputstr, sep)
        if sep == nil then
                sep = "%s"
        end
        local t={}
        for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
                table.insert(t, str)
        end
        return t
end

--https://stackoverflow.com/questions/4880368/how-to-delete-all-elements-in-a-lua-table
function clearTable(t)
	for k in pairs (t) do
		t [k] = nil
	end
end

--myself
function removeFromTable(t,ke)
	for k,v in pairs (t) do
		if v==ke then
			t[k]=nil
			break
		end
	end
end

--myself
function getFirstItem(t)
	for k,v in pairs(t) do
		return v
	end
end

--https://stackoverflow.com/questions/2705793/how-to-get-number-of-entries-in-a-lua-table
function tablelength(T)
  local count = 0
  for _ in pairs(T) do count = count + 1 end
  return count
end

--https://stackoverflow.com/questions/9168058/how-to-dump-a-table-to-console
function tprint (tbl, indent)
  if not indent then indent = 0 end
  for k, v in pairs(tbl) do
    formatting = string.rep("  ", indent) .. k .. ": "
    if type(v) == "table" then
      print(formatting)
      tprint(v, indent+1)
    elseif type(v) == 'boolean' then
      print(formatting .. tostring(v))      
    else
      print(formatting .. v)
    end
  end
end