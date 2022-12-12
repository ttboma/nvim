local SYC = {}

function SYC.fib(n)
  if n < 2 then return 1 end
  return SYC.fib(n - 2) + SYC.fib(n - 1)
end

function SYCFIB(n) 
	print(SYC.fib(n))
end

function SycMake(s) 
	vim.api.nvim_command('make '..s..' -C ~/.config/nvim/lua/syc_tools/notes') -- equivalent to :make -C ~/.config/nvim/lua/syc_tools/
end


