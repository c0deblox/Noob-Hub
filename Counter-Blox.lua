local a=loadstring(game:HttpGet('https://raw.githubusercontent.com/NubH4x/UI-Librarys/main/Aika-Library.lua'))()local b=a:CreateWindow("Counter Blox")local c=b:CreateFolder("Functions")c:Button("ESP",function()local d={textsize=8,colour=0,0,0}local c=Instance.new("BillboardGui")local e=Instance.new("TextLabel",c)c.Name="Cracked esp"c.ResetOnSpawn=false;c.AlwaysOnTop=true;c.LightInfluence=0;c.Size=UDim2.new(1.75,0,1.75,0)e.BackgroundColor3=Color3.fromRGB(0,0,0)e.Text=""e.Size=UDim2.new(0.0001,0.00001,0.0001,0.00001)e.BorderSizePixel=4;e.BorderColor3=Color3.new(d.colour)e.BorderSizePixel=0;e.Font="GothamSemibold"e.TextSize=d.textsize;e.TextColor3=Color3.fromRGB(d.colour)game:GetService("RunService").RenderStepped:Connect(function()for f,g in pairs(game:GetService("Players"):GetPlayers())do if g~=game:GetService("Players").LocalPlayer and g.Character.Head:FindFirstChild("Cracked esp")==nil then e.Text="{"..g.Name.."}"c:Clone().Parent=g.Character.Head end end end)ALLYCOLOR={0,0,0}ENEMYCOLOR={0,0,0}TRANSPARENCY=0.5;HEALTHBAR_ACTIVATED=true;function createFlex()players=game:GetService("Players")faces={"Front","Back","Bottom","Left","Right","Top"}currentPlayer=nil;lplayer=players.LocalPlayer;players.PlayerAdded:Connect(function(h)currentPlayer=h;h.CharacterAdded:Connect(function(i)createESP(i)end)end)function checkPart(j)if(j:IsA("Part")or j:IsA("MeshPart"))and j.Name~="HumanoidRootPart"then return true end end;function actualESP(j)for k=0,5 do surface=Instance.new("SurfaceGui",j)surface.Face=Enum.NormalId[faces[k+1]]surface.AlwaysOnTop=true;frame=Instance.new("Frame",surface)frame.Size=UDim2.new(1,0,1,0)frame.BorderSizePixel=0;frame.BackgroundTransparency=TRANSPARENCY;if currentPlayer.Team==players.LocalPlayer.Team then frame.BackgroundColor3=Color3.new(ALLYCOLOR[1],ALLYCOLOR[2],ALLYCOLOR[3])else frame.BackgroundColor3=Color3.new(ENEMYCOLOR[1],ENEMYCOLOR[2],ENEMYCOLOR[3])end end end;function createHealthbar(l)board=Instance.new("BillboardGui",l)board.Name="total"board.Size=UDim2.new(1,0,1,0)board.StudsOffset=Vector3.new(3,1,0)board.AlwaysOnTop=true;bar=Instance.new("Frame",board)bar.BackgroundColor3=Color3.new(255,0,0)bar.BorderSizePixel=0;bar.Size=UDim2.new(0.2,0,4,0)bar.Name="total2"health=Instance.new("Frame",bar)health.BackgroundColor3=Color3.new(0,255,0)health.BorderSizePixel=0;health.Size=UDim2.new(1,0,l.Parent.Humanoid.Health/100,0)l.Parent.Humanoid.Changed:Connect(function(m)l.total.total2.Frame.Size=UDim2.new(1,0,l.Parent.Humanoid.Health/100,0)end)end;function createESP(n)bugfix=n:WaitForChild("Head")for k,o in pairs(n:GetChildren())do if checkPart(o)then actualESP(o)end end;if HEALTHBAR_ACTIVATED then createHealthbar(n:WaitForChild("HumanoidRootPart"))end end;for k,p in pairs(players:GetChildren())do if p~=players.LocalPlayer then currentPlayer=p;createESP(p.Character)p.CharacterAdded:Connect(function(i)createESP(i)end)end end end;createFlex()end)c:Button("Walkspeed",function()_G.WS="100"local Humanoid=game:GetService("Players").LocalPlayer.Character.Humanoid;Humanoid:GetPropertyChangedSignal("WalkSpeed"):Connect(function()Humanoid.WalkSpeed=_G.WS end)Humanoid.WalkSpeed=_G.WS end)c:Button("Infinite Jump",function()_G.infinjump=true;local q=game:GetService("Players").LocalPlayer;local r=q:GetMouse()r.KeyDown:connect(function(m)if _G.infinjump then if m:byte()==32 then Humanoid=game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid")Humanoid:ChangeState("Jumping")wait(0.1)Humanoid:ChangeState("Seated")end end end)local q=game:GetService("Players").LocalPlayer;local r=q:GetMouse()r.KeyDown:connect(function(m)m=m:lower()if m=="f"then if _G.infinjump==true then _G.infinjump=false else _G.infinjump=true end end end)end)c:Button("Hitbox Extender",function()function getplrsname()for k,s in pairs(game:GetChildren())do if s.ClassName=="Players"then return s.Name end end end;local players=getplrsname()local t=game[players].LocalPlayer;coroutine.resume(coroutine.create(function()while wait(1)do coroutine.resume(coroutine.create(function()for u,s in pairs(game[players]:GetPlayers())do if s.Name~=t.Name and s.Character then s.Character.RightUpperLeg.CanCollide=false;s.Character.RightUpperLeg.Transparency=10;s.Character.RightUpperLeg.Size=Vector3.new(13,13,13)s.Character.LeftUpperLeg.CanCollide=false;s.Character.LeftUpperLeg.Transparency=10;s.Character.LeftUpperLeg.Size=Vector3.new(13,13,13)s.Character.HeadHB.CanCollide=false;s.Character.HeadHB.Transparency=10;s.Character.HeadHB.Size=Vector3.new(13,13,13)s.Character.HumanoidRootPart.CanCollide=false;s.Character.HumanoidRootPart.Transparency=10;s.Character.HumanoidRootPart.Size=Vector3.new(13,13,13)end end end))end end))end)c:Button("Unlock All",function()local v=game:GetService("Players").LocalPlayer;local w=getsenv(game.Players.LocalPlayer.PlayerGui.Client)local x=game:GetService("ReplicatedStorage")local y={{'AK47_Ace'},{'AK47_Bloodboom'},{'AK47_Clown'},{'AK47_Code Orange'},{'AK47_Eve'},{'AK47_Gifted'},{'AK47_Glo'},{'AK47_Godess'},{'AK47_Hallows'},{'AK47_Halo'},{'AK47_Hypersonic'},{'AK47_Inversion'},{'AK47_Jester'},{'AK47_Maker'},{'AK47_Mean Green'},{'AK47_Outlaws'},{'AK47_Outrunner'},{'AK47_Patch'},{'AK47_Plated'},{'AK47_Precision'},{'AK47_Quantum'},{'AK47_Quicktime'},{'AK47_Scapter'},{'AK47_Secret Santa'},{'AK47_Shooting Star'},{'AK47_Skin Committee'},{'AK47_Survivor'},{'AK47_Ugly Sweater'},{'AK47_VAV'},{'AK47_Variant Camo'},{'AK47_Yltude'},{'AUG_Chilly Night'},{'AUG_Dream Hound'},{'AUG_Enlisted'},{'AUG_Graffiti'},{'AUG_Homestead'},{'AUG_Maker'},{'AUG_NightHawk'},{'AUG_Phoenix'},{'AUG_Sunsthetic'},{'AWP_Abaddon'},{'AWP_Autumness'},{'AWP_Blastech'},{'AWP_Bloodborne'},{'AWP_Coffin Biter'},{'AWP_Desert Camo'},{'AWP_Difference'},{'AWP_Dragon'},{'AWP_Forever'},{'AWP_Grepkin'},{'AWP_Hika'},{'AWP_Illusion'},{'AWP_Instinct'},{'AWP_JTF2'},{'AWP_Lunar'},{'AWP_Nerf'},{'AWP_Northern Lights'},{'AWP_Pear Tree'},{'AWP_Pink Vision'},{'AWP_Pinkie'},{'AWP_Quicktime'},{'AWP_Racer'},{'AWP_Regina'},{'AWP_Retroactive'},{'AWP_Scapter'},{'AWP_Silence'},{'AWP_Venomus'},{'AWP_Weeb'},{'Banana_Stock'},{'Bayonet_Aequalis'},{'Bayonet_Banner'},{'Bayonet_Candy Cane'},{'Bayonet_Consumed'},{'Bayonet_Cosmos'},{'Bayonet_Crimson Tiger'},{'Bayonet_Crow'},{'Bayonet_Delinquent'},{'Bayonet_Digital'},{'Bayonet_Easy-Bake'},{'Bayonet_Egg Shell'},{'Bayonet_Festive'},{'Bayonet_Frozen Dream'},{'Bayonet_Geo Blade'},{'Bayonet_Ghastly'},{'Bayonet_Goo'},{'Bayonet_Hallows'},{'Bayonet_Intertwine'},{'Bayonet_Marbleized'},{'Bayonet_Mariposa'},{'Bayonet_Naval'},{'Bayonet_Neonic'},{'Bayonet_RSL'},{'Bayonet_Racer'},{'Bayonet_Sapphire'},{'Bayonet_Silent Night'},{'Bayonet_Splattered'},{'Bayonet_Stock'},{'Bayonet_Topaz'},{'Bayonet_Tropical'},{'Bayonet_Twitch'},{'Bayonet_UFO'},{'Bayonet_Wetland'},{'Bayonet_Worn'},{'Bayonet_Wrapped'},{'Bearded Axe_Beast'},{'Bearded Axe_Splattered'},{'Bizon_Autumic'},{'Bizon_Festive'},{'Bizon_Oblivion'},{'Bizon_Saint Nick'},{'Bizon_Sergeant'},{'Bizon_Shattered'},{'Butterfly Knife_Aurora'},{'Butterfly Knife_Bloodwidow'},{'Butterfly Knife_Consumed'},{'Butterfly Knife_Cosmos'},{'Butterfly Knife_Crimson Tiger'},{'Butterfly Knife_Crippled Fade'},{'Butterfly Knife_Digital'},{'Butterfly Knife_Egg Shell'},{'Butterfly Knife_Freedom'},{'Butterfly Knife_Frozen Dream'},{'Butterfly Knife_Goo'},{'Butterfly Knife_Hallows'},{'Butterfly Knife_Icicle'},{'Butterfly Knife_Inversion'},{'Butterfly Knife_Jade Dream'},{'Butterfly Knife_Marbleized'},{'Butterfly Knife_Naval'},{'Butterfly Knife_Neonic'},{'Butterfly Knife_Reaper'},{'Butterfly Knife_Ruby'},{'Butterfly Knife_Scapter'},{'Butterfly Knife_Splattered'},{'Butterfly Knife_Stock'},{'Butterfly Knife_Topaz'},{'Butterfly Knife_Tropical'},{'Butterfly Knife_Twitch'},{'Butterfly Knife_Wetland'},{'Butterfly Knife_White Boss'},{'Butterfly Knife_Worn'},{'Butterfly Knife_Wrapped'},{'CZ_Designed'},{'CZ_Festive'},{'CZ_Holidays'},{'CZ_Lightning'},{'CZ_Orange Web'},{'CZ_Spectre'},{'Cleaver_Spider'},{'Cleaver_Splattered'},{'DesertEagle_Cold Truth'},{'DesertEagle_Cool Blue'},{'DesertEagle_DropX'},{'DesertEagle_Glittery'},{'DesertEagle_Grim'},{'DesertEagle_Heat'},{'DesertEagle_Honor-bound'},{'DesertEagle_Independence'},{'DesertEagle_Krystallos'},{'DesertEagle_Pumpkin Buster'},{'DesertEagle_ROLVe'},{'DesertEagle_Racer'},{'DesertEagle_Scapter'},{'DesertEagle_Skin Committee'},{'DesertEagle_Survivor'},{'DesertEagle_Weeb'},{'DesertEagle_Xmas'},{'DualBerettas_Carbonized'},{'DualBerettas_Dusty Manor'},{'DualBerettas_Floral'},{'DualBerettas_Hexline'},{'DualBerettas_Neon web'},{'DualBerettas_Old Fashioned'},{'DualBerettas_Xmas'},{'Falchion Knife_Bloodwidow'},{'Falchion Knife_Chosen'},{'Falchion Knife_Coal'},{'Falchion Knife_Consumed'},{'Falchion Knife_Cosmos'},{'Falchion Knife_Crimson Tiger'},{'Falchion Knife_Crippled Fade'},{'Falchion Knife_Digital'},{'Falchion Knife_Egg Shell'},{'Falchion Knife_Festive'},{'Falchion Knife_Freedom'},{'Falchion Knife_Frozen Dream'},{'Falchion Knife_Goo'},{'Falchion Knife_Hallows'},{'Falchion Knife_Inversion'},{'Falchion Knife_Late Night'},{'Falchion Knife_Marbleized'},{'Falchion Knife_Naval'},{'Falchion Knife_Neonic'},{'Falchion Knife_Racer'},{'Falchion Knife_Ruby'},{'Falchion Knife_Splattered'},{'Falchion Knife_Stock'},{'Falchion Knife_Topaz'},{'Falchion Knife_Tropical'},{'Falchion Knife_Wetland'},{'Falchion Knife_Worn'},{'Falchion Knife_Wrapped'},{'Falchion Knife_Zombie'},{'Famas_Abstract'},{'Famas_Centipede'},{'Famas_Cogged'},{'Famas_Goliath'},{'Famas_Haunted Forest'},{'Famas_KugaX'},{'Famas_MK11'},{'Famas_Medic'},{'Famas_Redux'},{'Famas_Shocker'},{'Famas_Toxic Rain'},{'FiveSeven_Autumn Fade'},{'FiveSeven_Danjo'},{'FiveSeven_Fluid'},{'FiveSeven_Gifted'},{'FiveSeven_Midnight Ride'},{'FiveSeven_Mr. Anatomy'},{'FiveSeven_Stigma'},{'FiveSeven_Sub Zero'},{'FiveSeven_Summer'},{'Flip Knife_Stock'},{'G3SG1_Amethyst'},{'G3SG1_Autumn'},{'G3SG1_Foliage'},{'G3SG1_Hex'},{'G3SG1_Holly Bound'},{'G3SG1_Mahogany'},{'Galil_Frosted'},{'Galil_Hardware 2'},{'Galil_Hardware'},{'Galil_Toxicity'},{'Galil_Worn'},{'Glock_Angler'},{'Glock_Anubis'},{'Glock_Biotrip'},{'Glock_Day Dreamer'},{'Glock_Desert Camo'},{'Glock_Gravestomper'},{'Glock_Midnight Tiger'},{'Glock_Money Maker'},{'Glock_RSL'},{'Glock_Rush'},{'Glock_Scapter'},{'Glock_Spacedust'},{'Glock_Tarnish'},{'Glock_Underwater'},{'Glock_Wetland'},{'Glock_White Sauce'},{'Gut Knife_Banner'},{'Gut Knife_Bloodwidow'},{'Gut Knife_Consumed'},{'Gut Knife_Cosmos'},{'Gut Knife_Crimson Tiger'},{'Gut Knife_Crippled Fade'},{'Gut Knife_Digital'},{'Gut Knife_Egg Shell'},{'Gut Knife_Frozen Dream'},{'Gut Knife_Geo Blade'},{'Gut Knife_Goo'},{'Gut Knife_Hallows'},{'Gut Knife_Lurker'},{'Gut Knife_Marbleized'},{'Gut Knife_Naval'},{'Gut Knife_Neonic'},{'Gut Knife_Present'},{'Gut Knife_Ruby'},{'Gut Knife_Rusty'},{'Gut Knife_Splattered'},{'Gut Knife_Topaz'},{'Gut Knife_Tropical'},{'Gut Knife_Wetland'},{'Gut Knife_Worn'},{'Gut Knife_Wrapped'},{'Huntsman Knife_Aurora'},{'Huntsman Knife_Bloodwidow'},{'Huntsman Knife_Consumed'},{'Huntsman Knife_Cosmos'},{'Huntsman Knife_Cozy'},{'Huntsman Knife_Crimson Tiger'},{'Huntsman Knife_Crippled Fade'},{'Huntsman Knife_Digital'},{'Huntsman Knife_Egg Shell'},{'Huntsman Knife_Frozen Dream'},{'Huntsman Knife_Geo Blade'},{'Huntsman Knife_Goo'},{'Huntsman Knife_Hallows'},{'Huntsman Knife_Honor Fade'},{'Huntsman Knife_Marbleized'},{'Huntsman Knife_Monster'},{'Huntsman Knife_Naval'},{'Huntsman Knife_Ruby'},{'Huntsman Knife_Splattered'},{'Huntsman Knife_Stock'},{'Huntsman Knife_Tropical'},{'Huntsman Knife_Twitch'},{'Huntsman Knife_Wetland'},{'Huntsman Knife_Worn'},{'Huntsman Knife_Wrapped'},{'Karambit_Bloodwidow'},{'Karambit_Consumed'},{'Karambit_Cosmos'},{'Karambit_Crimson Tiger'},{'Karambit_Crippled Fade'},{'Karambit_Death Wish'},{'Karambit_Digital'},{'Karambit_Egg Shell'},{'Karambit_Festive'},{'Karambit_Frozen Dream'},{'Karambit_Glossed'},{'Karambit_Gold'},{'Karambit_Goo'},{'Karambit_Hallows'},{'Karambit_Jade Dream'},{'Karambit_Jester'},{'Karambit_Lantern'},{'Karambit_Liberty Camo'},{'Karambit_Marbleized'},{'Karambit_Naval'},{'Karambit_Neonic'},{'Karambit_Pizza'},{'Karambit_Quicktime'},{'Karambit_Racer'},{'Karambit_Ruby'},{'Karambit_Scapter'},{'Karambit_Splattered'},{'Karambit_Stock'},{'Karambit_Topaz'},{'Karambit_Tropical'},{'Karambit_Twitch'},{'Karambit_Wetland'},{'Karambit_Worn'},{'M249_Aggressor'},{'M249_P2020'},{'M249_Spooky'},{'M249_Wolf'},{'M4A1_Animatic'},{'M4A1_Burning'},{'M4A1_Desert Camo'},{'M4A1_Heavens Gate'},{'M4A1_Impulse'},{'M4A1_Jester'},{'M4A1_Lunar'},{'M4A1_Necropolis'},{'M4A1_Tecnician'},{'M4A1_Toucan'},{'M4A1_Wastelander'},{'M4A4_BOT[S]'},{'M4A4_Candyskull'},{'M4A4_Delinquent'},{'M4A4_Desert Camo'},{'M4A4_Devil'},{'M4A4_Endline'},{'M4A4_Flashy Ride'},{'M4A4_Ice Cap'},{'M4A4_Jester'},{'M4A4_King'},{'M4A4_Mistletoe'},{'M4A4_Pinkie'},{'M4A4_Pinkvision'},{'M4A4_Pondside'},{'M4A4_Precision'},{'M4A4_Quicktime'},{'M4A4_Racer'},{'M4A4_RayTrack'},{'M4A4_Scapter'},{'M4A4_Stardust'},{'M4A4_Toy Soldier'},{'MAC10_Artists Intent'},{'MAC10_Blaze'},{'MAC10_Golden Rings'},{'MAC10_Pimpin'},{'MAC10_Skeleboney'},{'MAC10_Toxic'},{'MAC10_Turbo'},{'MAC10_Wetland'},{'MAG7_Bombshell'},{'MAG7_C4UTION'},{'MAG7_Frosty'},{'MAG7_Molten'},{'MAG7_Outbreak'},{'MAG7_Striped'},{'MP7_Calaxian'},{'MP7_Cogged'},{'MP7_Goo'},{'MP7_Holiday'},{'MP7_Industrial'},{'MP7_Reindeer'},{'MP7_Silent Ops'},{'MP7_Sunshot'},{'MP9_Blueroyal'},{'MP9_Cob Web'},{'MP9_Cookie Man'},{'MP9_Decked Halls'},{'MP9_SnowTime'},{'MP9_Vaporwave'},{'MP9_Velvita'},{'MP9_Wilderness'},{'Negev_Default'},{'Negev_Midnightbones'},{'Negev_Quazar'},{'Negev_Striped'},{'Negev_Wetland'},{'Negev_Winterfell'},{'Nova_Black Ice'},{'Nova_Cookie'},{'Nova_Paradise'},{'Nova_Sharkesh'},{'Nova_Starry Night'},{'Nova_Terraformer'},{'Nova_Tiger'},{'P2000_Apathy'},{'P2000_Camo Dipped'},{'P2000_Candycorn'},{'P2000_Comet'},{'P2000_Dark Beast'},{'P2000_Golden Age'},{'P2000_Lunar'},{'P2000_Pinkie'},{'P2000_Ruby'},{'P2000_Silence'},{'P250_Amber'},{'P250_Bomber'},{'P250_Equinox'},{'P250_Frosted'},{'P250_Goldish'},{'P250_Green Web'},{'P250_Shark'},{'P250_Solstice'},{'P250_TC250'},{'P90_Demon Within'},{'P90_Elegant'},{'P90_Krampus'},{'P90_Northern Lights'},{'P90_P-Chan'},{'P90_Pine'},{'P90_Redcopy'},{'P90_Skulls'},{'R8_Exquisite'},{'R8_Hunter'},{'R8_Spades'},{'R8_TG'},{'R8_Violet'},{'SG_DropX'},{'SG_Dummy'},{'SG_Kitty Cat'},{'SG_Knighthood'},{'SG_Magma'},{'SG_Variant Camo'},{'SG_Yltude'},{'SawedOff_Casino'},{'SawedOff_Colorboom'},{'SawedOff_Executioner'},{'SawedOff_Opal'},{'SawedOff_Spooky'},{'SawedOff_Sullys Blacklight'},{'Scout_Coffin Biter'},{'Scout_Flowing Mists'},{'Scout_Hellborn'},{'Scout_Hot Cocoa'},{'Scout_Monstruo'},{'Scout_Neon Regulation'},{'Scout_Posh'},{'Scout_Pulse'},{'Scout_Railgun'},{'Scout_Theory'},{'Scout_Xmas'},{'Sickle_Mummy'},{'Sickle_Splattered'},{'Tec9_Charger'},{'Tec9_Gift Wrapped'},{'Tec9_Ironline'},{'Tec9_Performer'},{'Tec9_Phol'},{'Tec9_Samurai'},{'Tec9_Skintech'},{'Tec9_Stocking Stuffer'},{'UMP_Death Grip'},{'UMP_Gum Drop'},{'UMP_Magma'},{'UMP_Militia Camo'},{'UMP_Molten'},{'UMP_Redline'},{'USP_Crimson'},{'USP_Dizzy'},{'USP_Frostbite'},{'USP_Holiday'},{'USP_Jade Dream'},{'USP_Kraken'},{'USP_Nighttown'},{'USP_Paradise'},{'USP_Racing'},{'USP_Skull'},{'USP_Unseen'},{'USP_Worlds Away'},{'USP_Yellowbelly'},{'XM_Artic'},{'XM_Atomic'},{'XM_Campfire'},{'XM_Endless Night'},{'XM_MK11'},{'XM_Predator'},{'XM_Red'},{'XM_Spectrum'},{'Handwraps_Wraps'},{'Sports Glove_Hazard'},{'Sports Glove_Hallows'},{'Sports Glove_Majesty'},{'Strapped Glove_Racer'},{'trapped Glove_Grim'},{'trapped Glove_Wisk'},{'Fingerless Glove_Scapter'},{'Fingerless Glove_Digital'},{'Fingerless Glove_Patch'},{'Handwraps_Guts'},{'Handwraps_Wetland'},{'trapped Glove_Molten'},{'Fingerless_Crystal'},{'Sports Glove_Royal'},{'Strapped Glove_Kringle'},{'Handwraps_MMA'},{'Sports Glove_Weeb'},{'Sports Glove_CottonTail'},{'Sports Glove_RSL'},{'Handwraps_Ghoul Hex'},{'Handwraps_Phantom Hex'},{'Handwraps_Spector Hex'},{'Handwraps_Orange Hex'},{'Handwraps_Purple Hex'},{'Handwraps_Green Hex'}}local z;local A=getrawmetatable(game)local B=A.__namecall;setreadonly(A,false)local z;A.__namecall=newcclosure(function(self,...)local C={...}if getnamecallmethod()=="InvokeServer"and tostring(self)=="Hugh"then return end;if getnamecallmethod()=="FireServer"then if C[1]==v.UserId then return end;if string.len(tostring(self))==38 then if not z then z=true;for k,s in pairs(y)do local D;for E,F in pairs(C[1])do if s[1]==F[1]then D=true end end;if not D then table.insert(C[1],s)end end end;return end;if tostring(self)=="DataEvent"and C[1][4]then local G=string.split(C[1][4][1],"_")[2]if C[1][2]=="Both"then v["SkinFolder"]["CTFolder"][C[1][3]].Value=G;v["SkinFolder"]["TFolder"][C[1][3]].Value=G else v["SkinFolder"][C[1][2].."Folder"][C[1][3]].Value=G end end end;return B(self,...)end)setreadonly(A,true)w.CurrentInventory=y;local H,I=v.SkinFolder.TFolder:Clone(),game.Players.LocalPlayer.SkinFolder.CTFolder:Clone()v.SkinFolder.TFolder:Destroy()v.SkinFolder.CTFolder:Destroy()H.Parent=v.SkinFolder;I.Parent=v.SkinFolder end)c:Button("Kill All",function()if not game:IsLoaded()then game.Loaded:Wait()end;local J=game:GetService("Players")local v=J.LocalPlayer;local K=v.Character or v.CharacterAdded:Wait()local x=game:GetService("ReplicatedStorage")local L=x:WaitForChild("Events")local M=L:WaitForChild("JoinTeam")local N=L:WaitForChild("SpawnMe")local O=L:WaitForChild("PlayerChatted")local P=L:WaitForChild("FallDamage")local Q=game:GetService("ReplicatedStorage"):WaitForChild("wkspc")local R=Q:WaitForChild("FFA")local S=Q:WaitForChild("Status")local T=S:WaitForChild("Preparation")local U=game:GetService("RunService")repeat for V,q in next,J:GetPlayers()do if K:FindFirstChild("Spawned")then K.Spawned:Destroy()end;pcall(function()if(R.Value or q.Team~=v.Team)and(q.Character:FindFirstChild("Spawned")and not q.Character:FindFirstChild("ShuckyHAX"))then repeat K.HumanoidRootPart.Position=q.Character.Hitbox.Position;P:FireServer(6969,q.Character.Hitbox)U.RenderStepped:Wait()until not q.Character:FindFirstChild("Spawned")elseif not q.Character:FindFirstChild("Spawned")then K.HumanoidRootPart.Position=Vector3.new(math.huge,math.huge,math.huge)end end)end;U.RenderStepped:Wait()until T.Value end)local c=b:CreateFolder("AimBot")c:Button("AimBot [Torso]",function()PLAYER=game.Players.LocalPlayer;MOUSE=PLAYER:GetMouse()CC=game.Workspace.CurrentCamera;_G.AIM_AT='UpperTorso'_G.BIND=101;function GetNearestPlayerToMouse()local W={}local X={}local Y={25}for k,s in pairs(game.Players:GetPlayers())do if s~=PLAYER then table.insert(W,s)end end;for k,s in pairs(W)do if s and s.Character~=nil and s.Team~=PLAYER.Team then local Z=s.Character:FindFirstChild(_G.AIM_AT)if Z~=nil then local _=(Z.Position-game.Workspace.CurrentCamera.CoordinateFrame.p).magnitude;local a0=Ray.new(game.Workspace.CurrentCamera.CoordinateFrame.p,(MOUSE.Hit.p-CC.CoordinateFrame.p).unit*_)local a1,a2=game.Workspace:FindPartOnRay(a0,game.Workspace)local a3=math.floor((a2-Z.Position).magnitude)X[s.Name..k]={}X[s.Name..k].dist=_;X[s.Name..k].plr=s;X[s.Name..k].diff=a3;table.insert(Y,a3)end end end;if unpack(Y)==nil then return false end;local a4=math.floor(math.min(unpack(Y)))if a4>20 then return false end;for k,s in pairs(X)do if s.diff==a4 then return s.plr end end;return false end;MOUSE.KeyDown:connect(function(a5)a5=a5:lower():byte()if a5==_G.BIND then ENABLED=true end end)MOUSE.KeyUp:connect(function(a5)a5=a5:lower():byte()if a5==_G.BIND then ENABLED=false end end)game:GetService('RunService').RenderStepped:connect(function()if ENABLED then local a6=GetNearestPlayerToMouse()if a6~=false then local Z=a6.Character:FindFirstChild(_G.AIM_AT)if Z then CC.CoordinateFrame=CFrame.new(CC.CoordinateFrame.p,Z.CFrame.p)end end end end)end)c:Button("AimBot [Head]",function()PLAYER=game.Players.LocalPlayer;MOUSE=PLAYER:GetMouse()CC=game.Workspace.CurrentCamera;_G.AIM_AT='Head'_G.BIND=101;function GetNearestPlayerToMouse()local W={}local X={}local Y={25000}for k,s in pairs(game.Players:GetPlayers())do if s~=PLAYER then table.insert(W,s)end end;for k,s in pairs(W)do if s and s.Character~=nil and s.Team~=PLAYER.Team then local Z=s.Character:FindFirstChild(_G.AIM_AT)if Z~=nil then local _=(Z.Position-game.Workspace.CurrentCamera.CoordinateFrame.p).magnitude;local a0=Ray.new(game.Workspace.CurrentCamera.CoordinateFrame.p,(MOUSE.Hit.p-CC.CoordinateFrame.p).unit*_)local a1,a2=game.Workspace:FindPartOnRay(a0,game.Workspace)local a3=math.floor((a2-Z.Position).magnitude)X[s.Name..k]={}X[s.Name..k].dist=_;X[s.Name..k].plr=s;X[s.Name..k].diff=a3;table.insert(Y,a3)end end end;if unpack(Y)==nil then return false end;local a4=math.floor(math.min(unpack(Y)))if a4>25000 then return false end;for k,s in pairs(X)do if s.diff==a4 then return s.plr end end;return false end;MOUSE.KeyDown:connect(function(a5)a5=a5:lower():byte()if a5==_G.BIND then ENABLED=true end end)MOUSE.KeyUp:connect(function(a5)a5=a5:lower():byte()if a5==_G.BIND then ENABLED=false end end)game:GetService('RunService').RenderStepped:connect(function()if ENABLED then local a6=GetNearestPlayerToMouse()if a6~=false then local Z=a6.Character:FindFirstChild(_G.AIM_AT)if Z then CC.CoordinateFrame=CFrame.new(CC.CoordinateFrame.p,Z.CFrame.p)end end end end)end)local c=b:CreateFolder("Credits")c:Label("Functions - JoshMods",{TextSize=15,TextColor=Color3.fromRGB(255,255,255),BgColor=Color3.fromRGB(69,69,69)})c:Label("AimBot - Nub Hax",{TextSize=15,TextColor=Color3.fromRGB(255,255,255),BgColor=Color3.fromRGB(69,69,69)})
