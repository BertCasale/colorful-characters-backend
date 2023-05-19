\c colorful_characters_dev

INSERT INTO games (name, image, description, platforms, release, lgbt, poc, disability) VALUES 
('Dragon Age: Origins', 'https://cdn2.steamgriddb.com/file/sgdb-cdn/grid/0a7c563b1e75f1d3555ac12218da520e.png', 'An RPG set in a fantasy setting. You can customize your character, and have the option to romance 4 different party members. With 3 different classes, a skilltree, and many different companions to mix and match, you can play however suits your style.', 'PC, Mac, Xbox 360, Playstation 3', 2009, true, false, false),
('Garden Story', 'https://store-images.s-microsoft.com/image/apps.16865.14334501706636147.97df104f-715b-4347-b111-98fa1cbd5f7c.6cba5aac-f556-495a-a10d-fd4237c30714', 'An action RPG, where you play as a grape called Concord. As the next Guardian of The Grove, it is your job to bring all the villages back together and fight back against the rot.', 'PC, Mac, Nintendo Switch, Xbox One', 2021, true, false, false),
('Deathloop', 'https://assets-prd.ignimgs.com/2020/11/12/deathloop-button-1605211066759.jpg', 'A FPS where you play as Colt, a man recovering information about his past while trying to escape from a timeloop. After making some story progress, you can then play as the woman that kills him over and over again to keep him in the loop.', 'PC, Playstation 5, Xbox Series X/S', 2021, true, true, true),
('Ghostwire Tokyo', 'https://image.api.playstation.com/vulcan/ap/rnd/202111/1521/FeMO4GkxQsytcOriXAdH1DLT.jpg', 'A first-person action adventure game where youplay as Akito, a man that has to fight off the supernatural presence that caused Tokyo''s inhabitants to disappear. With your ghost friend, use your newfound paranormal powers to save as many souls as you can while searching for your the man who took your sister.', 'PC, Playstation 5, Xbox Series X/S', 2022, false, true, false),
('Hellblade: Senua''s Sacrifice', 'https://m.media-amazon.com/images/I/81qQEnQQHhL._AC_UF1000,1000_QL80_.jpg', 'An action adventure game where you play as Senua, a woman on a journey to Helheim to save the soul of her lover, while dealing with the symptoms of her psychosis. It was created in collaboration people who experience psychosis and neuroscientists in order to get an accurate portrayal of the experience of dealing with mental illness.', 'PC, Playstation 4, Xbox One, Nintendo Switch, Xbox Series X/S', 2017, false, false, true),
('Stardew Valley', 'https://e.snmc.io/lk/l/x/d96524e1309d2f580b655cb18ed21449/5274911', 'A simulation RPG where you inherit a farm. You can completely customize your characters looks and there are 12 suitors to choose from to romance, all available independent of your gender. With a variety of townsfolk and countless ways to spend the time, you will never run out of things to do in the valley.', 'PC, Mac, Playstation 4, Xbox One, Nintendo Switch, Playstation Vita, iOS, Android', 2016, true, true, false),
('Owlboy', 'https://cdn.mobygames.com/covers/2772650-owlboy-xbox-one-front-cover.jpg', 'A plaform adventure, where you play as Otus, a mute owl struggling to live up to expectations, when something big happens and you must set out on an adventure. Flying is your specialty, so you carry your freinds with you to help do any shooting or fighting thats required.', 'PC, Mac, Nintendo Switch, Xbox One, Playstation 4', 2016, false, false, true),
('Overwatch', 'https://m.media-amazon.com/images/I/81ifhSOpkTL.jpg', 'A multiplayer FPS where you choose from a growing cast of characters with unique abilities set in a futuristic, post robot uprising. Play online in this team vs. team setting with many different gamemodes to play, such as Capture the Flag, Escort, Elimination, and more. There are constantly new events and updates happening, so it stays fresh and exciting.', 'PC, Nintendo Switch, Xbox One, Playstation 4, Xbox Series X/S, Playstation 5', 2016, true, true, true),
('Bugsnax', 'https://assets-prd.ignimgs.com/2020/07/31/bugsnax-button-01a-1596229814846.jpg', 'An action adventure shooter game where you play as a jorunalist looking for your next big scoop. In the world of Grumpuses, you head out to Snaktooth island to interview the expedition crew that went there to uncover information about Bugsnax. Meet new friends, and complete quests for them by catching them treats in the form of Bugsnax, creatures that are food and bugs, like the Fryder, a spider made out of french fries.', 'PC, Mac, Playstation 4, Playstation 5, Nintendo Switch, Xbox One, Xbox Series X/S', 2020, true, false, true),
('Watch Dogs 2', 'https://image.api.playstation.com/cdn/UP0001/CUSA04459_00/qBxvfDJJ9dbavai6xsWOcWaxRDGRb7h0.png', 'An action adventure game wher eyou play as Marcus, an amazing hacker, who get recruited into DedSec, a notorious hacker group. You main goal is to take down the corrupt system that is constantly monitering everybodys actions 24/7. Play out missions how you want, whether you want to hack cameras and sneak in, or hack cars to run over your foes and go in guns blazing.', 'PC, Playstation 4, Xbox One, Google Stadia', 2016, false, true, false),
('OMORI', 'https://media.gamestop.com/i/gamestop/11202943/Omori---Nintendo-Switch?$pdp2x$', 'A psychological horror turn-based RPG game where you play as SUNNY and his HEADSPACE alter ego, OMORI. Rather than usual status effects, emotions are what change your stats, with anger, sadness, and happiness being the base. This is a heavily story based game and how it ends is up to you, stay stuck in your house and mind as OMORI, or face reality and discover uncover your memories as SUNNY. The game depicts how death and traumatic events effect people in different ways.', 'PC, Mac, Nintendo Switch, Playstation 4, Xbox One', 2020, false, true, true);

INSERT INTO characters (name, image, description, protagonist, playable, lgbt, lgbt_type, poc, poc_type, disability, disability_type, game_id) VALUES 
('Zevran Arainai', 'https://images.8tracks.com/cover/i/009/391/542/Sin_t_tulo-1-8510.jpg?rect=0,0,500,500&q=98&fm=jpg&fit=max', 'Zevran is an elven rogue, assassin specialist, that can potentially become a party member. He is also one of the two romance options that the player character can enter into a relationship with whether the player character is male or female.', false, true, true, 'Bisexual', false, NULL, false, NULL, 1),
('Leliana', 'https://i.pinimg.com/736x/bd/06/84/bd0684c5409d9ff7ffdede786f3b5d19--dragon-age-origins-dragon-age-leliana.jpg', 'Leliana is a human rogue, bard specialist, that can potentially become a party member. She is also one of the two romance options that the player character can enter into a relationship with whether the player character is male or female.', false, true, true, 'Bisexual', false, NULL, false, NULL, 1),
('The Warden', 'https://chasingdings.com/wp-content/uploads/2009/10/DAOCharacterCreator-2009-10-13-23-48-16-58.jpg', 'The main character of Dragon Age Origins. With the completely customizable appearance and the option of romancing 4 different characters, 2 male and 2 female, the player can have a character that fits them better. It''s their job to collect allies to defeat the darkspawn of the Fifth Blight.', true, true, true, 'Customizable', false, NULL, false, NULL, 1),
('Concord', 'https://assets.nintendo.com/image/upload/f_auto/q_auto/dpr_2.0/c_scale,w_400/ncom/en_US/games/switch/g/garden-story-switch/description-image', 'Concord is a grape and the main character of Garden Story. Though Concord doesnt talk much, the villagers you help throughout the game refer to Concord with they/them pronouns. It''s their job to protect many villages from the growing threat of Rot.', true, true, true, 'Nonbinary', false, NULL, false, NULL, 2),
('Akito Izuki', 'https://images.ctfassets.net/rporu91m20dc/4SbQvsNgslpLvNepUX6uzs/3d70198125baeeef92e49ba35907039b/GWT_Akito_HERO_1920x870.png', 'Akito is the main character of Ghostwire Tokyo. Teaming up with a spirit, he must find defeat the man that kidnapped his sister, and caused the cities population to vanish.', true, true, false, NULL, true, 'Asian, Japanese', false, NULL, 4),
('Colt Vahn', 'https://pbs.twimg.com/media/FN6Ab1BXIAsK2iB.jpg:large', 'Colt is the main character of Deathloop. He is trapped in a timeloop on an island, with no memories. In order to escape, he must uncover his past and take down the people that caused the loop.', true, true, true, 'Bisexual', true, 'Black, African American', true, 'Memory Loss', 3),
('Julianna Blake', 'https://pbs.twimg.com/media/E_LxVl8WQAI15dH.jpg:large', 'Julianna is the main antagonist and secondary playable character of Deathloop. Her main goal is to stop Colt from breaking the timeloop surrounding the island by killing him over and over again.', false, true, false, NULL, true, 'Black, African American', false, NULL, 3),
('Senua', 'https://m.media-amazon.com/images/M/MV5BNDQwZDgxMzctYWYyMy00NmM3LTk0MjctN2ZlZTQwNzQ1YmRmXkEyXkFqcGdeQXVyNzU3Nzk4MDQ@._V1_.jpg', 'Senua is the main character of Hellblade: Senua''s Sacrifice.  She''s a Celtic warrior on a journey to Helheim, to save her lover''s soul. She has to solve puzzles and face combat while fighting her inner demons in the forms of hallucinations and voices.', true, true, false, NULL, false, NULL, true, 'Mental Illness, Psychosis', 5),
('The Player', 'https://external-preview.redd.it/ehxAIEDuybeKyonsvx852XaPAkf-rKi7aiCP-PA54og.jpg?auto=webp&s=db2e42e93f8506e9f7a98f22597a3a45d56417b8', 'The player character who inherits a farm in the town of Stardew Valley. Your appearance is completely customizable, allowing you to make a character that looks as close to yourslef as pixel graphics will alow. The 12 bachelors and bachelorettes can all be married and can have up to 2 children with, no matter which gender you play as.', true, true, true, 'Customizable', true, 'Customizable', false, NULL, 6),
('Otus', 'https://cdn.cloudflare.steamstatic.com/steamcommunity/public/images/clans/4471313/9a43181ec599fefb3cd2617fc1f15f42a118a4a1.jpg', 'Otus is the main character of Owlboy. He is an owl who was born mute, making him very timid and sensitive. Flying is his main skill, which he uses to carry his friends to help him in his journey.', true, true, false, NULL, false, NULL, true, 'Physical, Mute', 7),
('Soldier 76', 'https://static1.thegamerimages.com/wordpress/wp-content/uploads/2022/10/Overwatch-2-Soldier-76.jpg', 'Soldier 76 A.K.A. John Francis Morrison is an American damage hero in Overwatch. He is a vigilante and a former soldier.', false, true, true, 'Gay', false, NULL, false, NULL, 8),
('Tracer', 'https://www.washingtonpost.com/resizer/CgOiz-CE0EP7noh4tMsWfFlEtnM=/1800x0/filters:quality(100)/arc-anglerfish-washpost-prod-washpost/public/C5UAPFENQZBUZABFBYUPDBOWCY.jpg?imwidth=1800', 'Tracer A.K.A. Lena Oxton is a British damage hero in Overwatch. She is a pilot.', false, true, true, 'Lesbian', false, NULL, false, NULL, 8),
('Lifeweaver', 'https://i.kinja-img.com/gawker-media/image/upload/c_fill,f_auto,fl_progressive,g_center,h_675,pg_1,q_80,w_1200/59aec5534d2634972da7d7986de5acc6.jpg', 'Lifeweaver A.K.A. Niran Pruksamanee is a Thai support hero in Overwatch. He is a scientist and artist.', false, true, true, 'Pansexual', true, 'Asian, Thai', false, NULL, 8),
('Ana', 'https://i.insider.com/578f7e85dd08957d7e8b4a24?width=875&format=jpeg', 'Ana Amari is an Egyptian support hero in Overwatch. She is a sniper.', false, true, false, NULL, true, 'African, Middle Eastern, Egyptian', true, 'Physical, Partially Blind', 8),
('Lúcio', 'https://oyster.ignimgs.com/mediawiki/apis.ign.com/overwatch/f/f6/Lucioskin3.jpg?width=325', 'Lúcio Correia dos Santos is a Brazilian support hero in Overwatch. He is a famous DJ.', false, true, false, NULL, true, 'Black, South American, Latin American, Brazilian', false, NULL, 8),
('D.Va', 'https://images.blz-contentstack.com/v3/assets/blt2477dcaf4ebd440c/bltf8e9415141b0ec36/631a8b65e7bdcf0dd996c8e1/1600_Dva.jpg', 'D.Va A.K.A. Hana Song is a South Korean tank hero in Overwatch. She is an actress, mech pilot, and former professional gamer.', false, true, false, NULL, true, 'Asian, South Korean', false, NULL, 8),
('Symmetra', 'https://images.blz-contentstack.com/v3/assets/blt2477dcaf4ebd440c/bltd84a036680d83564/637da1eba86e5310c692c02b/symmetra-00.jpg', 'Symmetra A.K.A. Satya Vaswani is an Indian damage hero in Overwatch. She is an architech.', false, true, false, NULL, true, 'Asian, Indian', true, 'Autism', 8),
('Pharah', 'https://oyster.ignimgs.com/mediawiki/apis.ign.com/overwatch/3/3a/Pharahskin1.jpg', 'Pharah A.K.A. Fareeha Amari is an Egyptian damage hero in Overwatch. She is a security chief.', false, true, false, NULL, true, 'African, Middle Eastern, Egyptian', false, NULL, 8),
('Baptiste', 'https://hard-drive.net/wp-content/uploads/2022/10/image5-1-4.jpg', 'Baptiste A.K.A. Jean-Baptiste Augustin is a Haitian support hero in Overwatch. He is a combat medic.', false, true, false, NULL, true, 'Black, Latin American, Haitian', false, NULL, 8),
('Reaper', 'https://pbs.twimg.com/media/CTKCPN8UAAAzJcg.jpg', 'Reaper A.K.A. Gabriel Reyes is an American damage hero in Overwatch. He is a Mercenary and former soldier.', false, true, false, NULL, true, 'Hispanic American', false, NULL, 8),
('Hanzo', 'https://hard-drive.net/wp-content/uploads/2022/10/image3-10.jpg.webp', 'Hanzo Shimada is a Japanese damage hero in Overwatch, He is a mercenary and assassin.', false, true, false, NULL, true, 'Asian, Japanese', false, NULL, 8),
('Genji', 'https://images.blz-contentstack.com/v3/assets/blt2477dcaf4ebd440c/bltb983c9c07c5e404e/637da16446a48b0e063e4a95/genji-00.jpg', 'Genji Shimada is a Japanese damage hero in Overwatch. He is an adventurer.', false, true, false, NULL, true, 'Asian, Japanese', true, 'Physical', 8),
('Kiriko', 'https://oyster.ignimgs.com/mediawiki/apis.ign.com/overwatch-2/b/b1/OW2_Kiriko_Classic-Collage_Maker-05-Oct-2022-04.58-PM.jpg?width=1280', 'Kiriko Kamori is a Japanese support hero in Overwatch. She is a vigilante.', false, true, false, NULL, true, 'Asian, Japanese', false, NULL, 8),
('Mei', 'https://img.game8.co/3591697/1002e55d3d37c4e98ca74fe1e388fbd5.png/show', 'Mei A.K.A. Mei-Ling Zhou is a Chinese damage hero in Overwatch. She is a climatologist.', false, true, false, NULL, true, 'Asian, Chinese', false, NULL, 8),
('Sigma', 'https://www.gannett-cdn.com/presto/2019/07/23/USAT/255792bf-b6dd-46cb-a8d4-675c550a7438-sigma1.jpg', 'Sigma A.K.A. Siebren de Kuiper is a Dutch tank hero in Overwatch. He is a living weapon and a former scientist.', false, true, false, NULL, false, NULL, true, 'Mental Illness, Psychological Damage', 8),
('Sojourn', 'https://cdn.vox-cdn.com/thumbor/ORj8wBHxz7AjweQackddAjAt93Q=/0x0:1920x1280/1000x1000/filters:focal(960x640:961x641)/cdn.vox-cdn.com/uploads/chorus_asset/file/23389824/sojourn.png', 'Sojourn A.K.A. Vivian Chase is a Canadian damage hero in Overwatch.', false, true, false, NULL, true, 'Black', true, 'Physical, Amputee', 8),
('Sombra', 'https://images.blz-contentstack.com/v3/assets/blt2477dcaf4ebd440c/blta5830262a146aab0/638810315148880e83ab70d3/sombra-00.jpg', 'Sombra A.K.A. Olivia Colomar is a Mexican damage hero in Overwatch. She is a hacker.', false, true, false, NULL, true, 'Latin American, Hispanic, Mexican', false, NULL, 8),
('Doomfist', 'https://img.redbull.com/images/c_limit,w_1500,h_1000,f_auto,q_auto/redbullcom/2017/07/10/c9de0070-eb9b-4272-8991-2572c271a792/doomfist-featured.jpg.jpg', 'Doomfist A.K.A. Akande Ogundimu is a Nigerian tank hero in Overwatch. He is a mercenary, CEO, and former martial artist.', false, true, false, NULL, true, 'Black, African, Nigerian', false, NULL, 8),
('Torbjörn', 'https://variety.com/wp-content/uploads/2018/09/overwatch-torbjorn.jpg', 'Torbjörn Lindholm is a Swedish damage hero in Overwatch. He is a weapons designer.', false, true, false, NULL, false, NULL, true, 'Physical, Amputee', 8),
('Cassidy', 'https://oyster.ignimgs.com/mediawiki/apis.ign.com/overwatch-2/e/e7/OW2_Cassidy_OW1-Collage_Maker-19-Oct-2022-12.04-PM.jpg?width=1280', 'Cassidy A.K.A. Cole Cassidy an American damage hero in Overwatch. He is bounty hunter and mercenary.', false, true, false, NULL, false, NULL, true, 'Physical, Amputee', 8),
('Junkrat', 'https://img.game8.co/3591706/f0da54d665c97568bf4b4362f0684f9b.png/show', 'Junkrat A.K.A. Jamison Fawkes is an Australian damage hero in Overwatch. He is a demolitionist, thief, and scavenger.', false, true, false, NULL, false, NULL, true, 'Physical, Amputee', 8),
('Bastion', 'https://assetsio.reedpopcdn.com/Bastion-Overwatch-2-return.jpg?width=1600&height=900&fit=crop&quality=100&format=png&enable=upscale&auto=webp', 'An omnic damage hero in Overwatch. It is a battle automaton that became Torbjörns workshop assistant.', false, true, false, NULL, false, NULL, true, 'Mental Illness, PTSD', 8),
('Elizabert Megafig', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRIDi9VRDBNHlk1mVEU1YMDMPAPcfomnba5Vg&usqp=CAU', 'Lizbert is the explorer that led an expedition to Snaktooth island, but eventually went missing. She is very brave, often getting into danger and geting hurt. Eggabell, her partner, is always ready to keep her healthy with her medical expertise.', false, false, true, 'Lesbian', false, NULL, false, NULL, 9),
('Eggabell Batternugget', 'https://static1.thegamerimages.com/wordpress/wp-content/uploads/2021/03/Bugsnax-Eggabell.jpg', 'Eggabell is the doctor of the team that went on the expidition to Snaktooth Island. She is always worrying about her fellow Grumpuses, especially her partner, Lizbert, who tends to get into trouble.', false, false, true, 'Lesbian', false, NULL, false, NULL, 9),
('Snorpy Fizzlebean', 'https://oyster.ignimgs.com/mediawiki/apis.ign.com/bugsnax/7/7c/Bugsnax_Screenshot_2020.10.31_-_15.47.51.100.png?width=1280', 'Snorpy is the engineer and inventor on the expedition to Snaktooth Island. He is always stressed and paranoid, leading him to mistrust almost everyone, except for his partner, Chandlo. He built most of the tools the Grumpuses use on the island.', false, false, true, 'Gay', false, NULL, true, 'Mental Illness, Anxiety', 9),
('Chandlo Funkbun', 'https://oyster.ignimgs.com/mediawiki/apis.ign.com/bugsnax/a/ac/Bugsnax_Screenshot_2020.10.31_-_14.30.01.62.png?width=1280', 'Chandlo is the builder on the expedition to Snaktooth Island. He is always working out and trying to find ways to get stronger, because he wants to be able to protect his partner, Snorpy. He made all the buildings in Snaxburg.', false, false, true, 'Bisexual', false, NULL, false, NULL, 9),
('Floofty Fizzlebean', 'https://oyster.ignimgs.com/mediawiki/apis.ign.com/bugsnax/8/87/Floofty.png?width=1280', 'Floofty is a scientist who goes on the expedition to Snaktooth Island to study the Bugsnax. They don''t care about safety or ethics when it comes to their experiments, as long as they can improve Grumpuskind.', false, false, true, 'Nonbinary', false, NULL, false, NULL, 9),
('Wiggle Wigglebottom', 'https://static.tvtropes.org/pmwiki/pub/images/wiggle.png', 'Wiggle is a famous musician looking for inspiration for her next big hit. She tends to be very dramatic and loves to be the center of attention. She often sneaks into the barn to eat some of the Bugsnax that her partner, Gramble, tamed and raised as companions.', false, false, true, 'Pansexual', false, NULL, false, NULL, 9),
('Marcus Holloway', 'https://cdn.costumewall.com/wp-content/uploads/2017/03/marcus-holloway.jpg', 'Marcus is the main character of Watch Dogs 2. He is an amazing hacker, who gets recruited by hacktivist group DedSec, to take down some very big and corrupt companies.', true, true, false, NULL, true, 'Black, African American', false, NULL, 10),
('SUNNY', 'https://preview.redd.it/yaxcrrfmlxa91.png?width=640&crop=smart&auto=webp&s=629b09b8bdb857287bb2e654cf1c6962e664a4a4', 'SUNNY is one of the two main characters of OMORI. Following his sisters death, SUNNY stays locked up in his hosue for about 3 years, repressing his memories and creating the world of HEADSPACE that he visits through his alter-ego OMORI. Before he moves away, Sunny can choose to go outside and see his friends for the first time in years and acknowledge what happened, or he can stay inside and go back into HEADSPACE.', true, true, false, NULL, true, 'Asian, Japanese', true, 'Mental Illness, Trauma, Depression', 11),
('BASIL', 'https://i1.sndcdn.com/artworks-DDT4iDpaPZF561hb-HcpC1g-t500x500.jpg', 'BASIL is a major plot character in OMORI, in both HEADSPACE and REAL WORLD. BASIL was already very timid and anxious, but MARI''s death and SUNNY''s isolation caused his anxiety to intensify. ', false, false, false, NULL, false, NULL, true, 'Mental Illness, Trauma, Depression, Anxiety', 11);

-- ('', '', '', true, true, false, NULL, false, NULL, false, NULL, ''),
-- (name, image, description, protagonist, playable, lgbt, lgbt_type, poc, poc_type, disability, disability_type, game) 
-- ( gears of war,  borderlands 2, psychonauts 2, fire emblem, redfall )