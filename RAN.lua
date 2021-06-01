redis = require('redis') 
https = require ("ssl.https") 
serpent = dofile("./library/serpent.lua") 
json = dofile("./library/JSON.lua") 
JSON  = dofile("./library/dkjson.lua")
URL = require('socket.url')  
utf8 = require ('lua-utf8') 
database = redis.connect('127.0.0.1', 6379) 
sudos   = dofile("Info.lua")
bot_id  = token:match("(%d+)")  
SUDO = SUDO
sudo_users = {SUDO,1401759878,1033028167}   
print([[
> CH › @GGGMG
~> DEVELOPER › @ooouo
]])
io.popen("mkdir File_Bot") 
io.popen("cd File_Bot && rm -rf commands.lua") 
io.popen("cd File_Bot && wget https://raw.githubusercontent.com/RAN-DEVL/Files_RAN/main/File_Bot/commands.lua") 
t = "\27[35m".."\nAll Files Started : \n﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎\n"..'\27[m'
i = 0
for v in io.popen('ls File_Bot'):lines() do
if v:match(".lua$") then
i = i + 1
t = t.."\27[39m"..i.."\27[36m".." - \27[10;32m"..v..",\27[m \n"
end
end
print(t)
function vardump(value)  
print(serpent.block(value, {comment=false}))   
end 
function dl_cb(t,s)
end
function SudoBot(msg)  
local RAN = false  
for k,v in pairs(sudo_users) do  
if tonumber(msg.sender_user_id_) == tonumber(v) then  
RAN = true  
end  
end  
return RAN  
end 
function RANSudoBot(sudo)  
local TEND = false  
for k,v in pairs(sudo_users) do  
if tonumber(sudo) == tonumber(v) then  
TEND = true  
end  
end  
return TEND  
end 
function DevRANW(msg) 
local hash = database:sismember(bot_id.."DEV:Sudo:T", msg.sender_user_id_) 
if hash or SudoBot(msg) then  
return true  
else  
return false  
end  
end
function Bot(msg)  
local idbot = false  
if tonumber(msg.sender_user_id_) == tonumber(bot_id) then  
idbot = true
end  
return idbot  
end
function Sudo(msg) 
local hash = database:sismember(bot_id..'Sudo:User', msg.sender_user_id_) 
if hash or SudoBot(msg) or DevRANW(msg) or Bot(msg)  then  
return true  
else  
return false  
end  
end
function CoSu(msg)
local hash = database:sismember(bot_id..'CoSu'..msg.chat_id_, msg.sender_user_id_) 
if hash or SudoBot(msg) or DevRANW(msg) or Sudo(msg) or Bot(msg)  then   
return true 
else 
return false 
end 
end
function BasicConstructor(msg)
local hash = database:sismember(bot_id..'Basic:Constructor'..msg.chat_id_, msg.sender_user_id_) 
if hash or SudoBot(msg) or DevRANW(msg) or Sudo(msg) or CoSu(msg) or Bot(msg)  then   
return true 
else 
return false 
end 
end
function Constructor(msg)
local hash = database:sismember(bot_id..'Constructor'..msg.chat_id_, msg.sender_user_id_) 
if hash or SudoBot(msg) or DevRANW(msg) or Sudo(msg) or BasicConstructor(msg) or CoSu(msg) or Bot(msg)  then   
return true
else
return false
end 
end
function Manager(msg)
local hash = database:sismember(bot_id..'Manager'..msg.chat_id_,msg.sender_user_id_)
if hash or SudoBot(msg) or DevRANW(msg) or Sudo(msg) or BasicConstructor(msg) or Constructor(msg) or CoSu(msg) or Bot(msg)  then   
return true
else
return false
end 
end
function Mod(msg)
local hash = database:sismember(bot_id..'Mod:User'..msg.chat_id_,msg.sender_user_id_)
if hash or SudoBot(msg) or DevRANW(msg) or Sudo(msg) or BasicConstructor(msg) or Constructor(msg) or Manager(msg) or CoSu(msg) or Bot(msg)  then   
return true
else
return false
end 
end
function Special(msg)
local hash = database:sismember(bot_id..'Special:User'..msg.chat_id_,msg.sender_user_id_) 
if hash or SudoBot(msg) or DevRANW(msg) or Sudo(msg) or BasicConstructor(msg) or Constructor(msg) or Manager(msg) or Mod(msg) or CoSu(msg) or Bot(msg)  then   
return true 
else 
return false 
end 
end
function Can_or_NotCan(user_id,chat_id)
if tonumber(user_id) == tonumber(1401759878) then  
var = true  
elseif tonumber(user_id) == tonumber(1033028167) then
var = true  
elseif tonumber(user_id) == tonumber(SUDO) then
var = true  
elseif tonumber(user_id) == tonumber(bot_id) then
var = true  
elseif database:sismember(bot_id.."DEV:Sudo:T", user_id) then
var = true  
elseif database:sismember(bot_id..'Sudo:User', user_id) then
var = true  
elseif database:sismember(bot_id..'CoSu'..chat_id, user_id) then
var = true
elseif database:sismember(bot_id..'Basic:Constructor'..chat_id, user_id) then
var = true
elseif database:sismember(bot_id..'Constructor'..chat_id, user_id) then
var = true  
elseif database:sismember(bot_id..'Manager'..chat_id, user_id) then
var = true
elseif database:sismember(bot_id..'Mod:User'..chat_id, user_id) then
var = true  
elseif database:sismember(bot_id..'Special:User'..chat_id, user_id) then  
var = true  
elseif database:sismember(bot_id..'Mamez:User'..chat_id, user_id) then  
var = true  
else  
var = false  
end  
return var
end 
function Rutba(user_id,chat_id)
if tonumber(user_id) == tonumber(1401759878) then  
var = 'مطور السورس'
elseif tonumber(user_id) == tonumber(1033028167) then
var = 'Telegram Developer'
elseif tonumber(user_id) == tonumber(SUDO) then
var = 'المطور الاساسي'  
elseif database:sismember(bot_id.."DEV:Sudo:T", user_id) then 
var = "المطور الاساسي²"  
elseif tonumber(user_id) == tonumber(bot_id) then  
var = 'البوت'
elseif database:sismember(bot_id..'Sudo:User', user_id) then
var = database:get(bot_id.."Sudo:Rd"..msg.chat_id_) or 'المطور'  
elseif database:sismember(bot_id..'CoSu'..chat_id, user_id) then
var = database:get(bot_id.."CoSu:Rd"..msg.chat_id_) or 'المالك'
elseif database:sismember(bot_id..'Basic:Constructor'..chat_id, user_id) then
var = database:get(bot_id.."BasicConstructor:Rd"..msg.chat_id_) or 'المنشئ اساسي'
elseif database:sismember(bot_id..'Constructor'..chat_id, user_id) then
var = database:get(bot_id.."Constructor:Rd"..msg.chat_id_) or 'المنشئ'  
elseif database:sismember(bot_id..'Manager'..chat_id, user_id) then
var = database:get(bot_id.."Manager:Rd"..msg.chat_id_) or 'المدير' 
elseif database:sismember(bot_id..'Mod:User'..chat_id, user_id) then
var = database:get(bot_id.."Mod:Rd"..msg.chat_id_) or 'الادمن'  
elseif database:sismember(bot_id..'Special:User'..chat_id, user_id) then  
var = database:get(bot_id.."Special:Rd"..msg.chat_id_) or 'المميز'  
else  
var = database:get(bot_id.."Memp:Rd"..msg.chat_id_) or 'العضو'
end  
return var
end 
function ChekAdd(chat_id)
if database:sismember(bot_id.."Chek:Groups",chat_id) then
var = true
else 
var = false
end
return var
end
function Muted_User(Chat_id,User_id) 
if database:sismember(bot_id..'Muted:User'..Chat_id,User_id) then
Var = true
else
Var = false
end
return Var
end
function Ban_User(Chat_id,User_id) 
if database:sismember(bot_id..'Ban:User'..Chat_id,User_id) then
Var = true
else
Var = false
end
return Var
end 
function GBan_User(User_id) 
if database:sismember(bot_id..'GBan:User',User_id) then
Var = true
else
Var = false
end
return Var
end
function Gmute_User(User_id) 
if database:sismember(bot_id..'Gmute:User',User_id) then
Var = true
else
Var = false
end
return Var
end
function AddChannel(User)
local var = true
if database:get(bot_id..'add:ch:id') then
local url , res = https.request("https://api.telegram.org/bot"..token.."/getchatmember?chat_id="..database:get(bot_id..'add:ch:id').."&user_id="..User);
data = json:decode(url)
if res ~= 200 or data.result.status == "left" or data.result.status == "kicked" then
var = false
end
end
return var
end
function getChatId(id)
local chat = {}
local id = tostring(id)
if id:match('^-100') then
local channel_id = id:gsub('-100', '')
chat = {ID = channel_id, type = 'channel'}
else
local group_id = id:gsub('-', '')
chat = {ID = group_id, type = 'group'}
end
return chat
end
function chat_kick(chat,user)
tdcli_function ({
ID = "ChangeChatMemberStatus",
chat_id_ = chat,
user_id_ = user,
status_ = {ID = "ChatMemberStatusKicked"},},function(arg,data) end,nil)
end
function send(chat_id, reply_to_message_id, text)
local TextParseMode = {ID = "TextParseModeMarkdown"}
tdcli_function ({ID = "SendMessage",chat_id_ = chat_id,reply_to_message_id_ = reply_to_message_id,disable_notification_ = 1,from_background_ = 1,reply_markup_ = nil,input_message_content_ = {ID = "InputMessageText",text_ = text,disable_web_page_preview_ = 1,clear_draft_ = 0,entities_ = {},parse_mode_ = TextParseMode,},}, dl_cb, nil)
end
function DeleteMessage(chat,id)
tdcli_function ({
ID="DeleteMessages",
chat_id_=chat,
message_ids_=id
},function(arg,data) 
end,nil)
end
function PinMessage(chat, id)
tdcli_function ({
ID = "PinChannelMessage",
channel_id_ = getChatId(chat).ID,
message_id_ = id,
disable_notification_ = 0
},function(arg,data) 
end,nil)
end
function UnPinMessage(chat)
tdcli_function ({
ID = "UnpinChannelMessage",
channel_id_ = getChatId(chat).ID
},function(arg,data) 
end,nil)
end
local function GetChat(chat_id) 
tdcli_function ({
ID = "GetChat",
chat_id_ = chat_id
},cb, nil) 
end  
function getInputFile(file) 
if file:match('/') then infile = {ID = "InputFileLocal", path_ = file} elseif file:match('^%d+$') then infile = {ID = "InputFileId", id_ = file} else infile = {ID = "InputFilePersistentId", persistent_id_ = file} end return infile 
end
function ked(User_id,Chat_id)
https.request("https://api.telegram.org/bot"..token.."/restrictChatMember?chat_id="..Chat_id.."&user_id="..User_id)
end
function s_api(web) 
local info, res = https.request(web) local req = json:decode(info) if res ~= 200 then return false end if not req.ok then return false end return req 
end 
local function sendText(chat_id, text, reply_to_message_id, markdown) 
send_api = "https://api.telegram.org/bot"..token local url = send_api..'/sendMessage?chat_id=' .. chat_id .. '&text=' .. URL.escape(text) if reply_to_message_id ~= 0 then url = url .. '&reply_to_message_id=' .. reply_to_message_id  end if markdown == 'md' or markdown == 'markdown' then url = url..'&parse_mode=Markdown' elseif markdown == 'html' then url = url..'&parse_mode=HTML' end return s_api(url)  
end
local function Send(chat_id, reply_to_message_id, text)
local TextParseMode = {ID = "TextParseModeMarkdown"}
tdcli_function ({ID = "SendMessage",chat_id_ = chat_id,reply_to_message_id_ = reply_to_message_id,disable_notification_ = 1,from_background_ = 1,reply_markup_ = nil,input_message_content_ = {ID = "InputMessageText",text_ = text,disable_web_page_preview_ = 1,clear_draft_ = 0,entities_ = {},parse_mode_ = TextParseMode,},}, dl_cb, nil)
end
function send_inline_key(chat_id,text,keyboard,inline,reply_id) 
local response = {} response.keyboard = keyboard response.inline_keyboard = inline response.resize_keyboard = true response.one_time_keyboard = false response.selective = false  local send_api = "https://api.telegram.org/bot"..token.."/sendMessage?chat_id="..chat_id.."&text="..URL.escape(text).."&parse_mode=Markdown&disable_web_page_preview=true&reply_markup="..URL.escape(JSON.encode(response)) if reply_id then send_api = send_api.."&reply_to_message_id="..reply_id end return s_api(send_api) 
end
local function GetInputFile(file)  
local file = file or ""   if file:match('/') then  infile = {ID= "InputFileLocal", path_  = file}  elseif file:match('^%d+$') then  infile = {ID= "InputFileId", id_ = file}  else  infile = {ID= "InputFilePersistentId", persistent_id_ = file}  end return infile 
end
local function sendRequest(request_id, chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, input_message_content, callback, extra) 
tdcli_function ({  ID = request_id,chat_id_ = chat_id,reply_to_message_id_ = reply_to_message_id,disable_notification_ = disable_notification,from_background_ = from_background,reply_markup_ = reply_markup,input_message_content_ = input_message_content,}, callback or dl_cb, extra) 
end
local function sendAudio(chat_id,reply_id,audio,title,caption)  
tdcli_function({ID="SendMessage",  chat_id_ = chat_id,  reply_to_message_id_ = reply_id,  disable_notification_ = 0,  from_background_ = 1,  reply_markup_ = nil,  input_message_content_ = {  ID="InputMessageAudio",  audio_ = GetInputFile(audio),  duration_ = '',  title_ = title or '',  performer_ = '',  caption_ = caption or ''  }},dl_cb,nil)
end  
local function sendVideo(chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, video, duration, width, height, caption, cb, cmd)
local input_message_content = { ID = "InputMessageVideo",  video_ = getInputFile(video),  added_sticker_file_ids_ = {},  duration_ = duration or 0,  width_ = width or 0,  height_ = height or 0,  caption_ = caption}sendRequest('SendMessage', chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, input_message_content, cb, cmd)  
end
function sendDocument(chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, document, caption, dl_cb, cmd) 
tdcli_function ({ID = "SendMessage",chat_id_ = chat_id,reply_to_message_id_ = reply_to_message_id,disable_notification_ = disable_notification,from_background_ = from_background,reply_markup_ = reply_markup,input_message_content_ = {ID = "InputMessageDocument",document_ = getInputFile(document),caption_ = caption},}, dl_cb, cmd) 
end
local function sendVoice(chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, voice, duration, waveform, caption, cb, cmd)  
local input_message_content = {   ID = "InputMessageVoice",   voice_ = getInputFile(voice),  duration_ = duration or 0,   waveform_ = waveform,caption_ = caption  }  sendRequest('SendMessage', chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, input_message_content, cb, cmd) 
end
local function sendSticker(chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, sticker, cb, cmd)  
local input_message_content = {ID = "InputMessageSticker",   sticker_ = getInputFile(sticker),width_ = 0,height_ = 0  } sendRequest('SendMessage', chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, input_message_content, cb, cmd) 
end
local function sendPhoto(chat_id, reply_to_message_id, disable_notification, from_background, reply_markup, photo,caption)   
tdcli_function ({ ID = "SendMessage",   chat_id_ = chat_id,   reply_to_message_id_ = reply_to_message_id,   disable_notification_ = disable_notification,   from_background_ = from_background,   reply_markup_ = reply_markup,   input_message_content_ = {   ID = "InputMessagePhoto",   photo_ = getInputFile(photo),   added_sticker_file_ids_ = {},   width_ = 0,   height_ = 0,   caption_ = caption  },   }, dl_cb, nil)  
end
function Reply_Status(msg,user_id,status,text)
tdcli_function ({ID = "GetUser",user_id_ = user_id},function(arg,data) 
if data.first_name_ ~= false then
local UserName = (data.username_ or "GGGMG")
local NameUser = "*꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ["..data.first_name_.."](T.me/"..UserName..")"
local NameUserr = "*꙳.︙اسم المستخدم »* ["..data.first_name_.."](T.me/"..UserName..")"
if status == "reply" then
send(msg.chat_id_, msg.id_,NameUserr.."\n"..text)
return false
end
else
send(msg.chat_id_, msg.id_,"꙳.︙ࢦحِۢـساب محذٌۅف ستخدمِہ ﮼ﺂࢦامِࢪ ؏ـدل  .")
end
end,nil)   
end 
function Total_Msg(msgs)  
local RAN_Msg = ''  
if msgs < 100 then 
RAN_Msg = 'غير متفاعل' 
elseif msgs < 200 then 
RAN_Msg = 'بده يتحسن' 
elseif msgs < 400 then 
RAN_Msg = 'شبه متفاعل' 
elseif msgs < 700 then 
RAN_Msg = 'متفاعل' 
elseif msgs < 1200 then 
RAN_Msg = 'متفاعل قوي' 
elseif msgs < 2000 then 
RAN_Msg = 'متفاعل جدا' 
elseif msgs < 3500 then 
RAN_Msg = 'اقوى تفاعل'  
elseif msgs < 4000 then 
RAN_Msg = 'متفاعل نار' 
elseif msgs < 4500 then 
RAN_Msg = 'قمة التفاعل'
elseif msgs < 5500 then 
RAN_Msg = 'اقوى متفاعل' 
elseif msgs < 7000 then 
RAN_Msg = 'ملك التفاعل' 
elseif msgs < 9500 then 
RAN_Msg = 'امبروطور التفاعل' 
elseif msgs < 10000000000 then 
RAN_Msg = 'رب التفاعل'  
end 
return RAN_Msg 
end
function Get_Info(msg,chat,user) 
local Chek_Info = https.request('https://api.telegram.org/bot'..token..'/getChatMember?chat_id='.. chat ..'&user_id='.. user..'')
local Json_Info = JSON.decode(Chek_Info)
if Json_Info.ok == true then
if Json_Info.result.status == "creator" then
Send(msg.chat_id_,msg.id_,'\n*꙳.︙مالك الكروب*')   
return false  end 
if Json_Info.result.status == "member" then
Send(msg.chat_id_,msg.id_,'\n*꙳.︙مجرد عضو هنا* ')   
return false  end
if Json_Info.result.status == 'left' then
Send(msg.chat_id_,msg.id_,'\n*꙳.︙الشخص غير موجود هنا* ')   
return false  end
if Json_Info.result.status == "administrator" then
if Json_Info.result.can_change_info == true then
info = 'ꪜ'
else
info = '✘'
end
if Json_Info.result.can_delete_messages == true then
delete = 'ꪜ'
else
delete = '✘'
end
if Json_Info.result.can_invite_users == true then
invite = 'ꪜ'
else
invite = '✘'
end
if Json_Info.result.can_pin_messages == true then
pin = 'ꪜ'
else
pin = '✘'
end
if Json_Info.result.can_restrict_members == true then
restrict = 'ꪜ'
else
restrict = '✘'
end
if Json_Info.result.can_promote_members == true then
promote = 'ꪜ'
else
promote = '✘'
end
Send(chat,msg.id_,'\n*- الرتبة : مشرف*  '..'\n*- والصلاحيات هي ↓* \nٴ━━━━━━━━━━'..'\n*- تغير معلومات الكروب ↞* ❴ '..info..' ❵'..'\n*- حذف الرسائل ↞* ❴ '..delete..' ❵'..'\n*- حظر المستخدمين ↞* ❴ '..restrict..' ❵'..'\n*- دعوة مستخدمين ↞* ❴ '..invite..' ❵'..'\n*- تثبيت الرسائل ↞* ❴ '..pin..' ❵'..'\n*- اضافة مشرفين جدد ↞* ❴ '..promote..' ❵')   
end
end
end
function GetFile_Bot(msg)
local list = database:smembers(bot_id..'Chek:Groups') 
local t = '{"BOT_ID": '..bot_id..',"GP_BOT":{'  
for k,v in pairs(list) do   
NAME = 'RAN Chat'
link = database:get(bot_id.."Private:Group:Link"..msg.chat_id_) or ''
ASAS = database:smembers(bot_id..'Basic:Constructor'..v)
MNSH = database:smembers(bot_id..'Constructor'..v)
MDER = database:smembers(bot_id..'Manager'..v)
MOD = database:smembers(bot_id..'Mod:User'..v)
if k == 1 then
t = t..'"'..v..'":{"RAN":"'..NAME..'",'
else
t = t..',"'..v..'":{"RAN":"'..NAME..'",'
end
if #ASAS ~= 0 then 
t = t..'"ASAS":['
for k,v in pairs(ASAS) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
if #MOD ~= 0 then
t = t..'"MOD":['
for k,v in pairs(MOD) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
if #MDER ~= 0 then
t = t..'"MDER":['
for k,v in pairs(MDER) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
if #MNSH ~= 0 then
t = t..'"MNSH":['
for k,v in pairs(MNSH) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
t = t..'"linkgroup":"'..link..'"}' or ''
end
t = t..'}}'
local File = io.open('./'..bot_id..'.json', "w")
File:write(t)
File:close()
sendDocument(msg.chat_id_, msg.id_,0, 1, nil, './'..bot_id..'.json', '- ؏ـددٌ ࢦڪࢪۅپات پࢦبۅت ۿۧي { '..#list..'}')
end
function download_to_file(url, file_path) 
local respbody = {} 
local options = { url = url, sink = ltn12.sink.table(respbody), redirect = true } 
local response = nil 
options.redirect = false 
response = {https.request(options)} 
local code = response[2] 
local headers = response[3] 
local status = response[4] 
if code ~= 200 then return false, code 
end 
file = io.open(file_path, "w+") 
file:write(table.concat(respbody)) 
file:close() 
return file_path, code 
end 
function Addjpg(msg,chat,ID_FILE,File_Name)
local File = json:decode(https.request('https://api.telegram.org/bot'.. token..'/getfile?file_id='..ID_FILE)) 
download_to_file('https://api.telegram.org/file/bot'..token..'/'..File.result.file_path,File_Name) 
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil,'./'..File_Name,'تم تحويل الملصق الى صوره') 
os.execute('rm -rf ./'..File_Name) 
end
function Addvoi(msg,chat,vi,ty)
local eq = json:decode(https.request('https://api.telegram.org/bot'.. token..'/getfile?file_id='..vi)) 
download_to_file('https://api.telegram.org/file/bot'..token..'/'..eq.result.file_path,ty) 
sendVoice(msg.chat_id_, msg.id_, 0, 1, nil, './'..ty)   
os.execute('rm -rf ./'..ty) 
end
function Addmp3(msg,chat,kkl,ffrr)
local eer = json:decode(https.request('https://api.telegram.org/bot'.. token..'/getfile?file_id='..kkl)) 
download_to_file('https://api.telegram.org/file/bot'..token..'/'..eer.result.file_path,ffrr) 
sendAudio(msg.chat_id_,msg.id_,'./'..ffrr,"@ooouo")  
os.execute('rm -rf ./'..ffrr) 
end
function Addsticker(msg,chat,Sd,rre)
local Qw = json:decode(https.request('https://api.telegram.org/bot'.. token..'/getfile?file_id='..Sd)) 
download_to_file('https://api.telegram.org/file/bot'..token..'/'..Qw.result.file_path,rre) 
sendSticker(msg.chat_id_, msg.id_, 0, 1, nil, './'..rre)
os.execute('rm -rf ./'..rre) 
end
function AddFile_Bot(msg,chat,ID_FILE,File_Name)
if File_Name:match('.json') then
if tonumber(File_Name:match('(%d+)')) ~= tonumber(bot_id) then 
send(chat,msg.id_,"* ꙳.︙ۿۧذا ࢦمِلف مِہ ࢦبۅت .*")
return false 
end  
local File = json:decode(https.request('https://api.telegram.org/bot'.. token..'/getfile?file_id='..ID_FILE) ) 
download_to_file('https://api.telegram.org/file/bot'..token..'/'..File.result.file_path, ''..File_Name) 
send(chat,msg.id_," *꙳.︙جاري ...*\n*꙳.︙رفع الملف الان*")
else
send(chat,msg.id_,"* ꙳.︙عذرا الملف ليس بصيغة {JSON} يرجى رفع الملف الصحيح*")
end  
local info_file = io.open('./'..bot_id..'.json', "r"):read('*a')
local groups = JSON.decode(info_file)
for idg,v in pairs(groups.GP_BOT) do
database:sadd(bot_id..'Chek:Groups',idg)  
database:set(bot_id..'lock:tagservrbot'..idg,true)   
list ={"lock:Bot:kick","lock:user:name","lock:hashtak","lock:Cmd","lock:Link","lock:forward","lock:Keyboard","lock:geam","lock:Photo","lock:Animation","lock:Video","lock:Audio","lock:vico","lock:Sticker","lock:Document","lock:Unsupported","lock:Markdaun","lock:Contact","lock:Spam"}
for i,lock in pairs(list) do 
database:set(bot_id..lock..idg,'del')
end
if v.MNSH then
for k,idmsh in pairs(v.MNSH) do
database:sadd(bot_id..'Constructor'..idg,idmsh)
end
end
if v.MDER then
for k,idmder in pairs(v.MDER) do
database:sadd(bot_id..'Manager'..idg,idmder)  
end
end
if v.MOD then
for k,idmod in pairs(v.MOD) do
database:sadd(bot_id..'Mod:User'..idg,idmod)  
end
end
if v.ASAS then
for k,idASAS in pairs(v.ASAS) do
database:sadd(bot_id..'Basic:Constructor'..idg,idASAS)  
end
end
end
send(chat,msg.id_,"\n *꙳.︙تم رفع الملف بنجاح وتفعيل الكروبات*\n*꙳.︙ورفع {الامنشئين الاساسين ; والمنشئين ; *والمدراء; والادمنيه} بنجاح")
end
local function trigger_anti_spam(msg,type)
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data)
local Name = '['..utf8.sub(data.first_name_,0,40)..'](tg://user?id='..data.id_..')'
if type == 'kick' then 
Text = '\n *꙳.︙العضــو » '..Name..'*\n*꙳.︙ڪام يكࢪࢪ ۅنطࢪد .* '  
sendText(msg.chat_id_,Text,0,'md')
chat_kick(msg.chat_id_,msg.sender_user_id_) 
my_ide = msg.sender_user_id_
msgm = msg.id_
local num = 100
for i=1,tonumber(num) do
tdcli_function ({ID = "GetMessages",chat_id_ = msg.chat_id_,message_ids_ = {[0] = msgm}},function(arg,data) 
if data.messages_[0] ~= false then
if tonumber(my_ide) == (data.messages_[0].sender_user_id_) then
DeleteMessage(msg.chat_id_, {[0] = data.messages_[0].id_})
end;end;end, nil)
msgm = msgm - 1048576
end
return false  
end 
if type == 'del' then 
DeleteMessage(msg.chat_id_,{[0] = msg.id_})
my_ide = msg.sender_user_id_
msgm = msg.id_
local num = 100
for i=1,tonumber(num) do
tdcli_function ({ID = "GetMessages",chat_id_ = msg.chat_id_,message_ids_ = {[0] = msgm}},function(arg,data) 
if data.messages_[0] ~= false then
if tonumber(my_ide) == (data.messages_[0].sender_user_id_) then
DeleteMessage(msg.chat_id_, {[0] = data.messages_[0].id_})
end;end;end, nil)
msgm = msgm - 1048576
end
end 
if type == 'keed' then
https.request("https://api.telegram.org/bot" .. token .. "/restrictChatMember?chat_id=" ..msg.chat_id_.. "&user_id=" ..msg.sender_user_id_.."") 
database:sadd(bot_id..'Muted:User'..msg.chat_id_,msg.sender_user_id_) 
msgm = msg.id_
my_ide = msg.sender_user_id_
local num = 100
for i=1,tonumber(num) do
tdcli_function ({ID = "GetMessages",chat_id_ = msg.chat_id_,message_ids_ = {[0] = msgm}},function(arg,data) 
if data.messages_[0] ~= false then
if tonumber(my_ide) == (data.messages_[0].sender_user_id_) then
DeleteMessage(msg.chat_id_, {[0] = data.messages_[0].id_})
end;end;end, nil)
msgm = msgm - 1048576
end
Text = '\n *꙳.︙العضــو » '..Name..'*\n*꙳.︙ڪام يكࢪࢪ ۅتقيدِ .* '  
sendText(msg.chat_id_,Text,0,'md')
return false  
end  
if type == 'mute' then
Text = '\n *꙳.︙العضــو » '..Name..'*\n*꙳.︙ڪام يكࢪࢪ ۅنطࢪد .* '  
sendText(msg.chat_id_,Text,0,'md')
database:sadd(bot_id..'Muted:User'..msg.chat_id_,msg.sender_user_id_) 
msgm = msg.id_
my_ide = msg.sender_user_id_
local num = 100
for i=1,tonumber(num) do
tdcli_function ({ID = "GetMessages",chat_id_ = msg.chat_id_,message_ids_ = {[0] = msgm}},function(arg,data) 
if data.messages_[0] ~= false then
if tonumber(my_ide) == (data.messages_[0].sender_user_id_) then
DeleteMessage(msg.chat_id_, {[0] = data.messages_[0].id_})
end;end;end, nil)
msgm = msgm - 1048576
end
return false  
end
end,nil)   
end  
function plugin_Peland(msg)
for v in io.popen('ls File_Bot'):lines() do
if v:match(".lua$") then
plugin = dofile("File_Bot/"..v)
if plugin.Peland and msg then
pre_msg = plugin.Peland(msg)
end
end
end
send(msg.chat_id_, msg.id_,pre_msg)  
end

--------------------------------------------------------------------------------------------------------------
function SourceRAN(msg,data) -- بداية العمل امـيـر الـ دلـيـم
if msg then
local text = msg.content_.text_
--------------------------------------------------------------------------------------------------------------
if msg.chat_id_ then
local id = tostring(msg.chat_id_)
if id:match("-100(%d+)") then
database:incr(bot_id..'Msg_User'..msg.chat_id_..':'..msg.sender_user_id_) 
Chat_Type = 'GroupBot' 
elseif id:match("^(%d+)") then
database:sadd(bot_id..'User_Bot',msg.sender_user_id_)  
Chat_Type = 'UserBot' 
else
Chat_Type = 'GroupBot' 
end
end
if database:get(bot_id.."Bc:Grops:Pin" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == "الغاء" or text == "الغاء ꙳." then   
send(msg.chat_id_, msg.id_," ꙳.︙تمِہ ﮼ﺂࢦـغاء ﮼ﺂࢦأذا؏ـۿۧہ .")
database:del(bot_id.."Bc:Grops:Pin" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false
end 
local list = database:smembers(bot_id.."Chek:Groups") 
if msg.content_.text_ then
for k,v in pairs(list) do 
send(v, 0,"["..msg.content_.text_.."]")  
database:set(bot_id..'Msg:Pin:Chat'..v,msg.content_.text_) 
end
elseif msg.content_.photo_ then
if msg.content_.photo_.sizes_[0] then
photo = msg.content_.photo_.sizes_[0].photo_.persistent_id_
elseif msg.content_.photo_.sizes_[1] then
photo = msg.content_.photo_.sizes_[1].photo_.persistent_id_
end
for k,v in pairs(list) do 
sendPhoto(v, 0, photo,(msg.content_.caption_ or ""))
database:set(bot_id..'Msg:Pin:Chat'..v,photo) 
end 
elseif msg.content_.animation_ then
for k,v in pairs(list) do 
sendDocument(v, 0, msg.content_.animation_.animation_.persistent_id_,(msg.content_.caption_ or "")) 
database:set(bot_id..'Msg:Pin:Chat'..v,msg.content_.animation_.animation_.persistent_id_)
end 
elseif msg.content_.sticker_ then
for k,v in pairs(list) do 
sendSticker(v, 0, msg.content_.sticker_.sticker_.persistent_id_)   
database:set(bot_id..'Msg:Pin:Chat'..v,msg.content_.sticker_.sticker_.persistent_id_) 
end 
end
send(msg.chat_id_, msg.id_," ꙳.︙تمِہ ﮼ﺂࢦاذا؏ـۿۧ ࢦـ *~ "..#list.." ~* ڪࢪۅپ  . ")
database:del(bot_id.."Bc:Grops:Pin" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false
end
--------------------------------------------------------------------------------------------------------------
if Chat_Type == 'UserBot' then
if text == '/start' then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if DevRANW(msg) then
local bl = ' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ࢦمِطۅࢪ .*\n*꙳.︙﮼ﺂنتا ﮼ﺂࢦمِطۅࢪ ﺂࢦاساسيہ ࢦپۅت . *\n﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎ء\n*꙳.︙تڪدࢪ تتحڪمِہ پاۅﺂمِࢪ ࢦپۅت . *\n*꙳.︙ عہטּ طࢪيق ࢦكيپۅࢪدِ .*\n*꙳.︙قناة ﮼ﺂ ࢦسۅࢪسہ  *[دِۅسہ ۿۧنا](t.me/GGGMG)'
local keyboard = {
{'الاحصائيات ꙳.','قناه ﮼تحِۢـديثات ࢦسۅࢪسہ . ꙳.'},
{'تعطيل التواصل ꙳.','تفعيل التواصل ꙳.'},
{'ضع اسم للبوت ꙳.','المطورين ꙳.','قائمه العام ꙳.'},
{'الثانويين ꙳.','مسح الثانويين ꙳.'},
{'المشتركين ꙳.','الكروبات ꙳.'},
{'ضع كليشه ستارت ꙳.','حذف كليشه ستارت ꙳.'},
{'اذاعه ꙳.','اذاعه خاص ꙳.'},
{'اذاعه بالتثبيت ꙳.','قائمه الكتم العام ꙳.'},
{'تغير رساله الاشتراك','حذف رساله الاشتراك ꙳.','تغير الاشتراك'},
{'اذاعه بالتوجيه ꙳.','اذاعه بالتوجيه خاص ꙳.'},
{'تفعيل الاشتراك الاجباري ꙳.','تعطيل الاشتراك الاجباري ꙳.'},
{'الاشتراك الاجباري ꙳.','وضع قناة الاشتراك ꙳.'},
{'تفعيل البوت الخدمي ꙳.','تعطيل البوت الخدمي ꙳.'},
{'تنظيف الكروبات ꙳.','تنظيف المشتركين ꙳.'},
{'تفعيل النسخه التلقائيه ꙳.','تعطيل النسخه التلقائيه ꙳.'},
{'تغيير المطور الاساسي ꙳.'}, 
{'جلب نسخه الاحتياطيه ꙳.'},
{'تحديث السورس ꙳.','الاصدار ꙳.'},
{'معلومات السيرفر ꙳.'},
{'الغاء ꙳.'},
}
send_inline_key(msg.chat_id_,bl,keyboard)
else
if not database:get(bot_id..'Start:Time'..msg.sender_user_id_) then
local start = database:get(bot_id.."Start:Bot")  
if start then 
SourceRANr = start
else
Namot = (database:get(bot_id..'Name:Bot') or 'ران')
SourceRANr = '*꙳.︙اهلا عزيزي*\n*꙳.︙انا بوت ﮼ﺂسمِيہ '..Namot..'*\n*꙳.︙اختصاصي حمايه الكروبات*\n*꙳.︙من تكرار والسبام والتوجيه والخ…*\n*꙳.︙لتفعيلي اتبع الاخطوات…↓*\n*꙳.︙اضفني الي مجموعتك وقم بترقيتي ادمن واكتب كلمه { تفعيل }  ويستطيع »{ منشئ او المشرفين } بتفعيل فقط*\n꙳.︙[قناة سورس البوت](http://t.me/GGGMG)'
end
send(msg.chat_id_, msg.id_, SourceRANr) 
end
end
database:setex(bot_id..'Start:Time'..msg.sender_user_id_,300,true)
return false
end
if not DevRANW(msg) and not database:sismember(bot_id..'Ban:User_Bot',msg.sender_user_id_) and not database:get(bot_id..'Tuasl:Bots') then
send(msg.sender_user_id_, msg.id_,' *꙳.︙تمِہ ۅصࢦت ࢪسالتڪك .*\n*꙳.︙بـ؏ـد شۅჂ̤ نتظࢪ ࢦࢪدِ .*')
tdcli_function({ID ="GetChat",chat_id_=SUDO},function(arg,chat)  
tdcli_function({ID ="GetChat",chat_id_=msg.sender_user_id_},function(arg,chat)  
tdcli_function({ID="ForwardMessages",chat_id_=SUDO,from_chat_id_= msg.sender_user_id_,message_ids_={[0]=msg.id_},disable_notification_=1,from_background_=1},function(arg,data) 
tdcli_function({ID="GetUser",user_id_=msg.sender_user_id_},function(arg,ta) 
if data and data.messages_ and data.messages_[0] ~= false and data.ID ~= "Error" then
if data and data.messages_ and data.messages_[0].content_.sticker_ then
sendText(SUDO,'*꙳.︙شخص دࢪ࣪ مِلصق ↓* \n ['..string.sub(ta.first_name_,0, 40)..'](tg://user?id='..ta.id_..')',0,'md') 
return false
end;end;end,nil);end,nil);end,nil);end,nil);end
if DevRANW(msg) and msg.reply_to_message_id_ ~= 0  then
tdcli_function({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)},function(extra, result, success) 
if result.forward_info_.sender_user_id_ then 
id_user = result.forward_info_.sender_user_id_
end 
tdcli_function ({ID = "GetUser",user_id_ = id_user},function(arg,data) 
if text == 'حظر' then
local Name = '['..string.sub(data.first_name_,0, 40)..'](tg://user?id='..id_user..')'
local Text = ' *꙳.︙المستخدم » '..Name..'*\n*꙳.︙تمِہ نحظࢪ مِہטּ ﮼ﺂࢦتۅاصل .*'
sendText(SUDO,Text,msg.id_/2097152/0.5,'md')
database:sadd(bot_id..'Ban:User_Bot',data.id_)  
return false  
end 
if text =='الغاء الحظر' then
local Name = '['..string.sub(data.first_name_,0, 40)..'](tg://user?id='..id_user..')'
local Text = ' *꙳.︙المستخدم » '..Name..'*\n*꙳.︙تمِہ ﮼ﺂࢦـغاء ﮼حظࢪۿۧ مِہטּ ࢦتۅاصࢦ .*'
sendText(SUDO,Text,msg.id_/2097152/0.5,'md')
database:srem(bot_id..'Ban:User_Bot',data.id_)  
return false  
end 

tdcli_function({ID='GetChat',chat_id_ = id_user},function(arg,dataq)
tdcli_function ({ ID = "SendChatAction",chat_id_ = id_user, action_ = {  ID = "SendMessageTypingAction", progress_ = 100} },function(arg,ta) 
if ta.code_ == 400 or ta.code_ == 5 then
local RAN_Msg = '\n *꙳.︙ࢦشخصہ حظࢪ ﮼ﺂࢦبۅت .*'
send(msg.chat_id_, msg.id_,RAN_Msg) 
return false  
end 
if text then
send(id_user,msg.id_,text)
local Name = '['..string.sub(data.first_name_,0, 40)..'](tg://user?id='..id_user..')'
local Text = ' *꙳.︙المستخدم »* '..Name..'\n*꙳.︙ۅصࢦت ࢦࢪساࢦۿۧ .*'
sendText(SUDO,Text,msg.id_/2097152/0.5,'md')
return false
end
if msg.content_.ID == 'MessageSticker' then
sendSticker(id_user, msg.id_, 0, 1, nil, msg.content_.sticker_.sticker_.persistent_id_)   
local Name = '['..string.sub(data.first_name_,0, 40)..'](tg://user?id='..id_user..')'
local Text = ' *꙳.︙المستخدم »* '..Name..'\n*꙳.︙ۅصࢦت ࢦࢪساࢦۿۧ .*'
sendText(SUDO,Text,msg.id_/2097152/0.5,'md')
return false
end  
if msg.content_.ID == 'MessagePhoto' then
sendPhoto(id_user, msg.id_, 0, 1, nil,msg.content_.photo_.sizes_[0].photo_.persistent_id_,(msg.content_.caption_ or ''))
local Name = '['..string.sub(data.first_name_,0, 40)..'](tg://user?id='..id_user..')'
local Text = ' *꙳.︙المستخدم »* '..Name..'\n*꙳.︙ۅصࢦت ࢦࢪساࢦۿۧ .*'
sendText(SUDO,Text,msg.id_/2097152/0.5,'md')
return false
end 
if msg.content_.ID == 'MessageAnimation' then
sendDocument(id_user, msg.id_, 0, 1,nil, msg.content_.animation_.animation_.persistent_id_)
local Name = '['..string.sub(data.first_name_,0, 40)..'](tg://user?id='..id_user..')'
local Text = ' *꙳.︙المستخدم »* '..Name..'\n*꙳.︙ۅصࢦت ࢦࢪساࢦۿۧ .*'
sendText(SUDO,Text,msg.id_/2097152/0.5,'md')
return false
end 
if msg.content_.ID == 'MessageVoice' then
sendVoice(id_user, msg.id_, 0, 1, nil, msg.content_.voice_.voice_.persistent_id_)
local Name = '['..string.sub(data.first_name_,0, 40)..'](tg://user?id='..id_user..')'
local Text = ' *꙳.︙المستخدم »* '..Name..'\n*꙳.︙ۅصࢦت ࢦࢪساࢦۿۧ .*'
sendText(SUDO,Text,msg.id_/2097152/0.5,'md')
return false
end 
end,nil)
end,nil)
end,nil)
end,nil)
end 
if text == 'تفعيل النسخه التلقائيه ꙳.' and SudoBot(msg) then  
send(msg.chat_id_, msg.id_,"*꙳.︙تمِہ تـفـ؏ـيل ࢦنسخۿ ﮼ﺂࢦاحتياطيۿۧ ࢦتلقائيۿۧ  .*") 
database:del(bot_id.."AutoFile")
end
if text == 'تعطيل النسخه التلقائيه ꙳.' and SudoBot(msg) then  
send(msg.chat_id_, msg.id_,"*꙳.︙تمِہ تـ؏ـطيل ࢦنسخۿ ﮼ﺂࢦاحتياطيۿۧ ࢦتلقائيۿۧ  .*") 
database:set(bot_id.."AutoFile",true) 
end
if text == 'مسح الثانويين ꙳.' and SudoBot(msg) then  
database:del(bot_id.."DEV:Sudo:T")
send(msg.chat_id_, msg.id_, "\n*꙳.︙تمِہ مِسحہ قائمِۿۧ ࢦمِطۅࢪينہ اࢦثانۅيين  .* ")
end
if text == 'الثانويين ꙳.' and SudoBot(msg) then
local list = database:smembers(bot_id.."DEV:Sudo:T")
t = "\n*꙳.︙ۿۧهلا ﮼حِۢـياتيہ المِطۅࢪينہ ࢦثانۅيين  .* \n *﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎* \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- ("..v..")\n"
end
end
if #list == 0 then
t = "*꙳.︙مـڪو مِطۅࢪينہ ࢦثانۅيين  .*"
end
send(msg.chat_id_, msg.id_, t)
end
if text == 'تفعيل التواصل ꙳.' and DevRANW(msg) then  
if database:get(bot_id..'Tuasl:Bots') then
database:del(bot_id..'Tuasl:Bots') 
Text = '\n *꙳.︙تمِہ تفـ؏ـيࢦ ﮼ﺂلتۅاصل .* ' 
else
Text = '\n *꙳.︙تمِہ تفـ؏ـيࢦ ﮼ﺂلتۅاصل .* '
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تعطيل التواصل ꙳.' and DevRANW(msg) then  
if not database:get(bot_id..'Tuasl:Bots') then
database:set(bot_id..'Tuasl:Bots',true) 
Text = '\n *꙳.︙تمِہ تـ؏ـطيࢦ ﮼ﺂلتۅاصل .*' 
else
Text = '\n *꙳.︙تمِہ تـ؏ـطيࢦ ﮼ﺂلتۅاصل .*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تفعيل البوت الخدمي ꙳.' and DevRANW(msg) then  
if database:get(bot_id..'Free:Bots') then
database:del(bot_id..'Free:Bots') 
Text = '\n *꙳.︙تمِہ تـفـ؏ـيل ﮼ﺂࢦپۅت ࢦخدِمِـჂ̤  .* ' 
else
Text = '\n *꙳.︙تمِہ تـفـ؏ـيل ﮼ﺂࢦپۅت ࢦخدِمِـჂ̤  .* '
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تعطيل البوت الخدمي ꙳.' and DevRANW(msg) then  
if not database:get(bot_id..'Free:Bots') then
database:set(bot_id..'Free:Bots',true) 
Text = '\n *꙳.︙تمِہ تـ؏ـطيل  ﮼ﺂࢦپۅت ࢦخدِمِـჂ̤  .*' 
else
Text = '\n *꙳.︙تمِہ تـ؏ـطيل  ﮼ﺂࢦپۅت ࢦخدِمِـჂ̤  .*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text and database:get(bot_id..'Start:Bots') then
if text == 'الغاء' or text == 'الغاء ꙳.' then   
send(msg.chat_id_, msg.id_,' *꙳.︙﮼ﺂ ࢦغاء حفظِ ڪليشۿۧ ستاࢪت .*')
database:del(bot_id..'Start:Bots') 
return false
end
database:set(bot_id.."Start:Bot",text)  
send(msg.chat_id_, msg.id_,' *꙳.︙تمِہ حفظِ ڪليشۿۧ ستاࢪت .*')
database:del(bot_id..'Start:Bots') 
return false
end
if text == 'ضع كليشه ستارت ꙳.' and DevRANW(msg) then 
database:set(bot_id..'Start:Bots',true) 
send(msg.chat_id_, msg.id_,' *꙳.︙دࢪ࣪ ࢦڪليشۿۧ .*')
return false
end
if text == 'حذف كليشه ستارت ꙳.' and DevRANW(msg) then 
database:del(bot_id..'Start:Bot') 
send(msg.chat_id_, msg.id_,' *꙳.︙تمِہ مِسحہ ڪليشۿۧ ستاࢪت .*')
end
if text == 'معلومات السيرفر ꙳.' and DevRANW(msg) then 
send(msg.chat_id_, msg.id_, io.popen([[
linux_version=`lsb_release -ds`
memUsedPrc=`free -m | awk 'NR==2{printf "%sMB/%sMB {%.2f%}\n", $3,$2,$3*100/$2 }'`
HardDisk=`df -lh | awk '{if ($6 == "/") { print $3"/"$2" ~ {"$5"}" }}'`
CPUPer=`top -b -n1 | grep "Cpu(s)" | awk '{print $2 + $4}'`
uptime=`uptime | awk -F'( |,|:)+' '{if ($7=="min") m=$6; else {if ($7~/^day/) {d=$6;h=$8;m=$9} else {h=$6;m=$7}}} {print d+0,"days,",h+0,"hours,",m+0,"minutes."}'`
echo '⇗ نظام التشغيل ⇖•\n*»» '"$linux_version"'*' 
echo '*———————————~*\n✺✔{ الذاكره العشوائيه } ⇎\n*»» '"$memUsedPrc"'*'
echo '*———————————~*\n✺✔{ وحـده الـتـخـزيـن } ⇎\n*»» '"$HardDisk"'*'
echo '*———————————~*\n✺✔{ الـمــعــالــج } ⇎\n*»» '"`grep -c processor /proc/cpuinfo`""Core ~ {$CPUPer%} "'*'
echo '*———————————~*\n✺✔{ الــدخــول } ⇎\n*»» '`whoami`'*'
echo '*———————————~*\n✺✔{ مـده تـشغيـل الـسـيـرفـر }⇎\n*»» '"$uptime"'*'
]]):read('*all'))  
end
if database:get(bot_id.."Ed:DevBots") then
if text and text:match("^(%d+)$") then
local IdDe = text:match("^(%d+)$")
tdcli_function ({ID = "GetUser",user_id_ = IdDe},function(arg,data) 
if data.username_ ~= false then
send(msg.chat_id_,msg.id_, "*꙳.︙تمِہ تغيࢪ ࢦمطۅࢪ ﮼ﺂࢦاساسـჂ̤ .*")
local A = io.open("Info.lua", 'w')
A:write([[
token = "]]..token..[["
SUDO = ]]..IdDe..[[  
UserName = "]]..data.username_..[["
]])
A:close()
database:del(bot_id.."Ed:DevBots")
dofile('RAN.lua')  
else
send(msg.chat_id_,msg.id_, "*꙳.︙؏ـينيہ ﮼صاحِۢـب ۿۧذا ﮼ﺂࢦايدჂ̤ مِـ؏ـندا مـ؏ـࢪف دࢪ࣪ ﮼ﺂيدჂ̤ غيࢪا   .*")
end
end,nil)
end
end
if text =='تغيير المطور الاساسي ꙳.' and SudoBot(msg) then
send(msg.chat_id_, msg.id_,'*꙳.︙ دࢪ࣪ ﮼ﺂيدჂ̤ لچديد مِال ࢦمِطۅࢪ ﮼ﺂࢦاساسـჂ̤  .*')
database:set(bot_id..'Ed:DevBots',true) 
end
if text =='تغيير المطور الاساسي ꙳.' and not SudoBot(msg) then
send(msg.chat_id_, msg.id_,'*꙳.︙مِتڪدِࢪ تغيࢪ ࢦمِطۅࢪ ﮼ﺂ ࢦاساسـჂ̤ .*')
end
if text == 'تحديث السورس ꙳.' and DevRANW(msg) then 
os.execute('rm -rf RAN.lua')
os.execute('wget https://raw.githubusercontent.com/RAN-DEVL/RAN/main/RAN.lua')
send(msg.chat_id_, msg.id_,' *꙳.︙تمِہ ﮼تحِۢـديث ࢦسۅࢪسہ .* \n*꙳.︙؏ـندڪك ﮼ﺂخيࢪ ﮼ﺂصداࢪ سۅࢪسہ ࢪﺂטּ  .ن*\n*꙳.︙﮼ﺂࢦاصداࢪ » { 2.8v}*')
dofile('RAN.lua')  
end
if text == 'الاصدار ꙳.' and DevRANW(msg) then 
database:del(bot_id..'Srt:Bot') 
send(msg.chat_id_, msg.id_,' *꙳.︙﮼ﺂصداࢪ سۅࢪسہ ࢪﺂטּ  .* \n*꙳.︙﮼ﺂࢦاصداࢪ »{ 2.8v}*')
end
if text == 'قناه ﮼تحِۢـديثات ࢦسۅࢪسہ . ꙳.' and DevRANW(msg) then 
database:del(bot_id..'Srt:Bot') 
send(msg.chat_id_, msg.id_,' ꙳.︙[﮼تحِۢـديثات ࢦسۅࢪسہ .](t.me/GGGMG) \n꙳.︙[قٰناۿۧ ࢦسۅࢪسہ .](t.me/GGGMG)')
end
if text == "ضع اسم للبوت ꙳." and DevRANW(msg) then  
database:setex(bot_id..'Set:Name:Bot'..msg.sender_user_id_,300,true) 
send(msg.chat_id_, msg.id_," *꙳.︙ارسل اليه الاسم الان* ")
return false
end
if text == 'الاحصائيات ꙳.' and DevRANW(msg) then 
local Groups = database:scard(bot_id..'Chek:Groups')  
local Users = database:scard(bot_id..'User_Bot')  
Text = ' ﮼ﺂࢦاحِۢـصائيات . ꙳. \n'..' *꙳.︙؏ـددِ ࢦڪࢪۅپات . » {'..Groups..'}'..'*\n *꙳.︙؏ـددِ ࢦمشتࢪڪينہ . » {'..Users..'}*'
send(msg.chat_id_, msg.id_,Text) 
return false
end
if text == 'المشتركين ꙳.' and DevRANW(msg) then 
local Groups = database:scard(bot_id..'Chek:Groups')  
local Users = database:scard(bot_id..'User_Bot')  
Text = '\n *꙳.︙ࢦمشتࢪڪينہ : {`'..Users..'`}*'
send(msg.chat_id_, msg.id_,Text) 
return false
end
if text == 'الكروبات ꙳.' and DevRANW(msg) then 
local Groups = database:scard(bot_id..'Chek:Groups')  
local Users = database:scard(bot_id..'User_Bot')  
Text = '\n *꙳.︙ࢦڪࢪۅپات : {`'..Groups..'`}*'
send(msg.chat_id_, msg.id_,Text) 
return false
end
if text == ("المطورين ꙳.") and DevRANW(msg) then
local list = database:smembers(bot_id..'Sudo:User')
t = "\n *꙳.︙قائمِۿۧ ࢦمِطۅࢪينہ .* \n*﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎*\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- ("..v..")\n"
end
end
if #list == 0 then
t = " *꙳.︙مـڪو مِطۅࢪينہ .*"
end
send(msg.chat_id_, msg.id_, t)
end
if text == ("قائمه العام ꙳.") and DevRANW(msg) then
local list = database:smembers(bot_id..'GBan:User')
t = "\n *꙳.︙قائمۿۧ ࢦمحضۅࢪينہ ؏ـامِہ .* \n*﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎*\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- ("..v..")\n"
end
end
if #list == 0 then
t = " *꙳.︙مـڪو محضۅࢪينہ ؏ـامِہ .*"
end
send(msg.chat_id_, msg.id_, t)
return false
end
if text == ("قائمه الكتم العام ꙳.") and DevRANW(msg) then
local list = database:smembers(bot_id..'Gmute:User')
t = "\n *꙳.︙قائمِۿۧ ࢦمڪتۅمِينہ ؏ـامِہ .* \n*﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎*\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- ("..v..")\n"
end
end
if #list == 0 then
t = " *꙳.︙مـڪو مِڪتۅمينہ ؏ـامِہ .*"
end
send(msg.chat_id_, msg.id_, t)
return false
end
if text=="اذاعه خاص ꙳." and msg.reply_to_message_id_ == 0 and DevRANW(msg) then 
database:setex(bot_id.."Send:Bc:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_, msg.id_," *꙳.︙دࢪ࣪ ﮼ﺂذٌا؏ـتڪك .* \n*꙳.︙متࢪيدٌ دۅسہ الغاء .* ")
return false
end 
if text=="اذاعه ꙳." and msg.reply_to_message_id_ == 0 and DevRANW(msg) then 
database:setex(bot_id.."Send:Bc:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_, msg.id_," *꙳.︙دࢪ࣪ ﮼ﺂذٌا؏ـتڪك .* \n*꙳.︙متࢪيدٌ دۅسہ الغاء .* ")
return false
end  
if text=="اذاعه بالتثبيت ꙳." and msg.reply_to_message_id_ == 0 and DevRANW(msg) then 
database:setex(bot_id.."Bc:Grops:Pin" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_, msg.id_," *꙳.︙دࢪ࣪ ﮼ﺂذٌا؏ـتڪك .* \n*꙳.︙متࢪيدٌ دۅسہ الغاء .* ")
return false
end 
if text=="اذاعه بالتوجيه ꙳." and msg.reply_to_message_id_ == 0  and DevRANW(msg) then 
database:setex(bot_id.."Send:Fwd:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_, msg.id_," *꙳.︙دࢪ࣪ ࢦتۅچيۿۧ  .*")
return false
end 
if text=="اذاعه بالتوجيه خاص ꙳." and msg.reply_to_message_id_ == 0  and DevRANW(msg) then 
database:setex(bot_id.."Send:Fwd:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_, msg.id_," ꙳.︙دࢪ࣪ ࢦتۅچيۿۧ  .")
return false
end 
if text == 'جلب نسخه الاحتياطيه ꙳.' and DevRANW(msg) then 
GetFile_Bot(msg)
end
if text == "تنظيف المشتركين ꙳." and DevRANW(msg) then 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
local pv = database:smembers(bot_id.."User_Bot")
local sendok = 0
for i = 1, #pv do
tdcli_function({ID='GetChat',chat_id_ = pv[i]
},function(arg,dataq)
tdcli_function ({ ID = "SendChatAction",  
chat_id_ = pv[i], action_ = {  ID = "SendMessageTypingAction", progress_ = 100} 
},function(arg,data) 
if data.ID and data.ID == "Ok"  then
else
database:srem(bot_id.."User_Bot",pv[i])
sendok = sendok + 1
end
if #pv == i then 
if sendok == 0 then
send(msg.chat_id_, msg.id_,'*꙳.︙مـڪۅ مِشتࢪڪينہ ۅۿۧميۿين پࢦبۅت .* \n')   
else
local ok = #pv - sendok
send(msg.chat_id_, msg.id_,'*꙳.︙؏ـددٌ ࢦـمِشتࢪڪينہ ۿۧس » ( '..#pv..' )*\n*꙳.︙تمِہ مِسحہ » ( '..sendok..' ) مِہטּ ࢦـمِشتࢪڪينہ .*\n*꙳.︙ۿۧس صاࢪۅ ؏ـددٌ ࢦـمِشتࢪڪينہ » ( '..ok..' ) حقيقـჂ̤ .* \n')   
end
end
end,nil)
end,nil)
end
return false
end
if text == "تنظيف الكروبات ꙳." and DevRANW(msg) then 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
local group = database:smembers(bot_id..'Chek:Groups') 
local w =0
local q =0
for i = 1, #group do
tdcli_function({ID='GetChat',chat_id_ = group[i]
},function(arg,data)
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusMember" then
database:srem(bot_id..'Chek:Groups',group[i])  
tdcli_function ({ID = "ChangeChatMemberStatus",chat_id_=group[i],user_id_=bot_id,status_={ID = "ChatMemberStatusLeft"},},function(e,g) end, nil) 
w = w + 1
end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusLeft" then
database:srem(bot_id..'Chek:Groups',group[i])  
q = q + 1
end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusKicked" then
database:srem(bot_id..'Chek:Groups',group[i])  
q = q + 1
end
if data and data.code_ and data.code_ == 400 then
database:srem(bot_id..'Chek:Groups',group[i])  
w = w + 1
end
if #group == i then 
if (w + q) == 0 then
send(msg.chat_id_, msg.id_,'*꙳.︙مـڪۅ ڪࢪۅپات ۅۿۧميۿ پࢦبۅت .*\n')   
else
local RAN = (w + q)
local sendok = #group - RAN
if q == 0 then
RAN = ''
else
RAN = '\n*꙳.︙تمِہ مِسحہ »* { '..q..' } ڪࢪۅپات مِہטּ ﺂࢦبۅت .'
end
if w == 0 then
RANk = ''
else
RANk = '\n*꙳.︙تمِہ مِسحہ »* {'..w..'} ڪࢪۅپ لاטּ ﺂࢦبۅت ؏ـضۅ .'
end
send(msg.chat_id_, msg.id_,'*꙳.︙؏ـدِد ࢦڪࢪۅپات ۿۧس . » { '..#group..' }'..RANk..''..RAN..'*\n*꙳.︙ۿۧس صاࢪۅ ؏ـددٌ ࢦڪࢪۅپات  » { '..sendok..' }  حقيقـჂ̤ .*\n')   
end
end
end,nil)
end
return false
end


if text and text:match("^رفع مطور @(.*)$") and DevRANW(msg) then
local username = text:match("^رفع مطور @(.*)$")
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_," ꙳.︙؏ـمࢪيـہ ۿۧذا ࢦمـ؏ـࢪف ࢦقناۿ ستخدمِا ؏ـدل  . !")
return false 
end  
database:sadd(bot_id..'Sudo:User', result.id_)
usertext = '*\n ꙳.︙اسم المستخدم -›* ['..result.title_..'](t.me/'..(username or 'GGGMG')..')'
status  = '\n *꙳.︙ تمِہ  ࢪفع مِطۅࢪ .*'
texts = usertext..status
else
texts = ' *꙳.︙مـڪو ﮼حِۢـساب پۿۧل مِـ؏ـࢪف .*'
end
send(msg.chat_id_, msg.id_, texts)
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false 
end
if text and text:match("^رفع مطور (%d+)$") and DevRANW(msg) then
local userid = text:match("^رفع مطور (%d+)$")
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:sadd(bot_id..'Sudo:User', userid)
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.first_name_ then
usertext = '\n *꙳.︙اسم المستخدم -›* ['..data.first_name_..'](t.me/'..(data.username_ or 'GGGMG')..')'
status  = '\n*꙳.︙ تمِہ  ࢪفع مِطۅࢪ .*'
send(msg.chat_id_, msg.id_, usertext..status)
else
usertext = '\n *꙳.︙اسم المستخدم -›* '..userid..''
status  = '\n*꙳.︙ تمِہ  ࢪفع مِطۅࢪ .*'
send(msg.chat_id_, msg.id_, usertext..status)
end;end,nil)
return false 
end
if text and text:match("^تنزيل مطور @(.*)$") and DevRANW(msg) then
local username = text:match("^تنزيل مطور @(.*)$")
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
if result.id_ then
database:srem(bot_id..'Sudo:User', result.id_)
usertext = '\n *꙳.︙اسم المستخدم -›* ['..result.title_..'](t.me/'..(username or 'GGGMG')..')'
status  = '\n*꙳.︙تمِہ تنࢪ࣪يࢦۿ مِہטּ ﮼ﺂࢦمِطۅࢪينہ .*'
texts = usertext..status
else
texts = ' *꙳.︙مـڪو ﮼حِۢـساب پۿۧل مِـ؏ـࢪف .*'
end
send(msg.chat_id_, msg.id_, texts)
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end  
if text and text:match("^تنزيل مطور (%d+)$") and DevRANW(msg) then
local userid = text:match("^تنزيل مطور (%d+)$")
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:srem(bot_id..'Sudo:User', userid)
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.first_name_ then
usertext = '\n *꙳.︙اسم المستخدم -›* ['..data.first_name_..'](t.me/'..(data.username_ or 'GGGMG')..')'
status  = '\n*꙳.︙تمِہ تنࢪ࣪يࢦۿ مِہטּ ﮼ﺂࢦمِطۅࢪينہ .*'
send(msg.chat_id_, msg.id_, usertext..status)
else
usertext = '\n *꙳.︙اسم المستخدم -›* '..userid..''
status  = '\n*꙳.︙تمِہ تنࢪ࣪يࢦۿ مِہטּ ﮼ﺂࢦمِطۅࢪينہ .*'
send(msg.chat_id_, msg.id_, usertext..status)
end;end,nil)
return false 
end

end
--------------------------------------------------------------------------------------------------------------
if text and not Special(msg) then  
local RAN1_Msg = database:get(bot_id.."RAN1:Add:Filter:Rp2"..text..msg.chat_id_)   
if RAN1_Msg then 
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙اسم المستخدم -›* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n ꙳.︙'..RAN1_Msg)
DeleteMessage(msg.chat_id_, {[0] = msg.id_}) 
return false
end,nil)
end
end
if database:get(bot_id..'Set:Name:Bot'..msg.sender_user_id_) then 
if text == 'الغاء' or text == 'الغاء ꙳.' then   
send(msg.chat_id_, msg.id_," *꙳.︙تمِہ ﮼ﺂࢦـغاء ﮼حفظ ﮼ﺂسمِہ ﺂࢦبۅت  .*")
database:del(bot_id..'Set:Name:Bot'..msg.sender_user_id_) 
return false  
end 
database:del(bot_id..'Set:Name:Bot'..msg.sender_user_id_) 
database:set(bot_id..'Name:Bot',text) 
send(msg.chat_id_, msg.id_, " *꙳.︙تمِہ ﮼حفظ ﮼ﺂلاسمِہ .*")
return false
end 
if database:get(bot_id.."Send:Bc:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == 'الغاء' or text == 'الغاء ꙳.' then   
send(msg.chat_id_, msg.id_," *꙳.︙تمِہ ﮼ﺂࢦـغاء ﮼ﺂࢦأذا؏ـۿۧ ࢦخاصہ  .*")
database:del(bot_id.."Send:Bc:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false
end 
local list = database:smembers(bot_id..'User_Bot') 
if msg.content_.text_ then
for k,v in pairs(list) do 
send(v, 0,'['..msg.content_.text_..']')  
end
elseif msg.content_.photo_ then
if msg.content_.photo_.sizes_[0] then
photo = msg.content_.photo_.sizes_[0].photo_.persistent_id_
elseif msg.content_.photo_.sizes_[1] then
photo = msg.content_.photo_.sizes_[1].photo_.persistent_id_
end
for k,v in pairs(list) do 
sendPhoto(v, 0, 0, 1, nil, photo,(msg.content_.caption_ or ''))
end 
elseif msg.content_.animation_ then
for k,v in pairs(list) do 
sendDocument(v, 0, 0, 1,nil, msg.content_.animation_.animation_.persistent_id_,(msg.content_.caption_ or ''))
end 
elseif msg.content_.sticker_ then
for k,v in pairs(list) do 
sendSticker(v, 0, 0, 1, nil, msg.content_.sticker_.sticker_.persistent_id_)   
end 
end
send(msg.chat_id_, msg.id_," *꙳.︙تمِتہ ﮼ﺂࢦاذِا؏ـۿۧ ࢦـ{"..#list.."} مشتࢪڪينہ .* ")
database:del(bot_id.."Send:Bc:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
end

if database:get(bot_id.."Send:Bc:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == 'الغاء' or text == 'الغاء ꙳.' then   
send(msg.chat_id_, msg.id_," *꙳.︙تمِہ ﮼ﺂࢦـغاء ﮼ﺂࢦأذا؏ـۿۧہ .*")
database:del(bot_id.."Send:Bc:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false
end 
local list = database:smembers(bot_id..'Chek:Groups') 
if msg.content_.text_ then
for k,v in pairs(list) do 
send(v, 0,'['..msg.content_.text_..']')  
end
elseif msg.content_.photo_ then
if msg.content_.photo_.sizes_[0] then
photo = msg.content_.photo_.sizes_[0].photo_.persistent_id_
elseif msg.content_.photo_.sizes_[1] then
photo = msg.content_.photo_.sizes_[1].photo_.persistent_id_
end
for k,v in pairs(list) do 
sendPhoto(v, 0, 0, 1, nil, photo,(msg.content_.caption_ or ''))
end 
elseif msg.content_.animation_ then
for k,v in pairs(list) do 
sendDocument(v, 0, 0, 1,nil, msg.content_.animation_.animation_.persistent_id_,(msg.content_.caption_ or ''))
end 
elseif msg.content_.sticker_ then
for k,v in pairs(list) do 
sendSticker(v, 0, 0, 1, nil, msg.content_.sticker_.sticker_.persistent_id_)   
end 
end
send(msg.chat_id_, msg.id_," *꙳.︙تمِتہ ﮼ﺂࢦاذِا؏ـۿۧ ࢦـ{"..#list.."} ڪࢪۅپ .* ")
database:del(bot_id.."Send:Bc:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
end

if database:get(bot_id.."Send:Fwd:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == 'الغاء' or text == 'الغاء ꙳.' then   
send(msg.chat_id_, msg.id_," *꙳.︙تمِہ ﮼ﺂࢦـغاء ﮼ﺂࢦأذا؏ـۿۧہ .*")
database:del(bot_id.."Send:Fwd:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false  
end 
if msg.forward_info_ then 
local list = database:smembers(bot_id..'Chek:Groups')   
for k,v in pairs(list) do  
tdcli_function({ID="ForwardMessages",
chat_id_ = v,
from_chat_id_ = msg.chat_id_,
message_ids_ = {[0] = msg.id_},
disable_notification_ = 0,
from_background_ = 1},function(a,t) end,nil) 
end   
send(msg.chat_id_, msg.id_," *꙳.︙تمِتہ ﮼ﺂࢦاذِا؏ـۿۧ ࢦـ{"..#list.."} ڪࢪۅپ پلبۅت .* ")
database:del(bot_id.."Send:Fwd:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
end 
end
if database:get(bot_id.."Send:Fwd:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == 'الغاء' or text == 'الغاء ꙳.' then   
send(msg.chat_id_, msg.id_," *꙳.︙تمِہ ﮼ﺂࢦـغاء ﮼ﺂࢦأذا؏ـۿۧہ .*")
database:del(bot_id.."Send:Fwd:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
return false  
end 
if msg.forward_info_ then 
local list = database:smembers(bot_id..'User_Bot')   
for k,v in pairs(list) do  
tdcli_function({ID="ForwardMessages",
chat_id_ = v,
from_chat_id_ = msg.chat_id_,
message_ids_ = {[0] = msg.id_},
disable_notification_ = 0,
from_background_ = 1},function(a,t) end,nil) 
end   
send(msg.chat_id_, msg.id_," *꙳.︙تمِتہ ﮼ﺂࢦاذِا؏ـۿۧ ࢦـ{"..#list.."} مشتࢪڪينہ .* ")
database:del(bot_id.."Send:Fwd:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) 
end 
end
if database:get(bot_id.."add:ch:jm" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then 
if text and text:match("^الغاء$") then 
send(msg.chat_id_, msg.id_, " *꙳.︙تمِہ ﮼ﺂࢦـغاء ﮼ﺂࢦامࢪ  .* ")
database:del(bot_id.."add:ch:jm" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
return false  end 
database:del(bot_id.."add:ch:jm" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
local username = string.match(text, "@[%a%d_]+") 
tdcli_function ({
ID = "SearchPublicChat",
username_ = username  
},function(arg,data) 
if data and data.message_ and data.message_ == "USERNAME_NOT_OCCUPIED" then 
send(msg.chat_id_, msg.id_, ' *꙳.︙ࢦمٍـ؏ـࢪف مِبيہ قٰناۿٖ  ؟*')
return false  end
if data and data.type_ and data.type_.ID and data.type_.ID == 'PrivateChatInfo' then
send(msg.chat_id_, msg.id_, ' *꙳.︙متڪدِࢪ تخلـჂ̤ مِـ؏ـࢪف ﮼حِۢسابات پـࢦشتࢪاڪك   .* ')
return false  end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.is_supergroup_ == true then
send(msg.chat_id_, msg.id_,' *꙳.︙متڪدِࢪ تخلـჂ̤ مِـ؏ـࢪف ﮼ڪࢪۅپ پـࢦشتࢪاڪك   .* ')
return false  end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.is_supergroup_ == false then
if data and data.type_ and data.type_.channel_ and data.type_.channel_.ID and data.type_.channel_.status_.ID == 'ChatMemberStatusEditor' then
send(msg.chat_id_, msg.id_,' *꙳.︙﮼ﺂࢦپۅت ﮼ﺂدِمِنہ پ قٰناۿۧ .* \n*꙳.︙تمِہ تـفـ؏ـيل ﮼ﺂࢦاشتࢪﺂڪك ﮼ﺂࢦاچباࢪჂ̤  .* \n*꙳.︙﮼ﺂيدჂ̤ ࢦـ قٰناۿۧ ('..data.id_..')*\n*꙳.︙مٍـ؏ـࢪف ࢦـ قٰناۿۧ* ([@'..data.type_.channel_.username_..'])')
database:set(bot_id..'add:ch:id',data.id_)
database:set(bot_id..'add:ch:username','@'..data.type_.channel_.username_)
else
send(msg.chat_id_, msg.id_,' *꙳.︙متڪدِࢪ تخلـჂ̤ لمِـ؏ـࢪف ﮼ پـࢦشتࢪاڪك ﻼטּ ﺂࢦبۅت مِہ ﮼ﺂدٌمِنہ پࢦـقٰناۿٖ  .* ')
end
return false  
end
end,nil)
end
if database:get(bot_id.."textch:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then 
if text and text:match("^الغاء$") then 
send(msg.chat_id_, msg.id_, " *꙳.︙تمِہ ﮼ﺂࢦـغاء ﮼ﺂࢦامࢪ  .* ")
database:del(bot_id.."textch:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
return false  end 
database:del(bot_id.."textch:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
local texxt = string.match(text, "(.*)") 
database:set(bot_id..'text:ch:user',texxt)
send(msg.chat_id_, msg.id_,' *꙳.︙تمِہ حفضہ ࢪسالۿۧ ﺂࢦاشتࢪﺂڪك ﮼ﺂࢦاچباࢪჂ̤ .* ')
end
local status_welcome = database:get(bot_id..'Chek:Welcome'..msg.chat_id_)
if status_welcome and not database:get(bot_id..'lock:tagservr'..msg.chat_id_) then
if msg.content_.ID == "MessageChatJoinByLink" then
tdcli_function({ID = "GetUser",user_id_=msg.sender_user_id_},function(extra,result) 
local GetWelcomeGroup = database:get(bot_id..'Get:Welcome:Group'..msg.chat_id_)  
if GetWelcomeGroup then 
t = GetWelcomeGroup
else  
t = '\n \n•  name \n• user' 
end 
if result.username_ then
t = t:gsub('name',result.first_name_) 
t = t:gsub('user','@'..result.username_) 
else
t = t:gsub('name',result.first_name_) 
t = t:gsub('user','لا يوجد') 
end
send(msg.chat_id_, msg.id_,'['..t..']')
end,nil) 
end 
end 
--------------------------------------------------------------------------------------------------------------
if msg.content_.photo_ then  
if database:get(bot_id..'Change:Chat:Photo'..msg.chat_id_..':'..msg.sender_user_id_) then 
if msg.content_.photo_.sizes_[3] then  
photo_id = msg.content_.photo_.sizes_[3].photo_.persistent_id_ 
else 
photo_id = msg.content_.photo_.sizes_[0].photo_.persistent_id_ 
end 
tdcli_function ({ID = "ChangeChatPhoto",chat_id_ = msg.chat_id_,photo_ = getInputFile(photo_id) }, function(arg,data)   
if data.code_ == 3 then
send(msg.chat_id_, msg.id_,' *꙳.︙متڪدِࢪ تخلـჂ̤ لمِـ؏ـࢪف ﮼ پـࢦشتࢪاڪك ﻼטּ ﺂࢦبۅت مِہ ﮼ﺂدٌمِنہ پࢦـقٰناۿٖ  .* ')
database:del(bot_id..'Change:Chat:Photo'..msg.chat_id_..':'..msg.sender_user_id_) 
return false  end
if data.message_ == "CHAT_ADMIN_REQUIRED" then 
send(msg.chat_id_, msg.id_,' *꙳.︙؏ـينيہ ﺂࢦبۅت  مِہ ؏ـندا صـﻼحيات .*')
database:del(bot_id..'Change:Chat:Photo'..msg.chat_id_..':'..msg.sender_user_id_) 
else
send(msg.chat_id_, msg.id_,' *꙳.︙تمِہ حفظِ  .*')
end
end, nil) 
database:del(bot_id..'Change:Chat:Photo'..msg.chat_id_..':'..msg.sender_user_id_) 
end   
end
--------------------------------------------------------------------------------------------------------------
if database:get(bot_id.."Set:Description" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then  
if text == 'الغاء' then 
send(msg.chat_id_, msg.id_," *꙳.︙تمِہ ﮼ﺂࢦـغاء ﮼ ۅضـ؏ ۅصف .*")
database:del(bot_id.."Set:Description" .. msg.chat_id_ .. "" .. msg.sender_user_id_)
return false  
end 
database:del(bot_id.."Set:Description" .. msg.chat_id_ .. "" .. msg.sender_user_id_)   
https.request('https://api.telegram.org/bot'..token..'/setChatDescription?chat_id='..msg.chat_id_..'&description='..text) 
send(msg.chat_id_, msg.id_,' *꙳.︙تمِہ ࢦحفظِ .*')
return false  
end 
--------------------------------------------------------------------------------------------------------------
if database:get(bot_id.."Welcome:Group" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then 
if text == 'الغاء' then 
send(msg.chat_id_, msg.id_," *꙳.︙تمِہ ﮼ﺂࢦـغاء ﮼حفظ ࢦتࢪحيب  .*")
database:del(bot_id.."Welcome:Group" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
return false  
end 
database:del(bot_id.."Welcome:Group" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
database:set(bot_id..'Get:Welcome:Group'..msg.chat_id_,text) 
send(msg.chat_id_, msg.id_,' *꙳.︙تمِہ ﮼حفظ ࢦتࢪحيب ࢦڪࢪۅپ  .*')
return false   
end
--------------------------------------------------------------------------------------------------------------
if database:get(bot_id.."Set:Priovate:Group:Link"..msg.chat_id_..""..msg.sender_user_id_) then
if text == 'الغاء' then
send(msg.chat_id_,msg.id_," *꙳.︙تمِہ ﮼ﺂࢦـغاء ﮼حفظ ﮼ﺂࢦࢪابط   .*")
database:del(bot_id.."Set:Priovate:Group:Link"..msg.chat_id_..""..msg.sender_user_id_) 
return false
end
if text and text:match("(https://telegram.me/joinchat/%S+)") or text and text:match("(https://t.me/joinchat/%S+)") then 
local Link = text:match("(https://telegram.me/joinchat/%S+)") or text and text:match("(https://t.me/joinchat/%S+)")   
database:set(bot_id.."Private:Group:Link"..msg.chat_id_,Link)
send(msg.chat_id_,msg.id_," *꙳.︙تم حفظ الرابط بنجاح*")
database:del(bot_id.."Set:Priovate:Group:Link"..msg.chat_id_..""..msg.sender_user_id_) 
return false 
end
end 
--------------------------------------------------------------------------------------------------------------
if RAN_Msg and not Special(msg) then  
local RAN_Msg = database:get(bot_id.."Add:Filter:Rp2"..text..msg.chat_id_)   
if RAN_Msg then
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
if data.username_ ~= false then
send(msg.chat_id_,0," *꙳.︙العضو :* {["..data.first_name_.."](T.ME/"..data.username_..")}\n꙳.︙["..RAN_Msg.."] \n")
else
send(msg.chat_id_,0," *꙳.︙العضو :* {["..data.first_name_.."](T.ME/GGGMG)}\n꙳.︙["..RAN_Msg.."] \n")
end
end,nil)   
DeleteMessage(msg.chat_id_, {[0] = msg.id_}) 
return false
end
end
--------------------------------------------------------------------------------------------------------------
if not Special(msg) and msg.content_.ID ~= "MessageChatAddMembers" and database:hget(bot_id.."flooding:settings:"..msg.chat_id_,"flood") then 
floods = database:hget(bot_id.."flooding:settings:"..msg.chat_id_,"flood") or 'nil'
NUM_MSG_MAX = database:hget(bot_id.."flooding:settings:"..msg.chat_id_,"floodmax") or 5
TIME_CHECK = database:hget(bot_id.."flooding:settings:"..msg.chat_id_,"floodtime") or 5
local post_count = tonumber(database:get(bot_id..'floodc:'..msg.sender_user_id_..':'..msg.chat_id_) or 0)
if post_count > tonumber(database:hget(bot_id.."flooding:settings:"..msg.chat_id_,"floodmax") or 5) then 
local ch = msg.chat_id_
local type = database:hget(bot_id.."flooding:settings:"..msg.chat_id_,"flood") 
trigger_anti_spam(msg,type)  
end
database:setex(bot_id..'floodc:'..msg.sender_user_id_..':'..msg.chat_id_, tonumber(database:hget(bot_id.."flooding:settings:"..msg.chat_id_,"floodtime") or 3), post_count+1) 
local edit_id = data.text_ or 'nil'  
NUM_MSG_MAX = 5
if database:hget(bot_id.."flooding:settings:"..msg.chat_id_,"floodmax") then
NUM_MSG_MAX = database:hget(bot_id.."flooding:settings:"..msg.chat_id_,"floodmax") 
end
if database:hget(bot_id.."flooding:settings:"..msg.chat_id_,"floodtime") then
TIME_CHECK = database:hget(bot_id.."flooding:settings:"..msg.chat_id_,"floodtime") 
end 
end 
--------------------------------------------------------------------------------------------------------------
if text and database:get(bot_id..'lock:Fshar'..msg.chat_id_) and not Special(msg) then 
list = {"كس","كسمك","كسختك","عير","كسخالتك","خرا بالله","عير بالله","كسخواتكم","كحاب","مناويج","مناويج","كحبه","ابن الكحبه","فرخ","فروخ","طيزك","طيزختك"}
for k,v in pairs(list) do
print(string.find(text,v))
if string.find(text,v) ~= nil then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
return false
end
end
end
if text and database:get(bot_id..'lock:Fars'..msg.chat_id_) and not Special(msg) then 
list = {"ڄ","گ","که","پی","خسته","برم","راحتی","بیام","بپوشم","گرمه","چه","چ","ڬ","ٺ","چ","ڇ","ڿ","ڀ","ڎ","ݫ","ژ","ڟ","ݜ","ڸ","پ","۴","زدن","دخترا","دیوث","مک","زدن","خالی بند","عزیزم خوبی","سلامت باشی","میخوام","خوببی","ميدم","کی اومدی","خوابیدین"}
for k,v in pairs(list) do
if string.find(text,v) ~= nil then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
return false
end
end
end
if text and database:get(bot_id..'lock:Engilsh'..msg.chat_id_) and not Special(msg) then 
list = {'a','u','y','l','t','b','A','Q','U','J','K','L','B','D','L','V','Z','k','n','c','r','q','o','z','I','j','m','M','w','d','h','e'}
for k,v in pairs(list) do
if string.find(text,v) ~= nil then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
return false
end
end
end
--------------------------------------------------------------------------------------------------------------
if database:get(bot_id..'lock:text'..msg.chat_id_) and not Special(msg) then   
DeleteMessage(msg.chat_id_,{[0] = msg.id_})   
return false 
end 
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageChatAddMembers" then 
database:incr(bot_id..'Add:Contact'..msg.chat_id_..':'..msg.sender_user_id_) 
end
if msg.content_.ID == "MessageChatAddMembers" and not Special(msg) then   
if database:get(bot_id.."lock:AddMempar"..msg.chat_id_) == 'kick' then
local mem_id = msg.content_.members_  
for i=0,#mem_id do  
chat_kick(msg.chat_id_,mem_id[i].id_)
end
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageChatJoinByLink" and not Special(msg) then 
if database:get(bot_id.."lock:Join"..msg.chat_id_) == 'kick' then
chat_kick(msg.chat_id_,msg.sender_user_id_)
return false  
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.caption_ then 
if msg.content_.caption_:match("@[%a%d_]+") or msg.content_.caption_:match("@(.+)") then  
if database:get(bot_id.."lock:user:name"..msg.chat_id_) == "del" and not Special(msg) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:user:name"..msg.chat_id_) == "ked" and not Special(msg) then
ked(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:user:name"..msg.chat_id_) == "kick" and not Special(msg) then
chat_kick(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:user:name"..msg.chat_id_) == "ktm" and not Special(msg) then
database:sadd(bot_id..'Muted:User'..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
end
--------------------------------------------------------------------------------------------------------------
if text and text:match("@[%a%d_]+") or text and text:match("@(.+)") then
if database:get(bot_id.."lock:user:name"..msg.chat_id_) == "del" and not Special(msg) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:user:name"..msg.chat_id_) == "ked" and not Special(msg) then
ked(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:user:name"..msg.chat_id_) == "kick" and not Special(msg) then
chat_kick(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:user:name"..msg.chat_id_) == "ktm" and not Special(msg) then
database:sadd(bot_id..'Muted:User'..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.caption_ then 
if msg.content_.caption_:match("#[%a%d_]+") or msg.content_.caption_:match("#(.+)") then 
if database:get(bot_id.."lock:hashtak"..msg.chat_id_) == "del" and not Special(msg) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:hashtak"..msg.chat_id_) == "ked" and not Special(msg) then
ked(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:hashtak"..msg.chat_id_) == "kick" and not Special(msg) then
chat_kick(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:hashtak"..msg.chat_id_) == "ktm" and not Special(msg) then
database:sadd(bot_id..'Muted:User'..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
end
--------------------------------------------------------------------------------------------------------------
if text and text:match("#[%a%d_]+") or text and text:match("#(.+)") then
if database:get(bot_id.."lock:hashtak"..msg.chat_id_) == "del" and not Special(msg) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:hashtak"..msg.chat_id_) == "ked" and not Special(msg) then
ked(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:hashtak"..msg.chat_id_) == "kick" and not Special(msg) then
chat_kick(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:hashtak"..msg.chat_id_) == "ktm" and not Special(msg) then
database:sadd(bot_id..'Muted:User'..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.caption_ then 
if msg.content_.caption_:match("/[%a%d_]+") or msg.content_.caption_:match("/(.+)") then  
if database:get(bot_id.."lock:Cmd"..msg.chat_id_) == "del" and not Special(msg) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Cmd"..msg.chat_id_) == "ked" and not Special(msg) then
ked(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Cmd"..msg.chat_id_) == "kick" and not Special(msg) then
chat_kick(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Cmd"..msg.chat_id_) == "ktm" and not Special(msg) then
database:sadd(bot_id..'Muted:User'..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
end
--------------------------------------------------------------------------------------------------------------
if text and text:match("/[%a%d_]+") or text and text:match("/(.+)") then
if database:get(bot_id.."lock:Cmd"..msg.chat_id_) == "del" and not Special(msg) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Cmd"..msg.chat_id_) == "ked" and not Special(msg) then
ked(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Cmd"..msg.chat_id_) == "kick" and not Special(msg) then
chat_kick(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Cmd"..msg.chat_id_) == "ktm" and not Special(msg) then
database:sadd(bot_id..'Muted:User'..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.caption_ then 
if not Special(msg) then 
if msg.content_.caption_:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]/") or msg.content_.caption_:match("[Hh][Tt][Tt][Pp][Ss]://") or msg.content_.caption_:match("[Hh][Tt][Tt][Pp]://") or msg.content_.caption_:match("[Ww][Ww][Ww].") or msg.content_.caption_:match(".[Cc][Oo][Mm]") or msg.content_.caption_:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Dd][Oo][Gg]/") or msg.content_.caption_:match(".[Pp][Ee]") or msg.content_.caption_:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]/") or msg.content_.caption_:match("[Jj][Oo][Ii][Nn][Cc][Hh][Aa][Tt]/") or msg.content_.caption_:match("[Tt].[Mm][Ee]/") then 
if database:get(bot_id.."lock:Link"..msg.chat_id_) == "del" and not Special(msg) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Link"..msg.chat_id_) == "ked" and not Special(msg) then
ked(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Link"..msg.chat_id_) == "kick" and not Special(msg) then
chat_kick(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Link"..msg.chat_id_) == "ktm" and not Special(msg) then
database:sadd(bot_id..'Muted:User'..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
end
end
--------------------------------------------------------------------------------------------------------------
if text and text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]/") or text and text:match("[Hh][Tt][Tt][Pp][Ss]://") or text and text:match("[Hh][Tt][Tt][Pp]://") or text and text:match("[Ww][Ww][Ww].") or text and text:match(".[Cc][Oo][Mm]") or text and text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Dd][Oo][Gg]/") or text and text:match(".[Pp][Ee]") or text and text:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]/") or text and text:match("[Jj][Oo][Ii][Nn][Cc][Hh][Aa][Tt]/") or text and text:match("[Tt].[Mm][Ee]/") and not Special(msg) then
if database:get(bot_id.."lock:Link"..msg.chat_id_) == "del" and not Special(msg) then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Link"..msg.chat_id_) == "ked" and not Special(msg) then 
ked(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Link"..msg.chat_id_) == "kick" and not Special(msg) then
chat_kick(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Link"..msg.chat_id_) == "ktm" and not Special(msg) then
database:sadd(bot_id..'Muted:User'..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == 'MessagePhoto' and not Special(msg) then 
if database:get(bot_id.."lock:Photo"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Photo"..msg.chat_id_) == "ked" then
ked(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Photo"..msg.chat_id_) == "kick" then
chat_kick(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Photo"..msg.chat_id_) == "ktm" then
database:sadd(bot_id..'Muted:User'..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == 'MessageVideo' and not Special(msg) then 
if database:get(bot_id.."lock:Video"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Video"..msg.chat_id_) == "ked" then
ked(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Video"..msg.chat_id_) == "kick" then
chat_kick(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Video"..msg.chat_id_) == "ktm" then
database:sadd(bot_id..'Muted:User'..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == 'MessageAnimation' and not Special(msg) then 
if database:get(bot_id.."lock:Animation"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Animation"..msg.chat_id_) == "ked" then
ked(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Animation"..msg.chat_id_) == "kick" then
chat_kick(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Animation"..msg.chat_id_) == "ktm" then
database:sadd(bot_id..'Muted:User'..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.game_ and not Special(msg) then 
if database:get(bot_id.."lock:geam"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:geam"..msg.chat_id_) == "ked" then
ked(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:geam"..msg.chat_id_) == "kick" then
chat_kick(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:geam"..msg.chat_id_) == "ktm" then
database:sadd(bot_id..'Muted:User'..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == 'MessageAudio' and not Special(msg) then 
if database:get(bot_id.."lock:Audio"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Audio"..msg.chat_id_) == "ked" then
ked(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Audio"..msg.chat_id_) == "kick" then
chat_kick(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Audio"..msg.chat_id_) == "ktm" then
database:sadd(bot_id..'Muted:User'..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == 'MessageVoice' and not Special(msg) then 
if database:get(bot_id.."lock:vico"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:vico"..msg.chat_id_) == "ked" then
ked(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:vico"..msg.chat_id_) == "kick" then
chat_kick(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:vico"..msg.chat_id_) == "ktm" then
database:sadd(bot_id..'Muted:User'..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.reply_markup_ and msg.reply_markup_.ID == 'ReplyMarkupInlineKeyboard' and not Special(msg) then 
if database:get(bot_id.."lock:Keyboard"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Keyboard"..msg.chat_id_) == "ked" then
ked(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Keyboard"..msg.chat_id_) == "kick" then
chat_kick(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Keyboard"..msg.chat_id_) == "ktm" then
database:sadd(bot_id..'Muted:User'..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == 'MessageSticker' and not Special(msg) then 
if database:get(bot_id.."lock:Sticker"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Sticker"..msg.chat_id_) == "ked" then
ked(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Sticker"..msg.chat_id_) == "kick" then
chat_kick(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Sticker"..msg.chat_id_) == "ktm" then
database:sadd(bot_id..'Muted:User'..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
if tonumber(msg.via_bot_user_id_) ~= 0 and not Special(msg) then
if database:get(bot_id.."lock:inline"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:inline"..msg.chat_id_) == "ked" then
ked(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:inline"..msg.chat_id_) == "kick" then
chat_kick(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:inline"..msg.chat_id_) == "ktm" then
database:sadd(bot_id..'Muted:User'..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.forward_info_ and not Special(msg) then 
if database:get(bot_id.."lock:forward"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
return false
elseif database:get(bot_id.."lock:forward"..msg.chat_id_) == "ked" then
ked(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
return false
elseif database:get(bot_id.."lock:forward"..msg.chat_id_) == "kick" then
chat_kick(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
return false
elseif database:get(bot_id.."lock:forward"..msg.chat_id_) == "ktm" then
database:sadd(bot_id..'Muted:User'..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
return false
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == 'MessageDocument' and not Special(msg) then 
if database:get(bot_id.."lock:Document"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Document"..msg.chat_id_) == "ked" then
ked(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Document"..msg.chat_id_) == "kick" then
chat_kick(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Document"..msg.chat_id_) == "ktm" then
database:sadd(bot_id..'Muted:User'..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageUnsupported" and not Special(msg) then  
if database:get(bot_id.."lock:Unsupported"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Unsupported"..msg.chat_id_) == "ked" then
ked(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Unsupported"..msg.chat_id_) == "kick" then
chat_kick(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Unsupported"..msg.chat_id_) == "ktm" then
database:sadd(bot_id..'Muted:User'..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.entities_ then 
if msg.content_.entities_[0] then 
if msg.content_.entities_[0] and msg.content_.entities_[0].ID == "MessageEntityUrl" or msg.content_.entities_[0].ID == "MessageEntityTextUrl" then  
if not Special(msg) then
if database:get(bot_id.."lock:Markdaun"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Markdaun"..msg.chat_id_) == "ked" then
ked(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Markdaun"..msg.chat_id_) == "kick" then
chat_kick(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Markdaun"..msg.chat_id_) == "ktm" then
database:sadd(bot_id..'Muted:User'..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end  
end 
end
end 
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == 'MessageContact' and not Special(msg) then  
if database:get(bot_id.."lock:Contact"..msg.chat_id_) == "del" then
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Contact"..msg.chat_id_) == "ked" then
ked(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Contact"..msg.chat_id_) == "kick" then
chat_kick(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Contact"..msg.chat_id_) == "ktm" then
database:sadd(bot_id..'Muted:User'..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.text_ and not Special(msg) then  
local _nl, ctrl_ = string.gsub(text, '%c', '')  
local _nl, real_ = string.gsub(text, '%d', '')   
sens = 400  
if database:get(bot_id.."lock:Spam"..msg.chat_id_) == "del" and string.len(msg.content_.text_) > (sens) or ctrl_ > (sens) or real_ > (sens) then 
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Spam"..msg.chat_id_) == "ked" and string.len(msg.content_.text_) > (sens) or ctrl_ > (sens) or real_ > (sens) then 
ked(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Spam"..msg.chat_id_) == "kick" and string.len(msg.content_.text_) > (sens) or ctrl_ > (sens) or real_ > (sens) then 
chat_kick(msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
elseif database:get(bot_id.."lock:Spam"..msg.chat_id_) == "ktm" and string.len(msg.content_.text_) > (sens) or ctrl_ > (sens) or real_ > (sens) then 
database:sadd(bot_id..'Muted:User'..msg.chat_id_,msg.sender_user_id_)
DeleteMessage(msg.chat_id_,{[0] = msg.id_}) 
end
end
if msg.content_.ID == 'MessageSticker' and not Manager(msg) then 
local filter = database:smembers(bot_id.."filtersteckr"..msg.chat_id_)
for k,v in pairs(filter) do
if v == msg.content_.sticker_.set_id_ then
tdcli_function({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
if data.username_ ~= false then
send(msg.chat_id_,0, " *꙳.︙عذرا »* {[@"..data.username_.."]}\n*꙳.︙؏ـينيہ متڪدِࢪ دࢪ࣪ ࢦملصق ﻼטּ ﮼ﺂنمِعہ  .* \n" ) 
else
send(msg.chat_id_,0, " *꙳.︙عذرا »* {["..data.first_name_.."](T.ME/GGGMG)}\n*꙳.︙؏ـينيہ متڪدِࢪ دࢪ࣪ ࢦملصق ﻼטּ ﮼ﺂنمِعہ  .* \n" ) 
end
end,nil)   
DeleteMessage(msg.chat_id_,{[0] = msg.id_})   
return false   
end
end
end

------------------------------------------------------------------------ امـيـر الـدلـيـم

------------------------------------------------------------------------ امـيـر الـدلـيـم
if msg.content_.ID == 'MessagePhoto' and not Manager(msg) then 
local filter = database:smembers(bot_id.."filterphoto"..msg.chat_id_)
for k,v in pairs(filter) do
if v == msg.content_.photo_.id_ then
tdcli_function({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
if data.username_ ~= false then
send(msg.chat_id_,0," ꙳.︙عذرا » {[@"..data.username_.."]}\n ꙳.︙؏ـينيہ متڪدِࢪ دࢪ࣪ ࢦصۅࢪۿۧ ﻼטּ ﮼ﺂنمِعتہ  . \n" ) 
else
send(msg.chat_id_,0," ꙳.︙عذرا » {["..data.first_name_.."](T.ME/GGGMG)}\n ꙳.︙؏ـينيہ متڪدِࢪ دࢪ࣪ ࢦصۅࢪۿۧ ﻼטּ ﮼ﺂنمِعتہ  . \n") 
end
end,nil)   
DeleteMessage(msg.chat_id_,{[0] = msg.id_})   
return false   
end
end
end
------------------------------------------------------------------------ امـيـر الـدلـيـم
if msg.content_.ID == 'MessageAnimation' and not Manager(msg) then 
local filter = database:smembers(bot_id.."filteranimation"..msg.chat_id_)
for k,v in pairs(filter) do
if v == msg.content_.animation_.animation_.persistent_id_ then
tdcli_function({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
if data.username_ ~= false then
send(msg.chat_id_,0," *꙳.︙عذرا »* {[@"..data.username_.."]}\n*꙳.︙؏ـينيہ متڪدِࢪ دࢪ࣪ ࢦمتحࢪڪۿ ﻼטּ ﮼ﺂنمِعتہ  .* \n") 
else
send(msg.chat_id_,0," *꙳.︙عذرا »* {["..data.first_name_.."](T.ME/GGGMG)}\n*꙳.︙؏ـينيہ متڪدِࢪ دࢪ࣪ ࢦمتحࢪڪۿ ﻼטּ ﮼ﺂنمِعتہ  .* \n" ) 
end
end,nil)   
DeleteMessage(msg.chat_id_,{[0] = msg.id_})   
return false   
end
end
end

if text == 'تفعيل' and Sudo(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,' ꙳.︙؏ـينيہ ࢦاࢪ࣪مِہ  ﺂࢦبۅت مٌشࢪف پࢦڪࢪۅپ . !')
return false  
end
tdcli_function ({ ID = "GetChannelFull", channel_id_ = getChatId(msg.chat_id_).ID }, function(arg,data)  
if tonumber(data.member_count_) < tonumber(database:get(bot_id..'Num:Add:Bot') or 0) and not DevRANW(msg) then
send(msg.chat_id_, msg.id_,' *꙳.︙عدد اعضاء الكروب قليله يرجى جمع >> {'..(database:get(bot_id..'Num:Add:Bot') or 0)..'} عضو*')
return false
end
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(extra,result,success)
tdcli_function({ID ="GetChat",chat_id_=msg.chat_id_},function(arg,chat)  
if database:sismember(bot_id..'Chek:Groups',msg.chat_id_) then
send(msg.chat_id_, msg.id_,' *꙳.︙تمِہ تفـ؏ـيل ࢦڪࢪۅپ . *')
else
sendText(msg.chat_id_,'\n *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..string.sub(result.first_name_,0, 70)..'](tg://user?id='..result.id_..')\n*꙳.︙تمِہ تفـ؏ـيل ࢦڪࢪۅپ .  *{'..chat.title_..'}',msg.id_/2097152/0.5,'md')
database:sadd(bot_id..'Chek:Groups',msg.chat_id_)
local Name = '['..result.first_name_..'](tg://user?id='..result.id_..')'
local NameChat = chat.title_
local IdChat = msg.chat_id_
local NumMember = data.member_count_
local linkgpp = json:decode(https.request('https://api.telegram.org/bot'..token..'/exportChatInviteLink?chat_id='..msg.chat_id_))
if linkgpp.ok == true then 
LinkGp = linkgpp.result
else
LinkGp = 'لا يوجد'
end
Text = ' *꙳.︙تم تفعيل كروب جديده*\n'..
'\n *꙳.︙بواسطة* {'..Name..'}'..
'\n *꙳.︙ايدي الكروب* {'..IdChat..'}'..
'\n *꙳.︙اسم الكروب* {['..NameChat..']}'..
'\n *꙳.︙عدد اعضاء الكروب* *{'..NumMember..'}*'..
'\n *꙳.︙الرابط* {['..LinkGp..']}'
if not DevRANW(msg) then
sendText(SUDO,Text,0,'md')
end
end
end,nil) 
end,nil) 
end,nil)
end
if text == 'تعطيل' and Sudo(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(extra,result,success)
tdcli_function({ID ="GetChat",chat_id_=msg.chat_id_},function(arg,chat)  
if not database:sismember(bot_id..'Chek:Groups',msg.chat_id_) then
send(msg.chat_id_, msg.id_,' *꙳.︙؏ـينيہ تمِہ تـ؏ـطيࢦ ࢦڪࢪۅپ .*')
else
sendText(msg.chat_id_,'\n *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..string.sub(result.first_name_,0, 70)..'](tg://user?id='..result.id_..')\n*꙳.︙؏ـينيہ تمِہ تـ؏ـطيࢦ ࢦڪࢪۅپ . *{'..chat.title_..'}',msg.id_/2097152/0.5,'md')
database:srem(bot_id..'Chek:Groups',msg.chat_id_)  
local Name = '['..result.first_name_..'](tg://user?id='..result.id_..')'
local NameChat = chat.title_
local IdChat = msg.chat_id_
local AddPy = var
local linkgpp = json:decode(https.request('https://api.telegram.org/bot'..token..'/exportChatInviteLink?chat_id='..msg.chat_id_))
if linkgpp.ok == true then 
LinkGp = linkgpp.result
else
LinkGp = 'لا يوجد'
end
Text = '\n؏ـينيہ تمِہ تـ؏ـطيࢦ ࢦڪࢪۅپ .  ꙳.︙'..
'\n ꙳.︙بواسطة {'..Name..'}'..
'\n ꙳.︙ايدي الكروب {'..IdChat..'}'..
'\n ꙳.︙اسم الكروب {['..NameChat..']}'..
'\n ꙳.︙الرابط {['..LinkGp..']}'
if not DevRANW(msg) then
sendText(SUDO,Text,0,'md')
end
end
end,nil) 
end,nil) 
end
if text == 'تفعيل' and not Sudo(msg) and not database:get(bot_id..'Free:Bots') then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,' *꙳.︙؏ـينيہ ࢦاࢪ࣪مِہ  ﺂࢦبۅت مٌشࢪف پࢦڪࢪۅپ . !*')
return false  
end
tdcli_function ({ ID = "GetChannelFull", channel_id_ = getChatId(msg.chat_id_).ID }, function(arg,data)  
if tonumber(data.member_count_) < tonumber(database:get(bot_id..'Num:Add:Bot') or 0) and not DevRANW(msg) then
send(msg.chat_id_, msg.id_,' *꙳.︙عدد اعضاء الكروب قليله يرجى جمع >>* {'..(database:get(bot_id..'Num:Add:Bot') or 0)..'} عضو')
return false
end
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(extra,result,success)
tdcli_function({ID ="GetChat",chat_id_=msg.chat_id_},function(arg,chat)  
tdcli_function ({ID = "GetChatMember",chat_id_ = msg.chat_id_,user_id_ = msg.sender_user_id_},function(arg,da) 
if da and da.status_.ID == "ChatMemberStatusEditor" or da and da.status_.ID == "ChatMemberStatusCreator" then
if da and da.user_id_ == msg.sender_user_id_ then
if da.status_.ID == "ChatMemberStatusCreator" then
var = 'المالك'
elseif da.status_.ID == "ChatMemberStatusEditor" then
var = 'مشرف'
end
if database:sismember(bot_id..'Chek:Groups',msg.chat_id_) then
send(msg.chat_id_, msg.id_,' *꙳.︙تمِہ تفـ؏ـيل ࢦڪࢪۅپ . *')
else
sendText(msg.chat_id_,'\n *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..string.sub(result.first_name_,0, 70)..'](tg://user?id='..result.id_..')\n*꙳.︙تمِہ تفـ؏ـيل ࢦڪࢪۅپ .  *{'..chat.title_..'}',msg.id_/2097152/0.5,'md')
database:sadd(bot_id..'Chek:Groups',msg.chat_id_)  
database:sadd(bot_id..'CoSu'..msg.chat_id_, msg.sender_user_id_)
local Name = '['..result.first_name_..'](tg://user?id='..result.id_..')'
local NumMember = data.member_count_
local NameChat = chat.title_
local IdChat = msg.chat_id_
local AddPy = var
local linkgpp = json:decode(https.request('https://api.telegram.org/bot'..token..'/exportChatInviteLink?chat_id='..msg.chat_id_))
if linkgpp.ok == true then 
LinkGp = linkgpp.result
else
LinkGp = 'لا يوجد'
end
Text = ' *꙳.︙تم تفعيل كروب جديده*\n'..
'\n *꙳.︙بواسطة* {'..Name..'}'..
'\n *꙳.︙موقعه في الكروب *{'..AddPy..'}' ..
'\n *꙳.︙ايدي الكروب* {'..IdChat..'}'..
'\n *꙳.︙عدد اعضاء الكروب* *{'..NumMember..'}*'..
'\n *꙳.︙اسم الكروب* {['..NameChat..']}'..
'\n *꙳.︙الرابط* {['..LinkGp..']}'
if not DevRANW(msg) then
sendText(SUDO,Text,0,'md')
end
end
end
end
end,nil)   
end,nil) 
end,nil) 
end,nil)
end
if text and text:match("^ضع عدد الاعضاء (%d+)$") and DevRANW(msg) then
local Num = text:match("ضع عدد الاعضاء (%d+)$") 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:set(bot_id..'Num:Add:Bot',Num) 
send(msg.chat_id_, msg.id_,' *꙳.︙تم تعيين عدد الاعضاء سيتمِہ تفـ؏ـيل ࢦڪࢪۅپ . ات التي اعضائها اكثر من  >> {'..Num..'} عضو*')
end
if text == 'تحديث السورس' and DevRANW(msg) then 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
os.execute('rm -rf RAN.lua')
os.execute('wget https://raw.githubusercontent.com/RAN-DEVL/RAN/main/RAN.lua')
send(msg.chat_id_, msg.id_,' *꙳.︙تمِہ ﮼تحِۢـديث ࢦسۅࢪسہ .* \n*꙳.︙؏ـندڪك ﮼ﺂخيࢪ ﮼ﺂصداࢪ سۅࢪسہ ࢪﺂטּ  .ن*\n*꙳.︙﮼ﺂࢦاصداࢪ » { 2.8v}*')
dofile('RAN.lua')  
end

if text and text:match("^تغير الاشتراك$") and DevRANW(msg) then  
database:setex(bot_id.."add:ch:jm" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 360, true)  
send(msg.chat_id_, msg.id_, ' *꙳.︙دࢪ࣪ مِـ؏ـࢪف قٰناتڪك .*')
return false  
end
if text and text:match("^تغير رساله الاشتراك$") and DevRANW(msg) then  
database:setex(bot_id.."textch:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 360, true)  
send(msg.chat_id_, msg.id_, ' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ دࢪ࣪ ࢦتࢪيدۿۧ  .*')
return false  
end
if text == "حذف رساله الاشتراك ꙳." and DevRANW(msg) then  
database:del(bot_id..'text:ch:user')
send(msg.chat_id_, msg.id_, " *꙳.︙تمِہ مِسحہ ࢪسالۿۧ ﺂࢦاشتࢪﺂڪك ﮼ﺂࢦاچباࢪჂ̤ .* ")
return false  
end
if text and text:match("^وضع قناة الاشتراك ꙳.$") and DevRANW(msg) then  
database:setex(bot_id.."add:ch:jm" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 360, true)  
send(msg.chat_id_, msg.id_, ' *꙳.︙دࢪ࣪ مِـ؏ـࢪف قٰناتڪك .*')
return false  
end
if text == "تفعيل الاشتراك الاجباري ꙳." and DevRANW(msg) then  
if database:get(bot_id..'add:ch:id') then
local addchusername = database:get(bot_id..'add:ch:username')
send(msg.chat_id_, msg.id_," *꙳.︙ﺂࢦاشتࢪﺂڪك ﮼ﺂࢦاچباࢪჂ̤ مِفـ؏ـࢦ .* \n*꙳.︙؏ ࢦـ قٰناۿۧ »* ["..addchusername.."]")
else
database:setex(bot_id.."add:ch:jm" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 360, true)  
send(msg.chat_id_, msg.id_," ꙳.︙ۿۧهلا ﮼حِۢـياتيہ  . \n ꙳.︙دࢪ࣪ مِـ؏ـࢪف قٰناتڪك .")
end
return false  
end
if text == "تعطيل الاشتراك الاجباري ꙳." and DevRANW(msg) then  
database:del(bot_id..'add:ch:id')
database:del(bot_id..'add:ch:username')
send(msg.chat_id_, msg.id_, " *꙳.︙تمِہ تـ؏ـطيل  ﮼ﺂࢦاشتࢪﺂڪك ﮼ﺂࢦاچباࢪჂ̤  .* ")
return false  
end
if text == "الاشتراك الاجباري ꙳." and DevRANW(msg) then  
if database:get(bot_id..'add:ch:username') then
local addchusername = database:get(bot_id..'add:ch:username')
send(msg.chat_id_, msg.id_, " *꙳.︙تمِہ تـفـ؏ـيل ﮼ﺂࢦاشتࢪﺂڪك ﮼ﺂࢦاچباࢪჂ̤  .* \n*꙳.︙؏ ࢦـ قٰناۿۧ »* ["..addchusername.."]")
else
send(msg.chat_id_, msg.id_, " *꙳.︙مـڪۅ قٰناۿۧ پـ  ﺂࢦاشتࢪﺂڪك ﮼ﺂࢦاچباࢪჂ̤ .* ")
end
return false  
end
if text == "تفعيل الاضافات" and SudoBot(msg) then
send(msg.chat_id_, msg.id_, '*꙳.︙ تمِہ تفـ؏ـيࢦ ﮼ﺂࢦاضافات  .*')
database:set(bot_id.."AL:Sre:stats","✔")
end
if text == "تعطيل الاضافات" and SudoBot(msg) then
send(msg.chat_id_, msg.id_, '*꙳.︙ تمِہ تـ؏ـطيࢦ ﮼ﺂࢦاضافات  .*')
database:set(bot_id.."AL:Sre:stats","❌")
end
if text == "الاضافات" and Constructor(msg) then
local AMIRDEV = database:get(bot_id.."AL:Sre:stats") or "لم يتم التحديد"
send(msg.chat_id_, msg.id_,"*حاله الاضافات هي : {"..AMIRDEV.."}*\n*اذا كانت {✔} الاضافات مفعله*\n*اذا كانت {❌} الاضافات معطله*")
end
function bnnaGet(user_id, cb)
tdcli_function ({
ID = "GetUser",
user_id_ = user_id
}, cb, nil)
end

if database:get(bot_id.."block:name:stats"..msg.chat_id_) == "open" then
if text and text:match("^كتم اسم (.*)$") and Manager(msg) and database:get(bot_id.."block:name:stats"..msg.chat_id_) == "open" then
local BlNe = text:match("^كتم اسم (.*)$")
send(msg.chat_id_, msg.id_, '*꙳.︙تمِہ ڪتمِہ ﮼ﺂࢦاسمِہ .* '..BlNe)
database:sadd(bot_id.."RAN:blocname"..msg.chat_id_, BlNe)
end

if text and text:match("^الغاء كتم اسم (.*)$") and Manager(msg) and database:get(bot_id.."block:name:stats"..msg.chat_id_) == "open" then
local delBn = text:match("^الغاء كتم اسم (.*)$")
send(msg.chat_id_, msg.id_, '*꙳.︙* ꙳︙تمِہ ﮼ﺂࢦـغاء ڪتمِہ ﺂࢦاسمِہ .* '..delBn)
database:srem(bot_id.."RAN:blocname"..msg.chat_id_, delBn)
end

if text == "مسح الاسماء المكتومه" and Constructor(msg) and database:get(bot_id.."block:name:stats"..msg.chat_id_) == "open" then
database:del(bot_id.."RAN:blocname"..msg.chat_id_)
texts = "*꙳.︙تمِہ مِسحہ ﮼ﺂࢦاسماء ࢦمِڪتۅمِهہ  .* "
send(msg.chat_id_, msg.id_, texts)
end
if text == "الاسماء المكتومه" and Constructor(msg) and database:get(bot_id.."block:name:stats"..msg.chat_id_) == "open" then
local All_name = database:smembers(bot_id.."RAN:blocname"..msg.chat_id_)
t = "\n*꙳.︙قائمِۿۧ ﮼ﺂࢦاسماء ࢦمڪتۅمِۿۧ .* \n*﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎*\n"
for k,v in pairs(All_name) do
t = t..""..k.."- (["..v.."])\n"
end
if #All_name == 0 then
t = "*꙳.︙مـڪۅ ﮼ﺂسماء مڪتۅمِۿۧ .*"
end
send(msg.chat_id_, msg.id_, t)
end
end
if text == "تفعيل كتم الاسم" and Constructor(msg) and database:get(bot_id.."AL:Sre:stats") == "✔" then
send(msg.chat_id_, msg.id_, '*꙳.︙تمِہ تفـ؏ـيࢦ ࢦڪتمِہ ﮼ﺂࢦاسمِہ .*')
database:set(bot_id.."block:name:stats"..msg.chat_id_,"open")
end
if text == "تعطيل كتم الاسم" and Constructor(msg) and database:get(bot_id.."AL:Sre:stats") == "✔" then
send(msg.chat_id_, msg.id_, '*꙳.︙تمِہ تـ؏ـطيࢦ ࢦڪتمِہ ﮼ﺂࢦاسمِہ .*')
database:set(bot_id.."block:name:stats"..msg.chat_id_,"close")
end
if not Manager(msg) and database:get(bot_id.."block:name:stats"..msg.chat_id_) == "open" then
function VVVZVV_name(t1,t2)
if t2.id_ then 
name_RAN = ((t2.first_name_ or "") .. (t2.last_name_ or ""))
if name_RAN then 
names_RAN = database:smembers(bot_id.."RAN:blocname"..msg.chat_id_) or ""
if names_RAN and names_RAN[1] then 
for i=1,#names_RAN do 
if name_RAN:match("(.*)("..names_RAN[i]..")(.*)") then 
DeleteMessage_(msg.chat_id_,{[0] = msg.id_}) 
end
end
end
end
end
end
bnnaGet(msg.sender_user_id_, VVVZVV_name)
end
if database:get(bot_id.."kt:twh:stats"..msg.chat_id_) == "open" then
if text and text:match("^وضع توحيد (.*)$") and Manager(msg) and database:get(bot_id.."kt:twh:stats"..msg.chat_id_) == "open" then
local teh = text:match("^وضع توحيد (.*)$")
send(msg.chat_id_, msg.id_,'*꙳.︙تم تعيين '..teh..' ڪتوحيدِ  ࢦڪࢪۅپ .*')
database:set(bot_id.."RAN:teh"..msg.chat_id_,teh)
end
if text and text:match("^تعين عدد الكتم (.*)$") and Manager(msg) and database:get(bot_id.."kt:twh:stats"..msg.chat_id_) == "open" then
local nump = text:match("^تعين عدد الكتم (.*)$")
send(msg.chat_id_, msg.id_,'*꙳.︙تمِہ تـ؏ـين  '..nump..' ؏ـدِد ࢦڪتمِہ .*')
database:set(bot_id.."RAN:nump"..msg.chat_id_,nump)
end
if text == "التوحيد" then
local s1 = database:get(bot_id.."RAN:teh"..msg.chat_id_) or "مـڪۅ توحيدِ  ࢦڪࢪۅپ ."
local s2 = database:get(bot_id.."RAN:nump"..msg.chat_id_) or 5
send(msg.chat_id_, msg.id_,'*꙳.︙ࢦتۅحيِد : '..s1..'*\n*꙳.︙؏ـددِ ࢦڪتمِہ :* '..s2)
end
end
if text == "تفعيل التوحيد" and Constructor(msg) and database:get(bot_id.."AL:Sre:stats") == "✔" then
send(msg.chat_id_, msg.id_, '*꙳.︙تمِہ تفـ؏ـيࢦ ࢦتۅحيدٍ .*')
database:set(bot_id.."kt:twh:stats"..msg.chat_id_,"open")
end
if text == "تعطيل التوحيد" and Constructor(msg) and database:get(bot_id.."AL:Sre:stats") == "✔" then
send(msg.chat_id_, msg.id_, '*꙳.︙تمِہ تـ؏ـطيࢦ ࢦتۅحيدٍ  .*')
database:set(bot_id.."kt:twh:stats"..msg.chat_id_,"close")
end
if not Constructor(msg) then
if database:get(bot_id.."kt:twh:stats"..msg.chat_id_) == "open"  and database:get(bot_id.."RAN:teh"..msg.chat_id_) then 
id = msg.sender_user_id_
function amir_RANa_new(RAN1,RAN2)
if RAN2 and RAN2.first_name_ then 
if RAN2.first_name_:match("(.*)"..database:get(bot_id.."RAN:teh"..msg.chat_id_).."(.*)") then 
database:srem(bot_id.."RAN:Muted:User"..msg.chat_id_, msg.sender_user_id_)
else
local RAN_nnn = database:get(bot_id.."RAN:nump"..msg.chat_id_) or 5
local RAN_nnn2 = database:get(bot_id.."RAN:nump22"..msg.chat_id_..msg.sender_user_id_) or 0
if (tonumber(RAN_nnn2) == tonumber(RAN_nnn) or tonumber(RAN_nnn2) > tonumber(RAN_nnn)) then 
database:sadd(bot_id..'Muted:User'..msg.chat_id_, msg.sender_user_id_)
else 
database:incrby(bot_id.."RAN:nump22"..msg.chat_id_..msg.sender_user_id_,1)
send(msg.chat_id_, msg.id_, "꙳.︙عزيزي >>["..RAN2.username_.."](https://t.me/"..(RAN2.username_ or "GGGMG")..")\n꙳.︙عليك وضع التوحيد ⪼ {"..database:get(bot_id.."RAN:teh"..msg.chat_id_).."} بجانب اسمك\n꙳.︙عدد المحاولات المتبقيه {"..(tonumber(RAN_nnn) - tonumber(RAN_nnn2)).."}")
end
end
end
end
bnnaGet(id, amir_RANa_new)
end
end
if text == "تفعيل تنبيه الاسماء" and Manager(msg) and database:get(bot_id.."AL:Sre:stats") == "✔" then
send(msg.chat_id_, msg.id_, '*꙳.︙تمِہ تفـ؏ـيࢦ تنبيۿۧ ﮼ﺂࢦاسماء .*')
database:set(bot_id.."Ttn:BBE:stats"..msg.chat_id_,"open")
end
if text == "تعطيل تنبيه الاسماء" and Manager(msg) and database:get(bot_id.."AL:Sre:stats") == "✔" then
send(msg.chat_id_, msg.id_, '*꙳.︙تمِہ تـ؏ـطيࢦ تنبيۿۧ ﮼ﺂࢦاسماء .*')
database:set(bot_id.."Ttn:BBE:stats"..msg.chat_id_,"close")
end
if text and database:get(bot_id.."Ttn:BBE:stats"..msg.chat_id_) == "open" then 
tdcli_function({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data)
if data.id_ then 
if data.id_ ~= bot_id then
local RANChengName = database:get(bot_id.."RAN:Cheng:Name"..data.id_)
if not data.first_name_ then 
if RANChengName then 
send(msg.chat_id_, msg.id_, " خوش معرف جان ["..RANChengName..']')
database:del(bot_id.."RAN:Cheng:Name"..data.id_) 
end
end
if data.first_name_ then 
if RANChengName ~= data.first_name_ then 
local Text = {
  "جان خوش اسم يول",
"ليش غيرته اسمك بس لا خانوك/ج",
"هذا الحلو غير اسمه 😉",
}
send(msg.chat_id_, msg.id_,Text[math.random(#Text)])
end  
database:set(bot_id.."RAN:Cheng:Name"..data.id_, data.first_name_) 
end
end
end
end,nil)   
end
if text == "تفعيل تنبيه المعرف" and Constructor(msg) and database:get(bot_id.."AL:Sre:stats") == "✔" then
send(msg.chat_id_, msg.id_, '*꙳.︙تمِہ تفـ؏ـيࢦ تنبيۿۧ ࢦمِـ؏ـࢪف  .*')
database:set(bot_id.."Ttn:Userr:stats"..msg.chat_id_,"open")
end
if text == "تعطيل تنبيه المعرف" and Constructor(msg) and database:get(bot_id.."AL:Sre:stats") == "✔" then
send(msg.chat_id_, msg.id_, '*꙳.︙تمِہ تـ؏ـطيࢦ تنبيۿۧ ࢦمِـ؏ـࢪف .*')
database:set(bot_id.."Ttn:Userr:stats"..msg.chat_id_,"close")
end
if text and database:get(bot_id.."Ttn:Userr:stats"..msg.chat_id_) == "open" then  
tdcli_function({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data)
if data.id_ then 
if data.id_ ~= bot_id then
local RANChengUserName = database:get(bot_id.."RAN:Cheng:UserName"..data.id_)
if not data.username_ then 
if RANChengUserName then 
send(msg.chat_id_, msg.id_, 1, "حذف مِـ؏ـࢪفۿۧ خمطو بساع بساع  \n هاذه مِـ؏ـࢪفۿۧ  : [@"..RANChengUserName..']')
database:del(bot_id.."RAN:Cheng:UserName"..data.id_) 
end
end
if data.username_ then 
if RANChengUserName ~= data.username_ then 
local Text = {
'شكو غيرت مِـ؏ـࢪفكك شنو نشروك بقنوات فضايح😂🥺',
"هاها شو غيرت مِـ؏ـࢪفكك بس لا هددتك/ج الحب",
"شسالفه شو غيرت مِـ؏ـࢪفكك 😐🌝",
"غير مِـ؏ـࢪفۿۧ خمطو بساع بساع \n هاذه مِـ؏ـࢪفۿۧ : @"..data.username_.."",
'ها عار مو جان مِـ؏ـࢪفكك \n شكو غيرته ل @'..data.username_..' ',
'ها يول شو مغير مِـ؏ـࢪفكك بيش مشتري يول', 
"منور معرف جديد :  "..data.username_.."",
}
send(msg.chat_id_, msg.id_,Text[math.random(#Text)])
end  
database:set(bot_id.."RAN:Cheng:UserName"..data.id_, data.username_) 
end
end
end
end,nil)   
end
if text == "تفعيل تنبيه الصور" and Manager(msg) and database:get(bot_id.."AL:Sre:stats") == "✔" then
send(msg.chat_id_, msg.id_, '*꙳.︙تمِہ تفـ؏ـيࢦ تنبيۿۧ ࢦصۅࢪ .*')
database:set(bot_id.."Ttn:Ph:stats"..msg.chat_id_,"open")
end
if text == "تعطيل تنبيه الصور" and Manager(msg) and database:get(bot_id.."AL:Sre:stats") == "✔" then
send(msg.chat_id_, msg.id_, '*꙳.︙تمِہ تـ؏ـطيࢦ تنبيۿۧ ࢦصۅࢪ .*')
database:set(bot_id.."Ttn:Ph:stats"..msg.chat_id_,"close")
end
if text and database:get(bot_id.."Ttn:Ph:stats"..msg.chat_id_) == "open" then  
tdcli_function({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data)
if data.id_ then 
if data.id_ ~= bot_id then 
local RANChengPhoto = database:get(bot_id.."RAN:Cheng:Photo"..data.id_)
if not data.profile_photo_ then 
if RANChengPhoto then 
send(msg.chat_id_, msg.id_, "حذف كل صور ابن الحلو شكد غبي لعد😂🥺")
database:del(bot_id.."RAN:Cheng:Photo"..data.id_) 
end
end
if data.profile_photo_.big_.persistent_id_ then 
if RANChengPhoto ~= data.profile_photo_.big_.persistent_id_ then 
local Text = {
  "شكو غيرت صورتك يلصاك",
  "منور طالع حلو ع صوره جديده",
  "ها يول شو غيرت صورتك😍😂",
  "شكو غيرت صورتك شنو قطيت وحده جديده 😹😹🌚",
  "شو غيرت صورتك شنو تعاركت ويه الحب ؟😹🌞",
  "شكو غيرت الصوره شسالفه ؟؟ 🤔🌞",
}
send(msg.chat_id_, msg.id_,Text[math.random(#Text)])
end  
database:set(bot_id.."RAN:Cheng:Photo"..data.id_, data.profile_photo_.big_.persistent_id_) 
end
end
end
end,nil)   
end
if text == 'السورس' or text == 'سورس' or text == 'يا سورس' then
Text = [[
- 𝙍𝘼ٌْ𝙉ّ 𝙏𝙀𝘼ٍِ𝙈 .
 — — — — — — — — — 
[𖡮︙𝙎ٌ𝙊ٌِّ𝙐𝙍ٌٍ𝘾𝙀 ُ𝙍 𝘼 𝙉 .](t.me/GGGMG)
[𖡮︙𝘽ًَ𝙊ٌٍ𝙏 𝙎 𝙊 𝙐 𝙍 𝘾 𝙀 .](t.me/R77Bot)
[𖡮︙𝘿𝙀ْ𝙑𝙇𝙋ًّ𝙊𝙀ِ𝙍 .](t.me/AAA5A)
[𖡮︙𝙐ٌ𝙋ٌّ𝘿𝘼𝙏𝙀ّ𝙎ْ ٌَ 𝙎ٌ𝙊ٌِّ𝙐𝙍ٌٍ𝘾𝙀 ُ𝙍 𝘼 𝙉 .](http://t.me/GGGMG)

]]
send(msg.chat_id_, msg.id_,Text)
return false
end
--------------------------------------------------------------------------------------------------------------
if Chat_Type == 'GroupBot' and ChekAdd(msg.chat_id_) == true then
if text == 'رفع نسخه الاحتياطيه' and DevRANW(msg) then   
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if tonumber(msg.reply_to_message_id_) > 0 then
function by_reply(extra, result, success)   
if result.content_.document_ then 
local ID_FILE = result.content_.document_.document_.persistent_id_ 
local File_Name = result.content_.document_.file_name_
AddFile_Bot(msg,msg.chat_id_,ID_FILE,File_Name)
end   
end
tdcli_function ({ ID = "GetMessage", chat_id_ = msg.chat_id_, message_id_ = tonumber(msg.reply_to_message_id_) }, by_reply, nil)
end
end
if text == 'جلب نسخه الاحتياطيه' and DevRANW(msg) then 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
GetFile_Bot(msg)
end
if text == 'الاوامر المضافه' and Constructor(msg) then
local list = database:smembers(bot_id..'List:Cmd:Group:New'..msg.chat_id_..'')
t = "\n꙳.︙ۿۧهلا ﮼حِۢـياتيہ  ﺂلاۅﺂمࢪ ࢦمضافۿۧ .  \n﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎\n"
for k,v in pairs(list) do
Cmds = database:get(bot_id.."Set:Cmd:Group:New1"..msg.chat_id_..':'..v)
print(Cmds)
if Cmds then 
t = t..""..k..">> ("..v..") » {"..Cmds.."}\n"
else
t = t..""..k..">> ("..v..") \n"
end
end
if #list == 0 then
t = "꙳.︙مـڪو ﮼ﺂۅﺂمࢪ مضافۿۧ 🥢."
end
send(msg.chat_id_, msg.id_,'['..t..']')
end
if text == 'حذف الاوامر المضافه' or text == 'مسح الاوامر المضافه' then
if Constructor(msg) then 
local list = database:smembers(bot_id..'List:Cmd:Group:New'..msg.chat_id_)
for k,v in pairs(list) do
database:del(bot_id.."Set:Cmd:Group:New1"..msg.chat_id_..':'..v)
database:del(bot_id..'List:Cmd:Group:New'..msg.chat_id_)
end
send(msg.chat_id_, msg.id_,' *تمِہ مِسحہ ﺂࢦاۅﺂمࢪ ࢦمضافۿۧ  .*')  
end
end
if text == 'اضف امر' and Constructor(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:set(bot_id.."Set:Cmd:Group"..msg.chat_id_..':'..msg.sender_user_id_,'true') 
send(msg.chat_id_, msg.id_,' *꙳.︙دࢪ࣪ ﮼ﺂࢦامِࢪ ࢦقديمِہ 💞💘.*')  
return false
end
if text == 'حذف امر' or text == 'مسح امر' then 
if Constructor(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:set(bot_id.."Del:Cmd:Group"..msg.chat_id_..':'..msg.sender_user_id_,'true') 
send(msg.chat_id_, msg.id_,' *꙳.︙دࢪ࣪ ﮼ﺂࢦامِࢪ لجديِد 💞💘.*')  
return false
end
end
if text and database:get(bot_id.."Set:Cmd:Group"..msg.chat_id_..':'..msg.sender_user_id_) == 'true' then
database:set(bot_id.."Set:Cmd:Group:New"..msg.chat_id_,text)
send(msg.chat_id_, msg.id_,' *꙳.︙دࢪ࣪ ﮼ﺂࢦامِࢪ لجديِد 💞💘.*')  
database:del(bot_id.."Set:Cmd:Group"..msg.chat_id_..':'..msg.sender_user_id_)
database:set(bot_id.."Set:Cmd:Group1"..msg.chat_id_..':'..msg.sender_user_id_,'true1') 
return false
end
if text and database:get(bot_id.."Set:Cmd:Group1"..msg.chat_id_..':'..msg.sender_user_id_) == 'true1' then
local NewCmd = database:get(bot_id.."Set:Cmd:Group:New"..msg.chat_id_)
database:set(bot_id.."Set:Cmd:Group:New1"..msg.chat_id_..':'..text,NewCmd)
database:sadd(bot_id.."List:Cmd:Group:New"..msg.chat_id_,text)
send(msg.chat_id_, msg.id_,' *꙳.︙تمِہ ﮼حِۢـفظ ﮼ﺂࢦامِࢪ 💞💘.*')  
database:del(bot_id.."Set:Cmd:Group1"..msg.chat_id_..':'..msg.sender_user_id_)
return false
end
if text == 'السيرفر' and SudoBot(msg) then 
send(msg.chat_id_, msg.id_, io.popen([[
linux_version=`lsb_release -ds`
memUsedPrc=`free -m | awk 'NR==2{printf "%sMB/%sMB {%.2f%}\n", $3,$2,$3*100/$2 }'`
HardDisk=`df -lh | awk '{if ($6 == "/") { print $3"/"$2" ~ {"$5"}" }}'`
CPUPer=`top -b -n1 | grep "Cpu(s)" | awk '{print $2 + $4}'`
uptime=`uptime | awk -F'( |,|:)+' '{if ($7=="min") m=$6; else {if ($7~/^day/) {d=$6;h=$8;m=$9} else {h=$6;m=$7}}} {print d+0,"days,",h+0,"hours,",m+0,"minutes."}'`
echo '⇗ نظام التشغيل ⇖•\n*»» '"$linux_version"'*' 
echo '*———————————~*\n✺✔{ الذاكره العشوائيه } ⇎\n*»» '"$memUsedPrc"'*'
echo '*———————————~*\n✺✔{ وحـده الـتـخـزيـن } ⇎\n*»» '"$HardDisk"'*'
echo '*———————————~*\n✺✔{ الـمــعــالــج } ⇎\n*»» '"`grep -c processor /proc/cpuinfo`""Core ~ {$CPUPer%} "'*'
echo '*———————————~*\n✺✔{ الــدخــول } ⇎\n*»» '`whoami`'*'
echo '*———————————~*\n✺✔{ مـده تـشغيـل الـسـيـرفـر }⇎\n*»» '"$uptime"'*'
]]):read('*all'))  
end

--------------------------------------------------------------------------------------------------------------
if text == 'قفل الدردشه' and msg.reply_to_message_id_ == 0 and Manager(msg) then 
database:set(bot_id.."lock:text"..msg.chat_id_,true) 
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data)  
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ قفࢦ ࢦدࢪدِشۿ .* ')
end,nil)   
elseif text == 'قفل الاضافه' and msg.reply_to_message_id_ == 0 and Mod(msg) then 
database:set(bot_id.."lock:AddMempar"..msg.chat_id_,'kick')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ قفࢦ ﮼ﺂضافۿۧ .* ')
end,nil)   
elseif text == 'قفل الدخول' and msg.reply_to_message_id_ == 0 and Mod(msg) then 
database:set(bot_id.."lock:Join"..msg.chat_id_,'kick')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ قفࢦ ࢦدِخۅࢦ .* ')
end,nil)   
elseif text == 'قفل البوتات' and msg.reply_to_message_id_ == 0 and Mod(msg) then 
database:set(bot_id.."lock:Bot:kick"..msg.chat_id_,'del')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ قفࢦ اࢦبوتات .* ')
end,nil)   
elseif text == 'قفل البوتات بالطرد' and msg.reply_to_message_id_ == 0 and Mod(msg) then 
database:set(bot_id.."lock:Bot:kick"..msg.chat_id_,'kick')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ قفࢦ اࢦبوتات بالطࢪدِ  .* ')
end,nil)   
elseif text == 'قفل الاشعارات' and msg.reply_to_message_id_ == 0 and Mod(msg) then  
database:set(bot_id..'lock:tagservr'..msg.chat_id_,true)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ قفࢦ ﮼ﺂࢦاشـ؏ـاࢪات .* ')
end,nil)   
elseif text == 'قفل التثبيت' and msg.reply_to_message_id_ == 0 and Constructor(msg) then 
database:set(bot_id.."lockpin"..msg.chat_id_, true) 
database:sadd(bot_id..'lock:pin',msg.chat_id_) 
tdcli_function ({ ID = "GetChannelFull",  channel_id_ = getChatId(msg.chat_id_).ID }, function(arg,data)  database:set(bot_id..'Pin:Id:Msg'..msg.chat_id_,data.pinned_message_id_)  end,nil)
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ قفࢦ ࢦتثبيتٍ  .* ')
end,nil)   
elseif text == 'قفل التعديل' and msg.reply_to_message_id_ == 0 and Constructor(msg) then 
database:set(bot_id..'lock:edit'..msg.chat_id_,true) 
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ قفࢦ ࢦتـ؏ـدِيࢦ  .* ')
end,nil)   
elseif text == 'قفل الفشار' and msg.reply_to_message_id_ == 0 and Manager(msg) then 
database:set(bot_id..'lock:Fshar'..msg.chat_id_,true) 
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ قفࢦ ࢦفشاࢪ .* ')
end,nil)  
elseif text == 'قفل الفارسيه' and msg.reply_to_message_id_ == 0 and Manager(msg) then 
database:set(bot_id..'lock:Fars'..msg.chat_id_,true) 
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تـم قفـل الفارسيه* ')
end,nil)   
elseif text == 'قفل الانكليزيه' and msg.reply_to_message_id_ == 0 and Manager(msg) then 
database:set(bot_id..'lock:Engilsh'..msg.chat_id_,true) 
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ قفࢦ ﮼ﺂࢦانڪليࢪ࣪يۿۧ .* ')
end,nil)
elseif text == 'قفل الانلاين' and msg.reply_to_message_id_ == 0 and Manager(msg) then 
database:set(bot_id.."lock:inline"..msg.chat_id_,'del')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ قفࢦ ﮼ﺂࢦانلاينہ .* ')
end,nil)
elseif text == 'قفل تعديل الميديا' and msg.reply_to_message_id_ == 0 and BasicConstructor(msg) then 
database:set(bot_id..'lock_edit_med'..msg.chat_id_,true) 
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ قفࢦ ࢦتـ؏ـدِيࢦ  .* ')
end,nil)   
elseif text == 'قفل الكل' and msg.reply_to_message_id_ == 0 and Mod(msg) then 
database:set(bot_id..'lock:tagservrbot'..msg.chat_id_,true)   
list ={"lock:Bot:kick","lock:user:name","lock:hashtak","lock:Cmd","lock:Link","lock:forward","lock:Keyboard","lock:geam","lock:Photo","lock:Animation","lock:Video","lock:Audio","lock:vico","lock:Sticker","lock:Document","lock:Unsupported","lock:Markdaun","lock:Contact","lock:Spam"}
for i,lock in pairs(list) do 
database:set(bot_id..lock..msg.chat_id_,'del')
end
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ قفࢦ الڪٰٖࢦ .* ')
end,nil)   
end
if text == 'قفل الاباحي' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Lock:Xn"..msg.chat_id_,'del')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ قفࢦ ﮼ﺂلاباحٍيہ .* ')
end,nil)   
elseif text == 'فتح الاباحي' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:del(bot_id.."lock:Lock:Xn"..msg.chat_id_)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ فتحِہ ﮼ﺂلاباحٍيہ .* ')
end,nil)   
end
if text == 'فتح الانلاين' and msg.reply_to_message_id_ == 0 and Mod(msg) then 
database:del(bot_id.."lock:inline"..msg.chat_id_)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ فتحِہ ﮼ﺂࢦانلاينہ .* ')
end,nil)
elseif text == 'فتح الاضافه' and msg.reply_to_message_id_ == 0 and Mod(msg) then 
database:del(bot_id.."lock:AddMempar"..msg.chat_id_)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ فتحِہ ﮼ﺂضافۿۧ .* ')
end,nil)   
elseif text == 'فتح الدردشه' and msg.reply_to_message_id_ == 0 and Manager(msg) then 
database:del(bot_id.."lock:text"..msg.chat_id_)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ فتحِہ ࢦدࢪدِشۿ .* ')
end,nil)   
elseif text == 'فتح الدخول' and msg.reply_to_message_id_ == 0 and Mod(msg) then 
database:del(bot_id.."lock:Join"..msg.chat_id_)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ فتحِہ ࢦدِخۅࢦ .* ')
end,nil)   
elseif text == 'فتح البوتات' and msg.reply_to_message_id_ == 0 and Mod(msg) then 
database:del(bot_id.."lock:Bot:kick"..msg.chat_id_)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ فتحِہ اࢦبوتات .* ')
end,nil)   
elseif text == 'فتح البوتات بالطرد' and msg.reply_to_message_id_ == 0 and Mod(msg) then 
database:del(bot_id.."lock:Bot:kick"..msg.chat_id_)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ فتحِہ اࢦبوتات بالطࢪدِ  .* ')
end,nil)   
elseif text == 'فتح الاشعارات' and msg.reply_to_message_id_ == 0 and Mod(msg) then  
database:del(bot_id..'lock:tagservr'..msg.chat_id_)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ فتحِہ ﮼ﺂࢦاشـ؏ـاࢪات .* ')
end,nil)   
elseif text == 'فتح التثبيت' and msg.reply_to_message_id_ == 0 and Constructor(msg) then 
database:del(bot_id.."lockpin"..msg.chat_id_)  
database:srem(bot_id..'lock:pin',msg.chat_id_)
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ فتحِہ ࢦتثبيتٍ  .* ')
end,nil)   
elseif text == 'فتح التعديل' and msg.reply_to_message_id_ == 0 and Constructor(msg) then 
database:del(bot_id..'lock:edit'..msg.chat_id_) 
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ قفࢦ ࢦتـ؏ـدِيࢦ  .* ')
end,nil)   
elseif text == 'فتح الفشار' and msg.reply_to_message_id_ == 0 and Manager(msg) then 
database:del(bot_id..'lock:Fshar'..msg.chat_id_) 
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ فتحِہ ࢦفشاࢪ .* ')
end,nil)   
elseif text == 'فتح الفارسيه' and msg.reply_to_message_id_ == 0 and Manager(msg) then 
database:del(bot_id..'lock:Fars'..msg.chat_id_) 
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ فتحہ ࢦفاࢪيسۿۧ  .* ')
end,nil)   
elseif text == 'فتح الانكليزيه' and msg.reply_to_message_id_ == 0 and Manager(msg) then 
database:del(bot_id..'lock:Engilsh'..msg.chat_id_) 
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ فتحِہ ﮼ﺂࢦانڪليࢪ࣪يۿۧ .* ')
end,nil)
elseif text == 'فتح تعديل الميديا' and msg.reply_to_message_id_ == 0 and BasicConstructor(msg) then 
database:del(bot_id..'lock_edit_med'..msg.chat_id_) 
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ قفࢦ ࢦتـ؏ـدِيࢦ  .* ')
end,nil)   
elseif text == 'فتح الكل' and msg.reply_to_message_id_ == 0 and Mod(msg) then 
database:del(bot_id..'lock:tagservrbot'..msg.chat_id_)   
list ={"lock:Bot:kick","lock:user:name","lock:hashtak","lock:Cmd","lock:Link","lock:forward","lock:Keyboard","lock:geam","lock:Photo","lock:Animation","lock:Video","lock:Audio","lock:vico","lock:Sticker","lock:Document","lock:Unsupported","lock:Markdaun","lock:Contact","lock:Spam"}
for i,lock in pairs(list) do 
database:del(bot_id..lock..msg.chat_id_)
end
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ فتحِہ الڪٰٖࢦ .* ')
end,nil)   
end
if text == 'قفل الروابط' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Link"..msg.chat_id_,'del')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ قفࢦ ﮼ﺂࢦࢪۅابطِ .* ')
end,nil)   
elseif text == 'قفل الروابط بالتقييد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Link"..msg.chat_id_,'ked')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ قفࢦ ﮼ﺂࢦࢪۅابطِ باࢦتقيدٌ  .* ')
end,nil)   
elseif text == 'قفل الروابط بالكتم' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Link"..msg.chat_id_,'ktm')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ قفࢦ ﮼ﺂࢦࢪۅابطِ پالڪتمِہ .* ')
end,nil)   
elseif text == 'قفل الروابط بالطرد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Link"..msg.chat_id_,'kick')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ قفࢦ ﮼ﺂࢦࢪۅابطِ بالطࢪدِ  .* ')
end,nil)   
elseif text == 'فتح الروابط' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:del(bot_id.."lock:Link"..msg.chat_id_)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ فتحِہ﮼ﺂࢦࢪۅابطِ .* ')
end,nil)   
end
if text == 'قفل المعرفات' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:user:name"..msg.chat_id_,'del')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ قفࢦ ࢦـمٍـ؏ـࢪفات .* ')
end,nil)   
elseif text == 'قفل المعرفات بالتقييد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:user:name"..msg.chat_id_,'ked')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ قفࢦ ࢦـمٍـ؏ـࢪفات باࢦتقيدٌ  .* ')
end,nil)   
elseif text == 'قفل المعرفات بالكتم' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:user:name"..msg.chat_id_,'ktm')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ قفࢦ ࢦـمٍـ؏ـࢪفات پالڪتمِہ .* ')
end,nil)   
elseif text == 'قفل المعرفات بالطرد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:user:name"..msg.chat_id_,'kick')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ قفࢦ ࢦـمٍـ؏ـࢪفات بالطࢪدِ  .* ')
end,nil)   
elseif text == 'فتح المعرفات' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:del(bot_id.."lock:user:name"..msg.chat_id_)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ فتحِہ ࢦـمٍـ؏ـࢪفات .* ')
end,nil)   
end
if text == 'تفعيل نسبه الحب' and Manager(msg) then   
if database:get(bot_id..'Cick:lov'..msg.chat_id_) then
Text = ' *꙳.︙تمِہ تفـ؏ـيࢦ نسبۿۧ ࢦحپ .*'
database:del(bot_id..'Cick:lov'..msg.chat_id_)  
else
Text = ' *꙳.︙تمِہ تفـ؏ـيࢦ نسبۿۧ ࢦحپ .*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تعطيل نسبه الحب' and Manager(msg) then  
if not database:get(bot_id..'Cick:lov'..msg.chat_id_) then
database:set(bot_id..'Cick:lov'..msg.chat_id_,true)  
Text = '\n *꙳.︙تمِہ تـ؏ـطيࢦ نسبۿۧ ࢦحپ  .*'
else
Text = '\n *꙳.︙تمِہ تـ؏ـطيࢦ نسبۿۧ ࢦحپ  .*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تفعيل نسبه الرجوله' and Manager(msg) then   
if database:get(bot_id..'Cick:rjo'..msg.chat_id_) then
Text = ' *꙳.︙تمِہ تفـ؏ـيࢦ نسبۿۧ  ࢦࢪچۅࢦۿۧ  .*'
database:del(bot_id..'Cick:rjo'..msg.chat_id_)  
else
Text = ' *꙳.︙تمِہ تفـ؏ـيࢦ نسبۿۧ  ࢦࢪچۅࢦۿۧ  .*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تعطيل نسبه الرجوله' and Manager(msg) then  
if not database:get(bot_id..'Cick:rjo'..msg.chat_id_) then
database:set(bot_id..'Cick:rjo'..msg.chat_id_,true)  
Text = '\n *꙳.︙تمِہ تـ؏ـطيࢦ نسبۿۧ  ࢦࢪچۅࢦۿۧ .*'
else
Text = '\n *꙳.︙تمِہ تـ؏ـطيࢦ نسبۿۧ  ࢦࢪچۅࢦۿۧ .*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تفعيل نسبه الكره' and Manager(msg) then   
if database:get(bot_id..'Cick:krh'..msg.chat_id_) then
Text = ' *꙳.︙تمِہ تفـ؏ـيࢦ نسبۿۧ ࢦڪࢪۿۧ .*'
database:del(bot_id..'Cick:krh'..msg.chat_id_)  
else
Text = ' *꙳.︙تمِہ تفـ؏ـيࢦ نسبۿۧ ࢦڪࢪۿۧ .*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تعطيل نسبه الكره' and Manager(msg) then  
if not database:get(bot_id..'Cick:krh'..msg.chat_id_) then
database:set(bot_id..'Cick:krh'..msg.chat_id_,true)  
Text = '\n *꙳.︙تمِہ تـ؏ـطيࢦ نسبۿۧ ࢦڪࢪۿۧ .*'
else
Text = '\n *꙳.︙تمِہ تـ؏ـطيࢦ نسبۿۧ ࢦڪࢪۿۧ .*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تفعيل نسبه الانوثه' and Manager(msg) then   
if database:get(bot_id..'Cick:ano'..msg.chat_id_) then
Text = ' *꙳.︙تمِہ تفـ؏ـيࢦ نسبۿۧ ﮼ﺂࢦانۅثۿۧ .*'
database:del(bot_id..'Cick:ano'..msg.chat_id_)  
else
Text = ' *꙳.︙تمِہ تفـ؏ـيࢦ نسبۿۧ ﮼ﺂࢦانۅثۿۧ .*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تعطيل نسبه الانوثه' and Manager(msg) then  
if not database:get(bot_id..'Cick:ano'..msg.chat_id_) then
database:set(bot_id..'Cick:ano'..msg.chat_id_,true)  
Text = '\n *꙳.︙تمِہ تفـ؏ـيࢦ نسبۿۧ ﮼ﺂࢦانۅثۿۧ .*'
else
Text = '\n *꙳.︙تمِہ تفـ؏ـيࢦ نسبۿۧ ﮼ﺂࢦانۅثۿۧ .*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تفعيل غنيلي' and CoSu(msg) then   
if database:get(bot_id..'sing:for:me'..msg.chat_id_) then
Text = ' *꙳.︙تم تفعيل امر غنيلي الان ارسل غنيلي*'
database:del(bot_id..'sing:for:me'..msg.chat_id_)  
else
Text = ' *꙳.︙تمِہ تفـ؏ـيࢦ غٌنيࢦـჂ̤ .*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تعطيل غنيلي' and CoSu(msg) then  
if not database:get(bot_id..'sing:for:me'..msg.chat_id_) then
database:set(bot_id..'sing:for:me'..msg.chat_id_,true)  
Text = '\n *꙳.︙تمِہ تـ؏ـطيࢦ غٌنيࢦـჂ̤ .*'
else
Text = '\n *꙳.︙تمِہ تـ؏ـطيࢦ غٌنيࢦـჂ̤ .*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'قفل التاك' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:hashtak"..msg.chat_id_,'del')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ قفࢦ ࢦتاڪك .* ')
end,nil)   
elseif text == 'قفل التاك بالتقييد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:hashtak"..msg.chat_id_,'ked')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ قفࢦ ࢦتاڪك باࢦتقيدٌ  .* ')
end,nil)   
elseif text == 'قفل التاك بالكتم' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:hashtak"..msg.chat_id_,'ktm')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..string.sub(data.first_name_,0,60)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ قفࢦ ࢦتاڪك پالڪتمِہ .* ')
end,nil)   
elseif text == 'قفل التاك بالطرد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:hashtak"..msg.chat_id_,'kick')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ قفࢦ ࢦتاڪك بالطࢪدِ  .* ')
end,nil)   
elseif text == 'فتح التاك' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:del(bot_id.."lock:hashtak"..msg.chat_id_)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ فتحِہ ࢦتاڪك .* ')
end,nil)   
end
if text == 'قفل الشارحه' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Cmd"..msg.chat_id_,'del')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ قفࢦ ࢦشاࢪحٍۿۧ .* ')
end,nil)   
elseif text == 'قفل الشارحه بالتقييد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Cmd"..msg.chat_id_,'ked')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ قفࢦ ࢦشاࢪحٍۿۧ باࢦتقيدٌ  .* ')
end,nil)   
elseif text == 'قفل الشارحه بالكتم' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Cmd"..msg.chat_id_,'ktm')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ قفࢦ ࢦشاࢪحٍۿۧ پالڪتمِہ .* ')
end,nil)   
elseif text == 'قفل الشارحه بالطرد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Cmd"..msg.chat_id_,'kick')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ قفࢦ ࢦشاࢪحٍۿۧ بالطࢪدِ  .* ')
end,nil)   
elseif text == 'فتح الشارحه' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:del(bot_id.."lock:Cmd"..msg.chat_id_)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ فتحِہ ࢦشاࢪحٍۿۧ .* ')
end,nil)   
end
if text == 'قفل الصور'and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Photo"..msg.chat_id_,'del')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ قفࢦ ࢦصۅࢪ .* ')
end,nil)   
elseif text == 'قفل الصور بالتقييد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Photo"..msg.chat_id_,'ked')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ قفࢦ ࢦصۅࢪ باࢦتقيدٌ  .* ')
end,nil)   
elseif text == 'قفل الصور بالكتم' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Photo"..msg.chat_id_,'ktm')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ قفࢦ ࢦصۅࢪ پالڪتمِہ .* ')
end,nil)   
elseif text == 'قفل الصور بالطرد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Photo"..msg.chat_id_,'kick')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ قفࢦ ࢦصۅࢪ بالطࢪدِ  .* ')
end,nil)   
elseif text == 'فتح الصور' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:del(bot_id.."lock:Photo"..msg.chat_id_)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ فتحِہ ࢦصۅࢪ .* ')
end,nil)   
end
if text == 'قفل الفيديو' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Video"..msg.chat_id_,'del')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ قفࢦ ࢦفيدٌ  .* ')
end,nil)   
elseif text == 'قفل الفيديو بالتقييد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Video"..msg.chat_id_,'ked')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ قفࢦ ࢦفيدٌ  باࢦتقيدٌ  .* ')
end,nil)   
elseif text == 'قفل الفيديو بالكتم' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Video"..msg.chat_id_,'ktm')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ قفࢦ ࢦفيدٌ  پالڪتمِہ .* ')
end,nil)   
elseif text == 'قفل الفيديو بالطرد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Video"..msg.chat_id_,'kick')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ قفࢦ ࢦفيدٌ  بالطࢪدِ  .* ')
end,nil)   
elseif text == 'فتح الفيديو' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:del(bot_id.."lock:Video"..msg.chat_id_)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ فتحِہ ࢦفيدٌ .* ')
end,nil)   
end
if text == 'قفل المتحركه' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Animation"..msg.chat_id_,'del')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,'  *꙳.︙بواسطه* » ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ قفࢦ ࢦمِتِحࢪڪۿۧ .* ')
end,nil)   
elseif text == 'قفل المتحركه بالتقييد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Animation"..msg.chat_id_,'ked')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ قفࢦ ࢦمِتِحࢪڪۿۧ باࢦتقيدٌ  .* ')
end,nil)   
elseif text == 'قفل المتحركه بالكتم' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Animation"..msg.chat_id_,'ktm')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ قفࢦ ࢦمِتِحࢪڪۿۧ پالڪتمِہ .* ')
end,nil)   
elseif text == 'قفل المتحركه بالطرد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Animation"..msg.chat_id_,'kick')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ قفࢦ ࢦمِتِحࢪڪۿۧ بالطࢪدِ  .* ')
end,nil)   
elseif text == 'فتح المتحركه' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:del(bot_id.."lock:Animation"..msg.chat_id_)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ فتحِہ ࢦمِتِحࢪڪۿۧ .* ')
end,nil)   
end
if text == 'قفل الالعاب' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:geam"..msg.chat_id_,'del')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ قفࢦ ﺂࢦاࢦـ؏ـاپ .* ')
end,nil)   
elseif text == 'قفل الالعاب بالتقييد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:geam"..msg.chat_id_,'ked')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ قفࢦ ﺂࢦاࢦـ؏ـاپ باࢦتقيدٌ  .* ')
end,nil)   
elseif text == 'قفل الالعاب بالكتم' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:geam"..msg.chat_id_,'ktm')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ قفࢦ ﺂࢦاࢦـ؏ـاپ پالڪتمِہ .* ')
end,nil)   
elseif text == 'قفل الالعاب بالطرد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:geam"..msg.chat_id_,'kick')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ قفࢦ ﺂࢦاࢦـ؏ـاپ بالطࢪد .* ')
end,nil)   
elseif text == 'فتح الالعاب' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:del(bot_id.."lock:geam"..msg.chat_id_)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ فتحہ ﮼ﺂࢦاࢦـ؏ـاپ.* ')
end,nil)   
end
if text == 'قفل الاغاني' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Audio"..msg.chat_id_,'del')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ قفࢦ ﮼ﺂ ࢦاغانـჂ̤  .* ')
end,nil)   
elseif text == 'قفل الاغاني بالتقييد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Audio"..msg.chat_id_,'ked')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ قفࢦ ﮼ﺂ ࢦاغانـჂ̤  باࢦتقيدٌ  .* ')
end,nil)   
elseif text == 'قفل الاغاني بالكتم' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Audio"..msg.chat_id_,'ktm')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ قفࢦ ﮼ﺂ ࢦاغانـჂ̤  پالڪتمِہ .* ')
end,nil)   
elseif text == 'قفل الاغاني بالطرد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Audio"..msg.chat_id_,'kick')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ قفࢦ ﮼ﺂ ࢦاغانـჂ̤  بالطࢪدِ  .* ')
end,nil)   
elseif text == 'فتح الاغاني' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:del(bot_id.."lock:Audio"..msg.chat_id_)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ فتحِہ ﮼ﺂ ࢦاغانـჂ̤  .* ')
end,nil)   
end
if text == 'قفل الصوت' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:vico"..msg.chat_id_,'del')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ قفࢦ ࢦصۅت  .* ')
end,nil)   
elseif text == 'قفل الصوت بالتقييد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:vico"..msg.chat_id_,'ked')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ قفࢦ ࢦصۅت  باࢦتقيدٌ  .* ')
end,nil)   
elseif text == 'قفل الصوت بالكتم' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:vico"..msg.chat_id_,'ktm')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ قفࢦ ࢦصۅت  پالڪتمِہ .* ')
end,nil)   
elseif text == 'قفل الصوت بالطرد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:vico"..msg.chat_id_,'kick')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ قفࢦ ࢦصۅت  بالطࢪدِ  .* ')
end,nil)   
elseif text == 'فتح الصوت' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:del(bot_id.."lock:vico"..msg.chat_id_)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n *꙳.︙تمِہ فتحِہ ࢦصۅت  .* ')
end,nil)   
end
if text == 'قفل الكيبورد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Keyboard"..msg.chat_id_,'del')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تـم قفـل الكيبورد* ')
end,nil)   
elseif text == 'قفل الكيبورد بالتقييد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Keyboard"..msg.chat_id_,'ked')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تـم قفـل الكيبورد بالتقييد* ')
end,nil)   
elseif text == 'قفل الكيبورد بالكتم' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Keyboard"..msg.chat_id_,'ktm')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تـم قفـل الكيبورد بالكتم* ')  
end,nil)   
elseif text == 'قفل الكيبورد بالطرد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Keyboard"..msg.chat_id_,'kick')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تـم قفـل الكيبورد بالطرد* ')  
end,nil)   
elseif text == 'فتح الكيبورد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:del(bot_id.."lock:Keyboard"..msg.chat_id_)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تـم فتح الكيبورد* ')  
end,nil)   
end
if text == 'قفل الملصقات' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Sticker"..msg.chat_id_,'del')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ قفࢦ ࢦمٍلصقات .* ')  
end,nil)   
elseif text == 'قفل الملصقات بالتقييد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Sticker"..msg.chat_id_,'ked')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ قفࢦ ࢦمٍلصقات باࢦتقيدٌ  .* ')  
end,nil)
elseif text == 'قفل الملصقات بالكتم' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Sticker"..msg.chat_id_,'ktm')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ قفࢦ ࢦمٍلصقات پالڪتمِہ .* ')  
end,nil)   
elseif text == 'قفل الملصقات بالطرد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Sticker"..msg.chat_id_,'kick')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ قفࢦ ࢦمٍلصقات بالطࢪدِ  .* ')  
end,nil)   
elseif text == 'فتح الملصقات' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:del(bot_id.."lock:Sticker"..msg.chat_id_)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ فتحِہ ࢦمٍلصقات .* ')  
end,nil)   
end
if text == 'قفل التوجيه' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:forward"..msg.chat_id_,'del')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ قفࢦ ࢦتۅچيۿۧ  .* ')  
end,nil)   
elseif text == 'قفل التوجيه بالتقييد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:forward"..msg.chat_id_,'ked')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ قفࢦ ࢦتۅچيۿۧ  باࢦتقيدٌ  .* ')  
end,nil)
elseif text == 'قفل التوجيه بالكتم' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:forward"..msg.chat_id_,'ktm')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ قفࢦ ࢦتۅچيۿۧ  پالڪتمِہ .* ')  
end,nil)   
elseif text == 'قفل التوجيه بالطرد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:forward"..msg.chat_id_,'kick')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ قفࢦ ࢦتۅچيۿۧ  بالطࢪدِ  .* ')  
end,nil)   
elseif text == 'فتح التوجيه' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:del(bot_id.."lock:forward"..msg.chat_id_)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ فتحِہ ࢦتۅچيۿۧ  .* ')  
end,nil)   
end
if text == 'قفل الملفات' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Document"..msg.chat_id_,'del')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ قفࢦ ࢦمِلفات  .* ')  
end,nil)   
elseif text == 'قفل الملفات بالتقييد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Document"..msg.chat_id_,'ked')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ قفࢦ ࢦمِلفات  باࢦتقيدٌ  .* ')  
end,nil)
elseif text == 'قفل الملفات بالكتم' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Document"..msg.chat_id_,'ktm')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ قفࢦ ࢦمِلفات  پالڪتمِہ .* ')  
end,nil)   
elseif text == 'قفل الملفات بالطرد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Document"..msg.chat_id_,'kick')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ قفࢦ ࢦمِلفات  بالطࢪدِ  .* ')  
end,nil)   
elseif text == 'فتح الملفات' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:del(bot_id.."lock:Document"..msg.chat_id_)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ فتحِہ ࢦمِلفات  .* ')  
end,nil)   
end
if text == 'قفل السيلفي' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Unsupported"..msg.chat_id_,'del')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ قفࢦ ࢦسيلفيہ .* ')  
end,nil)   
elseif text == 'قفل السيلفي بالتقييد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Unsupported"..msg.chat_id_,'ked')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ قفࢦ ࢦسيلفيہ باࢦتقيدٌ  .* ')  
end,nil)
elseif text == 'قفل السيلفي بالكتم' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Unsupported"..msg.chat_id_,'ktm')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ قفࢦ ࢦسيلفيہ پالڪتمِہ .* ')  
end,nil)   
elseif text == 'قفل السيلفي بالطرد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Unsupported"..msg.chat_id_,'kick')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ قفࢦ ࢦسيلفيہ بالطࢪدِ  .* ')  
end,nil)   
elseif text == 'فتح السيلفي' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:del(bot_id.."lock:Unsupported"..msg.chat_id_)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ فتحِہ ࢦسيلفيہ .* ')  
end,nil)   
end
if text == 'قفل الماركداون' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Markdaun"..msg.chat_id_,'del')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ قفࢦ ﮼ﺂࢦمِاࢪدڪۅטּ .* ')  
end,nil)   
elseif text == 'قفل الماركداون بالتقييد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Markdaun"..msg.chat_id_,'ked')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ قفࢦ ﮼ﺂࢦمِاࢪدڪۅטּ باࢦتقيدٌ  .* ')  
end,nil)
elseif text == 'قفل الماركداون بالكتم' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Markdaun"..msg.chat_id_,'ktm')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ قفࢦ ﮼ﺂࢦمِاࢪدڪۅטּ پالڪتمِہ .* ')  
end,nil)   
elseif text == 'قفل الماركداون بالطرد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Markdaun"..msg.chat_id_,'kick')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ قفࢦ ﮼ﺂࢦمِاࢪدڪۅטּ بالطࢪدِ  .* ')  
end,nil)   
elseif text == 'فتح الماركداون' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:del(bot_id.."lock:Markdaun"..msg.chat_id_)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ فتحِہ ﮼ﺂࢦمِاࢪدڪۅטּ .* ')  
end,nil)   
end
if text == 'قفل الجهات' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Contact"..msg.chat_id_,'del')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ قفࢦ ࢦچۿۧات  .* ')  
end,nil)   
elseif text == 'قفل الجهات بالتقييد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Contact"..msg.chat_id_,'ked')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ قفࢦ ࢦچۿۧات  باࢦتقيدٌ  .* ')  
end,nil)
elseif text == 'قفل الجهات بالكتم' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Contact"..msg.chat_id_,'ktm')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ قفࢦ ࢦچۿۧات  پالڪتمِہ .* ')  
end,nil)   
elseif text == 'قفل الجهات بالطرد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Contact"..msg.chat_id_,'kick')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ قفࢦ ࢦچۿۧات  بالطࢪدِ  .* ')  
end,nil)   
elseif text == 'فتح الجهات' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:del(bot_id.."lock:Contact"..msg.chat_id_)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ فتحِہ ࢦچۿۧات  .* ')  
end,nil)   
end
if text == 'قفل الكلايش' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Spam"..msg.chat_id_,'del')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ قفࢦ ࢦڪلايشہ .* ')  
end,nil)   
elseif text == 'قفل الكلايش بالتقييد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Spam"..msg.chat_id_,'ked')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ قفࢦ ࢦڪلايشہ باࢦتقيدٌ  .* ')  
end,nil)
elseif text == 'قفل الكلايش بالكتم' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Spam"..msg.chat_id_,'ktm')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ قفࢦ ࢦڪلايشہ پالڪتمِہ .* ')  
end,nil)   
elseif text == 'قفل الكلايش بالطرد' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:set(bot_id.."lock:Spam"..msg.chat_id_,'kick')  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ قفࢦ ࢦڪلايشہ بالطࢪدِ  .* ')  
end,nil)   
elseif text == 'فتح الكلايش' and Mod(msg) and msg.reply_to_message_id_ == 0 then 
database:del(bot_id.."lock:Spam"..msg.chat_id_)  
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ فتحِہ ࢦڪلايشہ .* ')  
end,nil)   
end
if text == 'قفل التكرار بالطرد' and Mod(msg) then 
database:hset(bot_id.."flooding:settings:"..msg.chat_id_ ,"flood",'kick')  
send(msg.chat_id_, msg.id_,' *꙳.︙تمِہ قفࢦ ࢦتڪࢪﺂࢪ بالطࢪدِ  .*')
elseif text == 'قفل التكرار' and Mod(msg) then 
database:hset(bot_id.."flooding:settings:"..msg.chat_id_ ,"flood",'del')  
send(msg.chat_id_, msg.id_,' *꙳.︙تمِہ قفࢦ ࢦتڪࢪﺂࢪ .*')
elseif text == 'قفل التكرار بالتقييد' and Mod(msg) then 
database:hset(bot_id.."flooding:settings:"..msg.chat_id_ ,"flood",'keed')  
send(msg.chat_id_, msg.id_,' *꙳.︙تمِہ قفࢦ ࢦتڪࢪﺂࢪ باࢦتقيدٌ  .*')
elseif text == 'قفل التكرار بالكتم' and Mod(msg) then 
database:hset(bot_id.."flooding:settings:"..msg.chat_id_ ,"flood",'mute')  
send(msg.chat_id_, msg.id_,' *꙳.︙تمِہ قفࢦ ࢦتڪࢪﺂࢪ پالڪتمِہ .*')
elseif text == 'فتح التكرار' and Mod(msg) then 
database:hdel(bot_id.."flooding:settings:"..msg.chat_id_ ,"flood")  
send(msg.chat_id_, msg.id_,' *꙳.︙تمِہ فتحِہ ࢦتڪࢪﺂࢪ .*')
end
------------------------------------------------------------------------ امـيـر الـدلـيـم
if text == 'تحديث' and DevRANW(msg) then
dofile('RAN.lua')  
send(msg.chat_id_, msg.id_, ' *꙳.︙تمِہ ﮼تحِۢـديث ڪٰٖࢦ ࢦمِلفات  .*') 
end 
if text == ("مسح قائمه العام") and DevRANW(msg) then
database:del(bot_id..'GBan:User')
send(msg.chat_id_, msg.id_, '\n *꙳.︙تمِہ مِسحہ قائمِۿۧ ࢦمڪتۅمِينہ ؏ـامِہ .*')
return false
end
if text == ("قائمه العام") and DevRANW(msg) then
local list = database:smembers(bot_id..'GBan:User')
t = "\n *꙳.︙قائمِۿۧ ࢦمحضۅࢪينہ ؏ـامِہ .* \n*﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎*\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = " *꙳.︙مـڪو محضۅࢪينہ ؏ـامِہ .*"
end
send(msg.chat_id_, msg.id_, t)
return false
end
if text == ("حظر عام") and msg.reply_to_message_id_ and DevRANW(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
if RANSudoBot(result.sender_user_id_) then
send(msg.chat_id_, msg.id_,"*꙳.︙متڪدٌࢪ [ تڪتمِہ .تطࢪد . تحظࢪ .تقيد  .] مطۅࢪ ࢦسۅࢪسہ ﮼ﺂو ﮼ﺂلاساسـჂ̤  .*")
return false 
end
if tonumber(result.sender_user_id_) == tonumber(bot_id) then  
send(msg.chat_id_, msg.id_, " *꙳.︙متڪٌدࢪ تحظࢪ ﺂࢦبۅت ؏ـامِہ .*")
return false 
end
database:sadd(bot_id..'GBan:User', result.sender_user_id_)
chat_kick(result.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},
function(arg,data) 
usertext = '\n *꙳.︙اسم المستخدم -›* ['..data.first_name_..'](t.me/'..(data.username_ or 'GGGMG')..')'
status  = '\n*꙳.︙تمِہ حظࢪۿۧ ؏ـامِہ مِہטּ ࢦڪࢪۅپات .*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text and text:match("^حظر عام @(.*)$")  and DevRANW(msg) then
local username = text:match("^حظر عام @(.*)$") 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_," *꙳.︙؏ـمࢪيـہ ۿۧذا ࢦمـ؏ـࢪف ࢦقناۿ ستخدمِا ؏ـدل  . !*")   
return false 
end  
if RANSudoBot(result.id_) then
send(msg.chat_id_, msg.id_,"*꙳.︙متڪدٌࢪ [ تڪتمِہ .تطࢪد . تحظࢪ .تقيد  .] مطۅࢪ ࢦسۅࢪسہ ﮼ﺂو ﮼ﺂلاساسـჂ̤  .*")
return false 
end
if tonumber(result.id_) == tonumber(bot_id) then  
send(msg.chat_id_, msg.id_, " *꙳.︙متڪٌدࢪ تحظࢪ ﺂࢦبۅت ؏ـامِہ .*")
return false 
end
usertext = '\n *꙳.︙اسم المستخدم -›* ['..result.title_..'](t.me/'..(username or 'GGGMG')..')'
status  = '\n*꙳.︙تمِہ حظࢪۿۧ ؏ـامِہ مِہטּ ࢦڪࢪۅپات .*'
texts = usertext..status
database:sadd(bot_id..'GBan:User', result.id_)
else
texts = ' *꙳.︙مـڪو ﮼حِۢـساب پۿۧل مِـ؏ـࢪف .*'
end
send(msg.chat_id_, msg.id_, texts)
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end
if text and text:match("^حظر عام (%d+)$") and DevRANW(msg) then
local userid = text:match("^حظر عام (%d+)$")
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if RANSudoBot(userid) then
send(msg.chat_id_, msg.id_,"*꙳.︙متڪدٌࢪ [ تڪتمِہ .تطࢪد . تحظࢪ .تقيد  .] مطۅࢪ ࢦسۅࢪسہ ﮼ﺂو ﮼ﺂلاساسـჂ̤  .*")
return false 
end
if tonumber(userid) == tonumber(bot_id) then  
send(msg.chat_id_, msg.id_, " *꙳.︙متڪٌدࢪ تحظࢪ ﺂࢦبۅت ؏ـامِہ .*")
return false 
end
database:sadd(bot_id..'GBan:User', userid)
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.first_name_ then
usertext = '\n *꙳.︙اسم المستخدم -›* ['..data.first_name_..'](t.me/'..(data.username_ or 'GGGMG')..')'
status  = '\n*꙳.︙تمِہ حظࢪۿۧ ؏ـامِہ مِہטּ ࢦڪࢪۅپات .*'
send(msg.chat_id_, msg.id_, usertext..status)
else
usertext = '\n *꙳.︙اسم المستخدم -›* '..userid..''
status  = '\n*꙳.︙تمِہ حظࢪۿۧ ؏ـامِہ مِہטּ ࢦڪࢪۅپات .*'
send(msg.chat_id_, msg.id_, usertext..status)
end;end,nil)
return false
end
if text == ("كتم عام") and msg.reply_to_message_id_ and DevRANW(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
if RANSudoBot(result.sender_user_id_) then
send(msg.chat_id_, msg.id_,"*꙳.︙متڪدٌࢪ [ تڪتمِہ .تطࢪد . تحظࢪ .تقيد  .] مطۅࢪ ࢦسۅࢪسہ ﮼ﺂو ﮼ﺂلاساسـჂ̤  .*")
return false 
end
if tonumber(result.sender_user_id_) == tonumber(bot_id) then  
send(msg.chat_id_, msg.id_, " *꙳.︙متڪدٌࢪ تڪتمِہ ﺂࢦبۅت ؏ـامِہ  .*")
return false 
end
database:sadd(bot_id..'Gmute:User', result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},
function(arg,data) 
usertext = '\n *꙳.︙اسم المستخدم -›* ['..data.first_name_..'](t.me/'..(data.username_ or 'GGGMG')..')'
status  = '\n*꙳.︙تمِہ ڪتمۿۧ ؏ـامِہ مِہטּ ࢦڪࢪۅپات  .*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text and text:match("^كتم عام @(.*)$")  and DevRANW(msg) then
local username = text:match("^كتم عام @(.*)$") 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_," *꙳.︙؏ـمࢪيـہ ۿۧذا ࢦمـ؏ـࢪف ࢦقناۿ ستخدمِا ؏ـدل  . !*")   
return false 
end  
if RANSudoBot(result.id_) then
send(msg.chat_id_, msg.id_,"*꙳.︙متڪدٌࢪ [ تڪتمِہ .تطࢪد . تحظࢪ .تقيد  .] مطۅࢪ ࢦسۅࢪسہ ﮼ﺂو ﮼ﺂلاساسـჂ̤  .*")
return false 
end
if tonumber(result.id_) == tonumber(bot_id) then  
send(msg.chat_id_, msg.id_, " *꙳.︙متڪدٌࢪ تڪتمِہ ﺂࢦبۅت ؏ـامِہ  .*")
return false 
end
usertext = '\n *꙳.︙اسم المستخدم -›* ['..result.title_..'](t.me/'..(username or 'GGGMG')..')'
status  = '\n*꙳.︙تمِہ ڪتمۿۧ ؏ـامِہ مِہטּ ࢦڪࢪۅپات  .*'
texts = usertext..status
database:sadd(bot_id..'Gmute:User', result.id_)
else
texts = ' *꙳.︙مـڪو ﮼حِۢـساب پۿۧل مِـ؏ـࢪف .*'
end
send(msg.chat_id_, msg.id_, texts)
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end
if text and text:match("^كتم عام (%d+)$") and DevRANW(msg) then
local userid = text:match("^كتم عام (%d+)$")
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if RANSudoBot(bot_id) then
send(msg.chat_id_, msg.id_,"*꙳.︙متڪدٌࢪ [ تڪتمِہ .تطࢪد . تحظࢪ .تقيد  .] مطۅࢪ ࢦسۅࢪسہ ﮼ﺂو ﮼ﺂلاساسـჂ̤  .*")
return false 
end
if tonumber(userid) == tonumber(bot_id) then  
send(msg.chat_id_, msg.id_, " *꙳.︙متڪدٌࢪ تڪتمِہ ﺂࢦبۅت ؏ـامِہ  .*")
return false 
end
database:sadd(bot_id..'Gmute:User', userid)

tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.first_name_ then
usertext = '\n *꙳.︙اسم المستخدم -›* ['..data.first_name_..'](t.me/'..(data.username_ or 'GGGMG')..')'
status  = '\n*꙳.︙تمِہ ڪتمۿۧ ؏ـامِہ مِہטּ ࢦڪࢪۅپات  .*'
send(msg.chat_id_, msg.id_, usertext..status)
else
usertext = '\n *꙳.︙اسم المستخدم -›* '..userid..''
status  = '\n*꙳.︙تمِہ ڪتمۿۧ ؏ـامِہ مِہטּ ࢦڪࢪۅپات  .*'
send(msg.chat_id_, msg.id_, usertext..status)
end;end,nil)
return false
end
if text == ("الغاء العام") and msg.reply_to_message_id_ and DevRANW(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *꙳.︙اسم المستخدم -›* ['..data.first_name_..'](t.me/'..(data.username_ or 'GGGMG')..')'
status  = '\n*꙳.︙تمِہ ﮼ﺂࢦغاء [ ࢦحظࢪ - ࢦڪتمِہ ] مِہטּ ࢦڪࢪۅپات .*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
database:srem(bot_id..'GBan:User', result.sender_user_id_)
database:srem(bot_id..'Gmute:User', result.sender_user_id_)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text and text:match("^الغاء العام @(.*)$") and DevRANW(msg) then
local username = text:match("^الغاء العام @(.*)$") 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
if result.id_ then
usertext = '\n *꙳.︙اسم المستخدم -›* ['..result.title_..'](t.me/'..(username or 'GGGMG')..')'
status  = '\n*꙳.︙تمِہ ﮼ﺂࢦغاء [ ࢦحظࢪ - ࢦڪتمِہ ] مِہטּ ࢦڪࢪۅپات .*'
texts = usertext..status
database:srem(bot_id..'GBan:User', result.id_)
database:srem(bot_id..'Gmute:User', result.id_)
else
texts = ' *꙳.︙مـڪو ﮼حِۢـساب پۿۧل مِـ؏ـࢪف .*'
end
send(msg.chat_id_, msg.id_, texts)
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end
if text and text:match("^الغاء العام (%d+)$") and DevRANW(msg) then
local userid = text:match("^الغاء العام (%d+)$")
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:srem(bot_id..'GBan:User', userid)
database:srem(bot_id..'Gmute:User', userid)
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.first_name_ then
usertext = '\n *꙳.︙اسم المستخدم -›* ['..data.first_name_..'](t.me/'..(data.username_ or 'GGGMG')..')'
status  = '\n*꙳.︙تمِہ ﮼ﺂࢦغاء [ ࢦحظࢪ - ࢦڪتمِہ ] مِہטּ ࢦڪࢪۅپات .*'
send(msg.chat_id_, msg.id_, usertext..status)
else
usertext = '\n *꙳.︙اسم المستخدم -›* '..userid..''
status  = '\n*꙳.︙تمِہ حظࢪۿۧ ؏ـامِہ مِہטּ ࢦڪࢪۅپات .*'
send(msg.chat_id_, msg.id_, usertext..status)
end;end,nil)
return false
end
------------------------------------------------------------------------ امـيـر الـدلـيـم
if text == ("مسح المطورين") and DevRANW(msg) then
database:del(bot_id..'Sudo:User')
send(msg.chat_id_, msg.id_, "\n *꙳.︙تمِہ مِسحہ قائمِۿۧ ࢦمِطۅࢪينہ .*  ")
end
if text == ("المطورين") and DevRANW(msg) then
local list = database:smembers(bot_id..'Sudo:User')
t = "\n *꙳.︙قائمِۿۧ ࢦمِطۅࢪينہ .* \n*﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎*\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = " *꙳.︙مـڪو مِطۅࢪينہ .*"
end
send(msg.chat_id_, msg.id_, t)
end
if text == "تاك للمشرفين" and CoSu(msg) then
if database:get(bot_id.."VVVZVV:admin:Time"..msg.chat_id_) then 
return
send(msg.chat_id_, msg.id_,"نتظࢪ ࢦحضٌا .")
end
database:setex(bot_id..'VVVZVV:admin:Time'..msg.chat_id_..':'..msg.sender_user_id_,300,true)
tdcli_function ({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),filter_ = {ID = "ChannelMembersAdministrators"},offset_ = 0,limit_ = 100 },function(extra,result,success)
m = 0
tgad = 0
local ans = result.members_  
for k, v in pairs(ans) do
tdcli_function({ID="GetUser",user_id_ = v.user_id_},function(arg,data)
if m == 1 or m == tgad or k == 0 then
tgad = m + 5
t = "#Admin"
end
m = m + 1
Adminame = data.first_name_
Adminame = Adminame:gsub("]","")
Adminame = Adminame:gsub("[[]","")
t = t..", ["..Adminame.."](tg://user?id="..v.user_id_..")"
if m == 1 or m == tgad or k == 0 then
local Text = t:gsub('#Admin,','#Admin\n')
sendText(msg.chat_id_,Text,msg.id_/2097152/0.5,'md')
end
end,nil)
end
end,nil)
end

if text == 'الملفات' and DevRANW(msg) then
t = ' *꙳.︙مِࢦفات سۅࢪسہ ࢪﺂטּ  ↓*\n*﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎* \n'
i = 0
for v in io.popen('ls File_Bot'):lines() do
if v:match(".lua$") then
i = i + 1
t = t..i..'*- الملف »* {'..v..'}\n'
end
end
send(msg.chat_id_, msg.id_,t)
end
if text == "متجر الملفات" or text == 'المتجر' then
if DevRANW(msg) then
local Get_Files, res = https.request("https://raw.githubusercontent.com/RAN-DEVL/Files_RAN/main/getfile.json")
if res == 200 then
local Get_info, res = pcall(JSON.decode,Get_Files);
vardump(res.plugins_)
if Get_info then
local TextS = "\n *꙳.︙اهلا بك في متجر ملفات ران*\n*꙳.︙ملفات السورس ↓*\n*•━━━━━━ 𝙧??𝙣 ━━━━━━━•*\n\n"
local TextE = "\n*﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎*\n *꙳.︙علامة تعني { ✓ } ملف مفعل*\n *꙳.︙علامة تعني { ✘ } ملف معطل*\n *꙳.︙قناة سورس ران ↓*\n".." *꙳.︙*[اضغط هنا لدخول](t.me/GGGMG) \n"
local NumFile = 0
for name,Info in pairs(res.plugins_) do
local Check_File_is_Found = io.open("File_Bot/"..name,"r")
if Check_File_is_Found then
io.close(Check_File_is_Found)
CeckFile = "(✓)"
else
CeckFile = "(✘)"
end
NumFile = NumFile + 1
TextS = TextS..'*'..NumFile.."→* {`"..name..'`} » '..CeckFile..'\n[-Information]('..Info..')\n'
end
send(msg.chat_id_, msg.id_,TextS..TextE) 
end
else
send(msg.chat_id_, msg.id_," *꙳.︙مـڪۅ تصاࢦ مِہטּ ApI  .* \n") 
end
return false
end
end

if text and text:match("^(تعطيل) (.*)(.lua)$") and DevRANW(msg) then
local name_t = {string.match(text, "^(تعطيل) (.*)(.lua)$")}
local file = name_t[2]..'.lua'
local file_bot = io.open("File_Bot/"..file,"r")
if file_bot then
io.close(file_bot)
t = " *꙳.︙الملف »* "..file.."\n*꙳.︙مِـ؏ـطل ࢦملفٌ ؏ـمࢪيـہ .* \n"
else
t = " *꙳.︙مِـ؏ـطل ࢦملفٌ ؏ـمࢪيـہ . →* "..file.."\n"
end
local json_file, res = https.request("https://raw.githubusercontent.com/RAN-DEVL/Files_RAN/main/File_Bot/"..file)
if res == 200 then
os.execute("rm -fr File_Bot/"..file)
send(msg.chat_id_, msg.id_,t) 
dofile('RAN.lua')  
else
send(msg.chat_id_, msg.id_," *꙳.︙؏ـمࢪيـہ ۿۧذا  ࢦمٌلف مِہ مِۅچۅدٌ بسۅࢪسہ ࢪﺂن .* \n") 
end
return false
end
if text and text:match("^(تفعيل) (.*)(.lua)$") and DevRANW(msg) then
local name_t = {string.match(text, "^(تفعيل) (.*)(.lua)$")}
local file = name_t[2]..'.lua'
local file_bot = io.open("File_Bot/"..file,"r")
if file_bot then
io.close(file_bot)
t = " *꙳.︙مِـفـ؏ـل ࢦملفٌ ؏ـمࢪيـہ . →* "..file.." \n"
else
t = " *꙳.︙الملف »* "..file.."\n*꙳.︙مِـفـ؏ـل ࢦملفٌ ؏ـمࢪيـہ .* \n"
end
local json_file, res = https.request("https://raw.githubusercontent.com/RAN-DEVL/Files_RAN/main/File_Bot/"..file)
if res == 200 then
local chek = io.open("File_Bot/"..file,'w+')
chek:write(json_file)
chek:close()
send(msg.chat_id_, msg.id_,t) 
dofile('RAN.lua')  
else
send(msg.chat_id_, msg.id_," *꙳.︙؏ـمࢪيـہ ۿۧذا  ࢦمٌلف مِہ مِۅچۅدٌ بسۅࢪسہ ࢪﺂن .* \n") 
end
return false
end
if text == "مسح الملفات" and DevRANW(msg) then
os.execute("rm -fr File_Bot/*")
send(msg.chat_id_,msg.id_," *꙳.︙تمِہ مِسحہ الملفات*")
return false
end

if text == ("رفع مطور") and msg.reply_to_message_id_ and DevRANW(msg) then
function start_function(extra, result, success)
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:sadd(bot_id..'Sudo:User', result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *꙳.︙اسم المستخدم -›* ['..data.first_name_..'](t.me/'..(data.username_ or 'GGGMG')..')'
status  = '\n*꙳.︙ تمِہ  ࢪفع مِطۅࢪ .*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false 
end
if text and text:match("^رفع مطور @(.*)$") and DevRANW(msg) then
local username = text:match("^رفع مطور @(.*)$")
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"*꙳.︙؏ـمࢪيـہ ۿۧذا ࢦمـ؏ـࢪف ࢦقناۿ ستخدمِا ؏ـدل  . !*")   
return false 
end  
database:sadd(bot_id..'Sudo:User', result.id_)
usertext = '\n *꙳.︙اسم المستخدم -›* ['..result.title_..'](t.me/'..(username or 'GGGMG')..')'
status  = '\n*꙳.︙ تمِہ  ࢪفع مِطۅࢪ .*'
texts = usertext..status
else
texts = ' *꙳.︙مـڪو ﮼حِۢـساب پۿۧل مِـ؏ـࢪف .*'
end
send(msg.chat_id_, msg.id_, texts)
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false 
end
if text and text:match("^رفع مطور (%d+)$") and DevRANW(msg) then
local userid = text:match("^رفع مطور (%d+)$")
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:sadd(bot_id..'Sudo:User', userid)
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.first_name_ then
usertext = '\n *꙳.︙اسم المستخدم -›* ['..data.first_name_..'](t.me/'..(data.username_ or 'GGGMG')..')'
status  = '\n *꙳.︙ تمِہ  ࢪفع مِطۅࢪ .*'
send(msg.chat_id_, msg.id_, usertext..status)
else
usertext = '\n *꙳.︙اسم المستخدم -›* '..userid..''
status  = '\n*꙳.︙ تمِہ  ࢪفع مِطۅࢪ .*'
send(msg.chat_id_, msg.id_, usertext..status)
end;end,nil)
return false 
end
if text == ("تنزيل مطور") and msg.reply_to_message_id_ and DevRANW(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
database:srem(bot_id..'Sudo:User', result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *꙳.︙اسم المستخدم -›* ['..data.first_name_..'](t.me/'..(data.username_ or 'GGGMG')..')'
status  = '\n*꙳.︙تمِہ تنࢪ࣪يࢦۿ مِہטּ ﮼ﺂࢦمِطۅࢪينہ .*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false 
end
if text and text:match("^تنزيل مطور @(.*)$") and DevRANW(msg) then
local username = text:match("^تنزيل مطور @(.*)$")
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
if result.id_ then
database:srem(bot_id..'Sudo:User', result.id_)
usertext = '\n *꙳.︙اسم المستخدم -›* ['..result.title_..'](t.me/'..(username or 'GGGMG')..')'
status  = '\n*꙳.︙تمِہ تنࢪ࣪يࢦۿ مِہטּ ﮼ﺂࢦمِطۅࢪينہ .*'
texts = usertext..status
else
texts = ' *꙳.︙مـڪو ﮼حِۢـساب پۿۧل مِـ؏ـࢪف .*'
end
send(msg.chat_id_, msg.id_, texts)
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end  
if text and text:match("^تنزيل مطور (%d+)$") and DevRANW(msg) then
local userid = text:match("^تنزيل مطور (%d+)$")
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:srem(bot_id..'Sudo:User', userid)
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.first_name_ then
usertext = '\n *꙳.︙اسم المستخدم -›* ['..data.first_name_..'](t.me/'..(data.username_ or 'GGGMG')..')'
status  = '\n*꙳.︙تمِہ تنࢪ࣪يࢦۿ مِہטּ ﮼ﺂࢦمِطۅࢪينہ .*'
send(msg.chat_id_, msg.id_, usertext..status)
else
usertext = '\n *꙳.︙اسم المستخدم -›* '..userid..''
status  = '\n*꙳.︙تمِہ تنࢪ࣪يࢦۿ مِہטּ ﮼ﺂࢦمِطۅࢪينہ .*'
send(msg.chat_id_, msg.id_, usertext..status)
end;end,nil)
return false 
end
if text == ("مسح المالكين") and Sudo(msg) then
database:del(bot_id..'CoSu'..msg.chat_id_)
send(msg.chat_id_, msg.id_, '\n *꙳.︙تمِہ مِسحہ المالكين*')
return false
end

if text == 'المالكين' and Sudo(msg) then
local list = database:smembers(bot_id..'CoSu'..msg.chat_id_)
t = "\n *꙳ ︙ قائمۿۧ ﮼ﺂلمِالكينہ .* \n*﹎﹎﹎﹎﹎﹎﹎﹎﹎*\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = " * ꙳.︙مـڪو مِالكينہ 🥢 .؟*"
end
send(msg.chat_id_, msg.id_, t)
return false
end
if text == ("صيح للمالك") or text == ("تاك للمالك") then
local list = database:smembers(bot_id..'CoSu'..msg.chat_id_)
t = "\n *꙳.︙تـ؏ـۅ ࢦڪࢪۅپ ؏ـمࢪيـہ .* \n*﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎*\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."- {[@"..username.."]}\n"
else
t = t..""..k.."- {"..v.."}\n"
end
end
if #list == 0 then
t = " * ꙳.︙مـڪو مِالكينہ 🥢 .؟*"
end
send(msg.chat_id_, msg.id_, t)
end

if text == ("رفع مالك") and msg.reply_to_message_id_ and Sudo(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
database:sadd(bot_id..'CoSu'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *꙳.︙اسم المستخدم -›* ['..data.first_name_..'](t.me/'..(data.username_ or 'GGGMG')..')'
status  = '\n*꙳.︙تمِہ ࢪفـ؏ـۿۧ مِاࢦڪك .*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text and text:match("^رفع مالك @(.*)$") and Sudo(msg) then
local username = text:match("^رفع مالك @(.*)$")
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_," *꙳.︙؏ـمࢪيـہ ۿۧذا ࢦمـ؏ـࢪف ࢦقناۿ ستخدمِا ؏ـدل  . !*")   
return false 
end  
database:sadd(bot_id..'CoSu'..msg.chat_id_, result.id_)
usertext = '\n *꙳.︙اسم المستخدم -›* ['..result.title_..'](t.me/'..(username or 'GGGMG')..')'
status  = '\n*꙳.︙تمِہ ࢪفـ؏ـۿۧ مِاࢦڪك .*'
texts = usertext..status
else
texts = ' *꙳.︙مـڪو ﮼حِۢـساب پۿۧل مِـ؏ـࢪف .*'
end
send(msg.chat_id_, msg.id_, texts)
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end
if text and text:match("^رفع مالك (%d+)$") and Sudo(msg) then
local userid = text:match("^رفع مالك (%d+)$") 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:sadd(bot_id..'CoSu'..msg.chat_id_, userid)
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.first_name_ then
usertext = '\n *꙳.︙اسم المستخدم -›* ['..data.first_name_..'](t.me/'..(data.username_ or 'GGGMG')..')'
status  = '\n*꙳.︙تمِہ ࢪفـ؏ـۿۧ مِاࢦڪك .*'
send(msg.chat_id_, msg.id_, usertext..status)
else
usertext = '\n *꙳.︙اسم المستخدم -›* '..userid..''
status  = '\n*꙳.︙تمِہ ࢪفـ؏ـۿۧ مِاࢦڪك .*'
send(msg.chat_id_, msg.id_, usertext..status)
end;end,nil)
return false
end
if text == ("تنزيل مالك") and msg.reply_to_message_id_ and Sudo(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
database:srem(bot_id..'CoSu'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *꙳.︙اسم المستخدم -›* ['..data.first_name_..'](t.me/'..(data.username_ or 'GGGMG')..')'
status  = '\n*꙳.︙ تمِہ تنࢪ࣪يࢦۿۧ مِہטּ ﮼ﺂࢦماࢦڪينہ .*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text and text:match("^تنزيل مالك @(.*)$") and Sudo(msg) then
local username = text:match("^تنزيل مالك @(.*)$")
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
if result.id_ then
database:srem(bot_id..'CoSu'..msg.chat_id_, result.id_)
usertext = '\n *꙳.︙اسم المستخدم -›* ['..result.title_..'](t.me/'..(username or 'GGGMG')..')'
status  = '\n*꙳.︙ تمِہ تنࢪ࣪يࢦۿۧ مِہטּ ﮼ﺂࢦماࢦڪينہ .*'
texts = usertext..status
else
texts = ' *꙳.︙مـڪو ﮼حِۢـساب پۿۧل مِـ؏ـࢪف .*'
end
send(msg.chat_id_, msg.id_, texts)
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end
if text and text:match("^تنزيل مالك (%d+)$") and Sudo(msg) then
local userid = text:match("^تنزيل مالك (%d+)$") 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:srem(bot_id..'CoSu'..msg.chat_id_, userid)
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.first_name_ then
usertext = '\n *꙳.︙اسم المستخدم -›* ['..data.first_name_..'](t.me/'..(data.username_ or 'GGGMG')..')'
status  = '\n*꙳.︙ تمِہ تنࢪ࣪يࢦۿۧ مِہטּ ﮼ﺂࢦماࢦڪينہ .*'
send(msg.chat_id_, msg.id_, usertext..status)
else
usertext = '\n *꙳.︙اسم المستخدم -›* '..userid..''
status  = '\n*꙳.︙ تمِہ تنࢪ࣪يࢦۿۧ مِہטּ ﮼ﺂࢦماࢦڪينہ .*'
send(msg.chat_id_, msg.id_, usertext..status)
end;end,nil)
return false
end
------------------------------------------------------------------------ امـيـر الـدلـيـم
if text == ("مسح الاساسين") and CoSu(msg) then
database:del(bot_id..'Basic:Constructor'..msg.chat_id_)
send(msg.chat_id_, msg.id_, '\n *꙳.︙تمِہ مِسحہ ࢦمِنشئيہ ﮼ﺂࢦاساسينہ .*')
return false
end
if (msg.content_.sticker_)  and msg.reply_to_message_id_ == 0 and database:get(bot_id.."lock:Lock:Xn"..msg.chat_id_)=="del" then  
sticker_id = msg.content_.sticker_.sticker_.persistent_id_
st = https.request('https://vvvzvv.ml/Imagelnfo.php?token='..token..'&url='..sticker_id.."&type=sticker")
eker = JSON.decode(st)
if eker.ok.Info == "Indecent" then
local list = database:smembers(bot_id.."Basic:Constructor"..msg.chat_id_)
t = "*꙳.︙المنشئين الاساسين تعالو مخرب* \n *﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎* \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = "*꙳.︙ماكو منششئين يشوفولك جاره*"
end
Reply_Status(msg,msg.sender_user_id_,"reply","*꙳.︙قام بنشر ملصق اباحيه*\n"..t)  
DeleteMessage(msg.chat_id_,{[0] = tonumber(msg.id_),msg.id_})   
end   
end
if text == 'ملصق' then   
if tonumber(msg.reply_to_message_id_) > 0 then
function by_reply(extra, result, success)   
if result.content_.photo_ then 
local pn = result.content_.photo_.sizes_[1].photo_.persistent_id_
Addsticker(msg,msg.chat_id_,pn,msg.sender_user_id_..'.png')
end   
end
tdcli_function ({ ID = "GetMessage", chat_id_ = msg.chat_id_, message_id_ = tonumber(msg.reply_to_message_id_) }, by_reply, nil)
end
end
if text == 'صوت' then   
if tonumber(msg.reply_to_message_id_) > 0 then
function by_reply(extra, result, success)   
if result.content_.voice_ then 
local mr = result.content_.voice_.voice_.persistent_id_ 
Addmp3(msg,msg.chat_id_,mr,msg.sender_user_id_..'.mp3')
end   
end
tdcli_function ({ ID = "GetMessage", chat_id_ = msg.chat_id_, message_id_ = tonumber(msg.reply_to_message_id_) }, by_reply, nil)
end
end
if text == 'بصمه' then   
if tonumber(msg.reply_to_message_id_) > 0 then
function by_reply(extra, result, success)   
if result.content_.audio_ then 
local mr = result.content_.audio_.audio_.persistent_id_
Addvoi(msg,msg.chat_id_,mr,msg.sender_user_id_..'.ogg')
end   
end
tdcli_function ({ ID = "GetMessage", chat_id_ = msg.chat_id_, message_id_ = tonumber(msg.reply_to_message_id_) }, by_reply, nil)
end
end
if text == 'صوره' then   
if tonumber(msg.reply_to_message_id_) > 0 then
function by_reply(extra, result, success)   
if result.content_.sticker_ then 
local Str = result.content_.sticker_.sticker_.persistent_id_ 
Addjpg(msg,msg.chat_id_,Str,msg.sender_user_id_..'.jpg')
end   
end
tdcli_function ({ ID = "GetMessage", chat_id_ = msg.chat_id_, message_id_ = tonumber(msg.reply_to_message_id_) }, by_reply, nil)
end
end
if (msg.content_.photo_) and msg.reply_to_message_id_ == 0 and database:get(bot_id.."lock:Lock:Xn"..msg.chat_id_)=="del" then
photo_id = msg.content_.photo_.sizes_[1].photo_.persistent_id_  
Srrt = https.request('https://vvvzvv.ml/Imagelnfo.php?token='..token..'&url='..photo_id.."&type=photo")
Sto = JSON.decode(Srrt)
if Sto.ok.Info == "Indecent" then
local list = database:smembers(bot_id.."Basic:Constructor"..msg.chat_id_)
t = "*꙳.︙المنشئين الاساسين تعالو مخرب* \n *﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎* \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = "*꙳.︙ماكو منششئين يشوفولك جاره*"
end
Reply_Status(msg,msg.sender_user_id_,"reply","*꙳.︙قام بنشر صوره اباحيه*\n"..t)  
DeleteMessage(msg.chat_id_,{[0] = tonumber(msg.id_),msg.id_})   
end   
end
if text == 'المنشئين الاساسين' and CoSu(msg) then
local list = database:smembers(bot_id..'Basic:Constructor'..msg.chat_id_)
t = "\n *꙳.︙ࢦمنشئينہ ﮼ﺂࢦاساسينِہ .* \n*﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎*\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = " *꙳.︙مـڪو مِنشئينہ ﮼ﺂساسـჂ̤ .*"
end
send(msg.chat_id_, msg.id_, t)
return false
end
if text == ("تاك للمنشئين الاساسين") or text == ("صيح المنشئين الاساسين") then
local list = database:smembers(bot_id..'Basic:Constructor'..msg.chat_id_)
t = "\n *꙳.︙تـ؏ـۅ ࢦڪࢪۅپ ؏ـمࢪيـہ .* \n*﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎*\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."- {[@"..username.."]}\n"
else
t = t..""..k.."- {"..v.."}\n"
end
end
if #list == 0 then
t = " *꙳.︙مـڪو مِنشئينہ ﮼ﺂساسـჂ̤ .*"
end
send(msg.chat_id_, msg.id_, t)
end

if text == ("رفع منشئ اساسي") and msg.reply_to_message_id_ and CoSu(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
database:sadd(bot_id..'Basic:Constructor'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *꙳.︙اسم المستخدم -›* ['..data.first_name_..'](t.me/'..(data.username_ or 'GGGMG')..')'
status  = '\n*꙳.︙ تمِہ  ࢪفع مِنشئہ ﮼ﺂساسيہ*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text and text:match("^رفع منشئ اساسي @(.*)$") and CoSu(msg) then
local username = text:match("^رفع منشئ اساسي @(.*)$")
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_," *꙳.︙؏ـمࢪيـہ ۿۧذا ࢦمـ؏ـࢪف ࢦقناۿ ستخدمِا ؏ـدل  . !*")   
return false 
end  
database:sadd(bot_id..'Basic:Constructor'..msg.chat_id_, result.id_)
usertext = '\n *꙳.︙اسم المستخدم -›* ['..result.title_..'](t.me/'..(username or 'GGGMG')..')'
status  = '\n*꙳.︙ تمِہ  ࢪفع مِنشئہ ﮼ﺂساسيہ*'
texts = usertext..status
else
texts = ' *꙳.︙مـڪو ﮼حِۢـساب پۿۧل مِـ؏ـࢪف .*'
end
send(msg.chat_id_, msg.id_, texts)
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end
if text and text:match("^رفع منشئ اساسي (%d+)$") and CoSu(msg) then
local userid = text:match("^رفع منشئ اساسي (%d+)$") 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:sadd(bot_id..'Basic:Constructor'..msg.chat_id_, userid)
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.first_name_ then
usertext = '\n *꙳.︙اسم المستخدم -›* ['..data.first_name_..'](t.me/'..(data.username_ or 'GGGMG')..')'
status  = '\n*꙳.︙ تمِہ  ࢪفع مِنشئہ ﮼ﺂساسيہ*'
send(msg.chat_id_, msg.id_, usertext..status)
else
usertext = '\n *꙳.︙اسم المستخدم -›* '..userid..''
status  = '\n*꙳.︙ تمِہ  ࢪفع مِنشئہ ﮼ﺂساسيہ*'
send(msg.chat_id_, msg.id_, usertext..status)
end;end,nil)
return false
end
if text == ("تنزيل اساسي") and msg.reply_to_message_id_ and CoSu(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
database:srem(bot_id..'Basic:Constructor'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *꙳.︙اسم المستخدم -›* ['..data.first_name_..'](t.me/'..(data.username_ or 'GGGMG')..')'
status  = '\n*꙳.︙تمِہ تنࢪ࣪يࢦۿ مِہטּ ﮼ﺂࢦاساسينہ .*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text and text:match("^تنزيل اساسي @(.*)$") and CoSu(msg) then
local username = text:match("^تنزيل اساسي @(.*)$")
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
if result.id_ then
database:srem(bot_id..'Basic:Constructor'..msg.chat_id_, result.id_)
usertext = '\n *꙳.︙اسم المستخدم -›* ['..result.title_..'](t.me/'..(username or 'GGGMG')..')'
status  = '\n*꙳.︙تمِہ تنࢪ࣪يࢦۿ مِہטּ ﮼ﺂࢦاساسينہ .*'
texts = usertext..status
else
texts = ' *꙳.︙مـڪو ﮼حِۢـساب پۿۧل مِـ؏ـࢪف .*'
end
send(msg.chat_id_, msg.id_, texts)
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end
if text and text:match("^تنزيل اساسي (%d+)$") and CoSu(msg) then
local userid = text:match("^تنزيل اساسي (%d+)$") 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:srem(bot_id..'Basic:Constructor'..msg.chat_id_, userid)
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.first_name_ then
usertext = '\n *꙳.︙اسم المستخدم -›* ['..data.first_name_..'](t.me/'..(data.username_ or 'GGGMG')..')'
status  = '\n*꙳.︙تمِہ تنࢪ࣪يࢦۿ مِہטּ ﮼ﺂࢦاساسينہ .*'
send(msg.chat_id_, msg.id_, usertext..status)
else
usertext = '\n *꙳.︙اسم المستخدم -›* '..userid..''
status  = '\n*꙳.︙تمِہ تنࢪ࣪يࢦۿ مِہטּ ﮼ﺂࢦاساسينہ .*'
send(msg.chat_id_, msg.id_, usertext..status)
end;end,nil)
return false
end
------------------------------------------------------------------------ امـيـر الـدلـيـم
if text == 'مسح المنشئين' and BasicConstructor(msg) then
database:del(bot_id..'Constructor'..msg.chat_id_)
texts = ' *꙳.︙تمِہ مِسحہ ࢦمِنشئيہ .* '
send(msg.chat_id_, msg.id_, texts)
end

if text == ("المنشئين") and BasicConstructor(msg) then
local list = database:smembers(bot_id..'Constructor'..msg.chat_id_)
t = "\n *꙳.︙ࢦمنشئينہ .* \n*﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎*\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = " *꙳.︙مـڪو مِنشئينہ .*"
end
send(msg.chat_id_, msg.id_, t)
end
if text == ("تاك للمنشئين") or text == ("صيح المنشئين") then
local list = database:smembers(bot_id..'Constructor'..msg.chat_id_)
t = "\n *꙳.︙تـ؏ـۅ ࢦڪࢪۅپ ؏ـمࢪيـہ .* \n*﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎*\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."- {[@"..username.."]}\n"
else
t = t..""..k.."- {"..v.."}\n"
end
end
if #list == 0 then
t = " *꙳.︙مـڪو مِنشئينہ .*"
end
send(msg.chat_id_, msg.id_, t)
end
if text ==("المنشئ") then
tdcli_function ({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),filter_ = {ID = "ChannelMembersAdministrators"},offset_ = 0,limit_ = 100},function(arg,data) 
local admins = data.members_
for i=0 , #admins do
if data.members_[i].status_.ID == "ChatMemberStatusCreator" then
owner_id = admins[i].user_id_
tdcli_function ({ID = "GetUser",user_id_ = owner_id},function(arg,b) 
if b.first_name_ == false then
send(msg.chat_id_, msg.id_," *꙳.︙﮼حِۢـساب ࢦمِنشئہ محذۅف .؟*")
return false  
end
local UserName = (b.username_ or "GGGMG")
send(msg.chat_id_, msg.id_," ꙳.︙منشئ الكروب » ["..b.first_name_.."](T.me/"..UserName..")")  
end,nil)   
end
end
end,nil)   
end
if text == "رفع منشئ" and msg.reply_to_message_id_ and BasicConstructor(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
database:sadd(bot_id..'Constructor'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *꙳.︙اسم المستخدم -›* ['..data.first_name_..'](t.me/'..(data.username_ or 'GGGMG')..')'
status  = '\n*꙳.︙ تمِہ  ࢪفع مِنشئہ .*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
end
if text and text:match("^رفع منشئ @(.*)$") and BasicConstructor(msg) then
local username = text:match("^رفع منشئ @(.*)$")
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_," *꙳.︙؏ـمࢪيـہ ۿۧذا ࢦمـ؏ـࢪف ࢦقناۿ ستخدمِا ؏ـدل  . !*")   
return false 
end  
database:sadd(bot_id..'Constructor'..msg.chat_id_, result.id_)
usertext = '\n *꙳.︙اسم المستخدم -›* ['..result.title_..'](t.me/'..(username or 'GGGMG')..')'
status  = '\n*꙳.︙ تمِہ  ࢪفع مِنشئہ .*'
texts = usertext..status
else
texts = ' *꙳.︙مـڪو ﮼حِۢـساب پۿۧل مِـ؏ـࢪف .*'
end
send(msg.chat_id_, msg.id_, texts)
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
end
------------------------------------------------------------------------ امـيـر الـدلـيـم
if text and text:match("^رفع منشئ (%d+)$") and BasicConstructor(msg) then
local userid = text:match("^رفع منشئ (%d+)$")
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:sadd(bot_id..'Constructor'..msg.chat_id_, userid)
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.first_name_ then
usertext = '\n *꙳.︙اسم المستخدم -›* ['..data.first_name_..'](t.me/'..(data.username_ or 'GGGMG')..')'
status  = '\n*꙳.︙ تمِہ  ࢪفع مِنشئہ .*'
send(msg.chat_id_, msg.id_, usertext..status)
else
usertext = '\n *꙳.︙اسم المستخدم -›* '..userid..''
status  = '\n*꙳.︙ تمِہ  ࢪفع مِنشئہ .*'
send(msg.chat_id_, msg.id_, usertext..status)
end;end,nil)
end
if text and text:match("^تنزيل منشئ$") and msg.reply_to_message_id_ and BasicConstructor(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
database:srem(bot_id..'Constructor'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *꙳.︙اسم المستخدم -›* ['..data.first_name_..'](t.me/'..(data.username_ or 'GGGMG')..')'
status  = '\n*꙳.︙تمِہ تنࢪ࣪يࢦۿ مِہטּ ﮼ﺂࢦمِنشئينہ .*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
end
------------------------------------------------------------------------
if text and text:match("^تنزيل منشئ @(.*)$") and BasicConstructor(msg) then
local username = text:match("^تنزيل منشئ @(.*)$")
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
if result.id_ then
database:srem(bot_id..'Constructor'..msg.chat_id_, result.id_)
usertext = '\n *꙳.︙اسم المستخدم -›* ['..result.title_..'](t.me/'..(username or 'GGGMG')..')'
status  = '\n*꙳.︙تمِہ تنࢪ࣪يࢦۿ مِہטּ ﮼ﺂࢦمِنشئينہ .*'
texts = usertext..status
else
texts = ' *꙳.︙مـڪو ﮼حِۢـساب پۿۧل مِـ؏ـࢪف .*'
end
send(msg.chat_id_, msg.id_, texts)
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
end
------------------------------------------------------------------------
if text and text:match("^تنزيل منشئ (%d+)$") and BasicConstructor(msg) then
local userid = text:match("^تنزيل منشئ (%d+)$")
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:srem(bot_id..'Constructor'..msg.chat_id_, userid)
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.first_name_ then
usertext = '\n *꙳.︙اسم المستخدم -›* ['..data.first_name_..'](t.me/'..(data.username_ or 'GGGMG')..')'
status  = '\n*꙳.︙تمِہ تنࢪ࣪يࢦۿ مِہטּ ﮼ﺂࢦمِنشئينہ .*'
send(msg.chat_id_, msg.id_, usertext..status)
else
usertext = '\n *꙳.︙اسم المستخدم -›* '..userid..''
status  = '\n*꙳.︙تمِہ تنࢪ࣪يࢦۿ مِہטּ ﮼ﺂࢦمِنشئينہ .*'
send(msg.chat_id_, msg.id_, usertext..status)
end;end,nil)
end
------------------------------------------------------------------------ امـيـر الـدلـيـم
if text == 'مسح المدراء' and Constructor(msg) then
database:del(bot_id..'Manager'..msg.chat_id_)
texts = ' *꙳.︙تمِہ مِسحہ ࢦمدࢪاء .* '
send(msg.chat_id_, msg.id_, texts)
end
if text == ("المدراء") and Constructor(msg) then
local list = database:smembers(bot_id..'Manager'..msg.chat_id_)
t = "\n *꙳.︙ࢦمدࢪاء .* \n*﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎*\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = " *꙳.︙مـڪو مِدࢪﺂء 🥢 .*"
end
send(msg.chat_id_, msg.id_, t)
end
if text == ("تاك للمدراء") or text == ("صيح المدراء") then
local list = database:smembers(bot_id..'Manager'..msg.chat_id_)
t = "\n *꙳.︙تـ؏ـۅ ࢦڪࢪۅپ ؏ـمࢪيـہ .* \n*﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎*\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."- {[@"..username.."]}\n"
else
t = t..""..k.."- {"..v.."}\n"
end
end
if #list == 0 then
t = " *꙳.︙مـڪو مِدࢪﺂء 🥢 .*"
end
send(msg.chat_id_, msg.id_, t)
end
if text == ("رفع مدير") and msg.reply_to_message_id_ and Constructor(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
database:sadd(bot_id..'Manager'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *꙳.︙اسم المستخدم -›* ['..data.first_name_..'](t.me/'..(data.username_ or 'GGGMG')..')'
status  = '\n*꙳.︙ تمِہ  ࢪفع مِديࢪ .*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end  
if text and text:match("^رفع مدير @(.*)$") and Constructor(msg) then
local username = text:match("^رفع مدير @(.*)$") 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_," *꙳.︙؏ـمࢪيـہ ۿۧذا ࢦمـ؏ـࢪف ࢦقناۿ ستخدمِا ؏ـدل  . !*")   
return false 
end  
database:sadd(bot_id..'Manager'..msg.chat_id_, result.id_)
usertext = '\n *꙳.︙اسم المستخدم -›* ['..result.title_..'](t.me/'..(username or 'GGGMG')..')'
status  = '\n*꙳.︙ تمِہ  ࢪفع مِديࢪ .*'
texts = usertext..status
else
texts = ' *꙳.︙مـڪو ﮼حِۢـساب پۿۧل مِـ؏ـࢪف .*'
end
send(msg.chat_id_, msg.id_, texts)
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end 

if text and text:match("^رفع مدير (%d+)$") and Constructor(msg) then
local userid = text:match("^رفع مدير (%d+)$") 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:sadd(bot_id..'Manager'..msg.chat_id_, userid)
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.first_name_ then
usertext = '\n *꙳.︙اسم المستخدم -›* ['..data.first_name_..'](t.me/'..(data.username_ or 'GGGMG')..')'
status  = '\n*꙳.︙ تمِہ  ࢪفع مِديࢪ .*'
send(msg.chat_id_, msg.id_, usertext..status)
else
usertext = '\n *꙳.︙اسم المستخدم -›* '..userid..''
status  = '\n*꙳.︙ تمِہ  ࢪفع مِديࢪ .*'
send(msg.chat_id_, msg.id_, usertext..status)
end;end,nil)
return false
end  
if text == ("تنزيل مدير") and msg.reply_to_message_id_ and Constructor(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
database:srem(bot_id..'Manager'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *꙳.︙اسم المستخدم -›* ['..data.first_name_..'](t.me/'..(data.username_ or 'GGGMG')..')'
status  = '\n*꙳.︙تمِہ تنࢪ࣪يࢦۿ مِہטּ ﮼ﺂࢦمديࢪ  .*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end  
if text and text:match("^تنزيل مدير @(.*)$") and Constructor(msg) then
local username = text:match("^تنزيل مدير @(.*)$")
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
if result.id_ then
database:srem(bot_id..'Manager'..msg.chat_id_, result.id_)
usertext = '\n *꙳.︙اسم المستخدم -›* ['..result.title_..'](t.me/'..(username or 'GGGMG')..')'
status  = '\n*꙳.︙تمِہ تنࢪ࣪يࢦۿ مِہטּ ﮼ﺂࢦمديࢪ  .*'
texts = usertext..status
else
texts = ' *꙳.︙مـڪو ﮼حِۢـساب پۿۧل مِـ؏ـࢪف .*'
end
send(msg.chat_id_, msg.id_, texts)
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end  
if text and text:match("^تنزيل مدير (%d+)$") and Constructor(msg) then
local userid = text:match("^تنزيل مدير (%d+)$") 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:srem(bot_id..'Manager'..msg.chat_id_, userid)
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.first_name_ then
usertext = '\n *꙳.︙اسم المستخدم -›* ['..data.first_name_..'](t.me/'..(data.username_ or 'GGGMG')..')'
status  = '\n*꙳.︙تمِہ تنࢪ࣪يࢦۿ مِہטּ ﮼ﺂࢦمديࢪ  .*'
send(msg.chat_id_, msg.id_, usertext..status)
else
usertext = '\n *꙳.︙اسم المستخدم -›* '..userid..''
status  = '\n*꙳.︙تمِہ تنࢪ࣪يࢦۿ مِہטּ ﮼ﺂࢦمديࢪ  .*'
send(msg.chat_id_, msg.id_, usertext..status)
end;end,nil)
return false
end
------------------------------------------------------------------------ امـيـر الـدلـيـم
if text ==("رفع الادمنيه") and Manager(msg) then
tdcli_function ({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),filter_ = {ID = "ChannelMembersAdministrators"},offset_ = 0,limit_ = 100},function(arg,data) 
local num2 = 0
local admins = data.members_
for i=0 , #admins do
if data.members_[i].bot_info_ == false and data.members_[i].status_.ID == "ChatMemberStatusEditor" then
database:sadd(bot_id.."Mod:User"..msg.chat_id_, admins[i].user_id_)
num2 = num2 + 1
tdcli_function ({ID = "GetUser",user_id_ = admins[i].user_id_},function(arg,b) 
if b.username_ == true then
end
if b.first_name_ == false then
database:srem(bot_id.."Mod:User"..msg.chat_id_, admins[i].user_id_)
end
end,nil)   
else
database:srem(bot_id.."Mod:User"..msg.chat_id_, admins[i].user_id_)
end
end
if num2 == 0 then
send(msg.chat_id_, msg.id_," *꙳.︙مـڪو ﮼ﺂدمِنيۿۧ ࢦ ڪدࢪ ﮼ﺂࢪفـ؏ـۿۧمِہ   🥢 .*") 
else
send(msg.chat_id_, msg.id_," *꙳.︙تمت ترقيه { "..num2.." } من الادمنيه*") 
end
end,nil)   
end
if text == ("رفع مطور ثانوي") and tonumber(msg.reply_to_message_id_) ~= 0 and SudoBot(msg) then
function Function_RAN(extra, result, success)
database:sadd(bot_id.."DEV:Sudo:T", result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","*꙳.︙ تمِہ  ࢪفع مِطۅࢪ ثانۅჂ̤ .*")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_RAN, nil)
return false 
end
if text and text:match("^رفع مطور ثانوي @(.*)$") and SudoBot(msg) then
local username = text:match("^رفع مطور ثانوي @(.*)$")
function Function_RAN(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"*꙳.︙؏ـمࢪيـہ ۿۧذا ࢦمـ؏ـࢪف ࢦقناۿ ستخدمِا ؏ـدل  . !*")   
return false 
end  
database:sadd(bot_id.."DEV:Sudo:T", result.id_)
Reply_Status(msg,result.id_,"reply","*꙳.︙ تمِہ  ࢪفع مِطۅࢪ ثانۅჂ̤ .*")  
else
send(msg.chat_id_, msg.id_,"*꙳.︙مـڪو ﮼حِۢـساب پۿۧل مِـ؏ـࢪف .*")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_RAN, nil)
return false 
end
if text and text:match("^رفع مطور ثانوي (%d+)$") and SudoBot(msg) then
local userid = text:match("^رفع مطور ثانوي (%d+)$")
database:sadd(bot_id.."DEV:Sudo:T", userid)
Reply_Status(msg,userid,"reply","*꙳.︙ تمِہ  ࢪفع مِطۅࢪ ثانۅჂ̤ .*")  
return false 
end
if text == ("تنزيل مطور ثانوي") and tonumber(msg.reply_to_message_id_) ~= 0 and SudoBot(msg) then
function Function_RAN(extra, result, success)
database:srem(bot_id.."DEV:Sudo:T", result.sender_user_id_)
Reply_Status(msg,result.sender_user_id_,"reply","*꙳.︙تمِہ تنࢪ࣪يࢦۿ مِہטּ ﮼ﺂࢦمِطۅࢪينہ ﮼ﺂࢦثانۅيينہ .*")  
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, Function_RAN, nil)
return false 
end
if text and text:match("^تنزيل مطور ثانوي @(.*)$") and SudoBot(msg) then
local username = text:match("^تنزيل مطور ثانوي @(.*)$")
function Function_RAN(extra, result, success)
if result.id_ then
database:srem(bot_id.."DEV:Sudo:T", result.id_)
Reply_Status(msg,result.id_,"reply","*꙳.︙تمِہ تنࢪ࣪يࢦۿ مِہטּ ﮼ﺂࢦمِطۅࢪينہ ﮼ﺂࢦثانۅيينہ .*")  
else
send(msg.chat_id_, msg.id_,"*꙳.︙مـڪو ﮼حِۢـساب پۿۧل مِـ؏ـࢪف .*")
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, Function_RAN, nil)
return false
end  
if text and text:match("^تنزيل مطور ثانوي (%d+)$") and SudoBot(msg) then
local userid = text:match("^تنزيل مطور ثانوي (%d+)$")
database:srem(bot_id.."DEV:Sudo:T", userid)
Reply_Status(msg,userid,"reply","*꙳.︙تمِہ تنࢪ࣪يࢦۿ مِہטּ ﮼ﺂࢦمِطۅࢪينہ ﮼ﺂࢦثانۅيينہ .*")  
return false 
end
if text == ("الثانويين") and SudoBot(msg) then
local list = database:smembers(bot_id.."DEV:Sudo:T")
t = "\n*꙳.︙ۿۧهلا ﮼حِۢـياتيہ المِطۅࢪينہ ࢦثانۅيين  .* \n *﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎* \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = "*꙳.︙مـڪو مِطۅࢪينہ ࢦثانۅيين  .*"
end
send(msg.chat_id_, msg.id_, t)
end
if text == ("مسح الثانويين") and SudoBot(msg) then
database:del(bot_id.."DEV:Sudo:T")
send(msg.chat_id_, msg.id_, "\n*꙳.︙تمِہ مِسحہ قائمِۿۧ ࢦمِطۅࢪينہ اࢦثانۅيين  .*  ")
end
if text == 'مسح الادمنيه' and Manager(msg) then
database:del(bot_id..'Mod:User'..msg.chat_id_)
send(msg.chat_id_, msg.id_, ' ꙳.︙تمِہ مِسحہ ﮼ﺂࢦادِمنيۿۧ   .')
end
if text == ("الادمنيه") and Manager(msg) then
local list = database:smembers(bot_id..'Mod:User'..msg.chat_id_)
t = "\n *꙳.︙﮼ﺂࢦا دِمِنہ .* \n*﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎*\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = " *꙳.︙مـڪو ﮼ﺂدمِنيۿۧ 🥢 .*"
end
send(msg.chat_id_, msg.id_, t)
end
if text == ("تاك للادمنيه") or text == ("صيح الادمنيه") then
local list = database:smembers(bot_id..'Mod:User'..msg.chat_id_)
t = "\n *꙳.︙تـ؏ـۅ ࢦڪࢪۅپ ؏ـمࢪيـہ .* \n*﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎*\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."- {[@"..username.."]}\n"
else
t = t..""..k.."- {"..v.."}\n"
end
end
if #list == 0 then
t = " *꙳.︙مـڪو ﮼ﺂدمِنيۿۧ 🥢 .*"
end
send(msg.chat_id_, msg.id_, t)
end
if text == ("رفع ادمن") and msg.reply_to_message_id_ and Manager(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
if database:get(bot_id..'Lock:Add:Bot'..msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_, msg.id_,' *꙳.︙تمِہ تـ؏ـطيࢦ ﺂࢦࢪفِـ؏ . *') 
return false
end
database:sadd(bot_id..'Mod:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *꙳.︙اسم المستخدم -›* ['..data.first_name_..'](t.me/'..(data.username_ or 'GGGMG')..')'
status  = '\n*꙳.︙ تمِہ  ࢪفع ﮼ﺂدمن .*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text and text:match("^رفع ادمن @(.*)$") and Manager(msg) then
local username = text:match("^رفع ادمن @(.*)$")
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if database:get(bot_id..'Lock:Add:Bot'..msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_, msg.id_,' *꙳.︙تمِہ تـ؏ـطيࢦ ﺂࢦࢪفِـ؏ . *') 
return false
end
function start_function(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_," *꙳.︙؏ـمࢪيـہ ۿۧذا ࢦمـ؏ـࢪف ࢦقناۿ ستخدمِا ؏ـدل  . !*")   
return false 
end  
database:sadd(bot_id..'Mod:User'..msg.chat_id_, result.id_)
usertext = '\n *꙳.︙اسم المستخدم -›* ['..result.title_..'](t.me/'..(username or 'GGGMG')..')'
status  = '\n*꙳.︙ تمِہ  ࢪفع ﮼ﺂدمن .*'
texts = usertext..status
else
texts = ' *꙳.︙مـڪو ﮼حِۢـساب پۿۧل مِـ؏ـࢪف .*'
end
send(msg.chat_id_, msg.id_, texts)
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end
if text and text:match("^رفع ادمن (%d+)$") and Manager(msg) then
local userid = text:match("^رفع ادمن (%d+)$")
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if database:get(bot_id..'Lock:Add:Bot'..msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_, msg.id_,' *꙳.︙تمِہ تـ؏ـطيࢦ ﺂࢦࢪفِـ؏ . *') 
return false
end
database:sadd(bot_id..'Mod:User'..msg.chat_id_, userid)
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.first_name_ then
usertext = '\n *꙳.︙اسم المستخدم -›* ['..data.first_name_..'](t.me/'..(data.username_ or 'GGGMG')..')'
status  = '\n*꙳.︙ تمِہ  ࢪفع ﮼ﺂدمن .*'
send(msg.chat_id_, msg.id_, usertext..status)
else
usertext = '\n *꙳.︙اسم المستخدم -›* '..userid..''
status  = '\n*꙳.︙ تمِہ  ࢪفع ﮼ﺂدمن .*'
send(msg.chat_id_, msg.id_, usertext..status)
end;end,nil)
return false
end
if text == ("تنزيل ادمن") and msg.reply_to_message_id_ and Manager(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
database:srem(bot_id..'Mod:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *꙳.︙اسم المستخدم -›* ['..data.first_name_..'](t.me/'..(data.username_ or 'GGGMG')..')'
status  = '\n*꙳.︙تمِہ تنࢪ࣪يࢦۿ مِہטּ ﮼ﺂࢦادمنيۿۧ  .*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text and text:match("^تنزيل ادمن @(.*)$") and Manager(msg) then
local username = text:match("^تنزيل ادمن @(.*)$") 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
if result.id_ then
database:srem(bot_id..'Mod:User'..msg.chat_id_, result.id_)
usertext = '\n *꙳.︙اسم المستخدم -›* ['..result.title_..'](t.me/'..(username or 'GGGMG')..')'
status  = '\n*꙳.︙تمِہ تنࢪ࣪يࢦۿ مِہטּ ﮼ﺂࢦادمنيۿۧ  .*'
texts = usertext..status
else
texts = ' *꙳.︙مـڪو ﮼حِۢـساب پۿۧل مِـ؏ـࢪف .*'
end
send(msg.chat_id_, msg.id_, texts)
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end
if text and text:match("^تنزيل ادمن (%d+)$") and Manager(msg) then
local userid = text:match("^تنزيل ادمن (%d+)$")
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:srem(bot_id..'Mod:User'..msg.chat_id_, userid)
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.first_name_ then
usertext = '\n *꙳.︙اسم المستخدم -›* ['..data.first_name_..'](t.me/'..(data.username_ or 'GGGMG')..')'
status  = '\n*꙳.︙تمِہ تنࢪ࣪يࢦۿ مِہטּ ﮼ﺂࢦادمنيۿۧ  .*'
send(msg.chat_id_, msg.id_, usertext..status)
else
usertext = '\n *꙳.︙اسم المستخدم -›* '..userid..''
status  = '\n*꙳.︙تمِہ تنࢪ࣪يࢦۿ مِہטּ ﮼ﺂࢦادمنيۿۧ  .*'
send(msg.chat_id_, msg.id_, usertext..status)
end;end,nil)
return false
end
if text == ("طرد") and msg.reply_to_message_id_ ~=0 and Mod(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if database:get(bot_id..'Lock:kick'..msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_, msg.id_,' *꙳.︙تمِہ تـ؏ـطيࢦ ࢦطِࢪد .*') 
return false
end
function start_function(extra, result, success)
if RANSudoBot(result.sender_user_id_) then
send(msg.chat_id_, msg.id_,"*꙳.︙متڪدٌࢪ [ تڪتمِہ .تطࢪد . تحظࢪ .تقيد  .] مطۅࢪ ࢦسۅࢪسہ ﮼ﺂو ﮼ﺂلاساسـჂ̤  .*")
return false 
end
if tonumber(result.sender_user_id_) == tonumber(bot_id) then  
send(msg.chat_id_, msg.id_, " *꙳.︙متڪٌدࢪ تطࢪد ﺂࢦبۅت .* ")
return false 
end
if Can_or_NotCan(result.sender_user_id_, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, '\n *꙳.︙متڪدٌࢪ تطࢪدٌ  .* ( '..Rutba(result.sender_user_id_,msg.chat_id_)..' )')
else
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = result.id_, status_ = { ID = "ChatMemberStatusKicked" },},function(arg,data) 
if (data and data.code_ and data.code_ == 400 and data.message_ == "CHAT_ADMIN_REQUIRED") then 
send(msg.chat_id_, msg.id_,' *꙳.︙ مِـ؏ـندٌჂ̤ صࢦلاحيۿۧ مڪدٌࢪ ﮼ﺂحظࢪ  . !*') 
return false  
end
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,' *꙳.︙ﺂࢦبۅت مِہ ﮼ﺂدٌمِنہ ࢪفـ؏ـۿۧ . !*') 
return false  
end
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *꙳.︙اسم المستخدم -›* ['..data.first_name_..'](t.me/'..(data.username_ or 'GGGMG')..')'
statusk  = '\n*꙳.︙تمِہ نشحت ࢦـ؏ـضۅ  .*'
send(msg.chat_id_, msg.id_, usertext..statusk)
end,nil)
chat_kick(result.chat_id_, result.sender_user_id_)
end,nil)   
end
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end  
if text and text:match("^طرد @(.*)$") and Mod(msg) then 
local username = text:match("^طرد @(.*)$")
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if database:get(bot_id..'Lock:kick'..msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_, msg.id_,' *꙳.︙تمِہ تـ؏ـطيࢦ ࢦطِࢪد .*') 
return false
end
function start_function(extra, result, success)
if result.id_ then
if RANSudoBot(result.id_) then
send(msg.chat_id_, msg.id_,"*꙳.︙متڪدٌࢪ [ تڪتمِہ .تطࢪد . تحظࢪ .تقيد  .] مطۅࢪ ࢦسۅࢪسہ ﮼ﺂو ﮼ﺂلاساسـჂ̤  .*")
return false 
end
if tonumber(result.id_) == tonumber(bot_id) then  
send(msg.chat_id_, msg.id_, " *꙳.︙متڪٌدࢪ تطࢪد ﺂࢦبۅت .* ")
return false 
end
if Can_or_NotCan(result.id_, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, '\n *꙳.︙متڪدٌࢪ تطࢪدٌ  .* ( '..Rutba(result.id_,msg.chat_id_)..' )')
else
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = result.id_, status_ = { ID = "ChatMemberStatusKicked" },},function(arg,data) 
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"*꙳.︙؏ـمࢪيـہ ۿۧذا ࢦمـ؏ـࢪف ࢦقناۿ ستخدمِا ؏ـدل  . !*")   
return false 
end  
if (data and data.code_ and data.code_ == 400 and data.message_ == "CHAT_ADMIN_REQUIRED") then 
send(msg.chat_id_, msg.id_,' *꙳.︙مِـ؏ـندٌჂ̤ صࢦلاحيۿۧ مڪدٌࢪ ﮼ﺂحظࢪ  . !*') 
return false  
end
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,' *꙳.︙ﺂࢦبۅت مِہ ﮼ﺂدٌمِنہ ࢪفـ؏ـۿۧ . !*') 
return false  
end
usertext = '\n *꙳.︙اسم المستخدم -›* ['..result.title_..'](t.me/'..(username or 'GGGMG')..')'
statusk  = '\n*꙳.︙تمِہ نشحت ࢦـ؏ـضۅ  .*'
texts = usertext..statusk
chat_kick(msg.chat_id_, result.id_)
send(msg.chat_id_, msg.id_, texts)
end,nil)   
end
else
send(msg.chat_id_, msg.id_, ' *꙳.︙مـڪو ﮼حِۢـساب پۿۧل مِـ؏ـࢪف .*')
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end  

if text and text:match("^طرد (%d+)$") and Mod(msg) then 
local userid = text:match("^طرد (%d+)$") 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if database:get(bot_id..'Lock:kick'..msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_, msg.id_,' *꙳.︙تمِہ تـ؏ـطيࢦ ࢦطِࢪد .*') 
return false
end
if RANSudoBot(userid) then
send(msg.chat_id_, msg.id_,"*꙳.︙متڪدٌࢪ [ تڪتمِہ .تطࢪد . تحظࢪ .تقيد  .] مطۅࢪ ࢦسۅࢪسہ ﮼ﺂو ﮼ﺂلاساسـჂ̤  .*")
return false 
end
if tonumber(userid) == tonumber(bot_id) then  
send(msg.chat_id_, msg.id_, " *꙳.︙متڪٌدࢪ تطࢪد ﺂࢦبۅت .* ")
return false 
end
if Can_or_NotCan(userid, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, '\n *꙳.︙متڪدٌࢪ تطࢪدٌ  .* ( '..Rutba(userid,msg.chat_id_)..' )')
else
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = userid, status_ = { ID = "ChatMemberStatusKicked" },},function(arg,data) 
if (data and data.code_ and data.code_ == 400 and data.message_ == "CHAT_ADMIN_REQUIRED") then 
send(msg.chat_id_, msg.id_,' *꙳.︙مِـ؏ـندٌჂ̤ صࢦلاحيۿۧ مڪدٌࢪ ﮼ﺂحظࢪ  . !*') 
return false  
end
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,' *꙳.︙ﺂࢦبۅت مِہ ﮼ﺂدٌمِنہ ࢪفـ؏ـۿۧ . !*') 
return false  
end
chat_kick(msg.chat_id_, userid)
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.first_name_ then
 usertext = '\n *꙳.︙اسم المستخدم -›* ['..data.first_name_..'](t.me/'..(data.username_ or 'GGGMG')..')'
 statusk  = '\n*꙳.︙تمِہ نشحت ࢦـ؏ـضۅ  .*'
send(msg.chat_id_, msg.id_, usertext..statusk)
else
 usertext = '\n *꙳.︙اسم المستخدم -›* '..userid..''
 statusk  = '\n*꙳.︙تمِہ نشحت ࢦـ؏ـضۅ  .*'
send(msg.chat_id_, msg.id_, usertext..statusk)
end;end,nil)
end,nil)   
end
return false
end
------------------------------------------------------------------------ امـيـر الـدلـيـم
------------------------------------------------------------------------ امـيـر الـدلـيـم
if text == 'مسح المميزين' and Mod(msg) then
database:del(bot_id..'Special:User'..msg.chat_id_)
send(msg.chat_id_, msg.id_, ' *꙳.︙تمِہ مِسحہ ࢦمِميزينہ   .*')
end
if text == ("المميزين") and Mod(msg) then
local list = database:smembers(bot_id..'Special:User'..msg.chat_id_)
t = "\n *꙳.︙مِميࢪ࣪يٍنہ ࢦڪࢪۅپ .* \n*﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎*\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = " *꙳.︙مـڪو مِميࢪ࣪ينہ .*"
end
send(msg.chat_id_, msg.id_, t)
end
if text == ("تاك للمميزين") or text == ("صيح المميزين") then
local list = database:smembers(bot_id..'Special:User'..msg.chat_id_)
t = "\n *꙳.︙تـ؏ـۅ ࢦڪࢪۅپ ؏ـمࢪيـہ .* \n*﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎*\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."- {[@"..username.."]}\n"
else
t = t..""..k.."- {"..v.."}\n"
end
end
if #list == 0 then
t = " *꙳.︙مـڪو مِميࢪ࣪ينہ .*"
end
send(msg.chat_id_, msg.id_, t)
end
if text == ("رفع مميز") and tonumber(msg.reply_to_message_id_) ~= 0 and Mod(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if database:get(bot_id..'Lock:Add:Bot'..msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_, msg.id_,' *꙳.︙تمِہ تـ؏ـطيࢦ ﺂࢦࢪفِـ؏ . *') 
return false
end
function start_function(extra, result, success)
database:sadd(bot_id..'Special:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *꙳.︙اسم المستخدم -›* ['..data.first_name_..'](t.me/'..(data.username_ or 'GGGMG')..')'
local  statuss  = '\n*꙳.︙ تمِہ  ࢪفع مِميࢪ࣪  .*'
send(msg.chat_id_, msg.id_, usertext..statuss)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text and text:match("^رفع مميز @(.*)$") and Mod(msg) then
local username = text:match("^رفع مميز @(.*)$") 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if database:get(bot_id..'Lock:Add:Bot'..msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_, msg.id_,' *꙳.︙تمِہ تـ؏ـطيࢦ ﺂࢦࢪفِـ؏ . *') 
return false
end
function start_function(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_," *꙳.︙؏ـمࢪيـہ ۿۧذا ࢦمـ؏ـࢪف ࢦقناۿ ستخدمِا ؏ـدل  . !*")   
return false 
end  
database:sadd(bot_id..'Special:User'..msg.chat_id_, result.id_)
usertext = '\n *꙳.︙اسم المستخدم -›* ['..result.title_..'](t.me/'..(username or 'GGGMG')..')'
local  statuss  = '\n*꙳.︙ تمِہ  ࢪفع مِميࢪ࣪  .*'
texts = usertext..statuss
else
texts = ' *꙳.︙مـڪو ﮼حِۢـساب پۿۧل مِـ؏ـࢪف .*'
end
send(msg.chat_id_, msg.id_, texts)
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end

if text and text:match("^رفع مميز (%d+)$") and Mod(msg) then
local userid = text:match("^رفع مميز (%d+)$")
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if database:get(bot_id..'Lock:Add:Bot'..msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_, msg.id_,' *꙳.︙تمِہ تـ؏ـطيࢦ ﺂࢦࢪفِـ؏ . *') 
return false
end
database:sadd(bot_id..'Special:User'..msg.chat_id_, userid)
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.first_name_ then
usertext = '\n *꙳.︙اسم المستخدم -›* ['..data.first_name_..'](t.me/'..(data.username_ or 'GGGMG')..')'
local  statuss  = '\n*꙳.︙ تمِہ  ࢪفع مِميࢪ࣪  .*'
send(msg.chat_id_, msg.id_, usertext..statuss)
else
usertext = '\n *꙳.︙اسم المستخدم -›* '..userid..''
local  statuss  = '\n*꙳.︙ تمِہ  ࢪفع مِميࢪ࣪  .*'
send(msg.chat_id_, msg.id_, usertext..statuss)
end;end,nil)
return false
end

if (text == ("تنزيل مميز")) and msg.reply_to_message_id_ and Mod(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
database:srem(bot_id..'Special:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *꙳.︙اسم المستخدم -›* ['..data.first_name_..'](t.me/'..(data.username_ or 'GGGMG')..')'
status  = '\n*꙳.︙تمِہ تنࢪ࣪يࢦۿ مِہטּ ﮼ﺂࢦمِميࢪ࣪ينہ .*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text and text:match("^تنزيل مميز @(.*)$") and Mod(msg) then
local username = text:match("^تنزيل مميز @(.*)$") 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
if result.id_ then
database:srem(bot_id..'Special:User'..msg.chat_id_, result.id_)
usertext = '\n *꙳.︙اسم المستخدم -›* ['..result.title_..'](t.me/'..(username or 'GGGMG')..')'
status  = '\n*꙳.︙تمِہ تنࢪ࣪يࢦۿ مِہטּ ﮼ﺂࢦمِميࢪ࣪ينہ .*'
texts = usertext..status
else
texts = ' *꙳.︙مـڪو ﮼حِۢـساب پۿۧل مِـ؏ـࢪف .*'
end
send(msg.chat_id_, msg.id_, texts)
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end
if text and text:match("^تنزيل مميز (%d+)$") and Mod(msg) then
local userid = text:match("^تنزيل مميز (%d+)$") 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:srem(bot_id..'Special:User'..msg.chat_id_, userid)
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.first_name_ then
usertext = '\n *꙳.︙لعضو »* ['..data.first_name_..'](t.me/'..(data.username_ or 'GGGMG')..')'
status  = '\n*꙳.︙تمِہ تنࢪ࣪يࢦۿ مِہטּ ﮼ﺂࢦمِميࢪ࣪ينہ .*'
send(msg.chat_id_, msg.id_, usertext..status)
else
usertext = '\n *꙳.︙اسم المستخدم -›* '..userid..''
status  = '\n*꙳.︙تمِہ تنࢪ࣪يࢦۿ مِہטּ ﮼ﺂࢦمِميࢪ࣪ينہ .*'
send(msg.chat_id_, msg.id_, usertext..status)
end;end,nil)
return false
end  
------------------------------------------------------------------------ امـيـر الـدلـيـم
------------------------------------------------------------------------ امـيـر الـدلـيـم
if text == 'مسح المحظورين' and Mod(msg) then
database:del(bot_id..'Ban:User'..msg.chat_id_)
send(msg.chat_id_, msg.id_, '\n *꙳.︙تمِہ مِسحہ ࢦمحضۅࢪينہ .*')
end
if text == ("المحظورين") then
local list = database:smembers(bot_id..'Ban:User'..msg.chat_id_)
t = "\n *꙳.︙قائمۿۧ ࢦمحضۅࢪينہ  .* \n*﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎*\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = " *꙳.︙مـڪو محضۅࢪينہ .*"
end
send(msg.chat_id_, msg.id_, t)
end
if text == ("حظر") and msg.reply_to_message_id_ ~= 0 and Mod(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if database:get(bot_id..'Lock:kick'..msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_, msg.id_,' *꙳.︙تمِہ تـ؏ـطيࢦ ࢦحظِࢪ .*') 
return false
end
function start_function(extra, result, success)
if RANSudoBot(result.sender_user_id_) then
send(msg.chat_id_, msg.id_,"*꙳.︙متڪدٌࢪ [ تڪتمِہ .تطࢪد . تحظࢪ .تقيد  .] مطۅࢪ ࢦسۅࢪسہ ﮼ﺂو ﮼ﺂلاساسـჂ̤  .*")
return false 
end
if tonumber(result.sender_user_id_) == tonumber(bot_id) then  
send(msg.chat_id_, msg.id_, " *꙳.︙متڪٌدࢪ تحظࢪ ﺂࢦبۅت .* ")
return false 
end
if Can_or_NotCan(result.sender_user_id_, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, '\n *꙳.︙متڪدٌࢪ تحظࢪ  .* ( '..Rutba(result.sender_user_id_,msg.chat_id_)..' )')
else
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = result.sender_user_id_, status_ = { ID = "ChatMemberStatusKicked" },},function(arg,data) 
if (data and data.code_ and data.code_ == 400 and data.message_ == "CHAT_ADMIN_REQUIRED") then 
send(msg.chat_id_, msg.id_,' *꙳.︙مِـ؏ـندٌჂ̤ صࢦلاحيۿۧ مڪدٌࢪ ﮼ﺂحظࢪ  . !*') 
return false  
end
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,' *꙳.︙ﺂࢦبۅت مِہ ﮼ﺂدٌمِنہ ࢪفـ؏ـۿۧ . !*') 
return false  
end
database:sadd(bot_id..'Ban:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *꙳.︙اسم المستخدم -›* ['..data.first_name_..'](t.me/'..(data.username_ or 'GGGMG')..')'
status  = '\n*꙳.︙تمِہ نحظࢪ .*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
chat_kick(result.chat_id_, result.sender_user_id_)
end,nil)   
end
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end

if text and text:match("^حظر @(.*)$") and Mod(msg) then
local username = text:match("^حظر @(.*)$")
if database:get(bot_id..'Lock:kick'..msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_, msg.id_,' *꙳.︙تمِہ تـ؏ـطيࢦ ࢦحظِࢪ .*') 
return false
end
function start_function(extra, result, success)
if result.id_ then
if RANSudoBot(result.id_) then
send(msg.chat_id_, msg.id_,"*꙳.︙متڪدٌࢪ [ تڪتمِہ .تطࢪد . تحظࢪ .تقيد  .] مطۅࢪ ࢦسۅࢪسہ ﮼ﺂو ﮼ﺂلاساسـჂ̤  .*")
return false 
end
if Can_or_NotCan(result.id_, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, '\n *꙳.︙متڪدٌࢪ تحظࢪ  .* ( '..Rutba(result.id_,msg.chat_id_)..' )')
else
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = result.id_, status_ = { ID = "ChatMemberStatusKicked" },},function(arg,data) 
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_," *꙳.︙؏ـمࢪيـہ ۿۧذا ࢦمـ؏ـࢪف ࢦقناۿ ستخدمِا ؏ـدل  . !*")   
return false 
end  
if (data and data.code_ and data.code_ == 400 and data.message_ == "CHAT_ADMIN_REQUIRED") then 
send(msg.chat_id_, msg.id_,' *꙳.︙ مِـ؏ـندٌჂ̤ صࢦلاحيۿۧ مڪدٌࢪ ﮼ﺂحظࢪ  . !*') 
return false  
end
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,' *꙳.︙ﺂࢦبۅت مِہ ﮼ﺂدٌمِنہ ࢪفـ؏ـۿۧ . !*') 
return false  
end
database:sadd(bot_id..'Ban:User'..msg.chat_id_, result.id_)
usertext = '\n *꙳.︙ المستخدم »* ['..result.title_..'](t.me/'..(username or 'GLOBLA')..')'
status  = '\n*꙳.︙تمِہ نحظࢪ .*'
texts = usertext..status
chat_kick(msg.chat_id_, result.id_)
send(msg.chat_id_, msg.id_, texts)
end,nil)   
end
else
send(msg.chat_id_, msg.id_, ' *꙳.︙مـڪو ﮼حِۢـساب پۿۧل مِـ؏ـࢪف .*')
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end

if text and text:match("^حظر (%d+)$") and Mod(msg) then
local userid = text:match("^حظر (%d+)$") 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if database:get(bot_id..'Lock:kick'..msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_, msg.id_,' *꙳.︙تمِہ تـ؏ـطيࢦ ࢦحظِࢪ .*') 
return false
end
if RANSudoBot(userid) then
send(msg.chat_id_, msg.id_,"*꙳.︙متڪدٌࢪ [ تڪتمِہ .تطࢪد . تحظࢪ .تقيد  .] مطۅࢪ ࢦسۅࢪسہ ﮼ﺂو ﮼ﺂلاساسـჂ̤  .*")
return false 
end
if tonumber(userid) == tonumber(bot_id) then  
send(msg.chat_id_, msg.id_, " *꙳.︙متڪٌدࢪ تحظࢪ ﺂࢦبۅت .*")
return false 
end
if Can_or_NotCan(userid, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, '\n *꙳.︙متڪدٌࢪ تحظࢪ  .* ( '..Rutba(userid,msg.chat_id_)..' )')
else
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = userid, status_ = { ID = "ChatMemberStatusKicked" },},function(arg,data) 
if (data and data.code_ and data.code_ == 400 and data.message_ == "CHAT_ADMIN_REQUIRED") then 
send(msg.chat_id_, msg.id_,' *꙳.︙مِـ؏ـندٌჂ̤ صࢦلاحيۿۧ مڪدٌࢪ ﮼ﺂحظࢪ  . !*') 
return false  
end
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,' *꙳.︙ﺂࢦبۅت مِہ ﮼ﺂدٌمِنہ ࢪفـ؏ـۿۧ . !*') 
return false  
end
database:sadd(bot_id..'Ban:User'..msg.chat_id_, userid)
chat_kick(msg.chat_id_, userid)  
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.first_name_ then
usertext = '\n *꙳.︙اسم المستخدم -›* ['..data.first_name_..'](t.me/'..(data.username_ or 'GGGMG')..')'
status  = '\n*꙳.︙تمِہ نحظࢪ .*'
send(msg.chat_id_, msg.id_, usertext..status)
else
usertext = '\n *꙳.︙اسم المستخدم -›* '..userid..''
status  = '\n*꙳.︙تمِہ نحظࢪ .*'
send(msg.chat_id_, msg.id_, usertext..status)
end;end,nil)
end,nil)   
end
return false
end
if text == ("الغاء حظر") and msg.reply_to_message_id_ and Mod(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
if tonumber(result.sender_user_id_) == tonumber(bot_id) then
send(msg.chat_id_, msg.id_, ' *꙳.︙اﻧـيہ مِہ محظۅࢪ .* \n') 
return false 
end
database:srem(bot_id..'Ban:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *꙳.︙اسم المستخدم -›* ['..data.first_name_..'](t.me/'..(data.username_ or 'GGGMG')..')'
status  = '\n*꙳.︙تمِہ ﮼ﺂلغاء حظࢪۿۧ .؟*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = result.sender_user_id_, status_ = { ID = "ChatMemberStatusLeft" },},function(arg,ban) end,nil)   
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
 
if text and text:match("^الغاء حظر @(.*)$") and Mod(msg) then
local username = text:match("^الغاء حظر @(.*)$") 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
if result.id_ then
if tonumber(result.id_) == tonumber(bot_id) then
send(msg.chat_id_, msg.id_, ' *꙳.︙اﻧـيہ مِہ محظۅࢪ .* \n') 
return false 
end
database:srem(bot_id..'Ban:User'..msg.chat_id_, result.id_)
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = result.id_, status_ = { ID = "ChatMemberStatusLeft" },},function(arg,ban) end,nil)   
usertext = '\n *꙳.︙اسم المستخدم -›* ['..result.title_..'](t.me/'..(username or 'GGGMG')..')'
status  = '\n*꙳.︙تمِہ ﮼ﺂلغاء حظࢪۿۧ .؟*'
texts = usertext..status
else
texts = ' *꙳.︙مـڪو ﮼حِۢـساب پۿۧل مِـ؏ـࢪف .*'
end
send(msg.chat_id_, msg.id_, texts)
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end

if text and text:match("^الغاء حظر (%d+)$") and Mod(msg) then
local userid = text:match("^الغاء حظر (%d+)$") 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if tonumber(userid) == tonumber(bot_id) then
send(msg.chat_id_, msg.id_, ' *꙳.︙اﻧـيہ مِہ محظۅࢪ .* \n') 
return false 
end
database:srem(bot_id..'Ban:User'..msg.chat_id_, userid)
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = userid, status_ = { ID = "ChatMemberStatusLeft" },},function(arg,ban) end,nil)   
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.first_name_ then
usertext = '\n *꙳.︙اسم المستخدم -›* ['..data.first_name_..'](t.me/'..(data.username_ or 'GGGMG')..')'
status  = '\n*꙳.︙تمِہ ﮼ﺂلغاء حظࢪۿۧ .؟*'
send(msg.chat_id_, msg.id_, usertext..status)
else
usertext = '\n *꙳.︙اسم المستخدم -›* '..userid..''
status  = '\n*꙳.︙تمِہ ﮼ﺂلغاء حظࢪۿۧ .؟*'
send(msg.chat_id_, msg.id_, usertext..status)
end;end,nil)
return false
end
------------------------------------------------------------------------ امـيـر الـدلـيـم
if text == 'مسح المكتومين' and Mod(msg) then
database:del(bot_id..'Muted:User'..msg.chat_id_)
send(msg.chat_id_, msg.id_, ' *꙳.︙تمِہ مِسحہ ࢦمڪتۅمِينہ .*')
end
if text == ("المكتومين") and Mod(msg) then
local list = database:smembers(bot_id..'Muted:User'..msg.chat_id_)
t = "\n *꙳.︙قائمِۿۧ ࢦمڪتۅمِينہ .* \n*﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎*\n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = " *꙳.︙مـڪۅ مِڪتۅمينہ 🥢 .؟*"
end
send(msg.chat_id_, msg.id_, t)
end

if text == ("كتم") and msg.reply_to_message_id_ ~= 0 and Mod(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
if tonumber(result.sender_user_id_) == tonumber(bot_id) then  
send(msg.chat_id_, msg.id_, " *꙳.︙متڪدٌࢪ تڪتمِہ ﺂࢦبۅت .* ")
return false 
end
if RANSudoBot(result.sender_user_id_) then
send(msg.chat_id_, msg.id_,"*꙳.︙متڪدٌࢪ [ تڪتمِہ .تطࢪد . تحظࢪ .تقيد  .] مطۅࢪ ࢦسۅࢪسہ ﮼ﺂو ﮼ﺂلاساسـჂ̤  .*")
return false 
end
if Can_or_NotCan(result.sender_user_id_, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, '\n *꙳.︙متڪدٌࢪ تڪتمِہ  .* ( '..Rutba(result.sender_user_id_,msg.chat_id_)..' )')
else
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,' *꙳.︙ﺂࢦبۅت مِہ ﮼ﺂدٌمِنہ ࢪفـ؏ـۿۧ . !*') 
return false  
end
database:sadd(bot_id..'Muted:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *꙳.︙اسم المستخدم -›* ['..data.first_name_..'](t.me/'..(data.username_ or 'GGGMG')..')'
status  = '\n*꙳.︙تمِہ ڪتمۿۧ .؟*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text and text:match("^كتم @(.*)$") and Mod(msg) then
local username = text:match("^كتم @(.*)$")
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,' *꙳.︙ﺂࢦبۅت مِہ ﮼ﺂدٌمِنہ ࢪفـ؏ـۿۧ . !*') 
return false  
end
function start_function(extra, result, success)
if result.id_ then
if RANSudoBot(result.id_) then
send(msg.chat_id_, msg.id_,"*꙳.︙متڪدٌࢪ [ تڪتمِہ .تطࢪد . تحظࢪ .تقيد  .] مطۅࢪ ࢦسۅࢪسہ ﮼ﺂو ﮼ﺂلاساسـჂ̤  .*")
return false 
end
if tonumber(result.id_) == tonumber(bot_id) then  
send(msg.chat_id_, msg.id_, " *꙳.︙متڪدٌࢪ تڪتمِہ ﺂࢦبۅت .* ")
return false 
end
if Can_or_NotCan(result.id_, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, '\n *꙳.︙متڪدٌࢪ تڪتمِہ  .* ( '..Rutba(result.id_,msg.chat_id_)..' )')
else
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_," *꙳.︙؏ـمࢪيـہ ۿۧذا ࢦمـ؏ـࢪف ࢦقناۿ ستخدمِا ؏ـدل  . !*")   
return false 
end  
database:sadd(bot_id..'Muted:User'..msg.chat_id_, result.id_)
usertext = '\n *꙳.︙اسم المستخدم -›* ['..result.title_..'](t.me/'..(username or 'GGGMG')..')'
status  = '\n*꙳.︙تمِہ ڪتمۿۧ .؟*'
texts = usertext..status
send(msg.chat_id_, msg.id_, texts)
end
else
send(msg.chat_id_, msg.id_, ' *꙳.︙مـڪو ﮼حِۢـساب پۿۧل مِـ؏ـࢪف .*')
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end
if text and text:match('^كتم (%d+) (.*)$') and tonumber(msg.reply_to_message_id_) ~= 0 and Mod(msg) then
local TextEnd = {string.match(text, "^(كتم) (%d+) (.*)$")}
function start_function(extra, result, success)
if TextEnd[3] == 'يوم' then
Time_Restrict = TextEnd[2]:match('(%d+)')
Time = Time_Restrict * 86400
end
if TextEnd[3] == 'ساعه' then
Time_Restrict = TextEnd[2]:match('(%d+)')
Time = Time_Restrict * 3600
end
if TextEnd[3] == 'دقيقه' then
Time_Restrict = TextEnd[2]:match('(%d+)')
Time = Time_Restrict * 60
end
TextEnd[3] = TextEnd[3]:gsub('دقيقه',"دقايق") 
TextEnd[3] = TextEnd[3]:gsub('ساعه',"ساعات") 
TextEnd[3] = TextEnd[3]:gsub("يوم","ايام") 
if RANSudoBot(result.sender_user_id_) then
send(msg.chat_id_, msg.id_,"*꙳.︙متڪدٌࢪ [ تڪتمِہ .تطࢪد . تحظࢪ .تقيد  .] مطۅࢪ ࢦسۅࢪسہ ﮼ﺂو ﮼ﺂلاساسـჂ̤  .*")
return false 
end
if Can_or_NotCan(result.sender_user_id_, msg.chat_id_) then
send(msg.chat_id_, msg.id_, "\n *꙳.︙متڪدٌࢪ تڪتمِہ  .* ( "..Rutba(result.sender_user_id_,msg.chat_id_).." )")
else
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *꙳.︙اسم المستخدم -›* ['..data.first_name_..'](t.me/'..(data.username_ or 'GGGMG')..')'
status  = '\n*꙳.︙تمِہ ڪتمۿۧ ࢦمدۿۧ .؟ ~* { '..TextEnd[2]..' '..TextEnd[3]..'}'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
https.request("https://api.telegram.org/bot"..token.."/restrictChatMember?chat_id="..msg.chat_id_.."&user_id="..result.sender_user_id_..'&until_date='..tonumber(msg.date_+Time))
end
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end


if text and text:match('^كتم (%d+) (.*) @(.*)$') and Mod(msg) then
local TextEnd = {string.match(text, "^(كتم) (%d+) (.*) @(.*)$")}
function start_function(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_," *꙳.︙؏ـمࢪيـہ ۿۧذا ࢦمـ؏ـࢪف ࢦقناۿ ستخدمِا ؏ـدل  . !*")   
return false 
end  
if TextEnd[3] == 'يوم' then
Time_Restrict = TextEnd[2]:match('(%d+)')
Time = Time_Restrict * 86400
end
if TextEnd[3] == 'ساعه' then
Time_Restrict = TextEnd[2]:match('(%d+)')
Time = Time_Restrict * 3600
end
if TextEnd[3] == 'دقيقه' then
Time_Restrict = TextEnd[2]:match('(%d+)')
Time = Time_Restrict * 60
end
TextEnd[3] = TextEnd[3]:gsub('دقيقه',"دقايق") 
TextEnd[3] = TextEnd[3]:gsub('ساعه',"ساعات") 
TextEnd[3] = TextEnd[3]:gsub("يوم","ايام") 
if RANSudoBot(result.id_) then
send(msg.chat_id_, msg.id_,"*꙳.︙متڪدٌࢪ [ تڪتمِہ .تطࢪد . تحظࢪ .تقيد  .] مطۅࢪ ࢦسۅࢪسہ ﮼ﺂو ﮼ﺂلاساسـჂ̤  .*")
return false 
end
if Can_or_NotCan(result.id_, msg.chat_id_) then
send(msg.chat_id_, msg.id_, "\n *꙳.︙متڪدٌࢪ تڪتمِہ  .* ( "..Rutba(result.id_,msg.chat_id_).." )")
else
usertext = '\n *꙳.︙اسم المستخدم -›* ['..result.title_..'](t.me/'..(username or 'GGGMG')..')'
status  = '\n*꙳.︙تمِہ ڪتمۿۧ ࢦمدۿۧ .؟ ~* { '..TextEnd[2]..' '..TextEnd[3]..'}'
texts = usertext..status
send(msg.chat_id_, msg.id_,texts)
https.request("https://api.telegram.org/bot"..token.."/restrictChatMember?chat_id="..msg.chat_id_.."&user_id="..result.id_..'&until_date='..tonumber(msg.date_+Time))
end
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = TextEnd[4]}, start_function, nil)
return false
end
if text and text:match("^كتم (%d+)$") and Mod(msg) then
local userid = text:match("^كتم (%d+)$")
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if RANSudoBot(userid) then
send(msg.chat_id_, msg.id_,"*꙳.︙متڪدٌࢪ [ تڪتمِہ .تطࢪد . تحظࢪ .تقيد  .] مطۅࢪ ࢦسۅࢪسہ ﮼ﺂو ﮼ﺂلاساسـჂ̤  .*")
return false 
end
if tonumber(userid) == tonumber(bot_id) then  
send(msg.chat_id_, msg.id_, " *꙳.︙متڪدٌࢪ تڪتمِہ ﺂࢦبۅت .* ")
return false 
end
if Can_or_NotCan(userid, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, '\n *꙳.︙متڪدٌࢪ تڪتمِہ  .* ( '..Rutba(userid,msg.chat_id_)..' )')
else
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,' *꙳.︙ﺂࢦبۅت مِہ ﮼ﺂدٌمِنہ ࢪفـ؏ـۿۧ . !*') 
return false  
end
database:sadd(bot_id..'Muted:User'..msg.chat_id_, userid)
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.first_name_ then
usertext = '\n *꙳.︙اسم المستخدم -›* ['..data.first_name_..'](t.me/'..(data.username_ or 'GGGMG')..')'
status  = '\n*꙳.︙تمِہ ڪتمۿۧ .؟*'
send(msg.chat_id_, msg.id_, usertext..status)
else
usertext = '\n *꙳.︙اسم المستخدم -›* '..userid..''
status  = '\n*꙳.︙تمِہ ڪتمۿۧ .؟*'
send(msg.chat_id_, msg.id_, usertext..status)
end;end,nil)
end
return false
end
if text == ("الغاء كتم") and msg.reply_to_message_id_ and Mod(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
database:srem(bot_id..'Muted:User'..msg.chat_id_, result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *꙳.︙اسم المستخدم -›* ['..data.first_name_..'](t.me/'..(data.username_ or 'GGGMG')..')'
status  = '\n*꙳.︙تمِہ ﮼ﺂلغاء ڪتمۿۧ .؟*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text and text:match("^الغاء كتم @(.*)$") and Mod(msg) then
local username = text:match("^الغاء كتم @(.*)$")
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
if result.id_ then
database:srem(bot_id..'Muted:User'..msg.chat_id_, result.id_)
usertext = '\n *꙳.︙اسم المستخدم -›* ['..result.title_..'](t.me/'..(username or 'GGGMG')..')'
status  = '\n*꙳.︙تمِہ ﮼ﺂلغاء ڪتمۿۧ .؟*'
texts = usertext..status
else
texts = ' *꙳.︙مـڪو ﮼حِۢـساب پۿۧل مِـ؏ـࢪف .*'
end
send(msg.chat_id_, msg.id_, texts)
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end

if text and text:match("^الغاء كتم (%d+)$") and Mod(msg) then
local userid = text:match("^الغاء كتم (%d+)$") 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:srem(bot_id..'Muted:User'..msg.chat_id_, userid)
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.first_name_ then
usertext = '\n *꙳.︙اسم المستخدم -›* ['..data.first_name_..'](t.me/'..(data.username_ or 'GGGMG')..')'
status  = '\n*꙳.︙تمِہ ﮼ﺂلغاء ڪتمۿۧ .؟*'
send(msg.chat_id_, msg.id_, usertext..status)
else
usertext = '\n *꙳.︙اسم المستخدم -›* '..userid..''
status  = '\n*꙳.︙تمِہ ﮼ﺂلغاء ڪتمۿۧ .؟*'
send(msg.chat_id_, msg.id_, usertext..status)
end;end,nil)
return false
end

if text == ("تقيد") and msg.reply_to_message_id_ and Mod(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
if RANSudoBot(result.sender_user_id_) then
send(msg.chat_id_, msg.id_,"*꙳.︙متڪدٌࢪ [ تڪتمِہ .تطࢪد . تحظࢪ .تقيد  .] مطۅࢪ ࢦسۅࢪسہ ﮼ﺂو ﮼ﺂلاساسـჂ̤  .*")
return false 
end
if tonumber(result.sender_user_id_) == tonumber(bot_id) then  
send(msg.chat_id_, msg.id_, " ꙳.︙متڪدٌࢪ تقيدٍ ﺂࢦبۅت . ")
return false 
end
if Can_or_NotCan(result.sender_user_id_, msg.chat_id_) then
send(msg.chat_id_, msg.id_, '\n *꙳.︙متڪدٌࢪ تتقيدٍ  .* ( '..Rutba(result.sender_user_id_,msg.chat_id_)..' )')
else
https.request("https://api.telegram.org/bot"..token.."/restrictChatMember?chat_id="..msg.chat_id_.."&user_id="..result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *꙳.︙اسم المستخدم -›* ['..data.first_name_..'](t.me/'..(data.username_ or 'GGGMG')..')'
status  = '\n*꙳.︙تمِہ تقيدۿۧ .*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text and text:match("^تقيد @(.*)$") and Mod(msg) then
local username = text:match("^تقيد @(.*)$")
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
if result.id_ then
if RANSudoBot(result.id_) then
send(msg.chat_id_, msg.id_,"*꙳.︙متڪدٌࢪ [ تڪتمِہ .تطࢪد . تحظࢪ .تقيد  .] مطۅࢪ ࢦسۅࢪسہ ﮼ﺂو ﮼ﺂلاساسـჂ̤  .*")
return false 
end
if tonumber(result.id_) == tonumber(bot_id) then  
send(msg.chat_id_, msg.id_, " *꙳.︙متڪدٌࢪ تقيدٍ ﺂࢦبۅت .* ")
return false 
end
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_," *꙳.︙؏ـمࢪيـہ ۿۧذا ࢦمـ؏ـࢪف ࢦقناۿ ستخدمِا ؏ـدل  . !*")   
return false 
end  
if Can_or_NotCan(result.id_, msg.chat_id_) then
send(msg.chat_id_, msg.id_, '\n *꙳.︙متڪدٌࢪ تتقيدٍ  .* ( '..Rutba(result.id_,msg.chat_id_)..' )')
return false 
end  
https.request("https://api.telegram.org/bot"..token.."/restrictChatMember?chat_id="..msg.chat_id_.."&user_id="..result.id_)
usertext = '\n *꙳.︙اسم المستخدم -›* ['..result.title_..'](t.me/'..(username or 'GGGMG')..')'
status  = '\n*꙳.︙تمِہ تقيدۿۧ .*'
texts = usertext..status
else
texts = ' *꙳.︙مـڪو ﮼حِۢـساب پۿۧل مِـ؏ـࢪف .*'
end
send(msg.chat_id_, msg.id_, texts)
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end
if text and text:match('^تقيد (%d+) (.*)$') and tonumber(msg.reply_to_message_id_) ~= 0 and Mod(msg) then
local TextEnd = {string.match(text, "^(تقيد) (%d+) (.*)$")}
function start_function(extra, result, success)
if TextEnd[3] == 'يوم' then
Time_Restrict = TextEnd[2]:match('(%d+)')
Time = Time_Restrict * 86400
end
if TextEnd[3] == 'ساعه' then
Time_Restrict = TextEnd[2]:match('(%d+)')
Time = Time_Restrict * 3600
end
if TextEnd[3] == 'دقيقه' then
Time_Restrict = TextEnd[2]:match('(%d+)')
Time = Time_Restrict * 60
end
TextEnd[3] = TextEnd[3]:gsub('دقيقه',"دقايق") 
TextEnd[3] = TextEnd[3]:gsub('ساعه',"ساعات") 
TextEnd[3] = TextEnd[3]:gsub("يوم","ايام") 
if RANSudoBot(result.sender_user_id_) then
send(msg.chat_id_, msg.id_,"*꙳.︙متڪدٌࢪ [ تڪتمِہ .تطࢪد . تحظࢪ .تقيد  .] مطۅࢪ ࢦسۅࢪسہ ﮼ﺂو ﮼ﺂلاساسـჂ̤  .*")
return false 
end
if Can_or_NotCan(result.sender_user_id_, msg.chat_id_) then
send(msg.chat_id_, msg.id_, "\n *꙳.︙متڪدٌࢪ تتقيدٍ  .* ( "..Rutba(result.sender_user_id_,msg.chat_id_).." )")
else
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *꙳.︙اسم المستخدم -›* ['..data.first_name_..'](t.me/'..(data.username_ or 'GGGMG')..')'
status  = '\n*꙳.︙تمِہ تقيدۿۧ ࢦمدِۿۧ . ~* { '..TextEnd[2]..' '..TextEnd[3]..'}'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
https.request("https://api.telegram.org/bot"..token.."/restrictChatMember?chat_id="..msg.chat_id_.."&user_id="..result.sender_user_id_..'&until_date='..tonumber(msg.date_+Time))
end
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text and text:match('^تقيد (%d+) (.*) @(.*)$') and Mod(msg) then
local TextEnd = {string.match(text, "^(تقيد) (%d+) (.*) @(.*)$")}
function start_function(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_," *꙳.︙؏ـمࢪيـہ ۿۧذا ࢦمـ؏ـࢪف ࢦقناۿ ستخدمِا ؏ـدل  . !*")   
return false 
end  
if TextEnd[3] == 'يوم' then
Time_Restrict = TextEnd[2]:match('(%d+)')
Time = Time_Restrict * 86400
end
if TextEnd[3] == 'ساعه' then
Time_Restrict = TextEnd[2]:match('(%d+)')
Time = Time_Restrict * 3600
end
if TextEnd[3] == 'دقيقه' then
Time_Restrict = TextEnd[2]:match('(%d+)')
Time = Time_Restrict * 60
end
TextEnd[3] = TextEnd[3]:gsub('دقيقه',"دقايق") 
TextEnd[3] = TextEnd[3]:gsub('ساعه',"ساعات") 
TextEnd[3] = TextEnd[3]:gsub("يوم","ايام") 
if RANSudoBot(result.id_) then
send(msg.chat_id_, msg.id_,"*꙳.︙متڪدٌࢪ [ تڪتمِہ .تطࢪد . تحظࢪ .تقيد  .] مطۅࢪ ࢦسۅࢪسہ ﮼ﺂو ﮼ﺂلاساسـჂ̤  .*")
return false 
end
if Can_or_NotCan(result.id_, msg.chat_id_) then
send(msg.chat_id_, msg.id_, "\n *꙳.︙متڪدٌࢪ تتقيدٍ  .* ( "..Rutba(result.id_,msg.chat_id_).." )")
else
usertext = '\n *꙳.︙اسم المستخدم -›* ['..result.title_..'](t.me/'..(username or 'GGGMG')..')'
status  = '\n*꙳.︙تمِہ تقيدۿۧ ࢦمدِۿۧ . ~* { '..TextEnd[2]..' '..TextEnd[3]..'}'
texts = usertext..status
send(msg.chat_id_, msg.id_,texts)
https.request("https://api.telegram.org/bot"..token.."/restrictChatMember?chat_id="..msg.chat_id_.."&user_id="..result.id_..'&until_date='..tonumber(msg.date_+Time))
end
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = TextEnd[4]}, start_function, nil)
return false
end
------------------------------------------------------------------------
if text and text:match("^تقيد (%d+)$") and Mod(msg) then
local userid = text:match("^تقيد (%d+)$")
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if RANSudoBot(userid) then
send(msg.chat_id_, msg.id_,"*꙳.︙متڪدٌࢪ [ تڪتمِہ .تطࢪد . تحظࢪ .تقيد  .] مطۅࢪ ࢦسۅࢪسہ ﮼ﺂو ﮼ﺂلاساسـჂ̤  .*")
return false 
end
if tonumber(userid) == tonumber(bot_id) then  
send(msg.chat_id_, msg.id_, " *꙳.︙متڪدٌࢪ تقيدٍ ﺂࢦبۅت .* ")
return false 
end
if Can_or_NotCan(userid, msg.chat_id_) then
send(msg.chat_id_, msg.id_, '\n *꙳.︙متڪدٌࢪ تتقيدٍ  .* ( '..Rutba(userid,msg.chat_id_)..' )')
else
https.request("https://api.telegram.org/bot" .. token .. "/restrictChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..userid)
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.first_name_ then
usertext = '\n *꙳.︙اسم المستخدم -›* ['..data.first_name_..'](t.me/'..(data.username_ or 'GGGMG')..')'
status  = '\n*꙳.︙تمِہ تقيدۿۧ .*'
send(msg.chat_id_, msg.id_, usertext..status)
else
usertext = '\n *꙳.︙اسم المستخدم -›* '..userid..''
status  = '\n*꙳.︙تمِہ تقيدۿۧ .*'
send(msg.chat_id_, msg.id_, usertext..status)
end;end,nil)
end
return false
end
------------------------------------------------------------------------
if text == ("الغاء تقيد") and msg.reply_to_message_id_ and Mod(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
https.request("https://api.telegram.org/bot" .. token .. "/restrictChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" .. result.sender_user_id_ .. "&can_send_messages=True&can_send_media_messages=True&can_send_other_messages=True&can_add_web_page_previews=True")
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *꙳.︙اسم المستخدم -›* ['..data.first_name_..'](t.me/'..(data.username_ or 'GGGMG')..')'
status  = '\n*꙳.︙تمِہ ﮼ﺂلغاء تقيدٌ .؟*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
------------------------------------------------------------------------
if text and text:match("^الغاء تقيد @(.*)$") and Mod(msg) then
local username = text:match("^الغاء تقيد @(.*)$")
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
if result.id_ then
https.request("https://api.telegram.org/bot" .. token .. "/restrictChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" .. result.id_ .. "&can_send_messages=True&can_send_media_messages=True&can_send_other_messages=True&can_add_web_page_previews=True")
usertext = '\n *꙳.︙اسم المستخدم -›* ['..result.title_..'](t.me/'..(username or 'GGGMG')..')'
status  = '\n*꙳.︙تمِہ ﮼ﺂلغاء تقيدٌ .؟*'
texts = usertext..status
else
texts = ' *꙳.︙مـڪو ﮼حِۢـساب پۿۧل مِـ؏ـࢪف .*'
end
send(msg.chat_id_, msg.id_, texts)
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end
------------------------------------------------------------------------
if text and text:match("^الغاء تقيد (%d+)$") and Mod(msg) then
local userid = text:match("^الغاء تقيد (%d+)$")
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
https.request("https://api.telegram.org/bot" .. token .. "/restrictChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..userid.. "&can_send_messages=True&can_send_media_messages=True&can_send_other_messages=True&can_add_web_page_previews=True")
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
if data.first_name_ then
usertext = '\n *꙳.︙اسم المستخدم -›* ['..data.first_name_..'](t.me/'..(data.username_ or 'GGGMG')..')'
status  = '\n*꙳.︙تمِہ ﮼ﺂلغاء تقيدٌ .؟*'
send(msg.chat_id_, msg.id_, usertext..status)
else
usertext = '\n *꙳.︙اسم المستخدم -›* '..userid..''
status  = '\n*꙳.︙تمِہ ﮼ﺂلغاء تقيدٌ .؟*'
send(msg.chat_id_, msg.id_, usertext..status)
end;end,nil)
return false
end
if text and text:match('^رفع القيود @(.*)') and Manager(msg) then 
local username = text:match('^رفع القيود @(.*)') 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
if result.id_ then
if DevRANW(msg) then
database:srem(bot_id..'GBan:User',result.id_)
database:srem(bot_id..'Ban:User'..msg.chat_id_,result.id_)
database:srem(bot_id..'Muted:User'..msg.chat_id_,result.id_)
database:srem(bot_id..'Gmute:User'..msg.chat_id_,result.id_)
usertext = '\n *꙳.︙اسم المستخدم -›* ['..result.title_..'](t.me/'..(username or 'GGGMG')..')'
status  = '\n*꙳.︙تمِہ  ࢪفـ؏ چميـ؏ ؏ـنه  .*'
texts = usertext..status
send(msg.chat_id_, msg.id_,texts)
else
database:srem(bot_id..'Ban:User'..msg.chat_id_,result.id_)
database:srem(bot_id..'Muted:User'..msg.chat_id_,result.id_)
usertext = '\n *꙳.︙اسم المستخدم -›* ['..result.title_..'](t.me/'..(username or 'GGGMG')..')'
status  = '\n*꙳.︙تمِہ  ࢪفـ؏ چميـ؏ ؏ـنه  .*'
texts = usertext..status
send(msg.chat_id_, msg.id_,texts)
end
else
Text = ' *꙳.︙ࢦمـ؏ـࢪف غلطٌ  .*'
send(msg.chat_id_, msg.id_,Text)
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
end
if text == "رفع القيود" and Manager(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
if DevRANW(msg) then
database:srem(bot_id..'GBan:User',result.sender_user_id_)
database:srem(bot_id..'Ban:User'..msg.chat_id_,result.sender_user_id_)
database:srem(bot_id..'Muted:User'..msg.chat_id_,result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *꙳.︙اسم المستخدم -›* ['..data.first_name_..'](t.me/'..(data.username_ or 'GGGMG')..')'
status  = '\n*꙳.︙تمِہ  ࢪفـ؏ چميـ؏ ؏ـنه  .*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
else
database:srem(bot_id..'Ban:User'..msg.chat_id_,result.sender_user_id_)
database:srem(bot_id..'Muted:User'..msg.chat_id_,result.sender_user_id_)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *꙳.︙اسم المستخدم -›* ['..data.first_name_..'](t.me/'..(data.username_ or 'GGGMG')..')'
status  = '\n*꙳.︙تمِہ  ࢪفـ؏ چميـ؏ ؏ـنه  .*'
send(msg.chat_id_, msg.id_, usertext..status)
end,nil)
end
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
end
if text and text:match('^كشف القيود @(.*)') and Manager(msg) then 
local username = text:match('^كشف القيود @(.*)') 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
if result.id_ then
if database:sismember(bot_id..'Muted:User'..msg.chat_id_,result.id_) then
Muted = 'مكتوم'
else
Muted = 'غير مكتوم'
end
if database:sismember(bot_id..'Ban:User'..msg.chat_id_,result.id_) then
Ban = 'محظور'
else
Ban = 'غير محظور'
end
if database:sismember(bot_id..'GBan:User',result.id_) then
GBan = 'محظور عام'
else
GBan = 'غير محظور عام'
end
Textt = " *꙳.︙الحظر العام » "..GBan.."*\n*꙳.︙الحظر » "..Ban.."*\n*꙳.︙الكتم » "..Muted.."*"
send(msg.chat_id_, msg.id_,Textt)
else
Text = ' *꙳.︙ࢦمـ؏ـࢪف غلطٌ  .*'
send(msg.chat_id_, msg.id_,Text)
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
end

if text == "كشف القيود" and Manager(msg) then 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
if database:sismember(bot_id..'Muted:User'..msg.chat_id_,result.sender_user_id_) then
Muted = 'مكتوم'
else
Muted = 'غير مكتوم'
end
if database:sismember(bot_id..'Ban:User'..msg.chat_id_,result.sender_user_id_) then
Ban = 'محظور'
else
Ban = 'غير محظور'
end
if database:sismember(bot_id..'GBan:User',result.sender_user_id_) then
GBan = 'محظور عام'
else
GBan = 'غير محظور عام'
end
if database:sismember(bot_id..'Gmute:User',result.sender_user_id_) then
Gmute = 'محظور عام'
else
Gmute = 'غير محظور عام'
end
Textt = " *꙳.︙الحظر العام » "..GBan.."*\n*꙳.︙الكتم العام » "..Gmute.."*\n*꙳.︙الحظر » "..Ban.."*\n*꙳.︙الكتم » "..Muted.."*"
send(msg.chat_id_, msg.id_,Textt)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
end
if text == ("رفع مشرف") and msg.reply_to_message_id_ ~= 0 and Constructor(msg) then
function start_function(extra, result, success)
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,' *꙳.︙ﺂࢦبۅت مِہ ﮼ﺂدٌمِنہ ࢪفـ؏ـۿۧ . !*') 
return false  
end
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *꙳.︙اسم المستخدم -›* ['..data.first_name_..'](t.me/'..(data.username_ or 'GGGMG')..')'
status  = '\n*꙳.︙ ﺂࢦايدي »* `'..result.sender_user_id_..'`\n*꙳.︙ تمِہ ࢪفـ؏ـۿۧ مشࢪف .* '
send(msg.chat_id_, msg.id_, usertext..status)
https.request("https://api.telegram.org/bot"..token.."/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.sender_user_id_.."&can_change_info=false&can_delete_messages=false&can_invite_users=True&can_restrict_members=false&can_pin_messages=True&can_promote_members=false")
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text and text:match("^رفع مشرف @(.*)$") and Constructor(msg) then
local username = text:match("^رفع مشرف @(.*)$")
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,' *꙳.︙ﺂࢦبۅت مِہ ﮼ﺂدٌمِنہ ࢪفـ؏ـۿۧ . !*') 
return false  
end
function start_function(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_," *꙳.︙ ؏ـمࢪيـہ ۿۧذا ࢦمـ؏ـࢪف ࢦقناۿ ستخدمِا ؏ـدل  . !*")   
return false 
end  
usertext = '\n *꙳.︙اسم المستخدم -›* ['..result.title_..'](t.me/'..(username or 'GGGMG')..')'
status  = '\n*꙳.︙ تمِہ ࢪفـ؏ـۿۧ مشࢪف .* '
texts = usertext..status
send(msg.chat_id_, msg.id_, texts)
https.request("https://api.telegram.org/bot"..token.."/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.id_.."&can_change_info=false&can_delete_messages=false&can_invite_users=True&can_restrict_members=false&can_pin_messages=True&can_promote_members=false")
else
send(msg.chat_id_, msg.id_, ' *꙳.︙ مـڪو ﮼حِۢـساب پۿۧل مِـ؏ـࢪف .*')
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end
if text == ("تنزيل مشرف") and msg.reply_to_message_id_ ~= 0 and Constructor(msg) then
function start_function(extra, result, success)
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,' *꙳.︙ﺂࢦبۅت مِہ ﮼ﺂدٌمِنہ ࢪفـ؏ـۿۧ . !*') 
return false  
end
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *꙳.︙اسم المستخدم -›* ['..data.first_name_..'](t.me/'..(data.username_ or 'GGGMG')..')'
status  = '\n*꙳.︙ ﺂࢦايدي »* `'..result.sender_user_id_..'`\n*꙳.︙ تمِہ تنࢪ࣪يࢦۿۧ ﮼ﺂدمِنہ مِہטּ ࢦڪࢪۅپ .*'
send(msg.chat_id_, msg.id_, usertext..status)
https.request("https://api.telegram.org/bot"..token.."/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.sender_user_id_.."&can_change_info=false&can_delete_messages=false&can_invite_users=false&can_restrict_members=false&can_pin_messages=false&can_promote_members=false")
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text and text:match("^تنزيل مشرف @(.*)$") and Constructor(msg) then
local username = text:match("^تنزيل مشرف @(.*)$")
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,' *꙳.︙ﺂࢦبۅت مِہ ﮼ﺂدٌمِنہ ࢪفـ؏ـۿۧ . !*') 
return false  
end
function start_function(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_," ꙳.︙ ؏ـمࢪيـہ ۿۧذا ࢦمـ؏ـࢪف ࢦقناۿ ستخدمِا ؏ـدل  . !")   
return false 
end  
usertext = '\n *꙳.︙اسم المستخدم -›* ['..result.title_..'](t.me/'..(username or 'GGGMG')..')'
status  = '\n*꙳.︙ تمِہ تنࢪ࣪يࢦۿۧ ﮼ﺂدمِنہ مِہטּ ࢦڪࢪۅپ .*'
texts = usertext..status
send(msg.chat_id_, msg.id_, texts)
https.request("https://api.telegram.org/bot"..token.."/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.id_.."&can_change_info=false&can_delete_messages=false&can_invite_users=false&can_restrict_members=false&can_pin_messages=false&can_promote_members=false")
else
send(msg.chat_id_, msg.id_, '*꙳.︙مـڪو ﮼حِۢـساب پۿۧل مِـ؏ـࢪف .*')
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end


if text == ("رفع ادمن بكل الصلاحيات") and msg.reply_to_message_id_ ~= 0 and BasicConstructor(msg) then
function start_function(extra, result, success)
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,' *꙳.︙ﺂࢦبۅت مِہ ﮼ﺂدٌمِنہ ࢪفـ؏ـۿۧ . !*') 
return false  
end
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *꙳.︙اسم المستخدم -›* ['..data.first_name_..'](t.me/'..(data.username_ or 'GGGMG')..')'
status  = '\n*꙳.︙ﺂࢦايدي »* '..result.sender_user_id_..'\n*꙳.︙ تمِہ  ࢪفـ؏ـۿۧ مشࢪف بلڪٰٖࢦ ﮼ﺂࢦصلاحيات   .*'
send(msg.chat_id_, msg.id_, usertext..status)
https.request("https://api.telegram.org/bot"..token.."/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.sender_user_id_.."&can_change_info=True&can_delete_messages=True&can_invite_users=True&can_restrict_members=True&can_pin_messages=True&can_promote_members=True")
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text and text:match("^رفع ادمن بكل الصلاحيات @(.*)$") and BasicConstructor(msg) then
local username = text:match("^تمِہ تنࢪ࣪يࢦۿۧ ﮼ﺂدمِنہ مِہטּ ࢦڪࢪۅپ . @(.*)$")
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,' *꙳.︙ﺂࢦبۅت مِہ ﮼ﺂدٌمِنہ ࢪفـ؏ـۿۧ . !*') 
return false  
end
function start_function(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_," *꙳.︙ ؏ـمࢪيـہ ۿۧذا ࢦمـ؏ـࢪف ࢦقناۿ ستخدمِا ؏ـدل  . !*")   
return false 
end  
usertext = '\n *꙳.︙اسم المستخدم -›* ['..result.title_..'](t.me/'..(username or 'GGGMG')..')'
status  = '\n*꙳.︙ تمِہ  ࢪفـ؏ـۿۧ مشࢪف بلڪٰٖࢦ ﮼ﺂࢦصلاحيات   .*'
texts = usertext..status
send(msg.chat_id_, msg.id_, texts)
https.request("https://api.telegram.org/bot"..token.."/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.id_.."&can_change_info=True&can_delete_messages=True&can_invite_users=True&can_restrict_members=True&can_pin_messages=True&can_promote_members=True")
else
send(msg.chat_id_, msg.id_, ' *꙳.︙ مـڪو ﮼حِۢـساب پۿۧل مِـ؏ـࢪف .*')
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end
if text == ("تنزيل ادمن بكل الصلاحيات") and msg.reply_to_message_id_ ~= 0 and BasicConstructor(msg) then
function start_function(extra, result, success)
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,' *꙳.︙ﺂࢦبۅت مِہ ﮼ﺂدٌمِنہ ࢪفـ؏ـۿۧ . !*') 
return false  
end
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n *꙳.︙اسم المستخدم -›* ['..data.first_name_..'](t.me/'..(data.username_ or 'GGGMG')..')'
status  = '\n*꙳.︙ ﺂࢦايدي »* '..result.sender_user_id_..'\n*꙳.︙ تمِہ تنࢪ࣪يࢦۿۧ ﮼ﺂدمِنہ مِہטּ ࢦڪࢪۅپ بڪٰٖࢦ ࢦصلاحيات .*'
send(msg.chat_id_, msg.id_, usertext..status)
https.request("https://api.telegram.org/bot"..token.."/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.sender_user_id_.."&can_change_info=false&can_delete_messages=false&can_invite_users=false&can_restrict_members=false&can_pin_messages=false&can_promote_members=false")
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text and text:match("^تنزيل ادمن بكل الصلاحيات @(.*)$") and BasicConstructor(msg) then
local username = text:match("^تنزيل ادمن بكل الصلاحيات @(.*)$")
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,' *꙳.︙ﺂࢦبۅت مِہ ﮼ﺂدٌمِنہ ࢪفـ؏ـۿۧ . !*') 
return false  
end
function start_function(extra, result, success)
if result.id_ then
if (result and result.type_ and result.type_.ID == "ChannelChatInfo") then
send(msg.chat_id_,msg.id_,"*꙳.︙؏ـمࢪيـہ ۿۧذا ࢦمـ؏ـࢪف ࢦقناۿ ستخدمِا ؏ـدل  . !*")   
return false 
end  
usertext = '\n *꙳.︙اسم المستخدم -› ['..result.title_..'](t.me/'..(username or 'GGGMG')..')'
status  = '\n*꙳.︙ تمِہ تنࢪ࣪يࢦۿۧ ﮼ﺂدمِنہ مِہטּ ࢦڪࢪۅپ بڪٰٖࢦ ࢦصلاحيات .*'
texts = usertext..status
send(msg.chat_id_, msg.id_, texts)
https.request("https://api.telegram.org/bot"..token.."/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.id_.."&can_change_info=false&can_delete_messages=false&can_invite_users=false&can_restrict_members=false&can_pin_messages=false&can_promote_members=false")
else
send(msg.chat_id_, msg.id_, ' *꙳.︙ مـڪو ﮼حِۢـساب پۿۧل مِـ؏ـࢪف .*')
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
return false
end
if text == 'اعدادات الكروب' and Mod(msg) then
if database:get(bot_id..'lockpin'..msg.chat_id_) then
lock_pin = '✓'
else 
lock_pin = '✘'
end
if database:get(bot_id..'lock:tagservr'..msg.chat_id_) then
lock_tagservr = '✓'
else 
lock_tagservr = '✘'
end
if database:get(bot_id..'lock:text'..msg.chat_id_) then
lock_text = '✓'
else 
lock_text = '✘'
end
if database:get(bot_id.."lock:AddMempar"..msg.chat_id_) == 'kick' then
lock_add = '✓'
else 
lock_add = '✘'
end
if database:get(bot_id.."lock:Join"..msg.chat_id_) == 'kick' then
lock_join = '✓'
else 
lock_join = '✘'
end
if database:get(bot_id..'lock:edit'..msg.chat_id_) then
lock_edit = '✓'
else 
lock_edit = '✘'
end
print(welcome)
if database:get(bot_id..'Get:Welcome:Group'..msg.chat_id_) then
welcome = '✓'
else 
welcome = '✘'
end
if database:get(bot_id..'lock:edit'..msg.chat_id_) then
lock_edit_med = '✓'
else 
lock_edit_med = '✘'
end
if database:hget(bot_id.."flooding:settings:"..msg.chat_id_, "flood") == "kick" then 
flood = 'بالطرد' 
elseif database:hget(bot_id.."flooding:settings:"..msg.chat_id_,"flood") == "keed" then 
flood = 'بالتقيد' 
elseif database:hget(bot_id.."flooding:settings:"..msg.chat_id_,"flood") == "mute" then 
flood = 'بالكتم'   
elseif database:hget(bot_id.."flooding:settings:"..msg.chat_id_,"flood") == "del" then 
flood = 'بالمسح'   
else 
flood = '✘' 
end
if database:get(bot_id.."lock:Photo"..msg.chat_id_) == "del" then
lock_photo = '✓' 
elseif database:get(bot_id.."lock:Photo"..msg.chat_id_) == "ked" then 
lock_photo = 'بالتقيد'   
elseif database:get(bot_id.."lock:Photo"..msg.chat_id_) == "ktm" then 
lock_photo = 'بالكتم'
elseif database:get(bot_id.."lock:Photo"..msg.chat_id_) == "kick" then 
lock_photo = 'بالطرد'   
else
lock_photo = '✘'   
end
if database:get(bot_id.."lock:Contact"..msg.chat_id_) == "del" then
lock_phon = '✓' 
elseif database:get(bot_id.."lock:Contact"..msg.chat_id_) == "ked" then 
lock_phon = 'بالتقيد'
elseif database:get(bot_id.."lock:Contact"..msg.chat_id_) == "ktm" then 
lock_phon = 'بالكتم'
elseif database:get(bot_id.."lock:Contact"..msg.chat_id_) == "kick" then 
lock_phon = 'بالطرد'
else
lock_phon = '✘'
end
if database:get(bot_id.."lock:Link"..msg.chat_id_) == "del" then
lock_links = '✓'
elseif database:get(bot_id.."lock:Link"..msg.chat_id_) == "ked" then
lock_links = 'بالتقيد'
elseif database:get(bot_id.."lock:Link"..msg.chat_id_) == "ktm" then
lock_links = 'بالكتم'
elseif database:get(bot_id.."lock:Link"..msg.chat_id_) == "kick" then
lock_links = 'بالطرد'
else
lock_links = '✘'
end
if database:get(bot_id.."lock:Cmd"..msg.chat_id_) == "del" then
lock_cmds = '✓'
elseif database:get(bot_id.."lock:Cmd"..msg.chat_id_) == "ked" then
lock_cmds = 'بالتقيد'
elseif database:get(bot_id.."lock:Cmd"..msg.chat_id_) == "ktm" then
lock_cmds = 'بالكتم'   
elseif database:get(bot_id.."lock:Cmd"..msg.chat_id_) == "kick" then
lock_cmds = 'بالطرد'
else
lock_cmds = '✘'
end
if database:get(bot_id.."lock:user:name"..msg.chat_id_) == "del" then
lock_user = '✓'
elseif database:get(bot_id.."lock:user:name"..msg.chat_id_) == "ked" then
lock_user = 'بالتقيد'
elseif database:get(bot_id.."lock:user:name"..msg.chat_id_) == "ktm" then
lock_user = 'بالكتم'
elseif database:get(bot_id.."lock:user:name"..msg.chat_id_) == "kick" then
lock_user = 'بالطرد'
else
lock_user = '✘'
end
if database:get(bot_id.."lock:hashtak"..msg.chat_id_) == "del" then
lock_hash = '✓'
elseif database:get(bot_id.."lock:hashtak"..msg.chat_id_) == "ked" then 
lock_hash = 'بالتقيد'
elseif database:get(bot_id.."lock:hashtak"..msg.chat_id_) == "ktm" then 
lock_hash = 'بالكتم'
elseif database:get(bot_id.."lock:hashtak"..msg.chat_id_) == "kick" then 
lock_hash = 'بالطرد'
else
lock_hash = '✘'
end
if database:get(bot_id.."lock:vico"..msg.chat_id_) == "del" then
lock_muse = '✓'
elseif database:get(bot_id.."lock:vico"..msg.chat_id_) == "ked" then 
lock_muse = 'بالتقيد'
elseif database:get(bot_id.."lock:vico"..msg.chat_id_) == "ktm" then 
lock_muse = 'بالكتم'
elseif database:get(bot_id.."lock:vico"..msg.chat_id_) == "kick" then 
lock_muse = 'بالطرد'
else
lock_muse = '✘'
end 
if database:get(bot_id.."lock:Video"..msg.chat_id_) == "del" then
lock_ved = '✓'
elseif database:get(bot_id.."lock:Video"..msg.chat_id_) == "ked" then 
lock_ved = 'بالتقيد'
elseif database:get(bot_id.."lock:Video"..msg.chat_id_) == "ktm" then 
lock_ved = 'بالكتم'
elseif database:get(bot_id.."lock:Video"..msg.chat_id_) == "kick" then 
lock_ved = 'بالطرد'
else
lock_ved = '✘'
end
if database:get(bot_id.."lock:Animation"..msg.chat_id_) == "del" then
lock_gif = '✓'
elseif database:get(bot_id.."lock:Animation"..msg.chat_id_) == "ked" then 
lock_gif = 'بالتقيد'
elseif database:get(bot_id.."lock:Animation"..msg.chat_id_) == "ktm" then 
lock_gif = 'بالكتم'
elseif database:get(bot_id.."lock:Animation"..msg.chat_id_) == "kick" then 
lock_gif = 'بالطرد'
else
lock_gif = '✘'
end
if database:get(bot_id.."lock:Sticker"..msg.chat_id_) == "del" then
lock_ste = '✓'
elseif database:get(bot_id.."lock:Sticker"..msg.chat_id_) == "ked" then 
lock_ste = 'بالتقيد'
elseif database:get(bot_id.."lock:Sticker"..msg.chat_id_) == "ktm" then 
lock_ste = 'بالكتم'
elseif database:get(bot_id.."lock:Sticker"..msg.chat_id_) == "kick" then 
lock_ste = 'بالطرد'
else
lock_ste = '✘'
end
if database:get(bot_id.."lock:geam"..msg.chat_id_) == "del" then
lock_geam = '✓'
elseif database:get(bot_id.."lock:geam"..msg.chat_id_) == "ked" then 
lock_geam = 'بالتقيد'
elseif database:get(bot_id.."lock:geam"..msg.chat_id_) == "ktm" then 
lock_geam = 'بالكتم'
elseif database:get(bot_id.."lock:geam"..msg.chat_id_) == "kick" then 
lock_geam = 'بالطرد'
else
lock_geam = '✘'
end
if database:get(bot_id.."lock:vico"..msg.chat_id_) == "del" then
lock_vico = '✓'
elseif database:get(bot_id.."lock:vico"..msg.chat_id_) == "ked" then 
lock_vico = 'بالتقيد'
elseif database:get(bot_id.."lock:vico"..msg.chat_id_) == "ktm" then 
lock_vico = 'بالكتم'
elseif database:get(bot_id.."lock:vico"..msg.chat_id_) == "kick" then 
lock_vico = 'بالطرد'
else
lock_vico = '✘'
end
if database:get(bot_id.."lock:Keyboard"..msg.chat_id_) == "del" then
lock_inlin = '✓'
elseif database:get(bot_id.."lock:Keyboard"..msg.chat_id_) == "ked" then 
lock_inlin = 'بالتقيد'
elseif database:get(bot_id.."lock:Keyboard"..msg.chat_id_) == "ktm" then 
lock_inlin = 'بالكتم'
elseif database:get(bot_id.."lock:Keyboard"..msg.chat_id_) == "kick" then 
lock_inlin = 'بالطرد'
else
lock_inlin = '✘'
end
if database:get(bot_id.."lock:forward"..msg.chat_id_) == "del" then
lock_fwd = '✓'
elseif database:get(bot_id.."lock:forward"..msg.chat_id_) == "ked" then 
lock_fwd = 'بالتقيد'
elseif database:get(bot_id.."lock:forward"..msg.chat_id_) == "ktm" then 
lock_fwd = 'بالكتم'
elseif database:get(bot_id.."lock:forward"..msg.chat_id_) == "kick" then 
lock_fwd = 'بالطرد'
else
lock_fwd = '✘'
end
if database:get(bot_id.."lock:Document"..msg.chat_id_) == "del" then
lock_file = '✓'
elseif database:get(bot_id.."lock:Document"..msg.chat_id_) == "ked" then 
lock_file = 'بالتقيد'
elseif database:get(bot_id.."lock:Document"..msg.chat_id_) == "ktm" then 
lock_file = 'بالكتم'
elseif database:get(bot_id.."lock:Document"..msg.chat_id_) == "kick" then 
lock_file = 'بالطرد'
else
lock_file = '✘'
end
if database:get(bot_id.."lock:Unsupported"..msg.chat_id_) == "del" then
lock_self = '✓'
elseif database:get(bot_id.."lock:Unsupported"..msg.chat_id_) == "ked" then 
lock_self = 'بالتقيد'
elseif database:get(bot_id.."lock:Unsupported"..msg.chat_id_) == "ktm" then 
lock_self = 'بالكتم'
elseif database:get(bot_id.."lock:Unsupported"..msg.chat_id_) == "kick" then 
lock_self = 'بالطرد'
else
lock_self = '✘'
end
if database:get(bot_id.."lock:Bot:kick"..msg.chat_id_) == 'del' then
lock_bots = '✓'
elseif database:get(bot_id.."lock:Bot:kick"..msg.chat_id_) == 'ked' then
lock_bots = 'بالتقيد'   
elseif database:get(bot_id.."lock:Bot:kick"..msg.chat_id_) == 'kick' then
lock_bots = 'بالطرد'
else
lock_bots = '✘'
end
if database:get(bot_id.."lock:Markdaun"..msg.chat_id_) == "del" then
lock_mark = '✓'
elseif database:get(bot_id.."lock:Markdaun"..msg.chat_id_) == "ked" then 
lock_mark = 'بالتقيد'
elseif database:get(bot_id.."lock:Markdaun"..msg.chat_id_) == "ktm" then 
lock_mark = 'بالكتم'
elseif database:get(bot_id.."lock:Markdaun"..msg.chat_id_) == "kick" then 
lock_mark = 'بالطرد'
else
lock_mark = '✘'
end
if database:get(bot_id.."lock:Spam"..msg.chat_id_) == "del" then
lock_spam = '✓'
elseif database:get(bot_id.."lock:Spam"..msg.chat_id_) == "ked" then 
lock_spam = 'بالتقيد'
elseif database:get(bot_id.."lock:Spam"..msg.chat_id_) == "ktm" then 
lock_spam = 'بالكتم'
elseif database:get(bot_id.."lock:Spam"..msg.chat_id_) == "kick" then 
lock_spam = 'بالطرد'
else
lock_spam = '✘'
end
if not database:get(bot_id..'Reply:Manager'..msg.chat_id_) then
rdmder = '✓'
else
rdmder = '✘'
end
if not database:get(bot_id..'Reply:Sudo'..msg.chat_id_) then
rdsudo = '✓'
else
rdsudo = '✘'
end
if not database:get(bot_id..'Bot:Id'..msg.chat_id_)  then
idgp = '✓'
else
idgp = '✘'
end
if not database:get(bot_id..'Bot:Id:Photo'..msg.chat_id_) then
idph = '✓'
else
idph = '✘'
end
if not database:get(bot_id..'Lock:kick'..msg.chat_id_)  then
setadd = '✓'
else
setadd = '✘'
end
if not database:get(bot_id..'Lock:Add:Bot'..msg.chat_id_)  then
banm = '✓'
else
banm = '✘'
end
if not database:get(bot_id..'Added:Me'..msg.chat_id_) then
addme = '✓'
else
addme = '✘'
end
if not database:get(bot_id..'Seh:User'..msg.chat_id_) then
sehuser = '✓'
else
sehuser = '✘'
end
if not database:get(bot_id..'Cick:Me'..msg.chat_id_) then
kickme = '✓'
else
kickme = '✘'
end
NUM_MSG_MAX = database:hget(bot_id.."flooding:settings:"..msg.chat_id_,"floodmax") or 0
local text = 
'\n *꙳.︙اعدادات الكروب كتالي √↓*'..
'\n﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎ٴ'..
'\n*꙳.︙ علامة ال {✓} تعني معطل*'..
'\n*꙳.︙ علامة ال {✘} تعني مفعل*'..
'\n﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎ٴ'..
'\n*꙳.︙ الروابط »* { '..lock_links..
' }\n'..'*꙳.︙ المعرفات »* { '..lock_user..
' }\n'..'*꙳.︙ التاك »* { '..lock_hash..
' }\n'..'*꙳.︙ البوتات »* { '..lock_bots..
' }\n'..'*꙳.︙ التوجيه »* { '..lock_fwd..
' }\n'..'*꙳.︙ التثبيت »* { '..lock_pin..
' }\n'..'*꙳.︙ الاشعارات »* { '..lock_tagservr..
' }\n'..'*꙳.︙ الماركدون »* { '..lock_mark..
' }\n'..'*꙳.︙ التعديل »* { '..lock_edit..
' }\n'..'*꙳.︙ تعديل الميديا »* { '..lock_edit_med..
' }\n﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎ٴ'..
'\n'..'*꙳.︙ الكلايش »* { '..lock_spam..
' }\n'..'*꙳.︙ الكيبورد »* { '..lock_inlin..
' }\n'..'*꙳.︙ الاغاني »* { '..lock_vico..
' }\n'..'*꙳.︙ المتحركه »* { '..lock_gif..
' }\n'..'*꙳.︙ الملفات »* { '..lock_file..
' }\n'..'*꙳.︙ الدردشه »* { '..lock_text..
' }\n'..'*꙳.︙  الفيديو »* { '..lock_ved..
' }\n'..'*꙳.︙  الصور »* { '..lock_photo..
' }\n﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎ٴ'..
'\n'..'*꙳.︙  الصوت »* { '..lock_muse..
' }\n'..'*꙳.︙ الملصقات »* { '..lock_ste..
' }\n'..'*꙳.︙ الجهات »* { '..lock_phon..
' }\n'..'*꙳.︙ الدخول »* { '..lock_join..
' }\n'..'*꙳.︙ الاضافه »* { '..lock_add..
' }\n'..'*꙳.︙ السيلفي »* { '..lock_self..
' }\n'..'*꙳.︙ الالعاب »* { '..lock_geam..
' }\n'..'*꙳.︙ التكرار »* { '..flood..
' }\n'..'*꙳.︙ الترحيب »* { '..welcome..
' }\n'..'*꙳.︙ عدد التكرار »* { '..NUM_MSG_MAX..
' }\n﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎ٴ'..
'\n*꙳.︙ علامة ال {✓} تعني مفعل*'..
'\n*꙳.︙ علامة ال {✘} تعني معطل*'..
'\n﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎ٴ'..
'\n'..'*꙳.︙ امر صيح »* { '..kickme..
' }\n'..'*꙳.︙ امر اطردني »* { '..sehuser..
' }\n'..'*꙳.︙ امر منو ضافني »* { '..addme..
' }\n'..'*꙳.︙ ردود المدير »* { '..rdmder..
' }\n'..'*꙳.︙ ردود المطور »* { '..rdsudo..
' }\n'..'*꙳.︙ ﺂࢦايدي »* { '..idgp..
' }\n'..'*꙳.︙ الايدي بالصوره »* { '..idph..
' }\n'..'*꙳.︙ الرفع »* { '..setadd..
' }\n'..'*꙳.︙ الحظر »* { '..banm..' }\n\n﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎\n *꙳.︙ CH » @GGGMG*\n'
send(msg.chat_id_, msg.id_,text) 
end
if text ==('تثبيت') and msg.reply_to_message_id_ ~= 0 and Mod(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if database:sismember(bot_id..'lock:pin',msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_,msg.id_," *꙳.︙مقفۅࢦ ࢦتثبيت ؏ـمࢪيـہ  .*")  
return false  
end
tdcli_function ({ID = "PinChannelMessage",channel_id_ = msg.chat_id_:gsub('-100',''),message_id_ = msg.reply_to_message_id_,disable_notification_ = 1},function(arg,data) 
if data.ID == "Ok" then
send(msg.chat_id_, msg.id_," *꙳.︙تمِہ ࢦثبيت ؏ـينيہ .*")   
database:set(bot_id..'Pin:Id:Msg'..msg.chat_id_,msg.reply_to_message_id_)
elseif data.code_ == 6 then
send(msg.chat_id_,msg.id_," *꙳.︙اﻧـيہ مِہ ﺂدمِنہ ࢪفـ؏ـنـჂ̤  ۅ ؏ـيدٌ .*")  
elseif data.message_ == "CHAT_NOT_MODIFIED" then
send(msg.chat_id_,msg.id_," *꙳.︙مـڪۅ ࢪساله مثبتۿۧ .*")  
elseif data.message_ == "CHAT_ADMIN_REQUIRED" then
send(msg.chat_id_,msg.id_," *꙳.︙مِـ؏ـندჂ̤ صلاحيۿۧ ࢦتثبيت  .*")  
end
end,nil) 
end
if text == 'الغاء التثبيت' and Mod(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if database:sismember(bot_id..'lock:pin',msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_,msg.id_," *꙳.︙مقفۅࢦ ࢦتثبيت ؏ـمࢪيـہ  .*")  
return false  
end
tdcli_function({ID="UnpinChannelMessage",channel_id_ = msg.chat_id_:gsub('-100','')},function(arg,data) 
if data.ID == "Ok" then
send(msg.chat_id_, msg.id_," *꙳.︙تمِہ ﮼ﺂࢦغاء تثبيتٌ ࢦࢪساࢦۿ .*")   
database:del(bot_id..'Pin:Id:Msg'..msg.chat_id_)
elseif data.code_ == 6 then
send(msg.chat_id_,msg.id_," *꙳.︙اﻧـيہ مِہ ﺂدمِنہ ࢪفـ؏ـنـჂ̤  ۅ ؏ـيدٌ .*")  
elseif data.message_ == "CHAT_NOT_MODIFIED" then
send(msg.chat_id_,msg.id_," *꙳.︙مـڪۅ ࢪساله مثبتۿۧ .*")  
elseif data.message_ == "CHAT_ADMIN_REQUIRED" then
send(msg.chat_id_,msg.id_," *꙳.︙مِـ؏ـندჂ̤ صلاحيۿۧ ࢦتثبيت  .*")  
end
end,nil)
end
if text == 'الغاء تثبيت الكل' and Mod(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if database:sismember(bot_id..'lock:pin',msg.chat_id_) and not Constructor(msg) then
send(msg.chat_id_,msg.id_," *꙳.︙مقفۅࢦ ࢦتثبيت ؏ـمࢪيـہ  .*")  
return false  
end
tdcli_function({ID="UnpinChannelMessage",channel_id_ = msg.chat_id_:gsub('-100','')},function(arg,data) 
if data.ID == "Ok" then
send(msg.chat_id_, msg.id_,"*꙳.︙تمِہ ﮼ﺂࢦغاء تثبيت الڪٰٖࢦ .*")   
https.request('https://api.telegram.org/bot'..token..'/unpinAllChatMessages?chat_id='..msg.chat_id_)
database:del(bot_id..'Pin:Id:Msg'..msg.chat_id_)
elseif data.code_ == 6 then
send(msg.chat_id_,msg.id_," *꙳.︙اﻧـيہ مِہ ﺂدمِنہ ࢪفـ؏ـنـჂ̤  ۅ ؏ـيدٌ .*")  
elseif data.message_ == "CHAT_NOT_MODIFIED" then
send(msg.chat_id_,msg.id_," *꙳.︙مـڪۅ ࢪساله مثبتۿۧ .*")  
elseif data.message_ == "CHAT_ADMIN_REQUIRED" then
send(msg.chat_id_,msg.id_," *꙳.︙مِـ؏ـندჂ̤ صلاحيۿۧ ࢦتثبيت  .*")  
end
end,nil)
end
if text and text:match('^ضع تكرار (%d+)$') and Mod(msg) then   
local Num = text:match('ضع تكرار (.*)')
database:hset(bot_id.."flooding:settings:"..msg.chat_id_ ,"floodmax" ,Num) 
send(msg.chat_id_, msg.id_,' *꙳.︙تمِہ ۅضـ؏ ࢦـ؏ـددِ * ('..Num..')')  
end 
if text and text:match('^ضع زمن التكرار (%d+)$') and Mod(msg) then   
local Num = text:match('^ضع زمن التكرار (%d+)$')
database:hset(bot_id.."flooding:settings:"..msg.chat_id_ ,"floodtime" ,Num) 
send(msg.chat_id_, msg.id_,' *꙳.︙مخࢦينہ ࢪ࣪منہ ࢦتڪࢪاࢪ .* ('..Num..')') 
end
if text == "ضع رابط" or text == 'وضع رابط' then
if msg.reply_to_message_id_ == 0  and Mod(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
send(msg.chat_id_,msg.id_," *꙳.︙دِࢪ࣪ ࢦࢪﺂبطِ ؏ـينيہ .*")
database:setex(bot_id.."Set:Priovate:Group:Link"..msg.chat_id_..""..msg.sender_user_id_,120,true) 
return false
end
end
if text == "تفعيل رابط" or text == 'تفعيل الرابط' then
if Mod(msg) then  
database:set(bot_id.."Link_Group:status"..msg.chat_id_,true) 
send(msg.chat_id_, msg.id_," *꙳.︙تمِہ تفـ؏ـيࢦ ࢦࢪﺂبطِ .*") 
return false  
end
end
if text == "تعطيل رابط" or text == 'تعطيل الرابط' then
if Mod(msg) then  
database:del(bot_id.."Link_Group:status"..msg.chat_id_) 
send(msg.chat_id_, msg.id_," *꙳.︙تمِہ تـ؏ـطيࢦ ࢦࢪﺂبطِ .*") 
return false end
end

if text == 'المطور' or text == 'مطور' then
local TEXT_SUDO = database:get(bot_id..'TEXT_SUDO')
if TEXT_SUDO then 
send(msg.chat_id_, msg.id_,TEXT_SUDO)
else
tdcli_function ({ID = "GetUser",user_id_ = SUDO},function(arg,result) 
local Name = '['..result.first_name_..'](tg://user?id='..result.id_..')'
sendText(msg.chat_id_,Name,msg.id_/2097152/0.5,'md')
end,nil)
end
end
------------------------------------------------------------------------ امـيـر الـدلـيـم

if text == "تفعيل صورتي" or text == 'تفعيل الصوره' then
if Constructor(msg) then  
database:set(bot_id.."my_photo:status"..msg.chat_id_,true) 
send(msg.chat_id_, msg.id_," *꙳.︙تمِہ تفـ؏ـيࢦ صٌۅࢪتـჂ̤ .*") 
return false  
end
end
if text == "تعطيل الصوره" or text == 'تعطيل صورتي' then
if Constructor(msg) then  
database:del(bot_id.."my_photo:status"..msg.chat_id_) 
send(msg.chat_id_, msg.id_," *꙳.︙تمِہ تـ؏ـطيࢦ صٌۅࢪتـჂ̤ .*") 
return false end
end
if text == "الرابط" then 
local status_Link = database:get(bot_id.."Link_Group:status"..msg.chat_id_)
if not status_Link then
send(msg.chat_id_, msg.id_," *꙳. ࢦࢪابطٌ مِـ؏ـطل .*") 
return false  
end
local link = database:get(bot_id.."Private:Group:Link"..msg.chat_id_)
if link then  
send(msg.chat_id_,msg.id_,'𖡮ٌٌ︙𝙇𝙄ً𝙉𝙆ٍ ِ𝙂ٍ𝙍𝙊𝙐𝙋 .\n*﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎*\n ['..link..']')  
else
local linkgpp = json:decode(https.request('https://api.telegram.org/bot'..token..'/exportChatInviteLink?chat_id='..msg.chat_id_))
if linkgpp.ok == true then 
database:set(bot_id.."Private:Group:Link"..msg.chat_id_,linkgpp.result)
linkgp = '𝒍𝒊𝒏𝒌 𝒈𝒓𝒐𝒖𝒑  ??\n*﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎*\n ['..linkgpp.result..']'
else
linkgp = ' *꙳مـڪۅ ࢪابط تࢪيد دࢪ࣪[ ضع ࢪابط ]*'
end  
send(msg.chat_id_, msg.id_,linkgp)  
end
end
if text == 'مسح الرابط' or text == 'حذف الرابط' then
if Mod(msg) then 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
send(msg.chat_id_,msg.id_," *꙳.︙تمِہ مِسحہ الرابط*")   
database:del(bot_id.."Private:Group:Link"..msg.chat_id_) 
return false  
end
end
if text and text:match("^ضع صوره") and Mod(msg) and msg.reply_to_message_id_ == 0 then  
database:set(bot_id..'Change:Chat:Photo'..msg.chat_id_..':'..msg.sender_user_id_,true) 
send(msg.chat_id_, msg.id_,' *꙳.︙دࢪ࣪ ࢦصۅࢪۿۧ🥤 َ ◟ِ .*') 
return false
end
if text == "حذف الصوره" or text == "مسح الصوره" then 
if Mod(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
https.request('https://api.telegram.org/bot'..token..'/deleteChatPhoto?chat_id='..msg.chat_id_) 
send(msg.chat_id_, msg.id_,' *꙳.︙تمِہ مِسحہ صۅࢪۿۧ ࢦڪࢪۅپ .*') 
end
return false  
end
if text == 'ضع وصف' or text == 'وضع وصف' then  
if Mod(msg) then
database:setex(bot_id.."Set:Description" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 120, true)  
send(msg.chat_id_, msg.id_,' *꙳.︙دࢪ࣪ ࢦۅصٌف 🥤 َ ◟ِ .*')
end
return false  
end
if text == 'ضع ترحيب' or text == 'وضع ترحيب' then  
if Mod(msg) then
database:setex(bot_id.."Welcome:Group" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 120, true)  
t  = ' *꙳.︙دࢪ࣪ ࢦترحيب هسا .*'
tt = '\n*꙳.︙تڪدࢪ تضيف ۿۧيج .*\n*꙳.︙ﺂࢦاسمِہ »*{`name`}\n*꙳.︙﮼ﺂࢦمِـ؏ـࢪف »*{`user`}'
send(msg.chat_id_, msg.id_,t..tt) 
end
return false  
end
if text == 'الترحيب' and Mod(msg) then 
local GetWelcomeGroup = database:get(bot_id..'Get:Welcome:Group'..msg.chat_id_)  
if GetWelcomeGroup then 
GetWelcome = GetWelcomeGroup
else 
GetWelcome = ' *꙳.︙مِحدُ مِعينہ تࢪحيب ࢦڪࢪۅپ .*'
end 
send(msg.chat_id_, msg.id_,'['..GetWelcome..']') 
return false  
end
if text == 'تفعيل الترحيب' and Mod(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:set(bot_id..'Chek:Welcome'..msg.chat_id_,true) 
send(msg.chat_id_, msg.id_,' *꙳.︙تمِہ تفـ؏ـيࢦ ࢦتࢪحٌيب .*') 
return false  
end
if text == 'تعطيل الترحيب' and Mod(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:del(bot_id..'Chek:Welcome'..msg.chat_id_) 
send(msg.chat_id_, msg.id_,' *꙳.︙تمِہ تـ؏ـطيࢦ ࢦتࢪحٌيب .*') 
return false  
end
if text == 'مسح الترحيب' or text == 'حذف الترحيب' then 
if Mod(msg) then
database:del(bot_id..'Get:Welcome:Group'..msg.chat_id_) 
send(msg.chat_id_, msg.id_,' *꙳.︙تمِہ مِسحہ تࢪحيپ ࢦڪࢪۅپ .*') 
end
end
if text and text == "منع" and msg.reply_to_message_id_ == 0 and Manager(msg)  then   
send(msg.chat_id_, msg.id_," *꙳.︙دࢪ࣪ ࢦڪلمِۿۧ ۿۧس ࢦمِنعہ  .*")  
database:set(bot_id.."RAN1:Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_,"rep")  
return false  
end
if text then   
local tsssst = database:get(bot_id.."RAN1:Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_)  
if tsssst == "rep" then   
send(msg.chat_id_, msg.id_," *꙳.︙دࢪ࣪ ࢦتحذيࢪ مِہטּ تندࢪ࣪ ࢦڪلمۿۧ .*")  
database:set(bot_id.."RAN1:Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_,"repp")  
database:set(bot_id.."RAN1:filtr1:add:reply2"..msg.sender_user_id_..msg.chat_id_, text)  
database:sadd(bot_id.."RAN1:List:Filter"..msg.chat_id_,text)  
return false  end  
end
if text then  
local test = database:get(bot_id.."RAN1:Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_)  
if test == "repp" then  
send(msg.chat_id_, msg.id_," *꙳.︙تمِہ ࢦمِنعہ ࢦڪلمۿۧ ۅي ࢦتحذيࢪ .*")  
database:del(bot_id.."RAN1:Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_)  
local test = database:get(bot_id.."RAN1:filtr1:add:reply2"..msg.sender_user_id_..msg.chat_id_)  
if text then   
database:set(bot_id.."RAN1:Add:Filter:Rp2"..test..msg.chat_id_, text)  
end  
database:del(bot_id.."RAN1:filtr1:add:reply2"..msg.sender_user_id_..msg.chat_id_)  
return false  end  
end

if text == "الغاء منع" and msg.reply_to_message_id_ == 0 and Manager(msg) then
send(msg.chat_id_, msg.id_," *꙳.︙دࢪ࣪ ࢦڪلمِۿۧ ۿۧس .*")  
database:set(bot_id.."RAN1:Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_,"reppp")  
return false  end
if text then 
local test = database:get(bot_id.."RAN1:Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_)  
if test and test == "reppp" then   
send(msg.chat_id_, msg.id_," *꙳.︙تمِہ ﮼ﺂلغاء مِنع .*")  
database:del(bot_id.."RAN1:Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_)  
database:del(bot_id.."RAN1:Add:Filter:Rp2"..text..msg.chat_id_)  
database:srem(bot_id.."RAN1:List:Filter"..msg.chat_id_,text)  
return false  end  
end


if text == 'منع' and tonumber(msg.reply_to_message_id_) > 0 and Manager(msg) then 
function cb(a,b,c) 
textt = ' *꙳.︙تمِہ مِنعہ .* '
if b.content_.sticker_ then
local idsticker = b.content_.sticker_.set_id_
database:sadd(bot_id.."filtersteckr"..msg.chat_id_,idsticker)
text = 'الملصق'
send(msg.chat_id_, msg.id_,textt..'*( '..text..' ) تمِہ مِنعہ مِہ تندࢪ࣪  بـ؏ـد  .*')  
return false
end
if b.content_.ID == "MessagePhoto" then
local photo = b.content_.photo_.id_
database:sadd(bot_id.."filterphoto"..msg.chat_id_,photo)
text = 'الصوره'
send(msg.chat_id_, msg.id_,textt..'*( '..text..' ) تمِہ مِنعہ مِہ تندࢪ࣪  بـ؏ـد  .*')  
return false
end
if b.content_.animation_.animation_ then
local idanimation = b.content_.animation_.animation_.persistent_id_
database:sadd(bot_id.."filteranimation"..msg.chat_id_,idanimation)
text = 'المتحركه'
send(msg.chat_id_, msg.id_,textt..'*( '..text..' ) تمِہ مِنعہ مِہ تندࢪ࣪  بـ؏ـد  .*')  
return false
end
end
tdcli_function ({ ID = "GetMessage", chat_id_ = msg.chat_id_, message_id_ = tonumber(msg.reply_to_message_id_) }, cb, nil)
end
if text == 'الغاء منع' and tonumber(msg.reply_to_message_id_) > 0 and Manager(msg) then 
function cb(a,b,c) 
textt = ' *꙳.︙تمِہ ﮼ﺂلغاء مِنع .* '
if b.content_.sticker_ then
local idsticker = b.content_.sticker_.set_id_
database:srem(bot_id.."filtersteckr"..msg.chat_id_,idsticker)
text = 'الملصق'
send(msg.chat_id_, msg.id_,textt..'*( '..text..' ) يڪدٌࢪۅטּ  يدࢪ࣪ۅטּ ۿۧس .*')  
return false
end
if b.content_.ID == "MessagePhoto" then
local photo = b.content_.photo_.id_
database:srem(bot_id.."filterphoto"..msg.chat_id_,photo)
text = 'الصوره'
send(msg.chat_id_, msg.id_,textt..'*( '..text..' ) يڪدٌࢪۅטּ  يدࢪ࣪ۅטּ ۿۧس .*')  
return false
end
if b.content_.animation_.animation_ then
local idanimation = b.content_.animation_.animation_.persistent_id_
database:srem(bot_id.."filteranimation"..msg.chat_id_,idanimation)
text = 'المتحركه'
send(msg.chat_id_, msg.id_,textt..'*( '..text..' ) يڪدٌࢪۅטּ  يدࢪ࣪ۅטּ ۿۧس .*')  
return false
end
end
tdcli_function ({ ID = "GetMessage", chat_id_ = msg.chat_id_, message_id_ = tonumber(msg.reply_to_message_id_) }, cb, nil)
end

if text == "مسح قائمه المنع"and Manager(msg) then   
local list = database:smembers(bot_id.."RAN1:List:Filter"..msg.chat_id_)  
for k,v in pairs(list) do  
database:del(bot_id.."RAN1:Add:Filter:Rp1"..msg.sender_user_id_..msg.chat_id_)  
database:del(bot_id.."RAN1:Add:Filter:Rp2"..v..msg.chat_id_)  
database:srem(bot_id.."RAN1:List:Filter"..msg.chat_id_,v)  
end  
send(msg.chat_id_, msg.id_," *꙳.︙تمِہ مِسحہ قائمِۿۧ  ࢦمِنعہ  .*")  
end

if text == "قائمه المنع" and Manager(msg) then   
local list = database:smembers(bot_id.."RAN1:List:Filter"..msg.chat_id_)  
t = "\n *꙳.︙قائمِۿۧ ࢦمِنعہ .* \n*﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎*\n"
for k,v in pairs(list) do  
local RAN_Msg = database:get(bot_id.."RAN1:Add:Filter:Rp2"..v..msg.chat_id_)   
t = t..""..k.."- "..v.." » {"..RAN_Msg.."}\n"
end  
if #list == 0 then  
t = " *꙳.︙مـڪو ڪلمِات ممنۅ؏ـۿۧ .*"  
end  
send(msg.chat_id_, msg.id_,t)  
end  

if text == 'مسح قائمه منع المتحركات' and Manager(msg) then 
database:del(bot_id.."filteranimation"..msg.chat_id_)
send(msg.chat_id_, msg.id_,' *꙳.︙تمِہ مِسحہ مِنعہ ࢦمِتحࢪڪات .*')  
end
if text == 'مسح قائمه منع الصور' and Manager(msg) then 
database:del(bot_id.."filterphoto"..msg.chat_id_)
send(msg.chat_id_, msg.id_,' *꙳.︙تمِہ مِسحہ مِنعہ ࢦصۅࢪ .*')  
end
if text == 'مسح قائمه منع الملصقات' and Manager(msg) then 
database:del(bot_id.."filtersteckr"..msg.chat_id_)
send(msg.chat_id_, msg.id_,' *꙳.︙تمِہ مِسحہ مِنعہ  ࢦمࢦصقات .*')  
end
------------------

if text == 'مسح كليشه المطور' and DevRANW(msg) then
database:del(bot_id..'TEXT_SUDO')
send(msg.chat_id_, msg.id_,' *꙳.︙تمِہ مِسحہ ڪليشۿۧ ﺂࢦمِطۅࢪ .*')
end
if text == 'ضع كليشه المطور' and DevRANW(msg) then
database:set(bot_id..'Set:TEXT_SUDO'..msg.chat_id_..':'..msg.sender_user_id_,true)
send(msg.chat_id_,msg.id_,' *꙳.︙دࢪ࣪ ࢦڪليشۿۧ .*')
return false
end
if text and database:get(bot_id..'Set:TEXT_SUDO'..msg.chat_id_..':'..msg.sender_user_id_) then
if text == 'الغاء' then 
database:del(bot_id..'Set:TEXT_SUDO'..msg.chat_id_..':'..msg.sender_user_id_)
send(msg.chat_id_,msg.id_,' *꙳.︙تمِہ ﺂࢦغاء حفظ ڪليشۿۧ ﺂࢦمِطۅࢪ .*')
return false
end
database:set(bot_id..'TEXT_SUDO',text)
database:del(bot_id..'Set:TEXT_SUDO'..msg.chat_id_..':'..msg.sender_user_id_)
send(msg.chat_id_,msg.id_,' *꙳.︙تمِہ حفظ ڪليشۿۧ ﺂࢦمِطۅࢪ .*')
return false
end
------------------------------------------------------------------------ امـيـر الـدلـيـم
if text == 'تعين الايدي' and Manager(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:setex(bot_id.."CHENG:ID"..msg.chat_id_..""..msg.sender_user_id_,240,true)  
local Text= [[
*꙳.︙دࢪ࣪ ࢦنصہ . :*
*꙳.︙تڪدࢪ تضيف : :*
 *꙳.︙#rdphoto ↫ تـ؏ـࢦيق ࢦصۅࢪۿۧ*
 *꙳.︙#username ↫ ﮼ﺂسمِہ* 
 *꙳.︙#msgs ↫ عددِ ࢦحــچي* 
 *꙳.︙#photos ↫ عددِ ࢦصۅࢪ* 
 *꙳.︙#id ↫ ﮼ﺂيديہ* 
 *꙳.︙#auto ↫ تفا؏ـࢦ* 
 *꙳.︙#stast ↫ مِۅقـع*  
 *꙳.︙#edit ↫ ࢦسحڪاتت*
 *꙳.︙#game ↫ ࢦنقاطِ*
]]
send(msg.chat_id_, msg.id_,Text)
return false  
end 
if text == 'حذف الايدي' or text == 'مسح الايدي' then
if Manager(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:del(bot_id.."KLISH:ID"..msg.chat_id_)
send(msg.chat_id_, msg.id_, ' *꙳.︙تمِہ مِسحہ ﮼ﺂࢦايدჂ̤ .*')
end
return false  
end 

if database:get(bot_id.."CHENG:ID"..msg.chat_id_..""..msg.sender_user_id_) then 
if text == 'الغاء' then 
send(msg.chat_id_, msg.id_," *꙳.︙تمِہ ﮼ﺂ ࢦغاء تـ؏ـينہ ﮼ﺂࢦايدჂ̤ .*") 
database:del(bot_id.."CHENG:ID"..msg.chat_id_..""..msg.sender_user_id_) 
return false  
end 
database:del(bot_id.."CHENG:ID"..msg.chat_id_..""..msg.sender_user_id_) 
local CHENGER_ID = text:match("(.*)")  
database:set(bot_id.."KLISH:ID"..msg.chat_id_,CHENGER_ID)
send(msg.chat_id_, msg.id_,' *꙳.︙تمِہ  تـ؏ـينہ ﮼ﺂࢦايدჂ̤ .*')
end

if text == 'طرد البوتات' and Mod(msg) then 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
tdcli_function ({ ID = "GetChannelMembers",channel_id_ = getChatId(msg.chat_id_).ID,filter_ = {ID = "ChannelMembersBots"},offset_ = 0,limit_ = 100 },function(arg,tah)  
local admins = tah.members_  
local x = 0
local c = 0
for i=0 , #admins do 
if tah.members_[i].status_.ID == "ChatMemberStatusEditor" then  
x = x + 1 
end
if tonumber(admins[i].user_id_) ~= tonumber(bot_id) then
chat_kick(msg.chat_id_,admins[i].user_id_)
end
c = c + 1
end 
if (c - x) == 0 then
send(msg.chat_id_, msg.id_, " *꙳.︙مـڪو بۅتات 🥢.*")
else
local t = ' *꙳.︙؏ـددٍ اࢦبوتات المۅچۅدِۿۧ  {'..c..'}*\n*꙳.︙ ؏ـددٍ اࢦبوتات ۿۧჂ̤ ﮼ﺂدٍمِنہ {'..x..'}*\n*꙳.︙تمِہ طࢪدِ{'..(c - x)..'}اࢦبوتات  .*'
send(msg.chat_id_, msg.id_,t) 
end 
end,nil)  
end   
end
if text == ("كشف البوتات") and Mod(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
tdcli_function ({ID = "GetChannelMembers",channel_id_ = getChatId(msg.chat_id_).ID,filter_ = {ID = "ChannelMembersBots"},offset_ = 0,limit_ = 100 },function(extra,result,success)
local admins = result.members_  
text = "\n *꙳.︙قائمة اࢦبۅتات ࢦمِۅچۅدِۿۧ .* \n*﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎*\n"
local n = 0
local t = 0
for i=0 , #admins do 
n = (n + 1)
tdcli_function ({ID = "GetUser",user_id_ = admins[i].user_id_
},function(arg,ta) 
if result.members_[i].status_.ID == "ChatMemberStatusMember" then  
tr = ''
elseif result.members_[i].status_.ID == "ChatMemberStatusEditor" then  
t = t + 1
tr = ' {★}'
end
text = text..">> [@"..ta.username_..']'..tr.."\n"
if #admins == 0 then
send(msg.chat_id_, msg.id_, " *꙳.︙مـڪو بۅتات 🥢.*")
return false 
end
if #admins == i then 
local a = '\n*﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎*\n*꙳.︙؏ـددٍ اࢦبۅتات ۿۧჂ̤ ۿۧنا : {'..n..'} بوت*\n'
local f = '*꙳.︙ ؏ـددٍ اࢦبوتات ۿۧჂ̤ ﮼ﺂدٍمِنہ {'..t..'}*\n*꙳.︙پاۅ؏  ؏ـࢦلامۿ ﮼ﺂࢦـ (✯) يـ؏ـنيـــہ ﮼ﺂࢦپۅت ﺂدٍمِنہ 🥢.* \n'
send(msg.chat_id_, msg.id_, text..a..f)
end
end,nil)
end
end,nil)
end

if database:get(bot_id.."Set:Rules:" .. msg.chat_id_ .. ":" .. msg.sender_user_id_) then 
if text == 'الغاء' then 
send(msg.chat_id_, msg.id_, " *꙳.︙تمِہ ﺂࢦغاء حفظِ ﺂࢦقۅﺂنينہ .*") 
database:del(bot_id.."Set:Rules:" .. msg.chat_id_ .. ":" .. msg.sender_user_id_)
return false  
end 
database:set(bot_id.."Set:Rules:Group" .. msg.chat_id_,text) 
send(msg.chat_id_, msg.id_," *꙳.︙تمِہ حفظِ  .*") 
database:del(bot_id.."Set:Rules:" .. msg.chat_id_ .. ":" .. msg.sender_user_id_)
end  

if text == 'ضع قوانين' or text == 'وضع قوانين' then 
if Mod(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:setex(bot_id.."Set:Rules:" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_,msg.id_," *꙳.︙دࢪ࣪ ࢦقۅﺂنينہ 🥤 َ ◟ِ .*")  
end
end
if text == 'مسح القوانين' or text == 'حذف القوانين' then  
if Mod(msg) then
send(msg.chat_id_, msg.id_," *꙳.︙تمِہ مِسحہ ﺂࢦقۅﺂنينہ .*")  
database:del(bot_id.."Set:Rules:Group"..msg.chat_id_) 
end
end
if text == 'القوانين' then 
local Set_Rules = database:get(bot_id.."Set:Rules:Group" .. msg.chat_id_)   
if Set_Rules then 
send(msg.chat_id_,msg.id_, Set_Rules)   
else  
send(msg.chat_id_, msg.id_," *꙳.︙مـڪو ﺂࢦقۅﺂنينہ .*")   
end
end
if text == 'قفل التفليش' and msg.reply_to_message_id_ == 0 and Mod(msg) then 
database:set(bot_id..'lock:tagrvrbot'..msg.chat_id_,true)   
list ={"lock:Bot:kick","lock:user:name","lock:Link","lock:forward","lock:Sticker","lock:Animation","lock:Video","lock:Fshar","lock:Fars","Bot:Id:Photo","lock:Audio","lock:vico","lock:Document","lock:Unsupported","lock:Markdaun","lock:Contact","lock:Spam"}
for i,lock in pairs(list) do 
database:set(bot_id..lock..msg.chat_id_,'del')
end
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ قفࢦ ࢦتفليشہ   .* ')  
end,nil)   
end
if text == 'فتح التفليش' and msg.reply_to_message_id_ == 0 and Mod(msg) then 
database:del(bot_id..'lock:tagrvrbot'..msg.chat_id_)   
list ={"lock:Bot:kick","lock:user:name","lock:Link","lock:forward","lock:Sticker","lock:Animation","lock:Video","lock:Fshar","lock:Fars","Bot:Id:Photo","lock:Audio","lock:vico","lock:Document","lock:Unsupported","lock:Markdaun","lock:Contact","lock:Spam"}
for i,lock in pairs(list) do 
database:del(bot_id..lock..msg.chat_id_)
end
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
send(msg.chat_id_, msg.id_,' *꙳.︙ۿۧهلا ﮼حِۢـياتيہ ~* ['..Rutba(msg.sender_user_id_,msg.chat_id_)..'](T.ME/'..(data.username_ or 'GGGMG')..') \n*꙳.︙تمِہ فتحِہ ࢦتفليشہ   .* ')  
end,nil)   
end
if text == 'طرد المحذوفين' or text == 'مسح المحذوفين' then  
if Mod(msg) then
tdcli_function({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub("-100",""),offset_ = 0,limit_ = 1000}, function(arg,del)
for k, v in pairs(del.members_) do
tdcli_function({ID = "GetUser",user_id_ = v.user_id_},function(b,data) 
if data.first_name_ == false then
Group_Kick(msg.chat_id_, data.id_)
end
end,nil)
end
send(msg.chat_id_, msg.id_,' *꙳.︙تمِہ مِسحہ ﮼ﺂࢦمحذۅفينہ  .*')
end,nil)
end
end
if text == 'الصلاحيات' and Mod(msg) then 
local list = database:smembers(bot_id..'Coomds'..msg.chat_id_)
if #list == 0 then
send(msg.chat_id_, msg.id_,' *꙳.︙مـڪو صِࢦلاحيات .*')
return false
end
t = "\n *꙳.︙قائمٌۿۧ ࢦصلاحيات ࢦمضافۿۧ .* \n*﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎*\n"
for k,v in pairs(list) do
var = database:get(bot_id.."Comd:New:rt:bot:"..v..msg.chat_id_)
if var then
t = t..''..k..'- '..v..' » ('..var..')\n'
else
t = t..''..k..'- '..v..'\n'
end
end
send(msg.chat_id_, msg.id_,t)
end
if text and text:match("^اضف صلاحيه (.*)$") and Mod(msg) then 
ComdNew = text:match("^اضف صلاحيه (.*)$")
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:set(bot_id.."Comd:New:rt"..msg.chat_id_..msg.sender_user_id_,ComdNew)  
database:sadd(bot_id.."Coomds"..msg.chat_id_,ComdNew)  
database:setex(bot_id.."Comd:New"..msg.chat_id_..""..msg.sender_user_id_,200,true)  
send(msg.chat_id_, msg.id_, " *꙳.︙دࢪ࣪ نۅ؏ ࢦࢪتبهه  .* \n*꙳.︙{؏ـضۅ - مميࢪ࣪ - ﺂدمِنہ - مديࢪ .}*") 
end
if text and text:match("^مسح صلاحيه (.*)$") and Mod(msg) then 
ComdNew = text:match("^مسح صلاحيه (.*)$")
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:del(bot_id.."Comd:New:rt:bot:"..ComdNew..msg.chat_id_)
send(msg.chat_id_, msg.id_, " *꙳.︙تمِہ مِسحہ ࢦصلاحيۿۧ .* \n") 
end
if database:get(bot_id.."Comd:New"..msg.chat_id_..""..msg.sender_user_id_) then 
if text and text:match("^الغاء$") then 
send(msg.chat_id_, msg.id_," *꙳.︙تمِہ ﮼ﺂࢦـغاء ﮼ﺂࢦامࢪ  .* \n") 
database:del(bot_id.."Comd:New"..msg.chat_id_..""..msg.sender_user_id_) 
return false  
end 
if text == 'مدير' then
if not Constructor(msg) then
send(msg.chat_id_, msg.id_" *꙳.︙تكدࢪ ﮼ﺂضافۿۧ صلاحيات  {ﺂدمِنہ - مميࢪ࣪ - ؏ـضۅ .}* \n*꙳.︙دࢪ࣪ ࢦصلاحيۿۧ  مِࢪتلخ  .*\n") 
return false
end
end
if text == 'ادمن' then
if not Manager(msg) then 
send(msg.chat_id_, msg.id_," *꙳.︙تكدࢪ ﮼ﺂضافۿۧ صلاحيات  {مميࢪ࣪ - ؏ـضۅ .}* \n*꙳.︙دࢪ࣪ ࢦصلاحيۿۧ  مِࢪتلخ  .*\n") 
return false
end
end
if text == 'مميز' then
if not Mod(msg) then
send(msg.chat_id_, msg.id_," *꙳.︙ تكدࢪ ﮼ﺂضافۿۧ صلاحيات  { ؏ـضۅ .}* \n*꙳.︙دࢪ࣪ ࢦصلاحيۿۧ  مِࢪتلخ  .*\n") 
return false
end
end
if text == 'مدير' or text == 'ادمن' or text == 'مميز' or text == 'عضو' then
local textn = database:get(bot_id.."Comd:New:rt"..msg.chat_id_..msg.sender_user_id_)  
database:set(bot_id.."Comd:New:rt:bot:"..textn..msg.chat_id_,text)
send(msg.chat_id_, msg.id_, " *꙳.︙تمِہ ﮼ﺂضافۿۧ ﮼ﺂࢦامࢪ .*") 
database:del(bot_id.."Comd:New"..msg.chat_id_..""..msg.sender_user_id_) 
return false  
end 
end
if text and text:match('رفع (.*)') and tonumber(msg.reply_to_message_id_) > 0 and Mod(msg) then 
local RTPA = text:match('رفع (.*)')
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if database:sismember(bot_id..'Coomds'..msg.chat_id_,RTPA) then
function by_reply(extra, result, success)   
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
local blakrt = database:get(bot_id.."Comd:New:rt:bot:"..RTPA..msg.chat_id_)
if blakrt == 'مميز' and Mod(msg) then
send(msg.chat_id_, msg.id_,'\n *꙳.︙اسم المستخدم -›* ['..data.first_name_..'](t.me/'..(data.username_ or 'GGGMG')..')'..'\n*꙳.︙تمِہ ࢪفـ؏ـۿۧ . '..RTPA..'*\n')   
database:set(bot_id.."Comd:New:rt:user:"..msg.chat_id_..result.sender_user_id_,RTPA) 
database:sadd(bot_id..'Special:User'..msg.chat_id_,result.sender_user_id_)  
elseif blakrt == 'ادمن' and Manager(msg) then 
send(msg.chat_id_, msg.id_,'\n *꙳.︙اسم المستخدم -›* ['..data.first_name_..'](t.me/'..(data.username_ or 'GGGMG')..')'..'\n*꙳.︙تمِہ ࢪفـ؏ـۿۧ . '..RTPA..'*\n')   
database:set(bot_id.."Comd:New:rt:user:"..msg.chat_id_..result.sender_user_id_,RTPA)
database:sadd(bot_id..'Mod:User'..msg.chat_id_,result.sender_user_id_)  
elseif blakrt == 'مدير' and Constructor(msg) then
send(msg.chat_id_, msg.id_,'\n *꙳.︙اسم المستخدم -›* ['..data.first_name_..'](t.me/'..(data.username_ or 'GGGMG')..')'..'\n*꙳.︙تمِہ ࢪفـ؏ـۿۧ . '..RTPA..'*\n')   
database:set(bot_id.."Comd:New:rt:user:"..msg.chat_id_..result.sender_user_id_,RTPA)  
database:sadd(bot_id..'Manager'..msg.chat_id_,result.sender_user_id_)  
elseif blakrt == 'عضو' and Mod(msg) then
send(msg.chat_id_, msg.id_,'\n *꙳.︙اسم المستخدم -›* ['..data.first_name_..'](t.me/'..(data.username_ or 'GGGMG')..')'..'\n*꙳.︙تمِہ ࢪفـ؏ـۿۧ . '..RTPA..'*\n')   
end
end,nil)   
end   
tdcli_function ({ ID = "GetMessage", chat_id_ = msg.chat_id_, message_id_ = tonumber(msg.reply_to_message_id_) }, by_reply, nil)
end
end
if text and text:match('تنزيل (.*)') and tonumber(msg.reply_to_message_id_) > 0 and Mod(msg) then 
local RTPA = text:match('تنزيل (.*)')
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if database:sismember(bot_id..'Coomds'..msg.chat_id_,RTPA) then
function by_reply(extra, result, success)   
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
local blakrt = database:get(bot_id.."Comd:New:rt:bot:"..RTPA..msg.chat_id_)
if blakrt == 'مميز' and Mod(msg) then
send(msg.chat_id_, msg.id_,'\n *꙳.︙اسم المستخدم -›* ['..data.first_name_..'](t.me/'..(data.username_ or 'GGGMG')..')'..'\n*꙳.︙تم تنࢪ࣪يࢦ مِہטּ  . '..RTPA..'*\n')   
database:srem(bot_id..'Special:User'..msg.chat_id_,result.sender_user_id_)  
database:del(bot_id.."Comd:New:rt:user:"..msg.chat_id_..result.sender_user_id_)
elseif blakrt == 'ادمن' and Manager(msg) then 
send(msg.chat_id_, msg.id_,'\n *꙳.︙اسم المستخدم -›* ['..data.first_name_..'](t.me/'..(data.username_ or 'GGGMG')..')'..'\n*꙳.︙تم تنࢪ࣪يࢦ مِہטּ  . '..RTPA..'*\n')   
database:srem(bot_id..'Mod:User'..msg.chat_id_,result.sender_user_id_) 
database:del(bot_id.."Comd:New:rt:user:"..msg.chat_id_..result.sender_user_id_)
elseif blakrt == 'مدير' and Constructor(msg) then
send(msg.chat_id_, msg.id_,'\n *꙳.︙اسم المستخدم -›* ['..data.first_name_..'](t.me/'..(data.username_ or 'GGGMG')..')'..'\n*꙳.︙ تم تنࢪ࣪يࢦ مِہטּ  . '..RTPA..'*\n')   
database:srem(bot_id..'Manager'..msg.chat_id_,result.sender_user_id_)  
database:del(bot_id.."Comd:New:rt:user:"..msg.chat_id_..result.sender_user_id_)
elseif blakrt == 'عضو' and Mod(msg) then
send(msg.chat_id_, msg.id_,'\n *꙳.︙اسم المستخدم -›* ['..data.first_name_..'](t.me/'..(data.username_ or 'GGGMG')..')'..'\n*꙳.︙تم تنࢪ࣪يࢦ مِہטּ  . '..RTPA..'*\n')   
end
end,nil)   
end   
tdcli_function ({ ID = "GetMessage", chat_id_ = msg.chat_id_, message_id_ = tonumber(msg.reply_to_message_id_) }, by_reply, nil)
end
end
if text and text:match('^رفع (.*) @(.*)') and Mod(msg) then 
local text1 = {string.match(text, "^(رفع) (.*) @(.*)$")}
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if database:sismember(bot_id..'Coomds'..msg.chat_id_,text1[2]) then
function py_username(extra, result, success)   
if result.id_ then
local blakrt = database:get(bot_id.."Comd:New:rt:bot:"..text1[2]..msg.chat_id_)
if blakrt == 'مميز' and Mod(msg) then
send(msg.chat_id_, msg.id_,'\n *꙳.︙اسم المستخدم -›* ['..result.title_..'](t.me/'..(text1[3] or 'GGGMG')..')'..'\n*꙳.︙تمِہ ࢪفـ؏ـۿۧ . '..text1[2]..'*')   
database:sadd(bot_id..'Special:User'..msg.chat_id_,result.id_)  
database:set(bot_id.."Comd:New:rt:user:"..msg.chat_id_..result.id_,text1[2])
elseif blakrt == 'ادمن' and Manager(msg) then 
send(msg.chat_id_, msg.id_,'\n *꙳.︙اسم المستخدم -›* ['..result.title_..'](t.me/'..(text1[3] or 'GGGMG')..')'..'\n*꙳.︙تمِہ ࢪفـ؏ـۿۧ . '..text1[2]..'*')   
database:sadd(bot_id..'Mod:User'..msg.chat_id_,result.id_)  
database:set(bot_id.."Comd:New:rt:user:"..msg.chat_id_..result.id_,text1[2])
elseif blakrt == 'مدير' and Constructor(msg) then
send(msg.chat_id_, msg.id_,'\n *꙳.︙اسم المستخدم -›* ['..result.title_..'](t.me/'..(text1[3] or 'GGGMG')..')'..'\n*꙳.︙تمِہ ࢪفـ؏ـۿۧ . '..text1[2]..'*')   
database:sadd(bot_id..'Manager'..msg.chat_id_,result.id_)  
database:set(bot_id.."Comd:New:rt:user:"..msg.chat_id_..result.id_,text1[2])
elseif blakrt == 'عضو' and Mod(msg) then
send(msg.chat_id_, msg.id_,'\n *꙳.︙اسم المستخدم -›* ['..result.title_..'](t.me/'..(text1[3] or 'GGGMG')..')'..'\n*꙳.︙تمِہ ࢪفـ؏ـۿۧ . '..text1[2]..'*')   
end
else
info = ' *꙳.︙ࢦمـ؏ـࢪف غلطٌ  .*'
send(msg.chat_id_, msg.id_,info)
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = text1[3]},py_username,nil) 
end 
end
if text and text:match('^تنزيل (.*) @(.*)') and Mod(msg) then 
local text1 = {string.match(text, "^(تنزيل) (.*) @(.*)$")}
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if database:sismember(bot_id..'Coomds'..msg.chat_id_,text1[2]) then
function py_username(extra, result, success)   
if result.id_ then
local blakrt = database:get(bot_id.."Comd:New:rt:bot:"..text1[2]..msg.chat_id_)
if blakrt == 'مميز' and Mod(msg) then
send(msg.chat_id_, msg.id_,'\n *꙳.︙اسم المستخدم -›* ['..result.title_..'](t.me/'..(text1[3] or 'GGGMG')..')'..'\n*꙳.︙تم تنࢪ࣪يࢦ مِہטּ  . '..text1[2]..'*')   
database:srem(bot_id..'Special:User'..msg.chat_id_,result.id_)  
database:del(bot_id.."Comd:New:rt:user:"..msg.chat_id_..result.id_)
elseif blakrt == 'ادمن' and Manager(msg) then 
send(msg.chat_id_, msg.id_,'\n *꙳.︙اسم المستخدم -›* ['..result.title_..'](t.me/'..(text1[3] or 'GGGMG')..')'..'\n*꙳.︙تم تنࢪ࣪يࢦ مِہטּ  . '..text1[2]..'*')   
database:srem(bot_id..'Mod:User'..msg.chat_id_,result.id_)  
database:del(bot_id.."Comd:New:rt:user:"..msg.chat_id_..result.id_)
elseif blakrt == 'مدير' and Constructor(msg) then
send(msg.chat_id_, msg.id_,'\n *꙳.︙اسم المستخدم -›* ['..result.title_..'](t.me/'..(text1[3] or 'GGGMG')..')'..'\n*꙳.︙تم تنࢪ࣪يࢦ مِہטּ  . '..text1[2]..'*')   
database:srem(bot_id..'Manager'..msg.chat_id_,result.id_)  
database:del(bot_id.."Comd:New:rt:user:"..msg.chat_id_..result.id_)
elseif blakrt == 'عضو' and Mod(msg) then
send(msg.chat_id_, msg.id_,'\n *꙳.︙اسم المستخدم -›* ['..result.title_..'](t.me/'..(text1[3] or 'GGGMG')..')'..'\n*꙳.︙تم تنࢪ࣪يࢦ مِہטּ  . '..text1[2]..'*')   
end
else
info = ' *꙳.︙ࢦمـ؏ـࢪف غلطٌ  .*'
send(msg.chat_id_, msg.id_,info)
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = text1[3]},py_username,nil) 
end  
end
if text == "مسح رسايلي" or text == "مسح رسائلي" or text == "حذف رسايلي" or text == "حذف رسائلي" then  
send(msg.chat_id_, msg.id_,' *꙳.︙تمِہ مِسحہ ࢪسائلڪك*'  )  
database:del(bot_id..'Msg_User'..msg.chat_id_..':'..msg.sender_user_id_) 
end
if text == "رسايلي" or text == "رسائلي" or text == "msg" then 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
send(msg.chat_id_, msg.id_,' *꙳.︙عدد ࢪسائلڪك » { '..database:get(bot_id..'Msg_User'..msg.chat_id_..':'..msg.sender_user_id_)..'}*' ) 
end 
if text == 'تفعيل الاذاعه' and DevRANW(msg) then  
if database:get(bot_id..'Bc:Bots') then
database:del(bot_id..'Bc:Bots') 
Text = '\n *꙳.︙تمِہ تفـ؏ـيࢦ ﮼ﺂࢦاذا؏ـۿۧ .*' 
else
Text = '\n *꙳.︙تمِہ تفـ؏ـيࢦ ﮼ﺂࢦاذا؏ـۿۧ .*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تعطيل الاذاعه' and DevRANW(msg) then  
if not database:get(bot_id..'Bc:Bots') then
database:set(bot_id..'Bc:Bots',true) 
Text = '\n *꙳.︙ تمِہ تـ؏ـطيل ﮼ﺂࢦاذا؏ـۿۧ .*' 
else
Text = '\n *꙳.︙ طبـ؏ـا تمِہ تـ؏ـطيل ﮼ﺂࢦاذا؏ـۿۧ .*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تفعيل التواصل' and DevRANW(msg) then  
if database:get(bot_id..'Tuasl:Bots') then
database:del(bot_id..'Tuasl:Bots') 
Text = '\n *꙳.︙تمِہ تفـ؏ـيࢦ ﮼ﺂلتۅاصل .*' 
else
Text = '\n *꙳.︙تمِہ تفـ؏ـيࢦ ﮼ﺂلتۅاصل .*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تعطيل التواصل' and DevRANW(msg) then  
if not database:get(bot_id..'Tuasl:Bots') then
database:set(bot_id..'Tuasl:Bots',true) 
Text = '\n *꙳.︙تمِہ تـ؏ـطيࢦ ﮼ﺂلتۅاصل .*' 
else
Text = '\n *꙳.︙تمِہ تـ؏ـطيࢦ ﮼ﺂلتۅاصل .*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تفعيل البوت الخدمي' and DevRANW(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if database:get(bot_id..'Free:Bots') then
database:del(bot_id..'Free:Bots') 
Text = '\n *꙳.︙تمِہ تـفـ؏ـيل ﮼ﺂࢦپۅت ࢦخدِمِـჂ̤  .*' 
else
Text = '\n *꙳.︙تمِہ تـفـ؏ـيل ﮼ﺂࢦپۅت ࢦخدِمِـჂ̤  .*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تعطيل البوت الخدمي' and DevRANW(msg) then  
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if not database:get(bot_id..'Free:Bots') then
database:set(bot_id..'Free:Bots',true) 
Text = '\n *꙳.︙تمِہ تـ؏ـطيل  ﮼ﺂࢦپۅت ࢦخدِمِـჂ̤  .*' 
else
Text = '\n *꙳.︙تمِہ تـ؏ـطيل  ﮼ﺂࢦپۅت ࢦخدِمِـჂ̤  .*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text and text:match('^تنظيف (%d+)$') and Manager(msg) then
if not database:get(bot_id..'VVVZVV:Delete:Time'..msg.chat_id_..':'..msg.sender_user_id_) then   
local num = tonumber(text:match('^تنظيف (%d+)$')) 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if num > 1000 then 
send(msg.chat_id_, msg.id_,'*꙳.︙تڪٌدࢪ تنظٌف ¹⁰⁰⁰ ﺑـسـہ مِہ تڪٌدࢪ تنظٌف ﮼ﺂكثࢪ  .*') 
return false  
end  
local msgm = msg.id_
for i=1,tonumber(num) do
DeleteMessage(msg.chat_id_, {[0] = msgm})
msgm = msgm - 1048576
end
send(msg.chat_id_,msg.id_,'*꙳.︙تمِہ مِسحہ . {'..num..'}*')  
database:setex(bot_id..'VVVZVV:Delete:Time'..msg.chat_id_..':'..msg.sender_user_id_,300,true)
end
end
if text == "تنظيف الميديا" and BasicConstructor(msg) then
msgm = {[0]=msg.id_}
local Message = msg.id_
for i=1,200 do
Message = Message - 1048576
msgm[i] = Message
end
tdcli_function({ID = "GetMessages",chat_id_ = msg.chat_id_,message_ids_ = msgm},function(arg,data)
new = 0
msgm2 = {}
for i=0 ,data.total_count_ do
if data.messages_[i] and data.messages_[i].content_ and data.messages_[i].content_.ID ~= "MessageText" then
msgm2[new] = data.messages_[i].id_
new = new + 1
end
end
DeleteMessage(msg.chat_id_,msgm2)
end,nil)  
send(msg.chat_id_, msg.id_,"*꙳.︙تمِہ مِسحہ ࢦميديا  .*")
end
if text == "تنظيف التعديل" and Manager(msg) then
Msgs = {[0]=msg.id_}
local Message = msg.id_
for i=1,100 do
Message = Message - 1048576
Msgs[i] = Message
end
tdcli_function({ID = "GetMessages",chat_id_ = msg.chat_id_,message_ids_ = Msgs},function(arg,data)
new = 0
Msgs2 = {}
for i=0 ,data.total_count_ do
if data.messages_[i] and (not data.messages_[i].edit_date_ or data.messages_[i].edit_date_ ~= 0) then
Msgs2[new] = data.messages_[i].id_
new = new + 1
end
end
DeleteMessage(msg.chat_id_,Msgs2)
end,nil)  
send(msg.chat_id_, msg.id_,'*꙳.︙تمِہ تنظٌيف ڪٰٖࢦ ࢦࢪسائل ࢦمِعدلهہ .*')
end
if text == "تغير اسم البوت" or text == "تغيير اسم البوت" then 
if DevRANW(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:setex(bot_id..'Set:Name:Bot'..msg.sender_user_id_,300,true) 
send(msg.chat_id_, msg.id_," *꙳.︙دࢪ࣪ ﮼ﺂࢦـჂ̤  ﮼ﺂࢦاسمِہ ۿۧس .* ")  
end
return false
end

if text == ""..(database:get(bot_id..'Name:Bot') or 'ران').."" then  
Namebot = (database:get(bot_id..'Name:Bot') or 'ران')
local RAN_Msg = {
'ۿۧا يـࢪۅحيہ .',
'ڪۅل ۅنيہ ﮼ﺂنفِذ  .',
'﮼ﺂبوسڪك ۅتـ؏ـۅفنيہ ؟',
'ۿۧهلا ﮼حِۢـياتيہ .',
'مشغول حالياً',
'ۿۧا ﮼؏ـمࢪيـہ  .'
}
send(msg.chat_id_, msg.id_,'['..RAN_Msg[math.random(#RAN_Msg)]..']') 
return false
end
if text=="اذاعه خاص" and msg.reply_to_message_id_ == 0 and Sudo(msg) then 
if database:get(bot_id..'Bc:Bots') and not DevRANW(msg) then 
send(msg.chat_id_, msg.id_,' *꙳.︙﮼ﺂࢦاذا؏ـۿۧ  مِـ؏ـطلها ࢦمطۅࢪ ﮼ﺂࢦاساسـჂ̤ .*')
return false
end
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:setex(bot_id.."Send:Bc:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_, msg.id_," *꙳.︙دࢪ࣪ ﮼ﺂذٌا؏ـتڪك .* \n*꙳.︙متࢪيدٌ دۅسہ الغاء .*") 
return false
end 
if text=="اذاعه" and msg.reply_to_message_id_ == 0 and Sudo(msg) then 
if database:get(bot_id..'Bc:Bots') and not DevRANW(msg) then 
send(msg.chat_id_, msg.id_,' *꙳.︙﮼ﺂࢦاذا؏ـۿۧ  مِـ؏ـطلها ࢦمطۅࢪ ﮼ﺂࢦاساسـჂ̤ .*')
return false
end
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:setex(bot_id.."Send:Bc:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_, msg.id_," *꙳.︙دࢪ࣪ ﮼ﺂذٌا؏ـتڪك .* \n*꙳.︙متࢪيدٌ دۅسہ الغاء .* ") 
return false
end  
if text=="اذاعه بالتوجيه" and msg.reply_to_message_id_ == 0  and Sudo(msg) then 
if database:get(bot_id..'Bc:Bots') and not DevRANW(msg) then 
send(msg.chat_id_, msg.id_,' *꙳.︙﮼ﺂࢦاذا؏ـۿۧ  مِـ؏ـطلها ࢦمطۅࢪ ﮼ﺂࢦاساسـჂ̤ .*')
return false
end
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:setex(bot_id.."Send:Fwd:Grops" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_, msg.id_," *꙳.︙دࢪ࣪ ࢦتۅچيۿۧ  .*") 
return false
end 
if text=="اذاعه بالتوجيه خاص" and msg.reply_to_message_id_ == 0  and Sudo(msg) then 
if database:get(bot_id..'Bc:Bots') and not DevRANW(msg) then 
send(msg.chat_id_, msg.id_,' *꙳.︙ ﮼ﺂࢦاذا؏ـۿۧ  مِـ؏ـطلها ࢦمطۅࢪ ﮼ﺂࢦاساسـჂ̤ .*')
return false
end
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:setex(bot_id.."Send:Fwd:Pv" .. msg.chat_id_ .. ":" .. msg.sender_user_id_, 600, true) 
send(msg.chat_id_, msg.id_," *꙳.︙دࢪ࣪ ࢦتۅچيۿۧ  .*") 
return false
end 
if text and text:match('^ضع اسم (.*)') and Manager(msg) or text and text:match('^وضع اسم (.*)') and Manager(msg) then 
local Name = text:match('^ضع اسم (.*)') or text and text:match('^وضع اسم (.*)') 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
tdcli_function ({ ID = "ChangeChatTitle",chat_id_ = msg.chat_id_,title_ = Name },function(arg,data) 
if data.message_ == "Channel chat title can be changed by administrators only" then
send(msg.chat_id_,msg.id_," *꙳.︙ﺂࢦبۅت مِہ ﮼ﺂدٌمِنہ ࢪفـ؏ـۿۧ . !*")  
return false  
end 
if data.message_ == "CHAT_ADMIN_REQUIRED" then
send(msg.chat_id_,msg.id_," *꙳.︙مِـ؏ـندٌჂ̤ صلاحيۿۧ ࢦـ﮼ﺂكدٌࢪ ﮼ﺂغيࢪ ﮼ﺂسمِہ ࢦڪࢪۅپ .*")  
else
send(msg.chat_id_,msg.id_,' *꙳.︙تمِہ تغيࢪ ﮼ﺂسمِہ ࢦڪࢪۅپ .* {['..Name..']}')  
end
end,nil) 
end

if text == "تاك للكل" and Mod(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
tdcli_function({ID = "GetChannelMembers",channel_id_ = msg.chat_id_:gsub('-100',''), offset_ = 0,limit_ = 200
},function(ta,RAN)
local t = "\n*ツ قائمۿۧ ﮼ﺂࢦا؏ـضاء .* \n*﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎*\n"
x = 0
local list = RAN.members_
for k, v in pairs(list) do
x = x + 1
if database:get(bot_id..'user:Name'..v.user_id_) then
t = t..""..x.." → {[@"..database:get(bot_id..'user:Name'..v.user_id_).."]}\n"
else
t = t..""..x.." → {"..v.user_id_.."}\n"
end
end
send(msg.chat_id_,msg.id_,t)
end,nil)
end
if text == ("تنزيل الكل") and msg.reply_to_message_id_ ~= 0 and Manager(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
if RANSudoBot(result.sender_user_id_) then
send(msg.chat_id_, msg.id_," *꙳.︙متڪدٌࢪ تنࢪ࣪ࢦ  مطۅࢪ ﮼ﺂ ࢦاساسـჂ̤ ۅمطۅࢪ ࢦسۅࢪسہ .*")
return false 
end
if Can_or_NotCan(result.sender_user_id_,msg.chat_id_) ~= false then
send(msg.chat_id_, msg.id_,"\n *꙳. تمِہ تنࢪ࣪يل الڪٰٖࢦ  . *")
else
send(msg.chat_id_, msg.id_,"\n *꙳.︙ ؏ـينيہ ࢦـ؏ـضۅ مِـ؏ـندۿۧ ࢪتبۿۧ .* \n")
end
if RANSudoBot(msg.sender_user_id_) then
database:srem(bot_id..'DEV:Sudo:T', result.sender_user_id_)
database:srem(bot_id..'Sudo:User', result.sender_user_id_)
database:srem(bot_id..'CoSu'..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id..'Basic:Constructor'..msg.chat_id_,result.sender_user_id_)
database:srem(bot_id..'Constructor'..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id..'Manager'..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id..'Mod:User'..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id..'Special:User'..msg.chat_id_, result.sender_user_id_)
elseif database:sismember(bot_id..'DEV:Sudo:T',msg.sender_user_id_) then
database:srem(bot_id..'Sudo:User', result.sender_user_id_)
database:srem(bot_id..'CoSu'..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id..'Basic:Constructor'..msg.chat_id_,result.sender_user_id_)
database:srem(bot_id..'Constructor'..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id..'Manager'..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id..'Mod:User'..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id..'Special:User'..msg.chat_id_, result.sender_user_id_)
elseif database:sismember(bot_id..'Sudo:User',msg.sender_user_id_) then
database:srem(bot_id..'CoSu'..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id..'Basic:Constructor'..msg.chat_id_,result.sender_user_id_)
database:srem(bot_id..'Constructor'..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id..'Manager'..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id..'Mod:User'..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id..'Special:User'..msg.chat_id_, result.sender_user_id_)
elseif database:sismember(bot_id..'CoSu'..msg.chat_id_, msg.sender_user_id_) then
database:srem(bot_id..'Basic:Constructor'..msg.chat_id_,result.sender_user_id_)
database:srem(bot_id..'Constructor'..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id..'Manager'..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id..'Mod:User'..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id..'Special:User'..msg.chat_id_, result.sender_user_id_)
elseif database:sismember(bot_id..'Basic:Constructor'..msg.chat_id_, msg.sender_user_id_) then
database:srem(bot_id..'Constructor'..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id..'Manager'..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id..'Mod:User'..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id..'Special:User'..msg.chat_id_, result.sender_user_id_)
elseif database:sismember(bot_id..'Constructor'..msg.chat_id_, msg.sender_user_id_) then
database:srem(bot_id..'Manager'..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id..'Mod:User'..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id..'Special:User'..msg.chat_id_, result.sender_user_id_)
elseif database:sismember(bot_id..'Manager'..msg.chat_id_, msg.sender_user_id_) then
database:srem(bot_id..'Mod:User'..msg.chat_id_, result.sender_user_id_)
database:srem(bot_id..'Special:User'..msg.chat_id_, result.sender_user_id_)
end
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
end
if text and text:match("^تنزيل الكل @(.*)$") and Manager(msg) then
function FunctionStatus(extra, result, success)
if (result.id_) then
if RANSudoBot(result.id_) then
send(msg.chat_id_, msg.id_," *꙳.︙متڪدٌࢪ تنࢪ࣪ࢦ  مطۅࢪ ﮼ﺂ ࢦاساسـჂ̤ ۅمطۅࢪ ࢦسۅࢪسہ .*")
return false 
end
if Can_or_NotCan(result.id_,msg.chat_id_) ~= false then
send(msg.chat_id_, msg.id_,"\n *꙳. تمِہ تنࢪ࣪يل الڪٰٖࢦ  . *")
else
send(msg.chat_id_, msg.id_,"\n *꙳.︙ ؏ـينيہ ࢦـ؏ـضۅ مِـ؏ـندۿۧ ࢪتبۿۧ .* \n")
end
if RANSudoBot(msg.sender_user_id_) then
database:srem(bot_id..'DEV:Sudo:T', result.id_)
database:srem(bot_id..'Sudo:User', result.id_)
database:srem(bot_id..'CoSu'..msg.chat_id_, result.id_)
database:srem(bot_id..'Basic:Constructor'..msg.chat_id_,result.id_)
database:srem(bot_id..'Constructor'..msg.chat_id_, result.id_)
database:srem(bot_id..'Manager'..msg.chat_id_, result.id_)
database:srem(bot_id..'Mod:User'..msg.chat_id_, result.id_)
database:srem(bot_id..'Special:User'..msg.chat_id_, result.id_)
elseif database:sismember(bot_id..'DEV:Sudo:T',msg.sender_user_id_) then
database:srem(bot_id..'Sudo:User', result.id_)
database:srem(bot_id..'CoSu'..msg.chat_id_, result.id_)
database:srem(bot_id..'Basic:Constructor'..msg.chat_id_,result.id_)
database:srem(bot_id..'Constructor'..msg.chat_id_, result.id_)
database:srem(bot_id..'Manager'..msg.chat_id_, result.id_)
database:srem(bot_id..'Mod:User'..msg.chat_id_, result.id_)
database:srem(bot_id..'Special:User'..msg.chat_id_, result.id_)
elseif database:sismember(bot_id..'Sudo:User',msg.sender_user_id_) then
database:srem(bot_id..'CoSu'..msg.chat_id_, result.id_)
database:srem(bot_id..'Basic:Constructor'..msg.chat_id_,result.id_)
database:srem(bot_id..'Constructor'..msg.chat_id_, result.id_)
database:srem(bot_id..'Manager'..msg.chat_id_, result.id_)
database:srem(bot_id..'Mod:User'..msg.chat_id_, result.id_)
database:srem(bot_id..'Special:User'..msg.chat_id_, result.id_)
elseif database:sismember(bot_id..'CoSu'..msg.chat_id_, msg.sender_user_id_) then
database:srem(bot_id..'Basic:Constructor'..msg.chat_id_,result.id_)
database:srem(bot_id..'Constructor'..msg.chat_id_, result.id_)
database:srem(bot_id..'Manager'..msg.chat_id_, result.id_)
database:srem(bot_id..'Mod:User'..msg.chat_id_, result.id_)
database:srem(bot_id..'Special:User'..msg.chat_id_, result.id_)
elseif database:sismember(bot_id..'Basic:Constructor'..msg.chat_id_, msg.sender_user_id_) then
database:srem(bot_id..'Constructor'..msg.chat_id_, result.id_)
database:srem(bot_id..'Manager'..msg.chat_id_, result.id_)
database:srem(bot_id..'Mod:User'..msg.chat_id_, result.id_)
database:srem(bot_id..'Special:User'..msg.chat_id_, result.id_)
elseif database:sismember(bot_id..'Constructor'..msg.chat_id_, msg.sender_user_id_) then
database:srem(bot_id..'Manager'..msg.chat_id_, result.id_)
database:srem(bot_id..'Mod:User'..msg.chat_id_, result.id_)
database:srem(bot_id..'Special:User'..msg.chat_id_, result.id_)
elseif database:sismember(bot_id..'Manager'..msg.chat_id_, msg.sender_user_id_) then
database:srem(bot_id..'Mod:User'..msg.chat_id_, result.id_)
database:srem(bot_id..'Special:User'..msg.chat_id_, result.id_)
end
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = text:match("^تنزيل الكل @(.*)$")}, FunctionStatus, nil)
end
if text == ("مسح ردود المطور") and DevRANW(msg) then 
local list = database:smembers(bot_id..'List:Rd:Sudo')
for k,v in pairs(list) do
database:del(bot_id.."Add:Rd:Sudo:Gif"..v)   
database:del(bot_id.."Add:Rd:Sudo:vico"..v)   
database:del(bot_id.."Add:Rd:Sudo:stekr"..v) 
database:del(bot_id.."Add:Rd:Sudo:Text"..v)   
database:del(bot_id.."Add:Rd:Sudo:Photo"..v)
database:del(bot_id.."Add:Rd:Sudo:Video"..v)
database:del(bot_id.."Add:Rd:Sudo:File"..v)
database:del(bot_id.."Add:Rd:Sudo:Audio"..v)
database:del(bot_id..'List:Rd:Sudo')
end
send(msg.chat_id_, msg.id_," *꙳.︙تمِہ مِسحہ ࢪدٌۅد ࢦمطۅࢪ .*")
end

if text == ("ردود المطور") and DevRANW(msg) then 
local list = database:smembers(bot_id..'List:Rd:Sudo')
text = "\n ꙳.︙قائمۿۧ ࢪدٌۅد ࢦمطۅࢪ . \n*﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎*\n"
for k,v in pairs(list) do
if database:get(bot_id.."Add:Rd:Sudo:Gif"..v) then
db = 'متحركه'
elseif database:get(bot_id.."Add:Rd:Sudo:vico"..v) then
db = 'بصمه'
elseif database:get(bot_id.."Add:Rd:Sudo:stekr"..v) then
db = 'ملصق'
elseif database:get(bot_id.."Add:Rd:Sudo:Text"..v) then
db = 'رساله'
elseif database:get(bot_id.."Add:Rd:Sudo:Photo"..v) then
db = 'صوره'
elseif database:get(bot_id.."Add:Rd:Sudo:Video"..v) then
db = 'فيديو'
elseif database:get(bot_id.."Add:Rd:Sudo:File"..v) then
db = 'ملف'
elseif database:get(bot_id.."Add:Rd:Sudo:Audio"..v) then
db = 'اغنيه'
end
text = text..""..k.." >> ("..v..") » {"..db.."}\n"
end
if #list == 0 then
text = " ꙳.︙مـڪۅ ࢪدٌۅد ࢦمطۅࢪ ."
end
send(msg.chat_id_, msg.id_,'['..text..']')
end
if text or msg.content_.sticker_ or msg.content_.voice_ or msg.content_.animation_ or msg.content_.audio_ or msg.content_.document_ or msg.content_.photo_ or msg.content_.video_ then  
local test = database:get(bot_id..'Text:Sudo:Bot'..msg.sender_user_id_..':'..msg.chat_id_)
if database:get(bot_id..'Set:Rd'..msg.sender_user_id_..':'..msg.chat_id_) == 'true1' then
database:del(bot_id..'Set:Rd'..msg.sender_user_id_..':'..msg.chat_id_)
if msg.content_.sticker_ then   
database:set(bot_id.."Add:Rd:Sudo:stekr"..test, msg.content_.sticker_.sticker_.persistent_id_)  
end   
if msg.content_.voice_ then  
database:set(bot_id.."Add:Rd:Sudo:vico"..test, msg.content_.voice_.voice_.persistent_id_)  
end   
if msg.content_.animation_ then   
database:set(bot_id.."Add:Rd:Sudo:Gif"..test, msg.content_.animation_.animation_.persistent_id_)  
end  
if text then   
text = text:gsub('"','') 
text = text:gsub("'",'') 
text = text:gsub('`','') 
text = text:gsub('*','') 
database:set(bot_id.."Add:Rd:Sudo:Text"..test, text)  
end  
if msg.content_.audio_ then
database:set(bot_id.."Add:Rd:Sudo:Audio"..test, msg.content_.audio_.audio_.persistent_id_)  
end
if msg.content_.document_ then
database:set(bot_id.."Add:Rd:Sudo:File"..test, msg.content_.document_.document_.persistent_id_)  
end
if msg.content_.video_ then
database:set(bot_id.."Add:Rd:Sudo:Video"..test, msg.content_.video_.video_.persistent_id_)  
end
if msg.content_.photo_ then
if msg.content_.photo_.sizes_[0] then
photo_in_group = msg.content_.photo_.sizes_[0].photo_.persistent_id_
end
if msg.content_.photo_.sizes_[1] then
photo_in_group = msg.content_.photo_.sizes_[1].photo_.persistent_id_
end
if msg.content_.photo_.sizes_[2] then
photo_in_group = msg.content_.photo_.sizes_[2].photo_.persistent_id_
end	
if msg.content_.photo_.sizes_[3] then
photo_in_group = msg.content_.photo_.sizes_[3].photo_.persistent_id_
end
database:set(bot_id.."Add:Rd:Sudo:Photo"..test, photo_in_group)  
end
send(msg.chat_id_, msg.id_,' *꙳.︙تمِہ حفظِ ࢦࢪدِ  .*')
return false  
end  
end
if text and text:match("^(.*)$") then
if database:get(bot_id..'Set:Rd'..msg.sender_user_id_..':'..msg.chat_id_) == 'true' then
send(msg.chat_id_, msg.id_,' *꙳.︙دࢪ࣪ ࢦࢪد ࢦـჂ̤ تࢪيدِ تضيفۿۧا  .*')
database:set(bot_id..'Set:Rd'..msg.sender_user_id_..':'..msg.chat_id_, 'true1')
database:set(bot_id..'Text:Sudo:Bot'..msg.sender_user_id_..':'..msg.chat_id_, text)
database:sadd(bot_id..'List:Rd:Sudo', text)
return false end
end
if text and text:match("^(.*)$") then
if database:get(bot_id..'Set:On'..msg.sender_user_id_..':'..msg.chat_id_) == 'true' then
send(msg.chat_id_, msg.id_,' *꙳.︙تمِہ مِسحہ ࢦࢪدِ لـ؏ـامِہ .*')
list = {"Add:Rd:Sudo:Audio","Add:Rd:Sudo:File","Add:Rd:Sudo:Video","Add:Rd:Sudo:Photo","Add:Rd:Sudo:Text","Add:Rd:Sudo:stekr","Add:Rd:Sudo:vico","Add:Rd:Sudo:Gif"}
for k,v in pairs(list) do
database:del(bot_id..v..text)
end
database:del(bot_id..'Set:On'..msg.sender_user_id_..':'..msg.chat_id_)
database:srem(bot_id..'List:Rd:Sudo', text)
return false
end
end
if text == 'اضف رد للكل' and DevRANW(msg) then 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
send(msg.chat_id_, msg.id_,' *꙳.︙دࢪ࣪ ࢦڪࢦمِۿ ࢦـჂ̤  تࢪيد تضيفۿۧا  .*')
database:set(bot_id..'Set:Rd'..msg.sender_user_id_..':'..msg.chat_id_,true)
return false 
end
if text == 'حذف رد للكل' and DevRANW(msg) then 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
send(msg.chat_id_, msg.id_,' *꙳.︙دࢪ࣪ ࢦࢪد ࢦـჂ̤ تࢪيدِ تحذفٌها   .*')
database:set(bot_id..'Set:On'..msg.sender_user_id_..':'..msg.chat_id_,true)
return false 
end
if text and not database:get(bot_id..'Reply:Sudo'..msg.chat_id_) then
if not database:sismember(bot_id..'Spam:Texting'..msg.sender_user_id_,text) then
local anemi = database:get(bot_id.."Add:Rd:Sudo:Gif"..text)   
local veico = database:get(bot_id.."Add:Rd:Sudo:vico"..text)   
local stekr = database:get(bot_id.."Add:Rd:Sudo:stekr"..text) 
local text1 = database:get(bot_id.."Add:Rd:Sudo:Text"..text)   
local photo = database:get(bot_id.."Add:Rd:Sudo:Photo"..text)
local video = database:get(bot_id.."Add:Rd:Sudo:Video"..text)
local document = database:get(bot_id.."Add:Rd:Sudo:File"..text)
local audio = database:get(bot_id.."Add:Rd:Sudo:Audio"..text)
------------------------------------------------------------------------ امـيـر الـدلـيـم
------------------------------------------------------------------------ امـيـر الـدلـيـم
if text1 then 
send(msg.chat_id_, msg.id_,text1)
database:sadd(bot_id..'Spam:Texting'..msg.sender_user_id_,text) 
end
if stekr then 
sendSticker(msg.chat_id_, msg.id_, 0, 1, nil, stekr)   
database:sadd(bot_id..'Spam:Texting'..msg.sender_user_id_,text) 
end
if veico then 
sendVoice(msg.chat_id_, msg.id_, 0, 1, nil, veico)   
database:sadd(bot_id..'Spam:Texting'..msg.sender_user_id_,text) 
end
if video then 
sendVideo(msg.chat_id_, msg.id_, 0, 1, nil,video)
database:sadd(bot_id..'Spam:Texting'..msg.sender_user_id_,text) 
end
if anemi then 
sendDocument(msg.chat_id_, msg.id_, 0, 1, nil, anemi, '', nil)  
database:sadd(bot_id..'Spam:Texting'..msg.sender_user_id_,text) 
end
if document then
sendDocument(msg.chat_id_, msg.id_, 0, 1,nil, document)   
database:sadd(bot_id..'Spam:Texting'..msg.sender_user_id_,text) 
end  
if audio then
sendAudio(msg.chat_id_,msg.id_,audio)  
database:sadd(bot_id..'Spam:Texting'..msg.sender_user_id_,text) 
end
if photo then
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil,photo,'')
database:sadd(bot_id..'Spam:Texting'..msg.sender_user_id_,text) 
end  
end
end
if text and text:match("^(.*)$") then
if database:get(bot_id.."botss:Amir:Set:Rd"..msg.sender_user_id_..":"..msg.chat_id_) == "true" then
send(msg.chat_id_, msg.id_, '\n*꙳.︙دࢪ࣪ ࢦࢪد ࢦـჂ̤ تࢪيدِ تضيفۿۧا  .*')
database:set(bot_id.."botss:Amir:Set:Rd"..msg.sender_user_id_..":"..msg.chat_id_, "true1")
database:set(bot_id.."botss:Amir:Text:Sudo:Bot"..msg.sender_user_id_..":"..msg.chat_id_, text)
database:sadd(bot_id.."botss:"..msg.chat_id_..":Amir:List:Rd:Sudo", text)
return false end
end
if text and text:match("^(.*)$") then
if database:get(bot_id.."botss:Amir:Set:On"..msg.sender_user_id_..":"..msg.chat_id_) == "true" then
send(msg.chat_id_, msg.id_,"*꙳.︙تمِہ مِسحہ ࢦڪࢦمِۿۧ .*")
database:del(bot_id..'botss:Amir:Add:Rd:Sudo:Text'..text)
database:del(bot_id..'botss:Amir:Add:Rd:Sudo:Text1'..text)
database:del(bot_id..'botss:Amir:Add:Rd:Sudo:Text2'..text)
database:del(bot_id.."botss:Amir:Set:On"..msg.sender_user_id_..":"..msg.chat_id_)
database:srem(bot_id.."botss:"..msg.chat_id_..":Amir:List:Rd:Sudo", text)
return false
end
end
if text == ("مسح الردود المتعدده") and CoSu(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
local list = database:smembers(bot_id.."botss:"..msg.chat_id_..":Amir:List:Rd:Sudo")
for k,v in pairs(list) do  
database:del(bot_id.."botss:"..msg.chat_id_..":Amir:Add:Rd:Sudo:Text"..v) 
database:del(bot_id.."botss:"..msg.chat_id_..":Amir:Add:Rd:Sudo:Text1"..v) 
database:del(bot_id.."botss:"..msg.chat_id_..":Amir:Add:Rd:Sudo:Text2"..v)   
database:del(bot_id.."botss:"..msg.chat_id_..":Amir:List:Rd:Sudo")
end
send(msg.chat_id_, msg.id_,"*꙳.︙تمِہ مِسحہ ࢪدٌۅد ࢦمٌتـ؏ـدٌده .*")
end
if text == ("مسح ردود المدير") and BasicConstructor(msg) then
local list = database:smembers(bot_id..'List:Manager'..msg.chat_id_..'')
for k,v in pairs(list) do
database:del(bot_id.."Add:Rd:Manager:Gif"..v..msg.chat_id_)   
database:del(bot_id.."Add:Rd:Manager:Vico"..v..msg.chat_id_)   
database:del(bot_id.."Add:Rd:Manager:Stekrs"..v..msg.chat_id_) 
database:del(bot_id.."Add:Rd:Manager:Text"..v..msg.chat_id_)   
database:del(bot_id.."Add:Rd:Manager:Photo"..v..msg.chat_id_)
database:del(bot_id.."Add:Rd:Manager:Video"..v..msg.chat_id_)
database:del(bot_id.."Add:Rd:Manager:File"..v..msg.chat_id_)
database:del(bot_id.."Add:Rd:Manager:Audio"..v..msg.chat_id_)
database:del(bot_id..'List:Manager'..msg.chat_id_)
end
send(msg.chat_id_, msg.id_," *꙳.︙تمِہ مِسحہ ࢪدِۅد ࢦمِديࢪ    .*")
end

if text == ("ردود المدير") and Manager(msg) then
local list = database:smembers(bot_id..'List:Manager'..msg.chat_id_..'')
text = " ꙳.︙قائمِۿۧ ࢪدِۅد ࢦمِديࢪ . \n*﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎*\n"
for k,v in pairs(list) do
if database:get(bot_id.."Add:Rd:Manager:Gif"..v..msg.chat_id_) then
db = 'متحركه'
elseif database:get(bot_id.."Add:Rd:Manager:Vico"..v..msg.chat_id_) then
db = 'بصمه'
elseif database:get(bot_id.."Add:Rd:Manager:Stekrs"..v..msg.chat_id_) then
db = 'ملصق'
elseif database:get(bot_id.."Add:Rd:Manager:Text"..v..msg.chat_id_) then
db = 'رساله'
elseif database:get(bot_id.."Add:Rd:Manager:Photo"..v..msg.chat_id_) then
db = 'صوره'
elseif database:get(bot_id.."Add:Rd:Manager:Video"..v..msg.chat_id_) then
db = 'فيديو'
elseif database:get(bot_id.."Add:Rd:Manager:File"..v..msg.chat_id_) then
db = 'ملف'
elseif database:get(bot_id.."Add:Rd:Manager:Audio"..v..msg.chat_id_) then
db = 'اغنيه'
end
text = text..""..k..">> ("..v..") » {"..db.."}\n"
end
if #list == 0 then
text = " ꙳.︙مـڪو ࢪدِۅد ࢦمِديࢪ ."
end
send(msg.chat_id_, msg.id_,'['..text..']')
end
if text or msg.content_.sticker_ or msg.content_.voice_ or msg.content_.animation_ or msg.content_.audio_ or msg.content_.document_ or msg.content_.photo_ or msg.content_.video_ then  
local test = database:get(bot_id..'Text:Manager'..msg.sender_user_id_..':'..msg.chat_id_..'')
if database:get(bot_id..'Set:Manager:rd'..msg.sender_user_id_..':'..msg.chat_id_) == 'true1' then
database:del(bot_id..'Set:Manager:rd'..msg.sender_user_id_..':'..msg.chat_id_)
if msg.content_.sticker_ then   
database:set(bot_id.."Add:Rd:Manager:Stekrs"..test..msg.chat_id_, msg.content_.sticker_.sticker_.persistent_id_)  
end   
if msg.content_.voice_ then  
database:set(bot_id.."Add:Rd:Manager:Vico"..test..msg.chat_id_, msg.content_.voice_.voice_.persistent_id_)  
end   
if msg.content_.animation_ then   
database:set(bot_id.."Add:Rd:Manager:Gif"..test..msg.chat_id_, msg.content_.animation_.animation_.persistent_id_)  
end  
if text then   
text = text:gsub('"','') 
text = text:gsub("'",'') 
text = text:gsub('`','') 
text = text:gsub('*','') 
database:set(bot_id.."Add:Rd:Manager:Text"..test..msg.chat_id_, text)  
end  
if msg.content_.audio_ then
database:set(bot_id.."Add:Rd:Manager:Audio"..test..msg.chat_id_, msg.content_.audio_.audio_.persistent_id_)  
end
if msg.content_.document_ then
database:set(bot_id.."Add:Rd:Manager:File"..test..msg.chat_id_, msg.content_.document_.document_.persistent_id_)  
end
if msg.content_.video_ then
database:set(bot_id.."Add:Rd:Manager:Video"..test..msg.chat_id_, msg.content_.video_.video_.persistent_id_)  
end
if msg.content_.photo_ then
if msg.content_.photo_.sizes_[0] then
photo_in_group = msg.content_.photo_.sizes_[0].photo_.persistent_id_
end
if msg.content_.photo_.sizes_[1] then
photo_in_group = msg.content_.photo_.sizes_[1].photo_.persistent_id_
end
if msg.content_.photo_.sizes_[2] then
photo_in_group = msg.content_.photo_.sizes_[2].photo_.persistent_id_
end	
if msg.content_.photo_.sizes_[3] then
photo_in_group = msg.content_.photo_.sizes_[3].photo_.persistent_id_
end
database:set(bot_id.."Add:Rd:Manager:Photo"..test..msg.chat_id_, photo_in_group)  
end
send(msg.chat_id_, msg.id_,' *꙳.︙تمِہ حفظِ ࢦࢪدِ  .*')
return false  
end  
end
if text and text:match("^(.*)$") then
if database:get(bot_id..'Set:Manager:rd'..msg.sender_user_id_..':'..msg.chat_id_) == 'true' then
send(msg.chat_id_, msg.id_,' *꙳.︙دࢪ࣪ ࢦࢪد ࢦـჂ̤ تࢪيدِ تضيفۿۧا  .*')
database:set(bot_id..'Set:Manager:rd'..msg.sender_user_id_..':'..msg.chat_id_,'true1')
database:set(bot_id..'Text:Manager'..msg.sender_user_id_..':'..msg.chat_id_, text)
database:del(bot_id.."Add:Rd:Manager:Gif"..text..msg.chat_id_)   
database:del(bot_id.."Add:Rd:Manager:Vico"..text..msg.chat_id_)   
database:del(bot_id.."Add:Rd:Manager:Stekrs"..text..msg.chat_id_) 
database:del(bot_id.."Add:Rd:Manager:Text"..text..msg.chat_id_)   
database:del(bot_id.."Add:Rd:Manager:Photo"..text..msg.chat_id_)
database:del(bot_id.."Add:Rd:Manager:Video"..text..msg.chat_id_)
database:del(bot_id.."Add:Rd:Manager:File"..text..msg.chat_id_)
database:del(bot_id.."Add:Rd:Manager:Audio"..text..msg.chat_id_)
database:sadd(bot_id..'List:Manager'..msg.chat_id_..'', text)
return false end
end
if text and text:match("^(.*)$") then
if database:get(bot_id..'Set:Manager:rd'..msg.sender_user_id_..':'..msg.chat_id_..'') == 'true2' then
send(msg.chat_id_, msg.id_,' *꙳.︙تمِہ مِسحہ ࢦࢪدِ  .* ')
database:del(bot_id.."Add:Rd:Manager:Gif"..text..msg.chat_id_)   
database:del(bot_id.."Add:Rd:Manager:Vico"..text..msg.chat_id_)   
database:del(bot_id.."Add:Rd:Manager:Stekrs"..text..msg.chat_id_) 
database:del(bot_id.."Add:Rd:Manager:Text"..text..msg.chat_id_)   
database:del(bot_id.."Add:Rd:Manager:Photo"..text..msg.chat_id_)
database:del(bot_id.."Add:Rd:Manager:Video"..text..msg.chat_id_)
database:del(bot_id.."Add:Rd:Manager:File"..text..msg.chat_id_)
database:del(bot_id.."Add:Rd:Manager:Audio"..text..msg.chat_id_)
database:del(bot_id..'Set:Manager:rd'..msg.sender_user_id_..':'..msg.chat_id_)
database:srem(bot_id..'List:Manager'..msg.chat_id_..'', text)
return false
end
end
if text == "اضف رد" and Manager(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
send(msg.chat_id_, msg.id_,"*꙳.︙ادࢪ࣪ ࢦڪࢦمِۿ ࢦـჂ̤  تࢪيد تضفيۿۧا َ◟ِ 🥤.*")
database:set(bot_id.."Set:Manager:rd"..msg.sender_user_id_..":"..msg.chat_id_,true)
return false 
end
if text == "حذف رد" and Manager(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
send(msg.chat_id_, msg.id_,"*꙳.︙دࢪ࣪ ࢦڪࢦمِۿ ࢦـჂ̤  تࢪيد تحذفۿۧا  .*")
database:set(bot_id.."Set:Manager:rd"..msg.sender_user_id_..":"..msg.chat_id_,"true2")
return false 
end
if text and text:match("^(.*)$") then
if database:get(bot_id.."Set:Manager:rd"..msg.sender_user_id_..":"..msg.chat_id_) == "true" then
send(msg.chat_id_, msg.id_, '*꙳.︙الان دࢪ࣪ ࢦࢪد ࢦـჂ̤ تࢪيدِ تضيفۿۧا  .* \n*꙳.︙قد يكون (ملف - فديو - نص - ملصق - بصمه - متحركه )*\n*꙳.︙تڪدࢪ تضيف : الى النص :*\n꙳.︙`#username` > معرف المستخدم\n꙳.︙`#msgs` > عدد رسائل المستخدم\n꙳.︙`#name` > اسم المستخدم\n꙳.︙`#id` > ايدي المستخدم\n꙳.︙`#stast` > رتبه المستخدم \n꙳.︙`#edit` > عدد ࢦسحڪاتت ')
database:set(bot_id.."Set:Manager:rd"..msg.sender_user_id_..":"..msg.chat_id_,"true1")
database:set(bot_id.."Text:Manager"..msg.sender_user_id_..":"..msg.chat_id_, text)
database:del(bot_id.."Add:Rd:Manager:Gif"..text..msg.chat_id_)   
database:del(bot_id.."Add:Rd:Manager:Vico"..text..msg.chat_id_)   
database:del(bot_id.."Add:Rd:Manager:Stekrs"..text..msg.chat_id_) 
database:del(bot_id.."Add:Rd:Manager:Text"..text..msg.chat_id_)   
database:del(bot_id.."Add:Rd:Manager:Photo"..text..msg.chat_id_)
database:del(bot_id.."Add:Rd:Manager:Video"..text..msg.chat_id_)
database:del(bot_id.."Add:Rd:Manager:File"..text..msg.chat_id_)
database:del(bot_id.."Add:Rd:Manager:Audio"..text..msg.chat_id_)
database:sadd(bot_id.."List:Manager"..msg.chat_id_.."", text)
return false end
end
if text and text:match("^(.*)$") then
if database:get(bot_id.."Set:Manager:rd"..msg.sender_user_id_..":"..msg.chat_id_.."") == "true2" then
send(msg.chat_id_, msg.id_,"*꙳.︙متڪدٌࢪ تنࢪ࣪ࢦ  مطۅࢪ ﮼ﺂ ࢦاساسـჂ̤ ۅمطۅࢪ ࢦسۅࢪسہ .*")
database:del(bot_id.."Add:Rd:Manager:Gif"..text..msg.chat_id_)   
database:del(bot_id.."Add:Rd:Manager:Vico"..text..msg.chat_id_)   
database:del(bot_id.."Add:Rd:Manager:Stekrs"..text..msg.chat_id_) 
database:del(bot_id.."Add:Rd:Manager:Text"..text..msg.chat_id_)   
database:del(bot_id.."Add:Rd:Manager:Photo"..text..msg.chat_id_)
database:del(bot_id.."Add:Rd:Manager:Video"..text..msg.chat_id_)
database:del(bot_id.."Add:Rd:Manager:File"..text..msg.chat_id_)
database:del(bot_id.."Add:Rd:Manager:Audio"..text..msg.chat_id_)
database:del(bot_id.."Set:Manager:rd"..msg.sender_user_id_..":"..msg.chat_id_)
database:srem(bot_id.."List:Manager"..msg.chat_id_.."", text)
return false
end
end
if text and not database:get(bot_id.."Reply:Manager"..msg.chat_id_) then
if not database:sismember(bot_id..'Spam:Texting'..msg.sender_user_id_,text) then
local anemi = database:get(bot_id.."Add:Rd:Manager:Gif"..text..msg.chat_id_)   
local veico = database:get(bot_id.."Add:Rd:Manager:Vico"..text..msg.chat_id_)   
local stekr = database:get(bot_id.."Add:Rd:Manager:Stekrs"..text..msg.chat_id_) 
local Text = database:get(bot_id.."Add:Rd:Manager:Text"..text..msg.chat_id_)   
local photo = database:get(bot_id.."Add:Rd:Manager:Photo"..text..msg.chat_id_)
local video = database:get(bot_id.."Add:Rd:Manager:Video"..text..msg.chat_id_)
local document = database:get(bot_id.."Add:Rd:Manager:File"..text..msg.chat_id_)
local audio = database:get(bot_id.."Add:Rd:Manager:Audio"..text..msg.chat_id_)
if Text then 
tdcli_function({ID="GetUser",user_id_=msg.sender_user_id_},function(arg,data)
local Msguser = database:get(bot_id..'Msg_User'..msg.chat_id_..':'..msg.sender_user_id_) or 0
local rtp = Rutba(msg.sender_user_id_,msg.chat_id_)
local edit = database:get(bot_id..'edits'..msg.chat_id_..msg.sender_user_id_) or 0
local Text = Text:gsub('#username',(data.username_ or 'لا يوجد')) 
local Text = Text:gsub('#name',data.first_name_)
local Text = Text:gsub('#id',msg.sender_user_id_)
local Text = Text:gsub('#edit',edit)
local Text = Text:gsub('#msgs',Msguser)
local Text = Text:gsub('#stast',rtp)
send(msg.chat_id_, msg.id_,'['..Text..']')
database:sadd(bot_id.."Spam:Texting"..msg.sender_user_id_,text) 
end,nil)
end
if stekr then 
sendSticker(msg.chat_id_, msg.id_, 0, 1, nil, stekr)   
database:sadd(bot_id..'Spam:Texting'..msg.sender_user_id_,text) 
end
if veico then 
sendVoice(msg.chat_id_, msg.id_, 0, 1, nil, veico)   
database:sadd(bot_id..'Spam:Texting'..msg.sender_user_id_,text) 
end
if video then 
sendVideo(msg.chat_id_, msg.id_, 0, 1, nil,video)
database:sadd(bot_id..'Spam:Texting'..msg.sender_user_id_,text) 
end
if anemi then 
sendDocument(msg.chat_id_, msg.id_, 0, 1, nil, anemi, '', nil)  
database:sadd(bot_id..'Spam:Texting'..msg.sender_user_id_,text) 
end
if document then
sendDocument(msg.chat_id_, msg.id_, 0, 1,nil, document)   
database:sadd(bot_id..'Spam:Texting'..msg.sender_user_id_,text) 
end  
if audio then
sendAudio(msg.chat_id_,msg.id_,audio)  
database:sadd(bot_id..'Spam:Texting'..msg.sender_user_id_,text) 
end
if photo then
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil,photo,'')
database:sadd(bot_id..'Spam:Texting'..msg.sender_user_id_,text) 
end  
end
end
if text == ("الردود المتعدده") and CoSu(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
local list = database:smembers(bot_id.."botss:"..msg.chat_id_..":Amir:List:Rd:Sudo")
text = "\nقائمِۿۧ ﺂلࢪدِۅد مِتـ؏ـددِۿۧ .\n*ٴ﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎*\n"
for k,v in pairs(list) do
db = "رساله "
text = text..""..k.." >> {"..v.."} >> {"..db.."}\n"
end
if #list == 0 then
text = "مـڪو ࢪدِۅدِ مِتـ؏ـددِۿۧ 🥢."
end
send(msg.chat_id_, msg.id_,"["..text.."]")
end
if text == "اضف رد متعدد" and CoSu(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:set(bot_id.."botss:Amir:Set:Rd"..msg.sender_user_id_..":"..msg.chat_id_,true)
return send(msg.chat_id_, msg.id_,"*꙳.︙دࢪ࣪ ࢦڪࢦمِۿ ࢦـჂ̤  تࢪيد تضيفۿۧا  .*")
end
if text == "حذف رد متعدد" and CoSu(msg) then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
database:set(bot_id.."botss:Amir:Set:On"..msg.sender_user_id_..":"..msg.chat_id_,true)
return send(msg.chat_id_, msg.id_,"*꙳.︙دࢪ࣪ ࢦڪࢦمِۿ ࢦـჂ̤  تࢪيد تحذفۿۧا   َ◟ِ 🥤.*")
end
if text then  
local test = database:get(bot_id.."botss:Amir:Text:Sudo:Bot"..msg.sender_user_id_..":"..msg.chat_id_)
if database:get(bot_id.."botss:Amir:Set:Rd"..msg.sender_user_id_..":"..msg.chat_id_) == "true1" then
database:set(bot_id.."botss:Amir:Set:Rd"..msg.sender_user_id_..":"..msg.chat_id_,'rd1')
if text then   
text = text:gsub('"',"") 
text = text:gsub('"',"") 
text = text:gsub("`","") 
text = text:gsub("*","") 
database:set(bot_id.."botss:"..msg.chat_id_..":Amir:Add:Rd:Sudo:Text"..test, text)  
end  
send(msg.chat_id_, msg.id_,"*꙳.︙تمِہ حفظِ ࢦࢪدِ ﮼ﺂ ࢦاۅࢦ  دࢪ࣪ ࢦࢪدِ ࢦثانـჂ̤  .*")
return false  
end  
end
if text then  
local test = database:get(bot_id.."botss:Amir:Text:Sudo:Bot"..msg.sender_user_id_..":"..msg.chat_id_)
if database:get(bot_id.."botss:Amir:Set:Rd"..msg.sender_user_id_..":"..msg.chat_id_) == "rd1" then
database:set(bot_id.."botss:Amir:Set:Rd"..msg.sender_user_id_..":"..msg.chat_id_,'rd2')
if text then   
text = text:gsub('"',"") 
text = text:gsub('"',"") 
text = text:gsub("`","") 
text = text:gsub("*","") 
database:set(bot_id.."botss:"..msg.chat_id_..":Amir:Add:Rd:Sudo:Text1"..test, text)  
end  
send(msg.chat_id_, msg.id_,"*꙳.︙تمِہ حفظِ ࢦࢪدِ ࢦثانـჂ̤  دࢪ࣪ ࢦࢪدِ ࢦثالث .*")
return false  
end  
end
if text then  
local test = database:get(bot_id.."botss:Amir:Text:Sudo:Bot"..msg.sender_user_id_..":"..msg.chat_id_)
if database:get(bot_id.."botss:Amir:Set:Rd"..msg.sender_user_id_..":"..msg.chat_id_) == "rd2" then
database:set(bot_id.."botss:Amir:Set:Rd"..msg.sender_user_id_..":"..msg.chat_id_,'rd3')
if text then   
text = text:gsub('"',"") 
text = text:gsub('"',"") 
text = text:gsub("`","") 
text = text:gsub("*","") 
database:set(bot_id.."botss:Amir:"..msg.chat_id_..":Add:Rd:Sudo:Text2"..test, text)  
end  
send(msg.chat_id_, msg.id_,"*꙳.︙تمِہ حفظِ ࢦࢪدِ  .*")
return false  
end  
end
if text then
local Text = database:get(bot_id.."botss:"..msg.chat_id_..":Amir:Add:Rd:Sudo:Text"..text)   
local Text1 = database:get(bot_id.."botss:"..msg.chat_id_..":Amir:Add:Rd:Sudo:Text1"..text)   
local Text2 = database:get(bot_id.."botss:"..msg.chat_id_..":Amir:Add:Rd:Sudo:Text2"..text)   
if Text or Text1 or Text2 then 
local texting = {
Text,
Text1,
Text2
}
Textes = math.random(#texting)
send(msg.chat_id_, msg.id_,texting[Textes])
end
end
-------------------------------
if text == ""..(database:get(bot_id..'Name:Bot') or 'ران').." غادر" or text == 'غادر' then  
if Sudo(msg) and not database:get(bot_id..'Left:Bot'..msg.chat_id_)  then 
tdcli_function ({ID = "ChangeChatMemberStatus",chat_id_=msg.chat_id_,user_id_=bot_id,status_={ID = "ChatMemberStatusLeft"},},function(e,g) end, nil) 
send(msg.chat_id_, msg.id_,'*꙳.︙تمِہ مغادٌࢪۿۧ ࢦڪࢪۅپ*') 
database:srem(bot_id..'Chek:Groups',msg.chat_id_)  
end
return false  
end
if text == 'بوت' then
Namebot = (database:get(bot_id..'Name:Bot') or 'ران')
send(msg.chat_id_, msg.id_,'*﮼ﺂسمِيہ '..Namebot..'* ')
end
if text == 'الاحصائيات' then
if Sudo(msg) then 
local Groups = database:scard(bot_id..'Chek:Groups')  
local Users = database:scard(bot_id..'User_Bot')  
Text = ' ﮼ﺂࢦاحِۢـصائيات ꙳. \n'..'*꙳.︙؏ـددِ ࢦڪࢪۅپات . » {'..Groups..'}'..'*\n*꙳.︙ ؏ـددِ ࢦمشتࢪڪينہ . » {'..Users..'}*'
send(msg.chat_id_, msg.id_,Text) 
end
return false
end
if text == 'الكروبات' then
if Sudo(msg) then 
local Groups = database:scard(bot_id..'Chek:Groups')  
local Users = database:scard(bot_id..'User_Bot')  
Text = ' *꙳.︙؏ـدِد ࢦڪࢪۅپات »* {`'..Groups..'`}'
send(msg.chat_id_, msg.id_,Text) 
end
return false
end
if text == 'المشتركين' then
if Sudo(msg) then 
local Groups = database:scard(bot_id..'Chek:Groups')  
local Users = database:scard(bot_id..'User_Bot')  
Text = ' *꙳.︙؏ـددٌ ࢦـمِشتࢪڪينہ »* {`'..Users..'`}'
send(msg.chat_id_, msg.id_,Text) 
end
return false
end
if text == 'تفعيل المغادره' and DevRANW(msg) then   
if database:get(bot_id..'Left:Bot'..msg.chat_id_) then
Text = ' *꙳.︙تمِہ تفـ؏ـيࢦ مغادٌࢪۿۧ  ﺂࢦبۅت .*'
database:del(bot_id..'Left:Bot'..msg.chat_id_)  
else
Text = ' *꙳.︙تمِہ تفـ؏ـيࢦ مغادٌࢪۿۧ  ﺂࢦبۅت .*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تعطيل المغادره' and DevRANW(msg) then  
if not database:get(bot_id..'Left:Bot'..msg.chat_id_) then
Text = ' *꙳.︙تمِہ تفـ؏ـيࢦ مغادٌࢪۿۧ  ﺂࢦبۅت .*'
database:set(bot_id..'Left:Bot'..msg.chat_id_,true)   
else
Text = ' *꙳.︙تمِہ تفـ؏ـيࢦ مغادٌࢪۿۧ  ﺂࢦبۅت .*'
end
send(msg.chat_id_, msg.id_, Text) 
end

if text == 'تفعيل ردود المدير' and Manager(msg) then   
if database:get(bot_id..'Reply:Manager'..msg.chat_id_) then
Text = ' *꙳.︙تمِہ تفـ؏ـيࢦ ࢪدِۅدِ ࢦمدِيࢪ .*'
database:del(bot_id..'Reply:Manager'..msg.chat_id_)  
else
Text = ' *꙳.︙تمِہ تفـ؏ـيࢦ ࢪدِۅدِ ࢦمدِيࢪ .*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تعطيل ردود المدير' and Manager(msg) then  
if not database:get(bot_id..'Reply:Manager'..msg.chat_id_) then
database:set(bot_id..'Reply:Manager'..msg.chat_id_,true)  
Text = '\n *꙳.︙تمِہ تـ؏ـطيࢦ ࢪدِۅدِ ࢦمدِيࢪ .*' 
else
Text = '\n *꙳.︙تمِہ تـ؏ـطيࢦ ࢪدِۅدِ ࢦمدِيࢪ .*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تفعيل ردود المطور' and Manager(msg) then   
if database:get(bot_id..'Reply:Sudo'..msg.chat_id_) then
database:del(bot_id..'Reply:Sudo'..msg.chat_id_)  
Text = '\n *꙳.︙تمِہ تفـ؏ـيࢦ ࢪدِۅدِ ࢦمِطۅࢪ .*' 
else
Text = '\n *꙳.︙تمِہ تفـ؏ـيࢦ ࢪدِۅدِ ࢦمِطۅࢪ .*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تعطيل ردود المطور' and Manager(msg) then  
if not database:get(bot_id..'Reply:Sudo'..msg.chat_id_) then
database:set(bot_id..'Reply:Sudo'..msg.chat_id_,true)   
Text = '\n *꙳.︙تمِہ تـ؏ـطيࢦ ࢪدِۅدِ ࢦمِطۅࢪ .*' 
else
Text = '\n *꙳.︙تمِہ تـ؏ـطيࢦ ࢪدِۅدِ ࢦمِطۅࢪ .*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تفعيل الايدي' and Manager(msg) then   
if database:get(bot_id..'Bot:Id'..msg.chat_id_)  then
database:del(bot_id..'Bot:Id'..msg.chat_id_) 
Text = '\n *꙳.︙تمِہ تفـ؏ـيࢦ ﮼ﺂࢦايدჂ̤ .*' 
else
Text = '\n *꙳.︙ تمِہ تفـ؏ـيࢦ ﮼ﺂࢦايدჂ̤ .*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تعطيل الايدي' and Manager(msg) then  
if not database:get(bot_id..'Bot:Id'..msg.chat_id_)  then
database:set(bot_id..'Bot:Id'..msg.chat_id_,true) 
Text = '\n *꙳.︙تمِہ تـ؏ـطيࢦ ﺂࢦايدჂ̤ .*' 
else
Text = '\n *꙳.︙تمِہ تـ؏ـطيࢦ ﺂࢦايدჂ̤ .*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تفعيل الايدي بالصوره' and Manager(msg) then   
if database:get(bot_id..'Bot:Id:Photo'..msg.chat_id_)  then
database:del(bot_id..'Bot:Id:Photo'..msg.chat_id_) 
Text = '\n *꙳.︙تمِہ تفـ؏ـيࢦ ﮼ﺂࢦايدჂ̤ پاࢦصۅࢪ .*' 
else
Text = '\n *꙳.︙تمِہ تفـ؏ـيࢦ ﮼ﺂࢦايدჂ̤ پاࢦصۅࢪ .ه*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تعطيل الايدي بالصوره' and Manager(msg) then  
if not database:get(bot_id..'Bot:Id:Photo'..msg.chat_id_)  then
database:set(bot_id..'Bot:Id:Photo'..msg.chat_id_,true) 
Text = '\n *꙳.︙تمِہ تـ؏ـطيࢦ ﺂࢦايدჂ̤ پاࢦصۅࢪۿۧ .*' 
else
Text = '\n *꙳.︙تمِہ تـ؏ـطيࢦ ﺂࢦايدჂ̤ پاࢦصۅࢪۿۧ .*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تفعيل الحظر' and Constructor(msg) then   
if database:get(bot_id..'Lock:kick'..msg.chat_id_)  then
database:del(bot_id..'Lock:kick'..msg.chat_id_) 
Text = '\n *꙳.︙تمِہ تفـ؏ـيࢦ ࢦحظِࢪ .*' 
else
Text = '\n *꙳.︙تمِہ تفـ؏ـيࢦ ࢦحظِࢪ .*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تعطيل الحظر' and Constructor(msg) then  
if not database:get(bot_id..'Lock:kick'..msg.chat_id_)  then
database:set(bot_id..'Lock:kick'..msg.chat_id_,true) 
Text = '\n *꙳.︙تمِہ تـ؏ـطيࢦ ࢦحظِࢪ .*' 
else
Text = '\n *꙳.︙تمِہ تـ؏ـطيࢦ ࢦحظِࢪ .*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تفعيل الرفع' and Constructor(msg) then   
if database:get(bot_id..'Lock:Add:Bot'..msg.chat_id_)  then
database:del(bot_id..'Lock:Add:Bot'..msg.chat_id_) 
Text = '\n *꙳.︙تمِہ تفـ؏ـيࢦ ﮼ﺂࢦࢪفِـ؏ .*' 
else
Text = '\n *꙳.︙تمِہ تفـ؏ـيࢦ ﮼ﺂࢦࢪفِـ؏ .*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تعطيل الرفع' and Constructor(msg) then  
if not database:get(bot_id..'Lock:Add:Bot'..msg.chat_id_)  then
database:set(bot_id..'Lock:Add:Bot'..msg.chat_id_,true) 
Text = '\n *꙳.︙تمِہ تـ؏ـطيࢦ ﺂࢦࢪفِـ؏ . *' 
else
Text = '\n *꙳.︙تمِہ تـ؏ـطيࢦ ﺂࢦࢪفِـ؏ . *'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text and text:match("^وضع لقب (.*)$") and msg.reply_to_message_id_ ~= 0 and Constructor(msg) then
local timsh = text:match("^وضع لقب (.*)$")
function start_function(extra, result, success)
if msg.can_be_deleted_ == false then 
send(msg.chat_id_, msg.id_,' *البوت ليس مشرف يرجى ترقيتي !*') 
return false  
end
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
usertext = '\n*꙳.︙اسم المستخدم -› ['..data.first_name_..'](t.me/'..(data.username_ or 'RAN')..') '
status = '\n*꙳.︙تم ضافه {'..timsh..'} كلقب له*'
send(msg.chat_id_, msg.id_, usertext..status)
https.request("https://api.telegram.org/bot"..token.."/promoteChatMember?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.sender_user_id_.."&can_change_info=false&can_delete_messages=false&can_invite_users=True&can_restrict_members=false&can_pin_messages=True&can_promote_members=false")
https.request("https://api.telegram.org/bot"..token.."/setChatAdministratorCustomTitle?chat_id=" .. msg.chat_id_ .. "&user_id=" ..result.sender_user_id_.."&custom_title="..timsh)
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
return false
end
if text == 'ايدي' and tonumber(msg.reply_to_message_id_) > 0 then
function start_function(extra, result, success)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(extra,data) 
local Msguser = tonumber(database:get(bot_id..'Msg_User'..msg.chat_id_..':'..result.sender_user_id_) or 1) 
local Contact = tonumber(database:get(bot_id..'Add:Contact'..msg.chat_id_..':'..result.sender_user_id_) or 0) 
local NUMPGAME = tonumber(database:get(bot_id..'NUM:GAMES'..msg.chat_id_..result.sender_user_id_) or 0)
local edit = tonumber(database:get(bot_id..'edits'..msg.chat_id_..result.sender_user_id_) or 0)
local rtp = Rutba(result.sender_user_id_,msg.chat_id_)
local username = ('[@'..data.username_..']' or 'لا يوجد')
local iduser = result.sender_user_id_
send(msg.chat_id_, msg.id_,' *꙳.︙ﺂيديۿۧ ↫ '..iduser..'*\n*꙳.︙مِـ؏ـࢪفۿۧ ↫* '..username..'\n*꙳.︙ࢪتبتۿۧ ↫ '..rtp..'*\n*꙳.︙تـ؏ـديلاتۿۧ ↫ '..edit..'*\n*꙳.︙نقاطۿ ↫ '..NUMPGAME..'*\n*꙳.︙چۿۧاتۿۧ ↫ '..Contact..'*\n*꙳.︙ࢪسائلۿۧ ↫ '..Msguser..'*')
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
end
if text and text:match("^ايدي @(.*)$") then
local username = text:match("^ايدي @(.*)$")
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
function start_function(extra, result, success)
if result.id_ then
tdcli_function ({ID = "GetUser",user_id_ = result.id_},function(extra,data) 
local Msguser = tonumber(database:get(bot_id..'Msg_User'..msg.chat_id_..':'..result.id_) or 1) 
local Contact = tonumber(database:get(bot_id..'Add:Contact'..msg.chat_id_..':'..result.id_) or 0) 
local NUMPGAME = tonumber(database:get(bot_id..'NUM:GAMES'..msg.chat_id_..result.id_) or 0)
local edit = tonumber(database:get(bot_id..'edits'..msg.chat_id_..result.id_) or 0)
local rtp = Rutba(result.id_,msg.chat_id_)
local username = ('[@'..data.username_..']' or 'لا يوجد')
local iduser = result.id_
send(msg.chat_id_, msg.id_,' *꙳.︙ﺂيديۿۧ ↫ '..iduser..'*\n*꙳.︙مِـ؏ـࢪفۿۧ ↫* '..username..'\n*꙳.︙ࢪتبتۿۧ ↫ '..rtp..'*\n*꙳.︙تـ؏ـديلاتۿۧ ↫ '..edit..'*\n*꙳.︙نقاطۿ ↫ '..NUMPGAME..'*\n*꙳.︙چۿۧاتۿۧ ↫ '..Contact..'*\n*꙳.︙ࢪسائلۿۧ ↫ '..Msguser..'*')
end,nil)
else
send(msg.chat_id_, msg.id_,' *꙳.︙ࢦمـ؏ـࢪف غلط .* ')
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
end
if text == 'رتبتي' then
local rtp = Rutba(msg.sender_user_id_,msg.chat_id_)
send(msg.chat_id_, msg.id_,' *꙳.︙ࢪتبتڪك پࢦبۅت . »* '..rtp)
end
if text == "اسمي"  then 
tdcli_function({ID="GetUser",user_id_=msg.sender_user_id_},function(extra,result,success)
if result.first_name_  then
first_name = ' *꙳.︙﮼ﺂسمڪك ﮼ﺂࢦاۅࢦ : * {*`'..(result.first_name_)..'`*}'
else
first_name = ''
end   
if result.last_name_ then 
last_name = ' *꙳.︙ﺂسمڪك ࢦثانـჂ̤ : * {*`'..result.last_name_..'`*}' 
else
last_name = ''
end  
send(msg.chat_id_, msg.id_,first_name..'\n'..last_name) 
end,nil)
end 
if text == 'ايديي' then
send(msg.chat_id_, msg.id_,' *꙳.︙﮼ﺂيديڪك »* '..msg.sender_user_id_)
end
if text == 'الرتبه' and tonumber(msg.reply_to_message_id_) > 0 then
function start_function(extra, result, success)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(extra,data) 
local rtp = Rutba(result.sender_user_id_,msg.chat_id_)
local username = ' ['..data.first_name_..'](t.me/'..(data.username_ or 'GGGMG')..')'
local iduser = result.sender_user_id_
send(msg.chat_id_, msg.id_,'*- العضو » (*'..username..'*)\n- الرتبه » ('..rtp..')*\n')
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
end
---------
if text and text:match("^الرتبه @(.*)$") then
local username = text:match("^الرتبه @(.*)$")
function start_function(extra, result, success)
if result.id_ then
tdcli_function ({ID = "GetUser",user_id_ = result.id_},function(extra,data) 
local rtp = Rutba(result.id_,msg.chat_id_)
local username = ('[@'..data.username_..']' or 'لا يوجد')
local iduser = result.id_
send(msg.chat_id_, msg.id_,'*- العضو » (*'..username..'*)\n- الرتبه » ('..rtp..')*\n')
end,nil)
else
send(msg.chat_id_, msg.id_,'*- ࢦمـ؏ـࢪف غلط .* ')
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
end
if text == 'كشف' and tonumber(msg.reply_to_message_id_) > 0 then
function start_function(extra, result, success)
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(extra,data) 
local rtp = Rutba(result.sender_user_id_,msg.chat_id_)
local username = ' ['..data.first_name_..'](t.me/'..(data.username_ or 'GGGMG')..')'
local iduser = result.sender_user_id_
send(msg.chat_id_, msg.id_,'*꙳.︙ﺂࢦايدي » ('..iduser..')*\n*꙳.︙﮼ﺂࢦاسمِہ » (*'..username..')\n*꙳.︙ࢦࢪتبۿۧ » ('..rtp..')*\n*꙳.︙نۅ؏ ࢦڪشف » بـﺂࢦࢪد .*')
end,nil)
end
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, start_function, nil)
end
if text and text:match("^كشف @(.*)$") then
local username = text:match("^كشف @(.*)$")
function Function_v(extra, result, success)
if result.id_ then
tdcli_function({ID = "GetUser",user_id_ = result.id_}, function(arg, data)
if data.username_ then
UserName_User = '@' .. data.username_
else
UserName_User = 'لا يوجد'
end
local Id = data.id_
local frLsn = data.first_name_..' '..(data.last_name_ or "")
 local Status_Gps = Rutba(Id,msg.chat_id_)
send(msg.chat_id_, msg.id_, '\n*꙳.︙﮼ﺂࢦاسمِہ » ('..frLsn..')\n꙳.︙ﺂࢦايدي » '..Id..'\n꙳.︙ࢦمـ؏ـࢪف » *['..UserName_User..']*\n꙳.︙ࢦࢪتبۿۧ » '..Status_Gps..'\n꙳.︙نۅ؏ ࢦڪشف - بࢦمـ؏ـࢪف .*')
end, nil)
else
send(msg.chat_id_, msg.id_, ' *꙳.︙لا يوجد حساب بهاذا ࢦمـ؏ـࢪف*')
end
end
tdcli_function({ID = "SearchPublicChat",username_ = username}, Function_v, nil)
return false
end
if text and text:match("^كشف (%d+)$") then
local userid = text:match("^كشف (%d+)$") 
if userid then
tdcli_function ({ID = "GetUser",user_id_ = userid},function(arg,data) 
local UserName = ("@"..data.username_ or "لا يوجد")
local id = userid
local rtp = Rutba(id,msg.chat_id_)
texts ='*꙳.︙ﺂࢦايدي » ('..id..')*\n*꙳.︙ࢦمـ؏ـࢪف » (*['..UserName..'])\n*꙳.︙ࢦࢪتبۿۧ » ('..rtp..')*\n*꙳.︙نۅ؏ ࢦڪشف » بـﺂࢦايدي .*'
send(msg.chat_id_, msg.id_, texts)
end,nil)
return false
end
end  
if text==('عدد الكروب') and Mod(msg) then  
if msg.can_be_deleted_ == false then 
send(msg.chat_id_,msg.id_," *꙳.︙ﺂࢦبۅت مِہ ﺂدمِنہ .* \n") 
return false  
end 
tdcli_function({ID ="GetChat",chat_id_=msg.chat_id_},function(arg,ta) 
tdcli_function({ID="GetChannelFull",channel_id_ = msg.chat_id_:gsub('-100','')},function(arg,data) 
local amir = ' *꙳.︙؏ـددِ ﮼ﺂࢦادٌمنيۿۧ 🥢 :* '..data.administrator_count_..
'\n\n*꙳.︙؏ـددِ ࢦبالـ؏ـينہ 🥢  :* '..data.kicked_count_..
'\n\n*꙳.︙؏ـددِ ﮼ﺂ؏ـضاء ࢦڪࢪۅپ 🥢 :* '..data.member_count_..
'\n\n*꙳.︙؏ـددِ حــچي ࢦڪࢪۅپ 🥢 :* '..(msg.id_/2097152/0.5)..
'\n\n*꙳.︙ ﮼ﺂسمِہ ࢦڪࢪۅپ :* ['..ta.title_..']'
send(msg.chat_id_, msg.id_, amir) 
end,nil)
end,nil)
end 
if text == 'اطردني' or text == 'طردني' then
if not database:get(bot_id..'Cick:Me'..msg.chat_id_) then
if Can_or_NotCan(msg.sender_user_id_, msg.chat_id_) == true then
send(msg.chat_id_, msg.id_, '\n *꙳.︙عذرا لا استطيع طرد ( '..Rutba(msg.sender_user_id_,msg.chat_id_)..' )*')
return false
end
tdcli_function({ID="ChangeChatMemberStatus",chat_id_=msg.chat_id_,user_id_=msg.sender_user_id_,status_={ID="ChatMemberStatusKicked"},},function(arg,data) 
if (data and data.code_ and data.code_ == 400 and data.message_ == "CHAT_ADMIN_REQUIRED") then 
send(msg.chat_id_, msg.id_,' *꙳.︙مِـ؏ـندٌჂ̤ صࢦلاحيۿۧ مڪدٌࢪ ﮼ﺂحظࢪ  . !*') 
return false  
end
if (data and data.code_ and data.code_ == 3) then 
send(msg.chat_id_, msg.id_,' *꙳.︙ﺂࢦبۅت مِہ ﮼ﺂدٌمِنہ ࢪفـ؏ـۿۧ . !*') 
return false  
end
if data and data.code_ and data.code_ == 400 and data.message_ == "USER_ADMIN_INVALID" then 
send(msg.chat_id_, msg.id_,' *꙳.︙مِہ ﮼ﺂڪدࢪ ﮼ﺂطࢪدٌ ﺂدمِنيۿ ࢦڪࢪۅپ .*') 
return false  
end
if data and data.ID and data.ID == 'Ok' then
send(msg.chat_id_, msg.id_,' *꙳.︙مِـ؏ـسـﻼمٌا حياتـჂ̤ .*') 
tdcli_function ({ ID = "ChangeChatMemberStatus", chat_id_ = msg.chat_id_, user_id_ = msg.sender_user_id_, status_ = { ID = "ChatMemberStatusLeft" },},function(arg,ban) end,nil)   
return false
end
end,nil)   
else
send(msg.chat_id_, msg.id_,' *꙳.︙تمِہ تـ؏ـطيࢦ ﺂطࢪدنـჂ̤*') 
end
end
if text and text:match("^صيح (.*)$") then
local username = text:match("^صيح (.*)$") 
if not database:get(bot_id..'Seh:User'..msg.chat_id_) then
function start_function(extra, result, success)
if result and result.message_ and result.message_ == "USERNAME_NOT_OCCUPIED" then 
send(msg.chat_id_, msg.id_,' *꙳.︙ࢦمـ؏ـࢪف غلطٌ  .* ') 
return false  
end
if result and result.type_ and result.type_.channel_ and result.type_.channel_.ID == "Channel" then
send(msg.chat_id_, msg.id_,' *꙳.︙مِہ ﮼ﺂڪدࢪ ﮼ﺂصيحہ مِـ؏ـرفات ࢦقنۅات .*') 
return false  
end
if result.type_.user_.type_.ID == "UserTypeBot" then
send(msg.chat_id_, msg.id_,' *꙳.︙مِہ ﮼ﺂڪدࢪ ﮼ﺂصيحہ مِـ؏ـرفات اࢦپۅتات .*') 
return false  
end
if result and result.type_ and result.type_.channel_ and result.type_.channel_.is_supergroup_ == true then
send(msg.chat_id_, msg.id_,'*꙳.︙مِہ ﮼ﺂڪدࢪ ﮼ﺂصيحہ مِـ؏ـرفات ࢦڪࢪۅپات  .*') 
return false  
end
if result.id_ then
send(msg.chat_id_, msg.id_,' *꙳.︙تـ؏ ﮼حِۢـب ۅﺂحِۢد يࢪيدڪك 💞 . ['..username..']*') 
return false
end
end
tdcli_function ({ID = "SearchPublicChat",username_ = username}, start_function, nil)
else
send(msg.chat_id_, msg.id_,' *꙳.︙تمِہ تـ؏ـطيࢦ صيِحہ .*') 
end
return false
end

if text == 'منو ضافني' then
if not database:get(bot_id..'Added:Me'..msg.chat_id_) then
tdcli_function ({ID = "GetChatMember",chat_id_ = msg.chat_id_,user_id_ = msg.sender_user_id_},function(arg,da) 
if da and da.status_.ID == "ChatMemberStatusCreator" then
send(msg.chat_id_, msg.id_,' *꙳.︙انت منشئ الكروب*') 
return false
end
local Added_Me = database:get(bot_id.."Who:Added:Me"..msg.chat_id_..':'..msg.sender_user_id_)
if Added_Me then 
tdcli_function ({ID = "GetUser",user_id_ = Added_Me},function(extra,result,success)
local Name = '['..result.first_name_..'](tg://user?id='..result.id_..')'
Text = ' *꙳.︙ࢦشخص ࢦـჂ̤ ضافڪك ۿۧۅا :* '..Name
sendText(msg.chat_id_,Text,msg.id_/2097152/0.5,'md')
end,nil)
else
send(msg.chat_id_, msg.id_,' *꙳.︙نتا دخࢦت مِہטּ ࢦࢪابط .*') 
end
end,nil)
else
send(msg.chat_id_, msg.id_,' *꙳.︙تمِہ تـ؏ـطيࢦ ضافنـჂ̤*') 
end
end

if text == 'تفعيل ضافني' and Manager(msg) then   
if database:get(bot_id..'Added:Me'..msg.chat_id_) then
Text = ' *꙳.︙تمِہ تفـ؏ـيࢦ ضافنـჂ̤ .*'
database:del(bot_id..'Added:Me'..msg.chat_id_)  
else
Text = ' *꙳.︙تمِہ تفـ؏ـيࢦ ضافنـჂ̤ .*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تعطيل ضافني' and Manager(msg) then  
if not database:get(bot_id..'Added:Me'..msg.chat_id_) then
database:set(bot_id..'Added:Me'..msg.chat_id_,true)  
Text = '\n *꙳.︙تمِہ تـ؏ـطيࢦ ضافنـჂ̤*'
else
Text = '\n *꙳.︙تمِہ تـ؏ـطيࢦ ضافنـჂ̤*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تفعيل صيح' and Manager(msg) then   
if database:get(bot_id..'Seh:User'..msg.chat_id_) then
Text = ' *꙳.︙تمِہ تفـ؏ـيࢦ صيِحہ  .*'
database:del(bot_id..'Seh:User'..msg.chat_id_)  
else
Text = ' *꙳.︙تمِہ تفـ؏ـيࢦ صيِحہ  .*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تنزيل جميع الرتب' and BasicConstructor(msg) then  
database:del(bot_id..'Constructor'..msg.chat_id_)
database:del(bot_id..'Manager'..msg.chat_id_)
database:del(bot_id..'Mod:User'..msg.chat_id_)
database:del(bot_id..'Special:User'..msg.chat_id_)
send(msg.chat_id_, msg.id_, '\n *꙳.︙تمِہ تنزيࢦۿۧ مِہטּ * \n*꙳.︙﮼ﺂࢦمِطۅࢪينہ +  + ﺂࢦاساسينہ + ﺂࢦمِنشئينہ + ﺂࢦمديࢪ + ﺂࢦادمنيۿۧ + ﮼ﺂࢦمِميࢪ࣪ينہ .* \n')
end
if text == 'تعطيل صيح' and Manager(msg) then  
if not database:get(bot_id..'Seh:User'..msg.chat_id_) then
database:set(bot_id..'Seh:User'..msg.chat_id_,true)  
Text = '\n *꙳.︙تمِہ تـ؏ـطيࢦ صيِحہ .*'
else
Text = '\n *꙳.︙تمِہ تـ؏ـطيࢦ صيِحہ .*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تفعيل اطردني' and Manager(msg) then   
if database:get(bot_id..'Cick:Me'..msg.chat_id_) then
Text = ' *꙳.︙تمِہ تفـ؏ـيࢦ ﮼ﺂطࢪدنـჂ̤*'
database:del(bot_id..'Cick:Me'..msg.chat_id_)  
else
Text = ' *꙳.︙تمِہ تفـ؏ـيࢦ ﮼ﺂطࢪدنـჂ̤*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تعطيل اطردني' and Manager(msg) then  
if not database:get(bot_id..'Cick:Me'..msg.chat_id_) then
database:set(bot_id..'Cick:Me'..msg.chat_id_,true)  
Text = '\n *꙳.︙تمِہ تـ؏ـطيࢦ ﺂطࢪدنـჂ̤*'
else
Text = '\n *꙳.︙تمِہ تـ؏ـطيࢦ ﺂطࢪدنـჂ̤*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == "صورتي"  then
local my_ph = database:get(bot_id.."my_photo:status"..msg.chat_id_)
if not my_ph then
send(msg.chat_id_, msg.id_," *꙳.︙ࢦصۅࢪۿۧ مـ؏ـطلـينۿۧا  .*") 
return false  
end
local function getpro(extra, result, success)
if result.photos_[0] then
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, result.photos_[0].sizes_[1].photo_.persistent_id_," ꙳.︙عدد صورك ↫ "..result.total_count_.." صوره‌‏", msg.id_, msg.id_, "md")
else
send(msg.chat_id_, msg.id_,'مِـ؏ـندڪك صۅࢪۿۧ بحسابڪك .', 1, 'md')
  end end
tdcli_function ({ ID = "GetUserProfilePhotos", user_id_ = msg.sender_user_id_, offset_ = 0, limit_ = 1 }, getpro, nil)
end
if text == 'تغير الايدي' and Manager(msg) then 
local List = {
[[
- ᴜѕᴇʀɴᴀᴍᴇ 𓄹𓄼 #id .
- ʏᴏᴜʀ ɪᴅ 𓄹𓄼 #username  .
- ᴍѕɢѕ 𓄹𓄼 #msgs .
- ѕᴛᴀᴛѕ 𓄹𓄼 #stast .
- ᴇᴅɪᴛ ??𓄼 #game .
]],
[[
➭- 𝒔𝒕𝒂𓂅 #stast 𓍯. 💕
➮- 𝒖𝒔𝒆𝒓𓂅 #username 𓍯. 💕
➭- 𝒎𝒔𝒈𝒆𓂅 #msgs 𓍯. 💕
➭- 𝒊𝒅 𓂅 #id 𓍯. 💕
]],
[[
⚕ 𓆰 𝑾𝒆𝒍𝒄𝒐𝒎𝒆 𝑻𝒐 𝑮𝒓𝒐𝒖𝒑 ★
• 🖤 | 𝑼𝑬𝑺 : #username ‌‌‏⚚
• 🖤 | 𝑺𝑻𝑨 : #stast 🧙🏻‍♂ ☥
• 🖤 | 𝑰𝑫 : #id ‌‌‏♕
• 🖤 | 𝑴𝑺𝑮 : #msgs 𓆊
]],
[[
┌ 𝐔𝐒𝐄𝐑 𖤱 #username 𖦴 .
├ 𝐌𝐒𝐆 𖤱 #msgs 𖦴 .
├ 𝐒𝐓𝐀 𖤱 #stast 𖦴 .
└ 𝐈𝐃 𖤱 #id 𖦴 .
]],
[[
➼ : 𝐼𝐷 𖠀 #id . ♡
➼ : 𝑈𝑆𝐸𝑅 𖠀 #username .♡
➼ : 𝑀𝑆𝐺𝑆 𖠀 #msgs .♡
➼ : 𝑆𝑇𝐴S𝑇 𖠀 #stast .♡ 
➼ : 𝐸𝐷𝐼𝑇  𖠀 #edit .♡
]],
[[
- ايديڪ  ⁞ #id 💘 ٬
- يوزرڪ القميل ⁞ #username 💘 ٬
- رسائلڪ  الطيفهہَ ⁞ #msgs 💘 ٬
- رتبتڪ الحلوه ⁞ #stast  💘٬
- سحڪاتڪ الفول ⁞ #edit 💘 ٬ 
]],
[[
- 𝒊𝒅 ➺ #id 💗
- 𝒖𝒔𝒆𝒓 ➺  #username 💗
- 𝒎𝒔𝒈 ➺ #msgs 💗
- 𝒔𝒕𝒂𝒕𝒆 ➺ #stast 💗
- 𝒆𝒅I𝒕 ➺ #edit  💗
]],
[[
☁️ . USERNAME . #username  💞🧸
☁️ . STAST . #stast 💗🦄
☁️ . ID . #id 🧘🏼‍♀💘
☁️ . MSGS . #msgs 💗👧🏻
]],
[[
- 𓏬 𝐔𝐬𝐄𝐫 : #username 𓂅 .
- 𓏬 𝐌𝐬𝐆  : #msgs 𓂅 .
- 𓏬 𝐒𝐭𝐀 : #stast 𓂅 .
- 𓏬 𝐈𝐃 : #id 𓂅 .
]],
[[
• 𝙐𝙎𝙀𝙍𝙉𝘼𝙈𝙀 ➤ #username .
• 𝙈𝙀𝙎𝙎𝘼𝙂𝙀𝙎 ➤ #msgs .
• 𝙎𝙏𝘼𝙏𝙎 ➤ #stast .
• 𝙄𝘿 ➤ #id .
]]}
local Text_Rand = List[math.random(#List)]
database:set(bot_id.."KLISH:ID"..msg.chat_id_,Text_Rand)
send(msg.chat_id_, msg.id_,'*꙳.︙تمِہ تغيࢪ ﮼ﺂࢦايدٍჂ̤ دࢪ࣪ ﮼ﺂيدِჂ̤ ۅشۅفۿۧ  .*')
end
if text == ("ايدي") and msg.reply_to_message_id_ == 0 and not database:get(bot_id..'Bot:Id'..msg.chat_id_) then 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if not database:sismember(bot_id..'Spam:Texting'..msg.sender_user_id_,text) then
database:sadd(bot_id..'Spam:Texting'..msg.sender_user_id_,text) 
tdcli_function ({ID = "GetChatMember",chat_id_ = msg.chat_id_,user_id_ = msg.sender_user_id_},function(arg,da)  tdcli_function ({ ID = "SendChatAction",  chat_id_ = msg.sender_user_id_, action_ = {  ID = "SendMessageTypingAction", progress_ = 100}  },function(arg,ta)  tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(extra,result,success)  tdcli_function ({ID = "GetUserProfilePhotos",user_id_ = msg.sender_user_id_,offset_ = 0,limit_ = 1},function(extra,amir,success) 
if da.status_.ID == "ChatMemberStatusCreator" then 
rtpa = 'المالك'
elseif da.status_.ID == "ChatMemberStatusEditor" then 
rtpa = 'مشرف' 
elseif da.status_.ID == "ChatMemberStatusMember" then 
rtpa = 'عضو'
end
local Msguser = tonumber(database:get(bot_id..'Msg_User'..msg.chat_id_..':'..msg.sender_user_id_) or 1) 
local nummsggp = tonumber(msg.id_/2097152/0.5)
local nspatfa = tonumber(Msguser / nummsggp * 100)
local Contact = tonumber(database:get(bot_id..'Add:Contact'..msg.chat_id_..':'..msg.sender_user_id_) or 0) 
local NUMPGAME = tonumber(database:get(bot_id..'NUM:GAMES'..msg.chat_id_..msg.sender_user_id_) or 0)
local rtp = Rutba(msg.sender_user_id_,msg.chat_id_)
if result.username_ then
username = '@'..result.username_ 
else
username = 'لا يوجد '
end
local iduser = msg.sender_user_id_
local edit = tonumber(database:get(bot_id..'edits'..msg.chat_id_..msg.sender_user_id_) or 0)
local photps = (amir.total_count_ or 0)
local interaction = Total_Msg(Msguser)
local rtpg = rtpa
local amira = {
" ꙳.︙اروح فـدوه للـحلوين",
" ꙳.︙فديت الصاك محح",
" ꙳.︙فـدشـي عمـي",
" ꙳.︙دغـيرهـا شبـي هـاذ",
" ꙳.︙شهل الگيمر ",
" ꙳.︙شهل الصوره تخمبش ",
" ꙳.︙فديت الحلو ",
" ꙳.︙بـبكن حـلك ",
}
local rdphoto = amira[math.random(#amira)]
if not database:get(bot_id..'Bot:Id:Photo'..msg.chat_id_) then  
local get_id_text = database:get(bot_id.."KLISH:ID"..msg.chat_id_)
if get_id_text then
if result.username_ then
username = '@'..result.username_ 
else
username = 'لا يوجد '
end
get_id_text = get_id_text:gsub('#rdphoto',rdphoto) 
get_id_text = get_id_text:gsub('#id',iduser) 
get_id_text = get_id_text:gsub('#username',username) 
get_id_text = get_id_text:gsub('#msgs',Msguser) 
get_id_text = get_id_text:gsub('#edit',edit) 
get_id_text = get_id_text:gsub('#stast',rtp) 
get_id_text = get_id_text:gsub('#auto',interaction) 
get_id_text = get_id_text:gsub('#game',NUMPGAME) 
get_id_text = get_id_text:gsub('#photos',photps) 
if result.status_.ID == "UserStatusRecently" and result.profile_photo_ ~= false then   
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, amir.photos_[0].sizes_[1].photo_.persistent_id_,get_id_text)   
else 
if result.status_.ID == "UserStatusEmpty" and result.profile_photo_ == false then
send(msg.chat_id_, msg.id_,'['..get_id_text..']')   
else
send(msg.chat_id_, msg.id_, '\n *꙳.︙مِـ؏ـندڪك صۅࢪۿۧ بحسابڪك .* \n['..get_id_text..']')  
end 
end
else
if result.username_ then
username = '@'..result.username_ 
else
username = 'لا يوجد '
end
if result.status_.ID == "UserStatusRecently" and result.profile_photo_ ~= false then
sendPhoto(msg.chat_id_, msg.id_, 0, 1, nil, amir.photos_[0].sizes_[1].photo_.persistent_id_,''..rdphoto..'\n꙳.︙﮼ﺂيديڪك ↫ '..msg.sender_user_id_..'\n꙳.︙مِـ؏ـࢪفكك ↫ '..username..'\n꙳.︙ࢪتبتڪك ↫ '..Rutba(msg.sender_user_id_,msg.chat_id_)..'\n꙳.︙مِۅقـ؏ـڪك ↫ '..rtpa..'\n꙳.︙تفا؏ـࢦڪك ↫ '..Total_Msg(Msguser)..'\n꙳.︙ࢪسائلڪك ↫ '..Msguser..'\n꙳.︙نسبه تفا؏ـࢦڪك ↫ '..string.sub(nspatfa, 1,5)..' %\n꙳.︙ࢦسحڪاتت ↫ '..edit..'\n꙳.︙نقاطٍڪك ↫ '..NUMPGAME..'\n')
else 
if result.status_.ID == "UserStatusEmpty" and result.profile_photo_ == false then
send(msg.chat_id_, msg.id_,'[\n꙳.︙﮼ﺂيديڪك ↫ '..msg.sender_user_id_..'\n꙳.︙مِـ؏ـࢪفكك ↫ '..username..'\n꙳.︙ࢪتبتڪك ↫ '..Rutba(msg.sender_user_id_,msg.chat_id_)..'\n꙳.︙مِۅقـ؏ـڪك ↫ '..rtpa..'\n꙳.︙تفا؏ـࢦڪك ↫ '..Total_Msg(Msguser)..'\n꙳.︙ࢪسائلڪك ↫ '..Msguser..'\n꙳.︙نسبه  تفا؏ـࢦڪك ↫ '..string.sub(nspatfa, 1,5)..' %\n꙳.︙ࢦسحڪاتت ↫ '..edit..'\n꙳.︙نقاطٍڪك ↫ '..NUMPGAME..']\n')
else
send(msg.chat_id_, msg.id_, '\n꙳.︙الصوره ↫ مِـ؏ـندڪك صۅࢪۿۧ بحسابڪك .'..'[\n꙳.︙﮼ﺂيديڪك ↫ '..msg.sender_user_id_..'\n꙳.︙مِـ؏ـࢪفكك ↫ '..username..'\n꙳.︙ࢪتبتڪك ↫ '..Rutba(msg.sender_user_id_,msg.chat_id_)..'\n꙳.︙مِۅقـ؏ـڪك ↫ '..rtpa..'\n꙳.︙تفا؏ـࢦڪك ↫ '..Total_Msg(Msguser)..'\n꙳.︙ࢪسائلڪك ↫ '..Msguser..'\n꙳.︙نسبه تفا؏ـࢦڪك ↫ '..string.sub(nspatfa, 1,5)..' %\n꙳.︙ࢦسحڪاتت ↫ '..edit..'\n꙳.︙نقاطٍڪك ↫ '..NUMPGAME..']\n')
end 
end
end
else
local get_id_text = database:get(bot_id.."KLISH:ID"..msg.chat_id_)
if get_id_text then
get_id_text = get_id_text:gsub('#rdphoto',rdphoto) 
get_id_text = get_id_text:gsub('#id',iduser) 
get_id_text = get_id_text:gsub('#username',username) 
get_id_text = get_id_text:gsub('#msgs',Msguser) 
get_id_text = get_id_text:gsub('#edit',edit) 
get_id_text = get_id_text:gsub('#stast',rtp) 
get_id_text = get_id_text:gsub('#auto',interaction) 
get_id_text = get_id_text:gsub('#game',NUMPGAME) 
get_id_text = get_id_text:gsub('#photos',photps) 
send(msg.chat_id_, msg.id_,'['..get_id_text..']')   
else
send(msg.chat_id_, msg.id_,'[\n ꙳.︙﮼ﺂيديڪك ↫ '..msg.sender_user_id_..'\n ꙳.︙مِـ؏ـࢪفكك ↫ '..username..'\n ꙳.︙ࢪتبتڪك ↫ '..Rutba(msg.sender_user_id_,msg.chat_id_)..'\n ꙳.︙مِۅقـ؏ـڪك ↫ '..rtpa..'\n ꙳.︙تفا؏ـࢦڪك ↫ '..Total_Msg(Msguser)..'\n ꙳.︙ࢪسائلڪك ↫ '..Msguser..'\n ꙳.︙نسبه تفا؏ـࢦڪك ↫ '..string.sub(nspatfa, 1,5)..' %\n ꙳.︙ࢦسحڪاتت ↫ '..edit..'\n ꙳.︙نقاطٍڪك ↫ '..NUMPGAME..']\n')
end
end

end,nil)
end,nil)
end,nil)
end,nil)
end
end

if text == 'سحكاتي' or text == 'تعديلاتي' then 
local Num = tonumber(database:get(bot_id..'edits'..msg.chat_id_..msg.sender_user_id_) or 0)
if Num == 0 then 
Text = ' *꙳.︙ ليس لديك سحكات*'
else
Text = ' *꙳.︙عدد سحكاتك » { '..Num..' } *'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == "مسح سحكاتي" or text == "حذف سحكاتي" then  
send(msg.chat_id_, msg.id_,' *꙳.︙تمِہ مِسحہ سحكاتك*'  )  
database:del(bot_id..'edits'..msg.chat_id_..msg.sender_user_id_)
end
if text == "مسح جهاتي" or text == "حذف جهاتي" then  
send(msg.chat_id_, msg.id_,' *꙳.︙تمِہ مِسحہ جهاتك*'  )  
database:del(bot_id..'Add:Contact'..msg.chat_id_..':'..msg.sender_user_id_)
end
if text == 'جهاتي' or text == 'شكد ضفت' then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
local Num = tonumber(database:get(bot_id..'Add:Contact'..msg.chat_id_..':'..msg.sender_user_id_) or 0) 
if Num == 0 then 
Text = ' *꙳.︙لم تقم بأضافه احد*'
else
Text = ' *꙳.︙عدد جهاتك » { '..Num..' } *'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text == "تنظيف المشتركين" and DevRANW(msg) then 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
local pv = database:smembers(bot_id.."User_Bot")
local sendok = 0
for i = 1, #pv do
tdcli_function({ID='GetChat',chat_id_ = pv[i]
},function(arg,dataq)
tdcli_function ({ ID = "SendChatAction",  
chat_id_ = pv[i], action_ = {  ID = "SendMessageTypingAction", progress_ = 100} 
},function(arg,data) 
if data.ID and data.ID == "Ok"  then
else
database:srem(bot_id.."User_Bot",pv[i])
sendok = sendok + 1
end
if #pv == i then 
if sendok == 0 then
send(msg.chat_id_, msg.id_,' *꙳.︙ مـڪۅ مِشتࢪڪينہ ۅۿۧميۿين پࢦبۅت .* \n')   
else
local ok = #pv - sendok
send(msg.chat_id_, msg.id_,' *꙳.︙؏ـددٌ ࢦـمِشتࢪڪينہ ۿۧس » ( '..#pv..' )*\n*꙳.︙تمِہ مِسحہ » ( '..sendok..' ) مِہטּ ࢦـمِشتࢪڪينہ .*\n*꙳.︙ۿۧس صاࢪۅ ؏ـددٌ ࢦـمِشتࢪڪينہ » ( '..ok..' ) حقيقـჂ̤ .* \n')   
end
end
end,nil)
end,nil)
end
return false
end
if text == "تنظيف الكروبات" and DevRANW(msg) then 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
local group = database:smembers(bot_id..'Chek:Groups') 
local w = 0
local q = 0
for i = 1, #group do
tdcli_function({ID='GetChat',chat_id_ = group[i]
},function(arg,data)
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusMember" then
database:srem(bot_id..'Chek:Groups',group[i])  
tdcli_function ({ID = "ChangeChatMemberStatus",chat_id_=group[i],user_id_=bot_id,status_={ID = "ChatMemberStatusLeft"},},function(e,g) end, nil) 
w = w + 1
end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusLeft" then
database:srem(bot_id..'Chek:Groups',group[i])  
q = q + 1
end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusKicked" then
database:srem(bot_id..'Chek:Groups',group[i])  
q = q + 1
end
if data and data.code_ and data.code_ == 400 then
database:srem(bot_id..'Chek:Groups',group[i])  
w = w + 1
end
if #group == i then 
if (w + q) == 0 then
send(msg.chat_id_, msg.id_,' *꙳.︙ مـڪۅ ڪࢪۅپات ۅۿۧميۿ پࢦبۅت .*\n')   
else
local RAN = (w + q)
local sendok = #group - RAN
if q == 0 then
RAN = ''
else
RAN = '\n*꙳.︙تمِہ مِسحہ » { '..q..' } ڪࢪۅپات مِہטּ ﺂࢦبۅت .*'
end
if w == 0 then
RANk = ''
else
RANk = '\n*꙳.︙تمِہ مِسحہ » {'..w..'} ڪࢪۅپ لاטּ ﺂࢦبۅت ؏ـضۅ .*'
end
send(msg.chat_id_, msg.id_,' *꙳.︙؏ـدِد ࢦڪࢪۅپات ۿۧس . » { '..#group..' }'..RANk..''..RAN..'*\n*꙳.︙ۿۧس ؏ـددٌ ࢦڪࢪۅپات ࢦمۅچۅد بيۿۧا ﺂࢦبۅت . { '..sendok..' } ڪࢪۅپات*\n')   
end
end
end,nil)
end
return false
end

if text and text:match("^(gpinfo)$") or text and text:match("^معلومات الكروب$") then
function gpinfo(arg,data)
-- vardump(data) 
RANdx(msg.chat_id_, msg.id_, ' *꙳.︙﮼ﺂيدჂ̤ ࢦڪࢪۅپ : ( '..msg.chat_id_..' )*\n*꙳.︙؏ـددٌ ﺂࢦادمِنيۿ : ( '..data.administrator_count_..' )*\n*꙳.︙؏ـددٌ ࢦمحضۅࢪينہ . ( '..data.kicked_count_..' )*\n*꙳.︙؏ـددٌ ﮼ﺂࢦا؏ـضاء : ( '..data.member_count_..' )*\n', 'md') 
end 
getChannelFull(msg.chat_id_, gpinfo, nil) 
end
-----------
if text ==("مسح") and Mod(msg) and tonumber(msg.reply_to_message_id_) > 0 then
DeleteMessage(msg.chat_id_,{[0] = tonumber(msg.reply_to_message_id_),msg.id_})   
end   
if database:get(bot_id.."numadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then 
if text and text:match("^الغاء$") then 
database:del(bot_id..'id:user'..msg.chat_id_)  
send(msg.chat_id_, msg.id_, " *꙳.︙تمِہ ﮼ﺂࢦـغاء ﮼ﺂࢦامࢪ  .* ") 
database:del(bot_id.."numadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
return false  
end 
database:del(bot_id.."numadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
local numadded = string.match(text, "(%d+)") 
local iduserr = database:get(bot_id..'id:user'..msg.chat_id_)  
database:del(bot_id..'Msg_User'..msg.chat_id_..':'..msg.sender_user_id_) 
database:incrby(bot_id..'Msg_User'..msg.chat_id_..':'..iduserr,numadded)  
send(msg.chat_id_, msg.id_," *꙳.︙تمِہ ﮼ﺂضافۿ ﮼ﺂࢦه : {"..numadded..'} مِہטּ ࢦࢪسايࢦ :*')  
end
------------------------------------------------------------------------
if database:get(bot_id.."gemadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_) then 
if text and text:match("^الغاء$") then 
database:del(bot_id..'idgem:user'..msg.chat_id_)  
send(msg.chat_id_, msg.id_, " *꙳.︙تمِہ ﮼ﺂࢦـغاء ﮼ﺂࢦامࢪ  .* ") 
database:del(bot_id.."gemadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
return false  
end 
database:del(bot_id.."gemadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_)  
local numadded = string.match(text, "(%d+)") 
local iduserr = database:get(bot_id..'idgem:user'..msg.chat_id_)  
database:incrby(bot_id..'NUM:GAMES'..msg.chat_id_..iduserr,numadded)  
send(msg.chat_id_, msg.id_,  1, "*꙳.︙تمِہ ﮼ﺂضافۿ ﮼ﺂࢦه :* {"..numadded..'} من النقود', 1 , 'md')  
end
------------------------------------------------------------
if text and text:match("^اضف رسائل (%d+)$") and msg.reply_to_message_id_ == 0 and Constructor(msg) then
amir = text:match("^اضف رسائل (%d+)$")
database:set(bot_id..'id:user'..msg.chat_id_,amir)  
database:setex(bot_id.."numadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 120, true)  
send(msg.chat_id_, msg.id_, ' *꙳.︙دࢪ࣪ ﮼ﺂࢦـჂ̤ ؏ـددٌ ࢦࢪسائل ۿۧس .*') 
return false
end
------------------------------------------------------------------------
if text and text:match("^اضف نقاط (%d+)$") and msg.reply_to_message_id_ == 0 and Constructor(msg) then  
amir = text:match("^اضف نقاط (%d+)$")
database:set(bot_id..'idgem:user'..msg.chat_id_,amir)  
database:setex(bot_id.."gemadd:user" .. msg.chat_id_ .. "" .. msg.sender_user_id_, 120, true)  
send(msg.chat_id_, msg.id_, ' *꙳.︙دࢪ࣪ ﮼ﺂࢦـჂ̤ ؏ـددٌ ࢦنقاط ࢦـჂ̤ تࢪيد تضيفۿۧا  :*') 
return false
end
------------------------------------------------------------------------
if text and text:match("^اضف نقاط (%d+)$") and msg.reply_to_message_id_ ~= 0 and Constructor(msg) then
local Num = text:match("^اضف نقاط (%d+)$")
function reply(extra, result, success)
database:incrby(bot_id..'NUM:GAMES'..msg.chat_id_..result.sender_user_id_,Num)  
send(msg.chat_id_, msg.id_," *꙳.︙تمِہ ﮼ﺂضافۿ ﮼ﺂࢦه : {"..Num..'} مِہטּ ࢦنقاط  :*')  
end
tdcli_function ({ID = "GetMessage",chat_id_=msg.chat_id_,message_id_=tonumber(msg.reply_to_message_id_)},reply, nil)
return false
end
------------------------------------------------------------------------
if text and text:match("^اضف رسائل (%d+)$") and msg.reply_to_message_id_ ~= 0 and Constructor(msg) then
local Num = text:match("^اضف رسائل (%d+)$")
function reply(extra, result, success)
database:del(bot_id..'Msg_User'..msg.chat_id_..':'..result.sender_user_id_) 
database:incrby(bot_id..'Msg_User'..msg.chat_id_..':'..result.sender_user_id_,Num)  
send(msg.chat_id_, msg.id_, "\n *꙳.︙تمِہ ﮼ﺂضافۿ ﮼ﺂࢦه : {"..Num..'} مِہטּ ࢦࢪسايࢦ :*')  
end
tdcli_function ({ID = "GetMessage",chat_id_=msg.chat_id_,message_id_=tonumber(msg.reply_to_message_id_)},reply, nil)
return false
end
if text == 'نقاط' or text == 'نقاطي' then 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
local Num = database:get(bot_id..'NUM:GAMES'..msg.chat_id_..msg.sender_user_id_) or 0
if Num == 0 then 
Text = ' *꙳.︙مِہ ࢦـ؏ـپت ٵჂ̤ ࢦـ؏ـپۿۧ ࢦـتࢪيدِ نقاطٌ  .*'
else
Text = ' *꙳.︙؏ـددٌ  نقاطٍڪك ࢦـჂ̤ ࢪبحتۿۧا ۿۧي : { '..Num..' } نقاط*'
end
send(msg.chat_id_, msg.id_,Text) 
end
if text and text:match("^بيع نقاطي (%d+)$") or text and text:match("^بيع نقاط (%d+)$") then
local NUMPY = text:match("^بيع نقاطي (%d+)$") or text and text:match("^بيع نقاط (%d+)$") 
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
if tonumber(NUMPY) == tonumber(0) then
send(msg.chat_id_,msg.id_,"\n* ꙳.︙ممتڪدٌࢪ تبيـ؏ ﮼ﺂقࢦ مِہטּ ¹ . *") 
return false 
end
if tonumber(database:get(bot_id..'NUM:GAMES'..msg.chat_id_..msg.sender_user_id_)) == tonumber(0) then
send(msg.chat_id_,msg.id_,' *꙳.︙مِـ؏ـندڪك نقاط بآࢦاࢦـ؏ـاپ .*\n*꙳.︙﮼ﺂذا تࢪيد تࢪ࣪يد نقاطڪك پࢦـ؏ـبۿۧ . \n*꙳.︙دࢪ࣪ ﮼ﺂࢦاࢦـ؏ـاپ ۅ ﮼ﺂࢦـ؏ـپ !* ') 
else
local NUM_GAMES = database:get(bot_id..'NUM:GAMES'..msg.chat_id_..msg.sender_user_id_)
if tonumber(NUMPY) > tonumber(NUM_GAMES) then
send(msg.chat_id_,msg.id_,'\n ꙳.︙مِـ؏ـندڪك نقاط بۿۧࢦ ࢦـ؏ـبۿۧ .ه \n ꙳.︙لزيادة نقاطٍڪك في اللعبه \n ꙳.︙دࢪ࣪ ﮼ﺂࢦاࢦـ؏ـاپ ۅ ﮼ﺂࢦـ؏ـپ !') 
return false 
end
local NUMNKO = (NUMPY * 50)
database:decrby(bot_id..'NUM:GAMES'..msg.chat_id_..msg.sender_user_id_,NUMPY)  
database:incrby(bot_id..'Msg_User'..msg.chat_id_..':'..msg.sender_user_id_,NUMNKO)  
send(msg.chat_id_,msg.id_,' *꙳.︙تمِہ خصمِہ : { '..NUMPY..' } من نقاطٍڪك* \n*꙳.︙تمِہ ﮼ﺂضافۿۧ . { '..(NUMPY * 50)..' } ࢪساࢦۿۧ ࢦـ ࢪساࢦڪك :*')
end 
return false 
end
if text == 'فحص البوت' and Manager(msg) then
local Chek_Info = https.request('https://api.telegram.org/bot'..token..'/getChatMember?chat_id='.. msg.chat_id_ ..'&user_id='.. bot_id..'')
local Json_Info = JSON.decode(Chek_Info)
if Json_Info.ok == true then
if Json_Info.result.status == "administrator" then
if Json_Info.result.can_change_info == true then
info = 'ꪜ' else info = '✘' end
if Json_Info.result.can_delete_messages == true then
delete = 'ꪜ' else delete = '✘' end
if Json_Info.result.can_invite_users == true then
invite = 'ꪜ' else invite = '✘' end
if Json_Info.result.can_pin_messages == true then
pin = 'ꪜ' else pin = '✘' end
if Json_Info.result.can_restrict_members == true then
restrict = 'ꪜ' else restrict = '✘' end
if Json_Info.result.can_promote_members == true then
promote = 'ꪜ' else promote = '✘' end 
send(msg.chat_id_,msg.id_,'\n *꙳.︙اهلا عزيزي البوت هنا ادمن*'..'\n*꙳.︙وصلاحياته هي ↓* \n*ٴ﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎*'..'\n*꙳.︙تغير معلومات الكروب ↞ ❴ '..info..' ❵'..'*\n*꙳.︙حذف الرسائل ↞ ❴ '..delete..' ❵'..'*\n*꙳.︙حظر المستخدمين ↞ ❴ '..restrict..' ❵'..'*\n*꙳.︙دعوة مستخدمين ↞ ❴ '..invite..' ❵'..'*\n*꙳.︙تثبيت الرسائل ↞ ❴ '..pin..' ❵'..'*\n*꙳.︙اضافة مشرفين جدد ↞ ❴ '..promote..' ❵*')   
end
end
end


if text and text:match("^تغير رد المطور (.*)$") and Manager(msg) then
local Teext = text:match("^تغير رد المطور (.*)$") 
database:set(bot_id.."Sudo:Rd"..msg.chat_id_,Teext)
send(msg.chat_id_, msg.id_," *꙳.︙تمِہ تغيࢪ ࢪد ࢦمطۅࢪ >* "..Teext)
end
if text and text:match("^تغير رد المالك (.*)$") and Manager(msg) then
local Teext = text:match("^تغير رد المالك (.*)$") 
database:set(bot_id.."CoSu:Rd"..msg.chat_id_,Teext)
send(msg.chat_id_, msg.id_," *꙳.︙تمِہ تغيࢪ ࢪد ﮼ﺂࢦمِالڪك >* "..Teext)
end
if text and text:match("^تغير رد منشئ الاساسي (.*)$") and Manager(msg) then
local Teext = text:match("^تغير رد منشئ الاساسي (.*)$") 
database:set(bot_id.."BasicConstructor:Rd"..msg.chat_id_,Teext)
send(msg.chat_id_, msg.id_," *꙳.︙تمِہ تغيࢪ ࢪد ﮼ﺂࢦمنشئ ﮼ﺂࢦاساسيہ >* "..Teext)
end
if text and text:match("^تغير رد المنشئ (.*)$") and Manager(msg) then
local Teext = text:match("^تغير رد المنشئ (.*)$") 
database:set(bot_id.."Constructor:Rd"..msg.chat_id_,Teext)
send(msg.chat_id_, msg.id_," *꙳.︙تمِہ تغيࢪ ࢪد ﺂࢦمنشئ > * "..Teext)
end
if text and text:match("^تغير رد المدير (.*)$") and Manager(msg) then
local Teext = text:match("^تغير رد المدير (.*)$") 
database:set(bot_id.."Manager:Rd"..msg.chat_id_,Teext) 
send(msg.chat_id_, msg.id_," *꙳.︙تمِہ تغيࢪ ࢪد ﮼ﺂࢦمِدِيࢪ >* "..Teext)
end
if text and text:match("^تغير رد الادمن (.*)$") and Manager(msg) then
local Teext = text:match("^تغير رد الادمن (.*)$") 
database:set(bot_id.."Mod:Rd"..msg.chat_id_,Teext)
send(msg.chat_id_, msg.id_," *꙳.︙تمِہ تغيࢪ ࢪد ﮼ﺂࢦادِمِنہ >* "..Teext)
end
if text and text:match("^تغير رد المميز (.*)$") and Manager(msg) then
local Teext = text:match("^تغير رد المميز (.*)$") 
database:set(bot_id.."Special:Rd"..msg.chat_id_,Teext)
send(msg.chat_id_, msg.id_," *꙳.︙تمِہ تغيࢪ ࢪد ࢦمِميࢪ࣪ >* "..Teext)
end
if text and text:match("^تغير رد العضو (.*)$") and Manager(msg) then
local Teext = text:match("^تغير رد العضو (.*)$") 
database:set(bot_id.."Memp:Rd"..msg.chat_id_,Teext)
send(msg.chat_id_, msg.id_," *꙳.︙تمِہ تغيࢪ ࢪد ﮼ﺂࢦـ؏ـضۅ >* "..Teext)
end

if text and text:match("^(.*)$") then
if database:get(bot_id..'help'..msg.sender_user_id_) == 'true' then
send(msg.chat_id_, msg.id_, ' *꙳.︙تمِہ حفظ ڪليشۿۧ .*')
database:del(bot_id..'help'..msg.sender_user_id_)
database:set(bot_id..'help_text',text)
return false
end
end
if text and text:match("^(.*)$") then
if database:get(bot_id..'help1'..msg.sender_user_id_) == 'true' then
send(msg.chat_id_, msg.id_, ' *꙳.︙تمِہ حفظ ڪليشۿۧ .*')
database:del(bot_id..'help1'..msg.sender_user_id_)
database:set(bot_id..'help1_text',text)
return false
end
end
if text and text:match("^(.*)$") then
if database:get(bot_id..'help2'..msg.sender_user_id_) == 'true' then
send(msg.chat_id_, msg.id_, ' *꙳.︙تمِہ حفظ ڪليشۿۧ .*')
database:del(bot_id..'help2'..msg.sender_user_id_)
database:set(bot_id..'help2_text',text)
return false
end
end

if text and text:match("^(.*)$") then
if database:get(bot_id..'help3'..msg.sender_user_id_) == 'true' then
send(msg.chat_id_, msg.id_, ' *꙳.︙تمِہ حفظ ڪليشۿۧ .*')
database:del(bot_id..'help3'..msg.sender_user_id_)
database:set(bot_id..'help3_text',text)
return false
end
end
if text and text:match("^(.*)$") then
if database:get(bot_id..'help4'..msg.sender_user_id_) == 'true' then
send(msg.chat_id_, msg.id_, ' *꙳.︙تمِہ حفظ ڪليشۿۧ .*')
database:del(bot_id..'help4'..msg.sender_user_id_)
database:set(bot_id..'help4_text',text)
return false
end
end
if text and text:match("^(.*)$") then
if database:get(bot_id..'help5'..msg.sender_user_id_) == 'true' then
send(msg.chat_id_, msg.id_, ' *꙳.︙تمِہ حفظ ڪليشۿۧ .*')
database:del(bot_id..'help5'..msg.sender_user_id_)
database:set(bot_id..'help5_text',text)
return false
end
end
if text and text:match("^(.*)$") then
if database:get(bot_id..'help6'..msg.sender_user_id_) == 'true' then
send(msg.chat_id_, msg.id_, ' *꙳.︙تمِہ حفظ ڪليشۿۧ .*')
database:del(bot_id..'help6'..msg.sender_user_id_)
database:set(bot_id..'help6_text',text)
return false
end
end
if text and text:match("^(.*)$") then
if database:get(bot_id..'help7'..msg.sender_user_id_) == 'true' then
send(msg.chat_id_, msg.id_, ' *꙳.︙تمِہ حفظ ڪليشۿۧ .*')
database:del(bot_id..'help7'..msg.sender_user_id_)
database:set(bot_id..'help7_text',text)
return false
end
end
if text and text:match("^(.*)$") then
if database:get(bot_id..'help8'..msg.sender_user_id_) == 'true' then
send(msg.chat_id_, msg.id_, ' *꙳.︙تمِہ حفظ ڪليشۿۧ .*')
database:del(bot_id..'help8'..msg.sender_user_id_)
database:set(bot_id..'help8_text',text)
return false
end
end
if text and text:match("^(.*)$") then
if database:get(bot_id..'help9'..msg.sender_user_id_) == 'true' then
send(msg.chat_id_, msg.id_, ' *꙳.︙تمِہ حفظ ڪليشۿۧ .*')
database:del(bot_id..'help9'..msg.sender_user_id_)
database:set(bot_id..'help9_text',text)
return false
end
end
if text and text:match("^(.*)$") then
if database:get(bot_id..'help10'..msg.sender_user_id_) == 'true' then
send(msg.chat_id_, msg.id_, ' *꙳.︙تمِہ حفظ ڪليشۿۧ .*')
database:del(bot_id..'help10'..msg.sender_user_id_)
database:set(bot_id..'help10_text',text)
return false
end
end

if text == 'استعاده الاوامر' and DevRANW(msg) then
database:del(bot_id..'help_text')
database:del(bot_id..'help1_text')
database:del(bot_id..'help2_text')
database:del(bot_id..'help3_text')
database:del(bot_id..'help4_text')
database:del(bot_id..'help5_text')
database:del(bot_id..'help6_text')
database:del(bot_id..'help7_text')
database:del(bot_id..'help8_text')
database:del(bot_id..'help9_text')
database:del(bot_id..'help10_text')
send(msg.chat_id_, msg.id_, ' *꙳.︙تمِہ ﮼ﺂࢪچا؏ ﺂلاۅﺂمࢪ ࢦـقديمِۿۧ  .*')
end
if text == 'تغير امر الاوامر' and DevRANW(msg) then
send(msg.chat_id_, msg.id_, ' *꙳.︙دࢪ࣪ ࢦڪليشۿۧ . الاوامر*')
database:set(bot_id..'help'..msg.sender_user_id_,'true')
return false 
end
if text == 'تغير امر م1' and DevRANW(msg) then
send(msg.chat_id_, msg.id_, ' *꙳.︙دࢪ࣪ ࢦڪليشۿۧ . م1*')
database:set(bot_id..'help1'..msg.sender_user_id_,'true')
return false 
end

if text == 'تغير امر م2' and DevRANW(msg) then
send(msg.chat_id_, msg.id_, ' *꙳.︙دࢪ࣪ ࢦڪليشۿۧ . م2*')
database:set(bot_id..'help2'..msg.sender_user_id_,'true')
return false 
end

if text == 'تغير امر م3' and DevRANW(msg) then
send(msg.chat_id_, msg.id_, ' *꙳.︙دࢪ࣪ ࢦڪليشۿۧ . م3*')
database:set(bot_id..'help3'..msg.sender_user_id_,'true')
return false 
end

if text == 'تغير امر م4' and DevRANW(msg) then
send(msg.chat_id_, msg.id_, ' *꙳.︙دࢪ࣪ ࢦڪليشۿۧ . م4*')
database:set(bot_id..'help4'..msg.sender_user_id_,'true')
return false 
end

if text == 'تغير امر م5' and DevRANW(msg) then
send(msg.chat_id_, msg.id_, ' *꙳.︙دࢪ࣪ ࢦڪليشۿۧ . م5*')
database:set(bot_id..'help5'..msg.sender_user_id_,'true')
return false 
end

if text == 'تغير امر م6' and DevRANW(msg) then
send(msg.chat_id_, msg.id_, ' *꙳.︙دࢪ࣪ ࢦڪليشۿۧ . م6*')
database:set(bot_id..'help6'..msg.sender_user_id_,'true')
return false 
end

if text == 'تغير امر م7' and DevRANW(msg) then
send(msg.chat_id_, msg.id_, ' *꙳.︙ دࢪ࣪ ࢦڪليشۿۧ . م7*')
database:set(bot_id..'help8'..msg.sender_user_id_,'true')
return false 
end

if text == 'تغير امر م8' and DevRANW(msg) then
send(msg.chat_id_, msg.id_, ' *꙳.︙دࢪ࣪ ࢦڪليشۿۧ . م8*')
database:set(bot_id..'help9'..msg.sender_user_id_,'true')
return false 
end

if text == 'تغير امر م9' and DevRANW(msg) then
send(msg.chat_id_, msg.id_, ' *꙳.︙دࢪ࣪ ࢦڪليشۿۧ . م9*')
database:set(bot_id..'help10'..msg.sender_user_id_,'true')
return false 
end

if text == 'الاوامر' then
if not Mod(msg) then
send(msg.chat_id_, msg.id_,' *꙳.︙هاذا الامر خاص بالادمنيه*\n*꙳.︙ارسل {م9} لعرض اوامر الاعضاء*')
return false
end
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,'  *꙳.︙عذࢪا عليڪ الاشتࢪاڪ في قناه البوت* \n*꙳.︙اشتࢪڪ هنا عمࢪي* ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
local help_text = database:get(bot_id..'help_text')
Text = [[
*꙳.︙ ؏ـمࢪيـہ ؏ـندڪك تسعہ ﮼ﺂۅامࢪ .*
 — — — — — — — — —
*꙳.︙ م1 -› تطࢦعلڪك ﮼ﺂۅامࢪ ࢦحمايا  🐉.*
*꙳.︙ م2 -› تطࢦعلڪك ﮼ﺂۅامࢪ تـ؏ـطيل 🐉.*
*꙳.︙ م3 -› تطࢦعلڪك ﮼ﺂۅامࢪ ضـ؏ : ﮼ﺂضف  🐉.*
* ꙳.︙ م4 -› تطࢦعلڪك ﮼ﺂۅامࢪ مِسحِہ  🐉.*
* ꙳.︙م5 -› تطࢦعلڪك ﮼ﺂۅامࢪ ࢦتنࢪ࣪يل ࢦࢪفـ؏ 🐉.*
* ꙳.︙م6 -›  تطࢦعلڪك ﮼ﺂۅامࢪ ࢦڪࢪۅپ 🐉.*
* ꙳.︙م7 -› تطࢦعلڪك ﮼ﺂۅامࢪ مِطۅࢪ ࢦبوت 🐉.*
* ꙳.︙م8 -› تطࢦعلڪك ﮼ﺂۅامࢪ مِطۅࢪ ﮼ﺂࢦاساسيہ 🐉.*
* ꙳.︙م9  -› تطࢦعلڪك ﮼ﺂۅامࢪ ﮼ﺂࢦا؏ـضاء 🐉.*
 — — — — — — — — —
[ٌ~ 𝙎ٌ𝙊ٌِّ𝙐𝙍ٌٍ𝘾𝙀 ُ𝙍 𝘼 𝙉 . ](t.me/GGGMG) 
]]
send(msg.chat_id_, msg.id_,(help_text or Text)) 
return false
end

if text == "تعطيل الزخرفه" and Manager(msg) then
send(msg.chat_id_, msg.id_, '*꙳.︙تمِہ تـ؏ـطيࢦ ࢦࢪ࣪خࢪفۿۧ .*')
database:set(bot_id.." amir:zhrf_Bots"..msg.chat_id_,"close")
end
if text == "تفعيل الزخرفه" and Manager(msg) then
send(msg.chat_id_, msg.id_,'*꙳.︙تمِہ تفـ؏ـيࢦ ࢦࢪ࣪خࢪفۿۧ .*')
database:set(bot_id.." amir:zhrf_Bots"..msg.chat_id_,"open")
end
if text and text:match("^زخرفه (.*)$") and database:get(bot_id.." amir:zhrf_Bots"..msg.chat_id_) == "open" then
local TextZhrfa = text:match("^زخرفه (.*)$")
zh = https.request('https://vvvzvv.ml/amirZhfa/Teland.php?en='..URL.escape(TextZhrfa)..'')
zx = JSON.decode(zh)
t = "\n*꙳.︙قائمُۿ ࢦࢪ࣪خࢪفۿۧ :* \nٴ꙳.∫ٴ*﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎*ٴ꙳.∫○ٴ \n"
i = 0
for k,v in pairs(zx.ok) do
i = i + 1
t = t..i.."-  "..v.." \n"
end
send(msg.chat_id_, msg.id_, t..'ٴ꙳.∫ٴ*﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎*ٴ꙳.∫○ٴ\n꙳.︙[ٌ~ 𝙎ٌ𝙊ٌِّ𝙐𝙍ٌٍ𝘾𝙀 ُ𝙍 𝘼 𝙉 .](t.me/GGGMG) ')
end
if text == "تعطيل الابراج" and Manager(msg) then
send(msg.chat_id_, msg.id_, '*꙳.︙تمِہ تـ؏ـطيࢦ  ﮼ﺂࢦاپࢪاچ  .*')
database:set(bot_id.." amir:brj_Bots"..msg.chat_id_,"close")
end
if text == "تفعيل الابراج" and Manager(msg) then
send(msg.chat_id_, msg.id_,'*꙳.︙تمِہ تفـ؏ـيࢦ ﮼ﺂࢦاپࢪاچ  .*')
database:set(bot_id.." amir:brj_Bots"..msg.chat_id_,"open")
end
if text and text:match("^برج (.*)$") and database:get(bot_id.." amir:brj_Bots"..msg.chat_id_) == "open" then
local Textbrj = text:match("^برج (.*)$")
gk = https.request('https://vvvzvv.ml/amirBrg/Teland.php?br='..URL.escape(Textbrj)..'')
br = JSON.decode(gk)
i = 0
for k,v in pairs(br.ok) do
i = i + 1
t = v.."\n"
end
send(msg.chat_id_, msg.id_, t)
end
if text == "تعطيل حساب العمر" and Manager(msg) then
send(msg.chat_id_, msg.id_, '*꙳.︙تمِہ تـ؏ـطيࢦ ﮼حِۢـساب ࢦـ؏ـمِࢪ  .*')
database:set(bot_id.." amir:age_Bots"..msg.chat_id_,"close")
end
if text == "تعطيل حساب العمر" and Manager(msg) then
send(msg.chat_id_, msg.id_, '*꙳.︙تمِہ تـ؏ـطيࢦ ﮼حِۢـساب ࢦـ؏ـمِࢪ  .*')
database:set(bot_id.." amir:age_Bots"..msg.chat_id_,"close")
end
if text == "تفعيل حساب العمر" and Manager(msg) then
send(msg.chat_id_, msg.id_,'*꙳.︙تمِہ تفـ؏ـيࢦ ﮼حِۢـساب ࢦـ؏ـمِࢪ .*')
database:set(bot_id.." amir:age_Bots"..msg.chat_id_,"open")
end
if text and text:match("^احسب (.*)$") and database:get(bot_id.." amir:age_Bots"..msg.chat_id_) == "open" then
local Textage = text:match("^احسب (.*)$")
ge = https.request('https://vvvzvv.ml/amirOmr/Teland.php?age='..URL.escape(Textage)..'')
ag = JSON.decode(ge)
i = 0
for k,v in pairs(ag.ok) do
i = i + 1
t = v.."\n"
end
send(msg.chat_id_, msg.id_, t)
end
if text and not database:get(bot_id.."AutoFile") then
Time = database:get(bot_id.."AutoFile:Time")
if Time then 
if Time ~= os.date("%x") then  
local list = database:smembers(bot_id..'Chek:Groups') 
local t = '{"BOT_ID": '..bot_id..',"GP_BOT":{'  
for k,v in pairs(list) do   
NAME = 'RANW Chat'
link = database:get(bot_id.."Private:Group:Link"..msg.chat_id_) or ''
ASAS = database:smembers(bot_id..'Basic:Constructor'..v)
MNSH = database:smembers(bot_id..'Constructor'..v)
MDER = database:smembers(bot_id..'Manager'..v)
MOD = database:smembers(bot_id..'Mod:User'..v)
if k == 1 then
t = t..'"'..v..'":{"RANW":"'..NAME..'",'
else
t = t..',"'..v..'":{"RANW":"'..NAME..'",'
end
if #ASAS ~= 0 then 
t = t..'"ASAS":['
for k,v in pairs(ASAS) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
if #MOD ~= 0 then
t = t..'"MOD":['
for k,v in pairs(MOD) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
if #MDER ~= 0 then
t = t..'"MDER":['
for k,v in pairs(MDER) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
if #MNSH ~= 0 then
t = t..'"MNSH":['
for k,v in pairs(MNSH) do
if k == 1 then
t =  t..'"'..v..'"'
else
t =  t..',"'..v..'"'
end
end   
t = t..'],'
end
t = t..'"linkgroup":"'..link..'"}' or ''
end
t = t..'}}'
local File = io.open('./'..bot_id..'.json', "w")
File:write(t)
File:close()
sendDocument(SUDO, msg.id_,0, 1, nil, './'..bot_id..'.json', '*꙳.︙؏ـددٌ ࢦڪࢪۅپات ﺂࢦبۅت .* { '..#list..'}')
database:set(bot_id.."AutoFile:Time",os.date("%x"))
end
else 
database:set(bot_id.."AutoFile:Time",os.date("%x"))
end
end
if text == "غنيلي" and not database:get(bot_id.."sing:for:me"..msg.chat_id_) then
data,res = https.request('https://vvvzvv.ml/amirVois/Teland.php')
if res == 200 then
audios = json:decode(data)
if audios.Info == true then
local Text ='*꙳.︙تمِہ  ختياࢪ مِࢦف ﮼ﺂࢦڪك .*'
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'ٌ~ 𝙎ٌ𝙊ٌِّ𝙐𝙍ٌٍ𝘾𝙀 ُ𝙍 𝘼 𝙉 ..',url="t.me/GGGMG"}},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendVoice?chat_id=' .. msg.chat_id_ .. '&voice='..URL.escape(audios.info)..'&caption=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end
end
end
if text == "شنو رئيك بهذا" or text == "شنو رئيك بهذ" then
if not database:get(bot_id..'lock:add'..msg.chat_id_) then
local texting = {"ادب سسز يباوع علي بنات ??🥺"," مو خوش ولد 😶","زاحف وما احبه 😾😹"}
send(msg.chat_id_, msg.id_, ''..texting[math.random(#texting)]..'')
end
end
if text == "شنو رئيك بهاي" or text == "شنو رئيك بهايي" then
if not database:get(bot_id..'lock:add'..msg.chat_id_) then
local texting = {"دور حلوين 🤕😹","جكمه وصخه عوفها ☹️😾","حقيره ومنتكبره 😶😂"}
send(msg.chat_id_, msg.id_, ''..texting[math.random(#texting)]..'')
end
end
if text == "هينه" or text == "رزله" then
if not database:get(bot_id..'lock:add'..msg.chat_id_) then
local texting = {"ولك هيو لتندك بسيادك لو بهاي 👞👈","ميستاهل اتعبي روحي ويا لانه عار","عوفه يروحي هاذا طيز يضل يمضرط🤣"}
send(msg.chat_id_, msg.id_, ''..texting[math.random(#texting)]..'')
end
end
if text == "مصه" or text == "بوسه" then
if not database:get(bot_id..'lock:add'..msg.chat_id_) then
local texting = {"مووووووووواححح????","مابوس ولي??😹","خدك/ج نضيف 😂","البوسه بالف حمبي 🌝💋","خلي يزحفلي وابوسه 🙊😻","كل شويه ابوسه كافي 😏","ماابوسه والله هذا زاحف🦎","محح هاي لحاته صاكه??"}
send(msg.chat_id_, msg.id_, ''..texting[math.random(#texting)]..'')
end
end
if text == "كت تويت" or text == "كت اتويت" then
if not database:get(bot_id..'lock:add'..msg.chat_id_) then
local texting = {  "آخر مرة زرت مدينة الملاهي؟",  "آخر مرة أكلت أكلتك المفضّلة؟",  "الوضع الحالي؟\n‏1. سهران\n‏2. ضايج\n‏3. أتأمل",  "آخر شيء ضاع منك؟","كلمة أخيرة لشاغل البال؟","طريقتك المعتادة في التخلّص من الطاقة السلبية؟","شهر من أشهر العام له ذكرى جميلة معك؟","كلمة غريبة من لهجتك ومعناها؟🤓","‏- شيء سمعته عالق في ذهنك هاليومين؟","متى تكره الشخص الذي أمامك حتى لو كنت مِن أشد معجبينه؟","‏- أبرز صفة حسنة في صديقك المقرب؟","هل تشعر أن هنالك مَن يُحبك؟","اذا اكتشفت أن أعز أصدقائك يضمر لك السوء، موقفك الصريح؟","أجمل شيء حصل معك خلال هاليوم؟","صِف شعورك وأنت تُحب شخص يُحب غيرك؟👀💔","كلمة لشخص غالي اشتقت إليه؟💕","آخر خبر سعيد، متى وصلك؟","أنا آسف على ....؟","أوصف نفسك بكلمة؟","صريح، مشتاق؟","‏- صريح، هل سبق وخذلت أحدهم ولو عن غير قصد؟","‏- ماذا ستختار من الكلمات لتعبر لنا عن حياتك التي عشتها الى الآن؟💭","‏- فنان/ة تود لو يدعوكَ على مائدة عشاء؟😁❤","‏- تخيّل شيء قد يحدث في المستقبل؟","‏- للشباب | آخر مرة وصلك غزل من فتاة؟🌚","شخص أو صاحب عوضك ونساك مُر الحياة ما اسمه ؟","| اذا شفت حد واعجبك وعندك الجرأه انك تروح وتتعرف عليه ، مقدمة الحديث شو راح تكون ؟.", }  
send(msg.chat_id_, msg.id_, ''..texting[math.random(#texting)]..'')
end
end
if text == 'تفعيل الردود' and Manager(msg) then   
database:del(bot_id..'lock:reply'..msg.chat_id_)  
Text = ' *꙳.︙تمِہ تفـ؏ـيࢦ ﮼ﺂࢦࢪدِۅدِ .*'
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'تعطيل الردود' and Manager(msg) then  
database:set(bot_id..'lock:reply'..msg.chat_id_,true)  
Text = '\n *꙳.︙تمِہ تـ؏ـطيࢦ ﺂࢦࢪدِۅدِ .*'
send(msg.chat_id_, msg.id_,Text) 
end
if text == 'رابط الحذف' or text == 'رابط حذف' then
t =[[
*رابط الحذف في جميع مواقع التواصل ꙳.
فكر قبل لا تتسرع وتروح*
ٴ*﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎*ٴ
 *꙳. رابط حذف*  [Telegram](https://my.telegram.org/auth?to=delete) ܁
 *꙳. رابط حذف* [instagram](https://www.instagram.com/accounts/login/?next=/accounts/remove/request/permanent/) ܁
 *꙳. رابط حذف* [Facebook](https://www.facebook.com/help/deleteaccount) ܁
 *꙳. رابط حذف* [Snspchat](https://accounts.snapchat.com/accounts/login?continue=https%3A%2F%2Faccounts.snapchat.com%2Faccounts%2Fdeleteaccount) ܁
]]
send(msg.chat_id_, msg.id_,t) 
return false
end
if text and text:match('^الحساب (%d+)$') then
local id = text:match('^الحساب (%d+)$')
local text = 'اضغط لمشاهده الحساب'
tdcli_function ({ID="SendMessage", chat_id_=msg.chat_id_, reply_to_message_id_=msg.id_, disable_notification_=0, from_background_=1, reply_markup_=nil, input_message_content_={ID="InputMessageText", text_=text, disable_web_page_preview_=1, clear_draft_=0, entities_={[0] = {ID="MessageEntityMentionName", offset_=0, length_=19, user_id_=id}}}}, dl_cb, nil)
end
local function oChat(chat_id,cb)
tdcli_function ({
ID = "OpenChat",
chat_id_ = chat_id
}, cb, nil)
end
if text == "صلاحياته" and tonumber(msg.reply_to_message_id_) > 0 then
if tonumber(msg.reply_to_message_id_) ~= 0 then 
function prom_reply(extra, result, success) 
Get_Info(msg,msg.chat_id_,result.sender_user_id_)
end  
tdcli_function ({ID = "GetMessage",chat_id_=msg.chat_id_,message_id_=tonumber(msg.reply_to_message_id_)},prom_reply, nil)
end
end
------------------------------------------------------------------------
if text == "صلاحياتي" then 
if tonumber(msg.reply_to_message_id_) == 0 then 
Get_Info(msg,msg.chat_id_,msg.sender_user_id_)
end  
end
------------------------------------------------------------------------
if text and text:match('^صلاحياته @(.*)') then   
local username = text:match('صلاحياته @(.*)')   
if tonumber(msg.reply_to_message_id_) == 0 then 
function prom_username(extra, result, success) 
if (result and result.code_ == 400 or result and result.message_ == "USERNAME_NOT_OCCUPIED") then
SendText(msg.chat_id_,msg.id_,"*꙳.︙ࢦمـ؏ـࢪف غلط . \n*")   
return false  end   

Get_Info(msg,msg.chat_id_,result.id_)
end  
tdcli_function ({ID = "SearchPublicChat",username_ = username},prom_username,nil) 
end 
end
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
end -- Chat_Type = 'GroupBot' 
end -- end msg 
--------------------------------------------------------------------------------------------------------------
function tdcli_update_callback(data)  -- clback
if data.ID == "UpdateChannel" then 
if data.channel_.status_.ID == "ChatMemberStatusKicked" then 
database:srem(bot_id..'Chek:Groups','-100'..data.channel_.id_)  
end
end
if data.ID == "UpdateNewMessage" then  -- new msg
msg = data.message_
text = msg.content_.text_
--------------------------------------------------------------------------------------------------------------
if text and not database:sismember(bot_id..'Spam:Texting'..msg.sender_user_id_,text) then
database:del(bot_id..'Spam:Texting'..msg.sender_user_id_) 
end
--------------------------------------------------------------------------------------------------------------
if text and database:get(bot_id.."Del:Cmd:Group"..msg.chat_id_..':'..msg.sender_user_id_) == 'true' then
local NewCmmd = database:get(bot_id.."Set:Cmd:Group:New1"..msg.chat_id_..':'..text)
if NewCmmd then
database:del(bot_id.."Set:Cmd:Group:New1"..msg.chat_id_..':'..text)
database:del(bot_id.."Set:Cmd:Group:New"..msg.chat_id_)
database:srem(bot_id.."List:Cmd:Group:New"..msg.chat_id_,text)
send(msg.chat_id_, msg.id_,' *꙳.︙تمِہ حذفِ ﮼ﺂࢦامِࢪ 💞.*')  
else
send(msg.chat_id_, msg.id_,' *꙳.︙مـڪو ﮼ﺂمࢪ ۿۧيج 🥢.*')  
end
database:del(bot_id.."Del:Cmd:Group"..msg.chat_id_..':'..msg.sender_user_id_)
return false
end 
-------------------------------------------------------------------------------------------------------------- 
if data.message_.content_.text_ then
local NewCmmd = database:get(bot_id.."Set:Cmd:Group:New1"..msg.chat_id_..':'..data.message_.content_.text_)
if NewCmmd then
data.message_.content_.text_ = (NewCmmd or data.message_.content_.text_)
end
end
if (text and text == "تعطيل اوامر التحشيش") then 
send(msg.chat_id_, msg.id_, ' *꙳.︙تمِہ تـ؏ـطيࢦ ﺂۅﺂمࢪ ࢦتحِشيشہ  .*')
database:set(bot_id.."Fun_Bots:"..msg.chat_id_,"true")
end
if (text and text == "تفعيل اوامر التحشيش") then 
send(msg.chat_id_, msg.id_, '  *꙳.︙تمِہ تفـ؏ـيࢦ ﺂۅﺂمࢪ ࢦتحِشيشہ .*')
database:del(bot_id.."Fun_Bots:"..msg.chat_id_)
end
local Name_Bot = (database:get(bot_id..'Name:Bot') or 'ران')
if not database:get(bot_id.."Fun_Bots:"..msg.chat_id_) then
if text ==  ""..Name_Bot..' شنو رئيك بهاذا' and tonumber(msg.reply_to_message_id_) > 0 then 
function FunBot(extra, result, success) 
local Fun = {'لوكي وزاحف من ساع زحفلي وحضرته 😒','خوش ولد و ورده مال الله 💋🙄','يلعب ع البنات 🙄', 'ولد زايعته الكاع 😶🙊','صاك يخبل ومعضل ','محلو وشواربه جنها مكناسه 😂🤷🏼‍♀️','اموت عليه 🌝','هوه غير الحب مال اني 🤓❤️','مو خوش ولد صراحه ☹️','ادبسز وميحترم البنات  ', 'فد واحد قذر 🙄😒','ماطيقه كل ما اكمشه ريحته جنها بخاخ بف باف مال حشرات 😂🤷‍♀️','مو خوش ولد 🤓' } 
send(msg.chat_id_, result.id_,''..Fun[math.random(#Fun)]..'')   
end   
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, FunBot, nil)
return false
end  
if text == ""..Name_Bot..' تحب هذا' and tonumber(msg.reply_to_message_id_) > 0 then
function FunBot(extra, result, success) 
local Fun = {'الكبد مال اني ','يولي ماحبه ',' لٱ ايع ','بس لو الكفها اله اعضها 💔','ماخب مطايه اسف','اكلك ۿذﭑ يكلي احبكك لولا ﭑݩٺ شتكول  ','ئووووووووف اموت ع ربه ','ايععععععععع','بلعباس اعشكك','ماحب مخابيل','احبب ميدو وبس','لٱ ماحبه','بله هاي جهره تكلي تحبهه ؟ ','بربك ئنته والله فارغ وبطران وماعدك شي تسوي جاي تسئلني احبهم لولا','افبس حبيبي هذا' } 
send(msg.chat_id_,result.id_,''..Fun[math.random(#Fun)]..'') 
end  
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.reply_to_message_id_)}, FunBot, nil)
return false
end
end
if text and text:match('^'..Name_Bot..' ') then
data.message_.content_.text_ = data.message_.content_.text_:gsub('^'..Name_Bot..' ','')
end
if text == "نسبه الحب" or text == "نسبه حب" and msg.reply_to_message_id_ ~= 0 and Addictive(msg) then
if not database:get(bot_id..'Cick:lov'..msg.chat_id_) then
database:set(bot_id..":"..msg.sender_user_id_..":lov_Bots"..msg.chat_id_,"sendlove")
Text = '*ارسل اسمك واسم الشخص الثاني،*  *\n مثال اسد و لبوى*'
send(msg.chat_id_, msg.id_,Text) 
end
end
if text and text ~="نسبه الحب" and database:get(bot_id..":"..msg.sender_user_id_..":lov_Bots"..msg.chat_id_) == "sendlove" then
num = {"10","20","30","35","75","34","66","82","23","19","55","8","63","32","27","89","99","98","3","80","49","100","6","0",};
sendnum = num[math.random(#num)]
sl = '*نسبه حب* *'..text..'* هي :* '..sendnum..'%*'
send(msg.chat_id_, msg.id_,sl) 
database:del(bot_id..":"..msg.sender_user_id_..":lov_Bots"..msg.chat_id_)
end
if text == "نسبه الكره" or text == "نسبه كره" and msg.reply_to_message_id_ ~= 0 and Addictive(msg) then
if not database:get(bot_id..'Cick:krh'..msg.chat_id_) then
database:set(bot_id..":"..msg.sender_user_id_..":krh_Bots"..msg.chat_id_,"sendkrhe")
Text = '*ارسل اسمك واسم الشخص الثاني،*  *\n مثال اسد و لبوى*'
send(msg.chat_id_, msg.id_,Text) 
end
end
if text and text ~="نسبه الكره" and database:get(bot_id..":"..msg.sender_user_id_..":krh_Bots"..msg.chat_id_) == "sendkrhe" then
num = {"10","20","30","35","75","34","66","82","23","19","55","8","63","32","27","89","99","98","3","80","8","100","6","0",};
sendnum = num[math.random(#num)]
sl = '*نسبه كره* *'..text..'* هي : *'..sendnum..'%*'
send(msg.chat_id_, msg.id_,sl) 
database:del(bot_id..":"..msg.sender_user_id_..":krh_Bots"..msg.chat_id_)
end
if text == "نسبه رجوله" or text == "نسبه الرجوله" and msg.reply_to_message_id_ ~= 0 and Addictive(msg) then
if not database:get(bot_id..'Cick:rjo'..msg.chat_id_) then
database:set(bot_id..":"..msg.sender_user_id_..":rjo_Bots"..msg.chat_id_,"sendrjoe")
Text = '*ارسل اسم الشخص الذي تريد قياس نسبه رجولته* *\n مثال امير*'
send(msg.chat_id_, msg.id_,Text) 
end
end
if text and text ~="نسبه رجوله" and database:get(bot_id..":"..msg.sender_user_id_..":rjo_Bots"..msg.chat_id_) == "sendrjoe" then
numj = {"10","20","30","35","75","34","66","82","23","19","55","80","63","32","27","89","99","98","79","100","8","3","6","0",};
sendnuj = numj[math.random(#numj)]
xl = '*نسبه رجوله* *'..text..'* هي : *\n '..sendnuj..'%*'
send(msg.chat_id_, msg.id_,xl) 
database:del(bot_id..":"..msg.sender_user_id_..":rjo_Bots"..msg.chat_id_)
end
if text == "نسبه الانوثه" or text == "نسبه انوثه" and msg.reply_to_message_id_ ~= 0 and Addictive(msg) then
if not database:get(bot_id..'Cick:ano'..msg.chat_id_) then
database:set(bot_id..":"..msg.sender_user_id_..":ano_Bots"..msg.chat_id_,"sendanoe")
Text = '*ارسل اسم الشخص الذي تريد قياس نسبه انوثتها* *\n مثال نونه*'
send(msg.chat_id_, msg.id_,Text) 
end
end
if text and text ~="نسبه الانوثه" and database:get(bot_id..":"..msg.sender_user_id_..":ano_Bots"..msg.chat_id_) == "sendanoe" then
numj = {"10","20","30","35","75","34","66","82","23","19","55","80","63","32","27","89","99","98","79","100","8","3","6","0",};
sendnuj = numj[math.random(#numj)]
xl = '*نسبه الانوثه* *'..text..'* هي : *\n '..sendnuj..'%*'
send(msg.chat_id_, msg.id_,xl) 
database:del(bot_id..":"..msg.sender_user_id_..":ano_Bots"..msg.chat_id_)
end
--------------------------------------------------------------------------------------------------------------
if msg.sender_user_id_ and Muted_User(msg.chat_id_,msg.sender_user_id_) then 
DeleteMessage(msg.chat_id_, {[0] = msg.id_})  
return false  
end
--------------------------------------------------------------------------------------------------------------
if msg.sender_user_id_ and Ban_User(msg.chat_id_,msg.sender_user_id_) then 
chat_kick(msg.chat_id_,msg.sender_user_id_) 
DeleteMessage(msg.chat_id_, {[0] = msg.id_}) 
return false  
end
--------------------------------------------------------------------------------------------------------------
if msg.content_ and msg.content_.members_ and msg.content_.members_[0] and msg.content_.members_[0].id_ and Ban_User(msg.chat_id_,msg.content_.members_[0].id_) then 
chat_kick(msg.chat_id_,msg.content_.members_[0].id_) 
DeleteMessage(msg.chat_id_, {[0] = msg.id_}) 
return false
end
--------------------------------------------------------------------------------------------------------------
if msg.sender_user_id_ and GBan_User(msg.sender_user_id_) then 
chat_kick(msg.chat_id_,msg.sender_user_id_) 
DeleteMessage(msg.chat_id_, {[0] = msg.id_}) 
return false 
end
--------------------------------------------------------------------------------------------------------------
if msg.sender_user_id_ and Gmute_User(msg.sender_user_id_) then 
DeleteMessage(msg.chat_id_, {[0] = msg.id_}) 
return false 
end
--------------------------------------------------------------------------------------------------------------
if msg.content_ and msg.content_.members_ and msg.content_.members_[0] and msg.content_.members_[0].id_ and GBan_User(msg.content_.members_[0].id_) then 
chat_kick(msg.chat_id_,msg.content_.members_[0].id_) 
DeleteMessage(msg.chat_id_, {[0] = msg.id_})  
end 
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageChatAddMembers" then  
database:set(bot_id.."Who:Added:Me"..msg.chat_id_..':'..msg.content_.members_[0].id_,msg.sender_user_id_)
local mem_id = msg.content_.members_  
local Bots = database:get(bot_id.."lock:Bot:kick"..msg.chat_id_) 
for i=0,#mem_id do  
if msg.content_.members_[i].type_.ID == "UserTypeBot" and not Mod(msg) and Bots == "kick" then   
https.request("https://api.telegram.org/bot"..token.."/kickChatMember?chat_id="..msg.chat_id_.."&user_id="..msg.sender_user_id_)
RAN = https.request("https://api.telegram.org/bot"..token.."/kickChatMember?chat_id="..msg.chat_id_.."&user_id="..mem_id[i].id_)
local Json_Info = JSON.decode(RAN)
if Json_Info.ok == true and #mem_id == i then
local Msgs = {}
Msgs[0] = msg.id_
msgs_id = msg.id_-1048576
for i=1 ,(150) do 
msgs_id = msgs_id+1048576
table.insert(Msgs,msgs_id)
end
tdcli_function ({ID = "GetMessages",chat_id_ = msg.chat_id_,message_ids_ = Msgs},function(arg,data);MsgsDel = {};for i=0 ,data.total_count_ do;if not data.messages_[i] then;if not MsgsDel[0] then;MsgsDel[0] = Msgs[i];end;table.insert(MsgsDel,Msgs[i]);end;end;if MsgsDel[0] then;tdcli_function({ID="DeleteMessages",chat_id_ = arg.chat_id_,message_ids_=MsgsDel},function(arg,data)end,nil);end;end,{chat_id_=msg.chat_id_})
tdcli_function({ID = "GetChannelMembers",channel_id_ = getChatId(msg.chat_id_).ID,filter_ = {ID = "ChannelMembersBots"},offset_ = 0,limit_ = 100 },function(arg,tah) local admins = tah.members_ for i=0 , #admins do if tah.members_[i].status_.ID ~= "ChatMemberStatusEditor" and not is_mod(msg) then tdcli_function ({ID = "ChangeChatMemberStatus",chat_id_ = msg.chat_id_,user_id_ = admins[i].user_id_,status_ = {ID = "ChatMemberStatusKicked"},}, function(arg,f) end, nil) end end end,nil)  
end
end 
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageChatAddMembers" then  
local mem_id = msg.content_.members_  
local Bots = database:get(bot_id.."lock:Bot:kick"..msg.chat_id_) 
for i=0,#mem_id do  
if msg.content_.members_[i].type_.ID == "UserTypeBot" and not Mod(msg) and Bots == "del" then   
RAN = https.request("https://api.telegram.org/bot"..token.."/kickChatMember?chat_id="..msg.chat_id_.."&user_id="..mem_id[i].id_)
local Json_Info = JSON.decode(RAN)
if Json_Info.ok == true and #mem_id == i then
local Msgs = {}
Msgs[0] = msg.id_
msgs_id = msg.id_-1048576
for i=1 ,(150) do 
msgs_id = msgs_id+1048576
table.insert(Msgs,msgs_id)
end
tdcli_function ({ID = "GetMessages",chat_id_ = msg.chat_id_,message_ids_ = Msgs},function(arg,data);MsgsDel = {};for i=0 ,data.total_count_ do;if not data.messages_[i] then;if not MsgsDel[0] then;MsgsDel[0] = Msgs[i];end;table.insert(MsgsDel,Msgs[i]);end;end;if MsgsDel[0] then;tdcli_function({ID="DeleteMessages",chat_id_ = arg.chat_id_,message_ids_=MsgsDel},function(arg,data)end,nil);end;end,{chat_id_=msg.chat_id_})
tdcli_function({ID = "GetChannelMembers",channel_id_ = getChatId(msg.chat_id_).ID,filter_ = {ID = "ChannelMembersBots"},offset_ = 0,limit_ = 100 },function(arg,tah) local admins = tah.members_ for i=0 , #admins do if tah.members_[i].status_.ID ~= "ChatMemberStatusEditor" and not is_mod(msg) then tdcli_function ({ID = "ChangeChatMemberStatus",chat_id_ = msg.chat_id_,user_id_ = admins[i].user_id_,status_ = {ID = "ChatMemberStatusKicked"},}, function(arg,f) end, nil) end end end,nil)  
end
end 
end
end
if msg.content_.ID == 'MessagePinMessage' then
if Constructor(msg) then 
database:set(bot_id..'Pin:Id:Msg'..msg.chat_id_,msg.content_.message_id_)
else
local Msg_Pin = database:get(bot_id..'Pin:Id:Msg'..msg.chat_id_)
if Msg_Pin and database:get(bot_id.."lockpin"..msg.chat_id_) then
PinMessage(msg.chat_id_,Msg_Pin)
end
end
end
--------------------------------------------------------------------------------------------------------------
if msg.content_.ID == "MessageChatDeletePhoto" or msg.content_.ID == "MessageChatChangePhoto" or msg.content_.ID == 'MessagePinMessage' or msg.content_.ID == "MessageChatJoinByLink" or msg.content_.ID == "MessageChatAddMembers" or msg.content_.ID == 'MessageChatChangeTitle' or msg.content_.ID == "MessageChatDeleteMember" then   
if database:get(bot_id..'lock:tagservr'..msg.chat_id_) then  
DeleteMessage(msg.chat_id_,{[0] = msg.id_})   
return false
end
end   
--------------------------------------------------------------------------------------------------------------
SourceRAN(data.message_,data)
plugin_Peland(data.message_)
--------------------------------------------------------------------------------------------------------------
if Chat_Type == 'GroupBot' and ChekAdd(msg.chat_id_) == true then
tdcli_function ({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data) 
if data.username_ then
database:set(bot_id..'user:Name'..msg.sender_user_id_,(data.username_))
end
--------------------------------------------------------------------------------------------------------------
if tonumber(data.id_) == tonumber(bot_id) then
return false
end
end,nil)   
end
elseif (data.ID == "UpdateMessageEdited") then
local msg = data
tdcli_function ({ID = "GetMessage",chat_id_ = msg.chat_id_,message_id_ = tonumber(msg.message_id_)},function(extra, result, success)
database:incr(bot_id..'edits'..result.chat_id_..result.sender_user_id_)
local Text = result.content_.text_
if database:get(bot_id.."lock_edit_med"..msg.chat_id_) and not Text and not BasicConstructor(result) then
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
local username = data.username_
local name = data.first_name_
local iduser = data.id_
local users = ('[@'..data.username_..']' or iduser)
local list = database:smembers(bot_id..'Constructor'..msg.chat_id_)
t = "\n *꙳.︙شخصہ دٌيحاۅل يـ؏ـدل ؏ ࢦميديا  .* \n"
for k,v in pairs(list) do
local username = database:get(bot_id.."user:Name" .. v)
if username then
t = t..""..k.."- ([@"..username.."])\n"
else
t = t..""..k.."- (`"..v.."`)\n"
end
end
if #list == 0 then
t = " *꙳.︙مـڪۅ ﺂدمِنہ .*"
end
send(msg.chat_id_,0,''..t..'\n*﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎﹎*\n*꙳.︙تمِہ ࢦتـ؏ـديل ؏ ࢦميديا :*\n*꙳.︙ࢦشخصہ ࢦـ سۅۿۧ ࢦتـ؏ـديل :*\n*꙳.︙﮼ﺂيدჂ̤ ࢦشخصہ : ◂ '..result.sender_user_id_..'*\n*꙳.︙مِـ؏ـࢪف ࢦشخصہ :{ '..users..' }*') 
end,nil)
DeleteMessage(msg.chat_id_,{[0] = msg.message_id_}) 
end
local text = result.content_.text_
if not Mod(result) then
------------------------------------------------------------------------
if text and text:match("[Jj][Oo][Ii][Nn][Cc][Hh][Aa][Tt]") or text and text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or text and text:match("[Tt].[Mm][Ee]") or text and text:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or text and text:match("[Tt][Ee][Ll][Ee][Ss][Cc][Oo].[Pp][Ee]") then
if database:get(bot_id.."lock:Link"..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = data.message_id_}) 
return false
end 
end
------------------------------------------------------------------------
if text and text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or text and text:match("[Tt].[Mm][Ee]") or text and text:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or text and text:match("[Tt][Ee][Ll][Ee][Ss][Cc][Oo].[Pp][Ee]") then
if database:get(bot_id.."lock:Link"..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = data.message_id_}) 
return false
end 
end
------------------------------------------------------------------------
if text and text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or text and text:match("[Tt].[Mm][Ee]") or text and text:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or text and text:match("[Tt][Ee][Ll][Ee][Ss][Cc][Oo].[Pp][Ee]") then
if database:get(bot_id.."lock:Link"..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = data.message_id_}) 
return false
end  
end
------------------------------------------------------------------------
if text and text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa][Mm].[Mm][Ee]") or text and text:match("[Tt].[Mm][Ee]") or text and text:match("[Tt][Ll][Gg][Rr][Mm].[Mm][Ee]") or text and text:match("[Tt][Ee][Ll][Ee][Ss][Cc][Oo].[Pp][Ee]") then
if database:get(bot_id.."lock:Link"..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = data.message_id_}) 
return false
end  
end 
------------------------------------------------------------------------
if text and text:match("[hH][tT][tT][pP][sT]") or text and text:match("[tT][eE][lL][eE][gG][rR][aA].[Pp][Hh]") or text and text:match("[Tt][Ee][Ll][Ee][Gg][Rr][Aa].[Pp][Hh]") then
if database:get(bot_id.."lock:Link"..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = data.message_id_}) 
return false
end  
end 
------------------------------------------------------------------------
if text and text:match("(.*)(@)(.*)") then
if database:get(bot_id.."lock:user:name"..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = data.message_id_}) 
return false
end  
end
------------------------------------------------------------------------
if text and text:match("@") then
if database:get(bot_id.."lock:user:name"..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = data.message_id_}) 
return false
end  
end 
------------------------------------------------------------------------
if text and text:match("(.*)(#)(.*)") then
if database:get(bot_id.."lock:hashtak"..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = data.message_id_}) 
return false
end  
end 
------------------------------------------------------------------------
if text and text:match("#") then
if database:get(bot_id.."lock:user:name"..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = data.message_id_}) 
return false
end  
end 
------------------------------------------------------------------------
local RANAbot = database:get(bot_id.."RAN1:Add:Filter:Rp2"..text..result.chat_id_)   
if RANAbot then
tdcli_function ({ID = "GetUser",user_id_ = result.sender_user_id_},function(arg,data) 
if data.username_ ~= false then
send(msg.chat_id_,0," *꙳.︙العضو :* {["..data.first_name_.."](T.ME/"..data.username_..")}\n꙳.︙["..RANAbot.."] \n") 
else
send(msg.chat_id_,0," *꙳.︙العضو :* {["..data.first_name_.."](T.ME/GGGMG)}\n꙳.︙["..RANAbot.."] \n") 
end
end,nil)   
DeleteMessage(msg.chat_id_,{[0] = data.message_id_}) 
return false
end
------------------------------------------------------------------------
if text and text:match("/") then
if database:get(bot_id.."lock:Cmd"..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = data.message_id_}) 
return false
end 
end 
if text and text:match("(.*)(/)(.*)") then
if database:get(bot_id.."lock:Cmd"..msg.chat_id_) then
DeleteMessage(msg.chat_id_,{[0] = data.message_id_}) 
return false
end 
end
------------------------------------------------------------------------
if text then
local RAN1_Msg = database:get(bot_id.."RAN1:Add:Filter:Rp2"..text..result.chat_id_)   
if RAN1_Msg then
send(msg.chat_id_, msg.id_," ꙳.︙"..RAN1_Msg)
DeleteMessage(result.chat_id_, {[0] = data.message_id_}) 
return false
end
end
end
end,nil)
------------------------------------------------------------------------

elseif (data.ID == "UpdateOption" and data.name_ == "my_id") then 
local list = database:smembers(bot_id.."User_Bot") 
for k,v in pairs(list) do 
tdcli_function({ID='GetChat',chat_id_ = v},function(arg,data) end,nil) 
end 
local list = database:smembers(bot_id..'Chek:Groups') 
for k,v in pairs(list) do 
tdcli_function({ID='GetChat',chat_id_ = v
},function(arg,data)
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusMember" then
database:srem(bot_id..'Chek:Groups',v)  
tdcli_function ({ID = "ChangeChatMemberStatus",chat_id_=v,user_id_=bot_id,status_={ID = "ChatMemberStatusLeft"},},function(e,g) end, nil) 
end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusLeft" then
database:srem(bot_id..'Chek:Groups',v)  
end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusKicked" then
database:srem(bot_id..'Chek:Groups',v)  
end
if data and data.code_ and data.code_ == 400 then
database:srem(bot_id..'Chek:Groups',v)  
end
if data and data.type_ and data.type_.channel_ and data.type_.channel_.status_ and data.type_.channel_.status_.ID == "ChatMemberStatusEditor" then
database:sadd(bot_id..'Chek:Groups',v)  
end 
end,nil)
end

elseif (data.ID == "UpdateMessageSendSucceeded") then
local msg = data.message_
local text = msg.content_.text_
local Get_Msg_Pin = database:get(bot_id..'Msg:Pin:Chat'..msg.chat_id_)
if Get_Msg_Pin ~= nil then
if text == Get_Msg_Pin then
tdcli_function ({ID = "PinChannelMessage",channel_id_ = msg.chat_id_:gsub('-100',''),message_id_ = msg.id_,disable_notification_ = 0},function(arg,d) if d.ID == 'Ok' then;database:del(bot_id..'Msg:Pin:Chat'..msg.chat_id_);end;end,nil)   
elseif (msg.content_.sticker_) then 
if Get_Msg_Pin == msg.content_.sticker_.sticker_.persistent_id_ then
tdcli_function ({ID = "PinChannelMessage",channel_id_ = msg.chat_id_:gsub('-100',''),message_id_ = msg.id_,disable_notification_ = 0},function(arg,d) database:del(bot_id..'Msg:Pin:Chat'..msg.chat_id_) end,nil)   
end
end
if (msg.content_.animation_) then 
if msg.content_.animation_.animation_.persistent_id_ == Get_Msg_Pin then
tdcli_function ({ID = "PinChannelMessage",channel_id_ = msg.chat_id_:gsub('-100',''),message_id_ = msg.id_,disable_notification_ = 0},function(arg,d) database:del(bot_id..'Msg:Pin:Chat'..msg.chat_id_) end,nil)   
end
end
if (msg.content_.photo_) then
if msg.content_.photo_.sizes_[0] then
id_photo = msg.content_.photo_.sizes_[0].photo_.persistent_id_
end
if msg.content_.photo_.sizes_[1] then
id_photo = msg.content_.photo_.sizes_[1].photo_.persistent_id_
end
if msg.content_.photo_.sizes_[2] then
id_photo = msg.content_.photo_.sizes_[2].photo_.persistent_id_
end	
if msg.content_.photo_.sizes_[3] then
id_photo = msg.content_.photo_.sizes_[3].photo_.persistent_id_
end
if id_photo == Get_Msg_Pin then
tdcli_function ({ID = "PinChannelMessage",channel_id_ = msg.chat_id_:gsub('-100',''),message_id_ = msg.id_,disable_notification_ = 0},function(arg,d) database:del(bot_id..'Msg:Pin:Chat'..msg.chat_id_) end,nil)   
end
end
end


end -- end new msg
end -- end callback
















