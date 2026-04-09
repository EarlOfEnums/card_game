function log(log)
 log=tostr(log) or ""
 if(logging and log!="")printh("log - "..log,"log")
end

function log_error(log)
 log=tostr(log) or ""
 if(logging and log!="")printh("error - "..log,"log")
end

function log_warning(log)
 log=tostr(log) or ""
 if(logging and log!="")printh("warning - "..log,"log")
end

function log_info(log)
 log=tostr(log) or ""
 if(logging and log!="")printh("info - "..log,"log")
end

function log_table(tbl,indent)
 indent=indent or ""
 for k,v in pairs(tbl)do
  log(indent..tostr(k)..": "..tostr(v))
  if(type(v)=="table")do
   log_table(v,indent.."  ")
  end
 end
end