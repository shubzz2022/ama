const { TelegramClient } =  require("telegram");
const { StringSession } = require("telegram/sessions");
const input = require ("input");
const { Telegraf, session, Extra, Markup, Scenes} = require('telegraf');
const  bot = new Telegraf('5526353139:AAGhrf-UhjdtN7FkXPj33RH57TaD7BU0WVs')

const msg = `π΅π»ββοΈβ πͺπ ππ₯π ππ«π£ππ₯π§π¦ ππ‘ π ππ₯πππ§ππ‘π 

π Our Channels: ( 2.5m+
Community)

πΉ  @AirdropDiscover
πΈ @BSC100xKnights
πΉ @AirdropAvalanche
πΈ @BSCPresaleExperts 
πΉ @BSC100xPresale
πΈ @BSC100xSamurai
πΉ @BSC100xMiners
πΈ @BSC100xAlert
πΉ @BSC100xShill
πΉ @BSC100xGems
πΉ @AirdropFantom
πΈ @ShitCoin100xGem
πΉ @AirdropsDepartment
πΈ @Bsc_Champion
πΉ @Bsc_Inspector
πΈ @BSCPresaleKings
πΉ @AirdropButter

βShill Group :-
π @ShillClubBSC
π @AirdropAvalancheChat
βTwitter Handle :- https://twitter.com/Team100xBsc

(Pin+Post) Prices

π°Price For All β 150$
π°Price For  Pin + Post β 200$

πWe Promote IDO / Presale / Tokens and verified projects
πLastly Promoted Projects are upto the markβοΈ
πHappy clients 
πAfordable Price with "Quality

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
