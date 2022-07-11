const { TelegramClient } =  require("telegram");
const { StringSession } = require("telegram/sessions");
const input = require ("input");
const { Telegraf, session, Extra, Markup, Scenes} = require('telegraf');
const  bot = new Telegraf('5526353139:AAGhrf-UhjdtN7FkXPj33RH57TaD7BU0WVs')

const msg = `🕵🏻‍♂️‍ 𝗪𝗘 𝗔𝗥𝗘 𝗘𝗫𝗣𝗘𝗥𝗧𝗦 𝗜𝗡 𝗠𝗔𝗥𝗞𝗘𝗧𝗜𝗡𝗚 

🌐 Our Channels: ( 2.5m+
Community)

🔹  @AirdropDiscover
🔸 @BSC100xKnights
🔹 @AirdropAvalanche
🔸 @BSCPresaleExperts 
🔹 @BSC100xPresale
🔸 @BSC100xSamurai
🔹 @BSC100xMiners
🔸 @BSC100xAlert
🔹 @BSC100xShill
🔹 @BSC100xGems
🔹 @AirdropFantom
🔸 @ShitCoin100xGem
🔹 @AirdropsDepartment
🔸 @Bsc_Champion
🔹 @Bsc_Inspector
🔸 @BSCPresaleKings
🔹 @AirdropButter

✅Shill Group :-
💠@ShillClubBSC
💠@AirdropAvalancheChat
✅Twitter Handle :- https://twitter.com/Team100xBsc

(Pin+Post) Prices

💰Price For All ≈ 150$
💰Price For  Pin + Post ≈ 200$

🌀We Promote IDO / Presale / Tokens and verified projects
🌀Lastly Promoted Projects are upto the mark✔️
🌀Happy clients 
🌀Afordable Price with "Quality

OWNER : @Nitin100xbsc @Hari6576

this message is sent by Radical s bot for finding promo `

const apiId = 2842433;
const apiHash = "7ff7db9b8df7a4acdb20920d84bb1a84";
const stringSession = new StringSession("1BQANOTEuMTA4LjU2LjE3NQG7xco+UMW2klwrpnLEKrSLSEK7wppYnpIVf70vNGX8HfmAyh0cBlAcKTv3Tcdmwkl2I8FGbzRw0Zfnrc1+E9q+L6sCeEhphLYfX0Nvz/u5Z0NtAzggVKDiXu6Z9G4H3CcWRww7i4gjuR67nKxr2BPRZ+xKR7u7hlv0/GnTyk3y6rp4he3ciPyh7NA7wMj4kg2wojTuEBGZkn38/nExDhc66VbAAdSFrsT0t8lidHKzVcTrS0GIDtT8qXwmBJz/VNi1CokXAXXjS6Gvpdj9x9oXJy/6xu1OLGDDYBhoY59kck5KKj9eBcJOsETBWZ5W0hx41nKR0Zi/BaBoZCeAzAildQ=="); // fill this later with the value from session.save()

(async () => {
  console.log("Loading interactive example...");
  const client = new TelegramClient(stringSession, apiId, apiHash, {
    connectionRetries: 5,
  });
  await client.start({
    phoneNumber: async () => await input.text("Please enter your number: "),
    password: async () => await input.text("Please enter your password: "),
    phoneCode: async () =>
      await input.text("Please enter the code you received: "),
    onError: (err) => console.log(err),
  });
  console.log("You should now be connected.");
  console.log(client.session.save());
  
 
    
  
  bot.command("join" , async ctx => {
    let input = ctx.message.text
    let channel = input.split(" ")[1];
    const result = await client.invoke(
    new Api.channels.JoinChannel({
      channel: channel,
    })
  );
  console.log(result);
  ctx.reply('done')
  })
    
  const { Api } = require( "telegram");
  
  bot.command("sendproposal" , async ctx => {
  let input = ctx.message.text
    let id = input.split(" ")[1];
    
    new Api.channels.JoinChannel({
      channel:id})
 for await (const user of client.iterParticipants(id, {filter:  Api.ChannelParticipantsAdmins})){
   await client.sendMessage(user.username, { message: msg });
    ctx.reply('@'+user.username);
    

}
})
})();
bot.launch();
