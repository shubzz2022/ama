const { TelegramClient } =  require("telegram");
const { StringSession } = require("telegram/sessions");
const input = require ("input");
const { Telegraf, session, Extra, Markup, Scenes} = require('telegraf');
const  bot = new Telegraf('5568658645:AAEhnkLcgtZmpdHkD5tjvk5ogfcV80L2EZI')

const msg = `**🚨 Press Release**

Nice time Meet You Sir. 

We Are PR Articles Distributer. We Can Publish Your Project Article On Big Popular Websites ... (NasdaQ, Bloomberg, MarketWatch, Digital Journal, Yahoo Finance (15+ Regional Sites) And 396+ Others. ) 

⚡ PR Release Price -> 1200$ (20% Discount For Repeated Clients) 

Reach Your Project Up to 10M+ Audience. 

**If You Are Interested Let' Us Know!** `

const apiId = 18833939;
const apiHash = "017b21c774bba620c689e554bd19e3ef";
const stringSession = new StringSession("1ApWapzMBu3SSs_B7z0SRpbRiO__Aw8GAgGHY_TfE32J5Uc2pcYVVrbDLzzJAx7Vme7gzJwarG0Hz6t8FtuNXOL65sx2h_O6_FAEkYQohyTVVA2S3y_qTtFgiFb4XQ1KbPnztXj0zMDByVqYCLCjX3R4LkjTyYoLv_iARrIycCCqRcTy1bTJsevxJCerpR2XkYHe5E4WSHUkGlL5ptIgzY8kLsyLGK5y43ssPT5fWP1fpdpdEApRx5jK0ME4Kvyt3XY8k6ojJetpdGtGLBAA9A0_3vB82eRPPMoB_KPQtYvzG106Kddc0MwXFsMlH205MG6nZW8CbXeEvarTIcOTmvSQlXsyijVg==="); // fill this later with the value from session.save()

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
    
    let id1 = input.split(" ")[2];

    let id2 = input.split(" ")[3];

    let id3 = input.split(" ")[4];

    let id4 = input.split(" ")[5];

    
    new Api.channels.JoinChannel({
      channel:id})
 for await (const user of client.iterParticipants(id, {filter:  Api.ChannelParticipantsAdmins})){
   await client.sendMessage(user.username, { message: msg });



   new Api.channels.JoinChannel({
    channel:id1})
for await (const user of client.iterParticipants(id1, {filter:  Api.ChannelParticipantsAdmins})){
 await client.sendMessage(user.username, { message: msg });

 new Api.channels.JoinChannel({
  channel:id2})
for await (const user of client.iterParticipants(id2, {filter:  Api.ChannelParticipantsAdmins})){
await client.sendMessage(user.username, { message: msg });


new Api.channels.JoinChannel({
  channel:id3})
for await (const user of client.iterParticipants(id3, {filter:  Api.ChannelParticipantsAdmins})){
await client.sendMessage(user.username, { message: msg });



new Api.channels.JoinChannel({
  channel:id4})
for await (const user of client.iterParticipants(id4, {filter:  Api.ChannelParticipantsAdmins})){
await client.sendMessage(user.username, { message: msg });
    ctx.reply('@'+user.username);
    

}}}}}})
})();
bot.launch();

