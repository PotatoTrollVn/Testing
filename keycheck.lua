--! SERVER-VERIFIED SECTION !--
local function verifyToken(token, hwid)
    -- First local check
    if not (_VERIFICATION and _VERIFICATION.token == token) then
        return false
    end
    
    -- Second server check
    local response = game:HttpGet("https://api.platoboost.com/verify_script_token?"..
        "token="..token..
        "&hwid="..hwid..
        "&key=".._VERIFICATION.key)
    
    local data = game:GetService("HttpService"):JSONDecode(response)
    return data.valid
end

-- Verify before execution
assert(
    verifyToken(_VERIFICATION.token, _VERIFICATION.hwid),
    "Token verification failed"
)

-- Only runs if both checks pass
print("Dual verification successful! Running main script...")
-- [YOUR MAIN SCRIPT CODE HERE]
print("Yes yes dop dop")
