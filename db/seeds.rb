require 'faker'

 languages = %W(spanish, french, italian, german, dutch, portuguese)
 level     = %W(noob decent master)


 20.times do
   user=User.create!(first_name: Faker::Name.first_name,
                last_name: Faker::Name.last_name,
                 password: "password",
                 username: Faker::Internet.user_name,
                 email: Faker::Internet.email)

  2.times do 
     user.fluencies.create!(language_id: rand(1..6),
                           proficiency: level.sample)
   end

 end


 n=0

spanish = Language.create(lingua: "spanish", flag: "http://www.enchantedlearning.com/europe/spain/flag/Flagbig.GIF", code: "es")

   query = spanish.queries.create!(title: "query #{n+=1}", english: "Is this the real life? Is this just fantasy? Caught in a landslide, No escape from reality.", other: "¿Es esta la vida real? ¿Es esto una fantasía? Atrapado en un derrumbamiento No hay escape de la realidad.", user_id: rand(1..20))
   query = spanish.queries.create!(title: "query #{n+=1}", english: "Open your eyes, Look up to the skies and see, I'm just a poor boy, I need no sympathy, Because I'm easy come, easy go, Little high, little low, Anyway the wind blows doesn't really matter to me, to me.", user_id: rand(1..20))
   query = spanish.queries.create!(title: "query #{n+=1}", english: "Mama, just killed a man, Put a gun against his head, Pulled my trigger, now he's dead. Mama, life had just begun, But now I've gone and thrown it all away.  Mama, ooh, Didn't mean to make you cry, If I'm not back again this time tomorrow, Carry on, carry on as if nothing really matters.", other: "Mamá, solo maté a un hombre Puse un arma contra su cabeza Presioné mi gatillo, ahora él está muerto. Mamá, la vida ha comenzado Ahora me he ido y lo tiré todo. Mama, ooh, No quise hacerte llorar, Si no vuelvo de nuevo esta vez mañana Sigue adelante, sigue adelante como si no importara nada.", user_id: rand(1..20))
   query = spanish.queries.create!(title: "query #{n+=1}", english: "Too late, my time has come, Sent shivers down my spine, Body's aching all the time. Goodbye, everybody, I've got to go, Gotta leave you all behind and face the truth.", user_id: rand(1..20))
   query = spanish.queries.create!(title: "query #{n+=1}", english: "Mama, ooh (anyway the wind blows), I don't wanna die, I sometimes wish I'd never been born at all. I see a little silhouetto of a man, Scaramouche, Scaramouche, will you do the Fandango? Thunderbolt and lightning, Very, very frightening me. (Galileo) Galileo. (Galileo) Galileo, Galileo Figaro Magnifico.", user_id: rand(1..20))
   query = spanish.queries.create!(title: "query #{n+=1}", english: "I'm just a poor boy, nobody loves me. He's just a poor boy from a poor family, Spare him his life from this monstrosity. Easy come, easy go, will you let me go? Bismillah! No, we will not let you go. (Let him go!)", user_id: rand(1..20))
   query = spanish.queries.create!(title: "query #{n+=1}", english: "So you think you can stone me and spit in my eye? So you think you can love me and leave me to die? Oh, baby, can't do this to me, baby, Just gotta get out, just gotta get right outta here.", other: "Así que crees que puedes piedra y escupirme en el ojo? Así que crees que puedes amarme y dejarme para morir? Oh, nena, no puede hacerme esto, baby, Simplemente tengo que salir, sólo tengo que salir de aquí.", user_id: rand(1..20))

french = Language.create(lingua: "french", flag: "http://www.industcards.com/France.gif", code: "fr")
   query = french.queries.create!(title: "query #{n+=1}",english: "Is this the real life? Is this just fantasy? Caught in a landslide, No escape from reality.", other: "Est-ce la vraie vie? Est-ce juste fantastique? Pris dans un glissement de terrain, pas de fuite de la réalité.", user_id: rand(1..20))
   query = french.queries.create!(title: "query #{n+=1}",english: "Open your eyes, Look up to the skies and see, I'm just a poor boy, I need no sympathy, Because I'm easy come, easy go, Little high, little low, Anyway the wind blows doesn't really matter to me, to me.", user_id: rand(1..20))
   query = french.queries.create!(title: "query #{n+=1}",english: "Mama, just killed a man, Put a gun against his head, Pulled my trigger, now he's dead. Mama, life had just begun, But now I've gone and thrown it all away.  Mama, ooh, Didn't mean to make you cry, If I'm not back again this time tomorrow, Carry on, carry on as if nothing really matters.", other: "Mama, vient de tuer un homme, ont mis un pistolet contre sa tête, tiré mon déclenchement, maintenant il est mort. Maman, la vie venait de commencer, mais maintenant je suis parti et j'ai jeté tout loin. Maman, ooh, ne voulais pas te faire pleurer, Si je ne suis pas de retour demain à cette heure, Carry on, continuer comme si rien ne compte vraiment.", user_id: rand(1..20))
   query = french.queries.create!(title: "query #{n+=1}",english: "Too late, my time has come, Sent shivers down my spine, Body's aching all the time. Goodbye, everybody, I've got to go, Gotta leave you all behind and face the truth.", user_id: rand(1..20))
   query = french.queries.create!(title: "query #{n+=1}",english: "Mama, ooh (anyway the wind blows), I don't wanna die, I sometimes wish I'd never been born at all. I see a little silhouetto of a man, Scaramouche, Scaramouche, will you do the Fandango? Thunderbolt and lightning, Very, very frightening me. (Galileo) Galileo. (Galileo) Galileo, Galileo Figaro Magnifico.", user_id: rand(1..20))
   query = french.queries.create!(title: "query #{n+=1}",english: "I'm just a poor boy, nobody loves me. He's just a poor boy from a poor family, Spare him his life from this monstrosity. Easy come, easy go, will you let me go? Bismillah! No, we will not let you go. (Let him go!)", user_id: rand(1..20))
   query = french.queries.create!(title: "query #{n+=1}",english: "So you think you can stone me and spit in my eye? So you think you can love me and leave me to die? Oh, baby, can't do this to me, baby, Just gotta get out, just gotta get right outta here.", other: "Donc, vous pensez que vous pouvez me lapider et cracher dans mon oeil? Donc, vous pensez que vous pouvez m'aimer et me laisser mourir? Oh, bébé, ne peut pas me faire ça, bébé, juste obtenir dois, juste obtenir dois juste sortir d'ic", user_id: rand(1..20))

  italian = Language.create(lingua: "italian", flag: "http://upload.wikimedia.org/wikipedia/en/0/03/Flag_of_Italy.svg", code: "it")
   query = italian.queries.create!(title: "query #{n+=1}",english: "Is this the real life? Is this just fantasy? Caught in a landslide, No escape from reality.", other: "E 'questa la vita reale? E 'questa solo fantasia? Preso in una frana, senza scampo dalla realtà.", user_id: rand(1..20))
   query = italian.queries.create!(title: "query #{n+=1}",english: "Open your eyes, Look up to the skies and see, I'm just a poor boy, I need no sympathy, Because I'm easy come, easy go, Little high, little low, Anyway the wind blows doesn't really matter to me, to me.", user_id: rand(1..20))
   query = italian.queries.create!(title: "query #{n+=1}",english: "Mama, just killed a man, Put a gun against his head, Pulled my trigger, now he's dead. Mama, life had just begun, But now I've gone and thrown it all away.  Mama, ooh, Didn't mean to make you cry, If I'm not back again this time tomorrow, Carry on, carry on as if nothing really matters.", user_id: rand(1..20))
   query = italian.queries.create!(title: "query #{n+=1}",english: "Too late, my time has come, Sent shivers down my spine, Body's aching all the time. Goodbye, everybody, I've got to go, Gotta leave you all behind and face the truth.", user_id: rand(1..20))
   query = italian.queries.create!(title: "query #{n+=1}",english: "Mama, ooh (anyway the wind blows), I don't wanna die, I sometimes wish I'd never been born at all. I see a little silhouetto of a man, Scaramouche, Scaramouche, will you do the Fandango? Thunderbolt and lightning, Very, very frightening me. (Galileo) Galileo. (Galileo) Galileo, Galileo Figaro Magnifico.", user_id: rand(1..20))
   query = italian.queries.create!(title: "query #{n+=1}",english: "I'm just a poor boy, nobody loves me. He's just a poor boy from a poor family, Spare him his life from this monstrosity. Easy come, easy go, will you let me go? Bismillah! No, we will not let you go. (Let him go!)", user_id: rand(1..20))
   query = italian.queries.create!(title: "query #{n+=1}",english: "So you think you can stone me and spit in my eye? So you think you can love me and leave me to die? Oh, baby, can't do this to me, baby, Just gotta get out, just gotta get right outta here.", other: "Così pensi di potermi lapidare e sputarmi in un occhio? Così pensi di potermi amare e lasciarmi morire? Oh, baby, non può fare questo a me, bambino, Devo solo uscire, devo solo arrivare subito fuori di qui.", user_id: rand(1..20))

  german = Language.create(lingua: "german", flag: "http://upload.wikimedia.org/wikipedia/en/b/ba/Flag_of_Germany.svg", code: "de")
   query = german.queries.create!(title: "query #{n+=1}",english: "Is this the real life? Is this just fantasy? Caught in a landslide, No escape from reality.", other: "Ist das die Wirklichkeit? Ist das nur Fantasie? In einem Erdrutsch, keine Flucht aus der Realität eingeholt.", user_id: rand(1..20))
   query = german.queries.create!(title: "query #{n+=1}",english: "Open your eyes, Look up to the skies and see, I'm just a poor boy, I need no sympathy, Because I'm easy come, easy go, Little high, little low, Anyway the wind blows doesn't really matter to me, to me.", user_id: rand(1..20))
   query = german.queries.create!(title: "query #{n+=1}",english: "Mama, just killed a man, Put a gun against his head, Pulled my trigger, now he's dead. Mama, life had just begun, But now I've gone and thrown it all away.  Mama, ooh, Didn't mean to make you cry, If I'm not back again this time tomorrow, Carry on, carry on as if nothing really matters.", other: "Mama, nur einen Mann getötet, eine Pistole gegen seinen Kopf, zog meine Trigger, jetzt ist er tot ist. Mama, das Leben hatte gerade erst begonnen, aber jetzt habe ich weg geworfen und sie alle weg. Mama, ooh, Ich wollte nicht, dass Sie weinen, wenn ich mich morgen nicht wieder dieses Mal tragen sie, als ob nichts wirklich ankommt.", user_id: rand(1..20))
   query = german.queries.create!(title: "query #{n+=1}",english: "Too late, my time has come, Sent shivers down my spine, Body's aching all the time. Goodbye, everybody, I've got to go, Gotta leave you all behind and face the truth.", user_id: rand(1..20))
   query = german.queries.create!(title: "query #{n+=1}",english: "Mama, ooh (anyway the wind blows), I don't wanna die, I sometimes wish I'd never been born at all. I see a little silhouetto of a man, Scaramouche, Scaramouche, will you do the Fandango? Thunderbolt and lightning, Very, very frightening me. (Galileo) Galileo. (Galileo) Galileo, Galileo Figaro Magnifico.", user_id: rand(1..20))
   query = german.queries.create!(title: "query #{n+=1}",english: "I'm just a poor boy, nobody loves me. He's just a poor boy from a poor family, Spare him his life from this monstrosity. Easy come, easy go, will you let me go? Bismillah! No, we will not let you go. (Let him go!)", user_id: rand(1..20))
   query = german.queries.create!(title: "query #{n+=1}",english: "So you think you can stone me and spit in my eye? So you think you can love me and leave me to die? Oh, baby, can't do this to me, baby, Just gotta get out, just gotta get right outta here.", other: "Sie glauben also, Sie können mich steinigen und in meinem Auge spucken? Sie glauben also, Sie können mich lieben und mich zu sterben? Oh, baby, kann das nicht mit mir machen, baby, nur muss hier raus, nur gotta get outta here Recht.", user_id: rand(1..20))

  dutch = Language.create(lingua: "dutch", flag: "http://www.33ff.com/flags/XL_flags/Netherlands_flag.gif", code: "nl")
   query = dutch.queries.create!(title: "query #{n+=1}",english: "Is this the real life? Is this just fantasy? Caught in a landslide, No escape from reality.", other: "Is dit het echte leven? Is dit gewoon fantasie? Gevangen in een aardverschuiving, geen vlucht uit de werkelijkheid.", user_id: rand(1..20))
   query = dutch.queries.create!(title: "query #{n+=1}",english: "Open your eyes, Look up to the skies and see, I'm just a poor boy, I need no sympathy, Because I'm easy come, easy go, Little high, little low, Anyway the wind blows doesn't really matter to me, to me.", user_id: rand(1..20))
   query = dutch.queries.create!(title: "query #{n+=1}",english: "Mama, just killed a man, Put a gun against his head, Pulled my trigger, now he's dead. Mama, life had just begun, But now I've gone and thrown it all away.  Mama, ooh, Didn't mean to make you cry, If I'm not back again this time tomorrow, Carry on, carry on as if nothing really matters.", other: "Mama, net een man vermoord Zette een geweer tegen zijn slaap Haalde de trekker over, nu is hij dood. Mama, het leven is net begonnen, maar nu ben ik weggegaan en heb het allemaal weg. Mama, ooh, Ik wilde je niet om je huilen, Als ik niet weer terug morgen om deze tijd, Carry on, doorgaan alsof er niets er echt toe doet.", user_id: rand(1..20))
   query = dutch.queries.create!(title: "query #{n+=1}",english: "Too late, my time has come, Sent shivers down my spine, Body's aching all the time. Goodbye, everybody, I've got to go, Gotta leave you all behind and face the truth.", user_id: rand(1..20))
   query = dutch.queries.create!(title: "query #{n+=1}",english: "Mama, ooh (anyway the wind blows), I don't wanna die, I sometimes wish I'd never been born at all. I see a little silhouetto of a man, Scaramouche, Scaramouche, will you do the Fandango? Thunderbolt and lightning, Very, very frightening me. (Galileo) Galileo. (Galileo) Galileo, Galileo Figaro Magnifico.", user_id: rand(1..20))
   query = dutch.queries.create!(title: "query #{n+=1}",english: "I'm just a poor boy, nobody loves me. He's just a poor boy from a poor family, Spare him his life from this monstrosity. Easy come, easy go, will you let me go? Bismillah! No, we will not let you go. (Let him go!)", user_id: rand(1..20))
   query = dutch.queries.create!(title: "query #{n+=1}",english: "So you think you can stone me and spit in my eye? So you think you can love me and leave me to die? Oh, baby, can't do this to me, baby, Just gotta get out, just gotta get right outta here.", other: "Dus je denkt dat je mij stenigen en spuug in mijn oog? Dus je denkt dat je me kunt houden en laat me om te sterven? Oh, baby, kan dit niet aan me, baby, moet gewoon uit, moet gewoon juiste weg hier.", user_id: rand(1..20))

  portuguese = Language.create(lingua: "portugese", flag: "http://upload.wikimedia.org/wikipedia/commons/thumb/5/5c/Flag_of_Portugal.svg/600px-Flag_of_Portugal.svg.png", code: "pt")
   query = portuguese.queries.create!(title: "query #{n+=1}",english: "Is this the real life? Is this just fantasy? Caught in a landslide, No escape from reality.", other: "Isso é a vida real? Isso é só fantasia? Pego na minha terra, Sem poder escapar da realidade.", user_id: rand(1..20))
   query = portuguese.queries.create!(title: "query #{n+=1}",english: "Open your eyes, Look up to the skies and see, I'm just a poor boy, I need no sympathy, Because I'm easy come, easy go, Little high, little low, Anyway the wind blows doesn't really matter to me, to me.", user_id: rand(1..20))
   query = portuguese.queries.create!(title: "query #{n+=1}",english: "Mama, just killed a man, Put a gun against his head, Pulled my trigger, now he's dead. Mama, life had just begun, But now I've gone and thrown it all away.  Mama, ooh, Didn't mean to make you cry, If I'm not back again this time tomorrow, Carry on, carry on as if nothing really matters.", other: "Mamãe, acabei de matar um homem Coloquei uma arma em sua cabeça Puxei o gatilho, agora ele está morto. Mamãe, a vida acabou de começar Mas agora eu vou ter que jogar tudo fora. Mama, ooh, não quis dizer para fazer você chorar, se eu não voltar outra vez esta vez amanhã, Continue, continue como se nada realmente importa.", user_id: rand(1..20))
   query = portuguese.queries.create!(title: "query #{n+=1}",english: "Too late, my time has come, Sent shivers down my spine, Body's aching all the time. Goodbye, everybody, I've got to go, Gotta leave you all behind and face the truth.", user_id: rand(1..20))
   query = portuguese.queries.create!(title: "query #{n+=1}",english: "Mama, ooh (anyway the wind blows), I don't wanna die, I sometimes wish I'd never been born at all. I see a little silhouetto of a man, Scaramouche, Scaramouche, will you do the Fandango? Thunderbolt and lightning, Very, very frightening me. (Galileo) Galileo. (Galileo) Galileo, Galileo Figaro Magnifico.", user_id: rand(1..20))
   query = portuguese.queries.create!(title: "query #{n+=1}",english: "I'm just a poor boy, nobody loves me. He's just a poor boy from a poor family, Spare him his life from this monstrosity. Easy come, easy go, will you let me go? Bismillah! No, we will not let you go. (Let him go!)", user_id: rand(1..20))
   query = portuguese.queries.create!(title: "query #{n+=1}",english: "So you think you can stone me and spit in my eye? So you think you can love me and leave me to die? Oh, baby, can't do this to me, baby, Just gotta get out, just gotta get right outta here.", other: "Então você acha que pode me apedrejar e cuspir no meu olho? Então você acha que pode me amar e me deixar morrer? Oh, baby, não pode fazer isso comigo, baby, Apenas tenho de sair, apenas tenho de sair direto para fora daqui.", user_id: rand(1..20))


   

 queryarray=(1..36).to_a


 36.times do |i|
   Query.find(queryarray.shift).comments.create!(content: Faker::Lorem.paragraph,
                  commentable_id: i, commentable_type: "query")
 end

 50.times do 
    commentid=rand(1..36)
    Comment.find(commentid).comments.create!(content: Faker::Lorem.paragraph, commentable_id: commentid, commentable_type: "comment", user_id: rand(1..20) )

 end
