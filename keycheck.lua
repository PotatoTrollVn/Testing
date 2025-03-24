--! SERVER-VERIFIED SECTION !--
local function verify(token, nonce)
    local response = game:HttpGet(
        "https://api.platoboost.com/check_script_token?"..
        "token="..token.."&nonce="..nonce
    )
    return lDecode(response).valid
end

local token, nonce = ... -- From loader
assert(verify(token, nonce), "Script verification failed"

-- Only executes if both verifications passed
-- MAIN SCRIPT CONTENT HERE !--
print("Yes yes dop dop")
