{-
    ███████╗ ██████╗██╗  ██╗ ██████╗ ██╗      ██████╗  ██████╗ ██╗███████╗    ██████╗ ██████╗  ██████╗
    ██╔════╝██╔════╝██║  ██║██╔═══██╗██║     ██╔═══██╗██╔════╝ ██║██╔════╝   ██╔═══██╗██╔══██╗██╔════╝
    █████╗  ██║     ███████║██║   ██║██║     ██║   ██║██║  ███╗██║█████╗     ██║   ██║██████╔╝██║  ███╗
    ██╔══╝  ██║     ██╔══██║██║   ██║██║     ██║   ██║██║   ██║██║██╔══╝     ██║   ██║██╔══██╗██║   ██║
    ███████╗╚██████╗██║  ██║╚██████╔╝███████╗╚██████╔╝╚██████╔╝██║███████╗██╗╚██████╔╝██║  ██║╚██████╔╝
    ╚══════╝ ╚═════╝╚═╝  ╚═╝ ╚═════╝ ╚══════╝ ╚═════╝  ╚═════╝ ╚═╝╚══════╝╚═╝ ╚═════╝ ╚═╝  ╚═╝ ╚═════╝
-}

-- Le titre ci-dessus a été obtenu grâce au lien suivant :
-- http://www.patorjk.com/software/taag/#p=display&f=ANSI%20Shadow&t=Texte à écrire
--                                                                   ^^^^^^^^^^^^^^

{-
    ███████╗████████╗██╗   ██╗██╗     ███████╗    ██████╗ ███████╗███████╗
    ██╔════╝╚══██╔══╝╚██╗ ██╔╝██║     ██╔════╝    ██╔══██╗██╔════╝██╔════╝
    ███████╗   ██║    ╚████╔╝ ██║     █████╗      ██║  ██║█████╗  ███████╗
    ╚════██║   ██║     ╚██╔╝  ██║     ██╔══╝      ██║  ██║██╔══╝  ╚════██║
    ███████║   ██║      ██║   ███████╗███████╗    ██████╔╝███████╗███████║
    ╚══════╝   ╚═╝      ╚═╝   ╚══════╝╚══════╝    ╚═════╝ ╚══════╝╚══════╝

    ██████╗ ██╗ █████╗ ██╗      ██████╗  ██████╗ ██╗   ██╗███████╗███████╗
    ██╔══██╗██║██╔══██╗██║     ██╔═══██╗██╔════╝ ██║   ██║██╔════╝██╔════╝
    ██║  ██║██║███████║██║     ██║   ██║██║  ███╗██║   ██║█████╗  ███████╗
    ██║  ██║██║██╔══██║██║     ██║   ██║██║   ██║██║   ██║██╔══╝  ╚════██║
    ██████╔╝██║██║  ██║███████╗╚██████╔╝╚██████╔╝╚██████╔╝███████╗███████║
    ╚═════╝ ╚═╝╚═╝  ╚═╝╚══════╝ ╚═════╝  ╚═════╝  ╚═════╝ ╚══════╝╚══════╝
-}


-----------------------------
-- Structure des dialogues --
-----------------------------

-- Deux personnages interviennent :

--data Personnage = Eleve | Professeur deriving (Eq)


-- On veut pouvoir écrire un dialogue sans préciser qui parle à chaque réplique, et donc sans avoir à préciser le style.

--Si l'élève parle en premier et le prof en dernier :
--d = d.replace(/^([^\n]*)\n/,'<p class=\"é\">$1</p><p class=\"è\">');
--d=d.replace(/\n([^\n]*)\n/mg, '</p><p class=\"é\">$1</p><p class=\"è\">')+'</p>';


--Si l'élève parle en premier et en dernier, il y a un nombre pair de retour à la ligne :
--d = '<p class=\"é\">'+d.replace(/\n([^\n]*)\n/mg,'</p><p class=\"è\">$1</p><p class=\"é\">')+'</p>';
--document.getElementById("d").innerHTML += d;


-------------------------
-- Style des dialogues --
-------------------------

{- Le professeur est sur la gauche, sur fond vert,
   et l'élève sur la droite, sur font violet. -}

-- Pour utiliser MathJax pour afficher les formules LaTex, je suis censé utiliser le script suivant :
-- <script src='https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.5/latest.js?config=TeX-MML-AM_CHTML' async>



{-
    ██╗███╗   ██╗████████╗██████╗  ██████╗ ██████╗ ██╗   ██╗ ██████╗████████╗██╗ ██████╗ ███╗   ██╗
    ██║████╗  ██║╚══██╔══╝██╔══██╗██╔═══██╗██╔══██╗██║   ██║██╔════╝╚══██╔══╝██║██╔═══██╗████╗  ██║
    ██║██╔██╗ ██║   ██║   ██████╔╝██║   ██║██║  ██║██║   ██║██║        ██║   ██║██║   ██║██╔██╗ ██║
    ██║██║╚██╗██║   ██║   ██╔══██╗██║   ██║██║  ██║██║   ██║██║        ██║   ██║██║   ██║██║╚██╗██║
    ██║██║ ╚████║   ██║   ██║  ██║╚██████╔╝██████╔╝╚██████╔╝╚██████╗   ██║   ██║╚██████╔╝██║ ╚████║
    ╚═╝╚═╝  ╚═══╝   ╚═╝   ╚═╝  ╚═╝ ╚═════╝ ╚═════╝  ╚═════╝  ╚═════╝   ╚═╝   ╚═╝ ╚═════╝ ╚═╝  ╚═══╝
-}


Introduction : String
Introduction = "var i=`Bonjour.
Bonjour.
Je suis tombé par hasard sur votre site et je suis curieux de que l'on peut y trouver.
On y trouve des conseils et des documents à destination de mes élèves.
Et vous êtes ?
Professeur de mathématiques.
Ah ! Je vois. Encore un de ses blogs où un enseignant raconte le cosinus à sa façon.
À vrai dire, il y a assez peu de mathématiques sur ce site. On y discute plutôt des mécanismes de l'apprentissage.
Et de quel genre de mécanismes parle-t-on, au juste ?
Eh bien, Vous pouvez lire <a title='Dialogues pédagogiques' href='DialoguesPedagogiques/0.html'>mes dialogues pédagogiques</a>. J'espère qu'ils vous éclaireront. Les sujets que j'y aborde sont parfois très anciens, parfois très modernes, mais ils sont malheureusement toujours mal connus, quand ils ne sont pas en plus entachés d'idées-reçues absurdes, alors qu'ils sont susceptibles d'apporter une aide précieuse dans une multitude de situations d'apprentissage, ou même de la vie courante.
Je vois... Dans ce cas, le mieux c'est que je me fasse mon idée en allant voir par moi même.
Je vous en prie, et si vous avez la moindre question, n'hésitez pas à me contacter sur le réseau social de votre choix.`"



{-
                 ██████╗ ██╗ █████╗ ██╗      ██████╗  ██████╗ ██╗   ██╗███████╗███████╗
                 ██╔══██╗██║██╔══██╗██║     ██╔═══██╗██╔════╝ ██║   ██║██╔════╝██╔════╝
                 ██║  ██║██║███████║██║     ██║   ██║██║  ███╗██║   ██║█████╗  ███████╗
                 ██║  ██║██║██╔══██║██║     ██║   ██║██║   ██║██║   ██║██╔══╝  ╚════██║
                 ██████╔╝██║██║  ██║███████╗╚██████╔╝╚██████╔╝╚██████╔╝███████╗███████║
                 ╚═════╝ ╚═╝╚═╝  ╚═╝╚══════╝ ╚═════╝  ╚═════╝  ╚═════╝ ╚══════╝╚══════╝

    ██████╗ ███████╗██████╗  █████╗  ██████╗  ██████╗  ██████╗ ██╗ ██████╗ ██╗   ██╗███████╗███████╗
    ██╔══██╗██╔════╝██╔══██╗██╔══██╗██╔════╝ ██╔═══██╗██╔════╝ ██║██╔═══██╗██║   ██║██╔════╝██╔════╝
    ██████╔╝█████╗  ██║  ██║███████║██║  ███╗██║   ██║██║  ███╗██║██║   ██║██║   ██║█████╗  ███████╗
    ██╔═══╝ ██╔══╝  ██║  ██║██╔══██║██║   ██║██║   ██║██║   ██║██║██║▄▄ ██║██║   ██║██╔══╝  ╚════██║
    ██║     ███████╗██████╔╝██║  ██║╚██████╔╝╚██████╔╝╚██████╔╝██║╚██████╔╝╚██████╔╝███████╗███████║
    ╚═╝     ╚══════╝╚═════╝ ╚═╝  ╚═╝ ╚═════╝  ╚═════╝  ╚═════╝ ╚═╝ ╚══▀▀═╝  ╚═════╝ ╚══════╝╚══════╝
-}


DialoguesPedagogiques : String
DialoguesPedagogiques = "var d0=`Qu'est-ce que vous faites ?
Je retranscris la conversation que je suis en train d'avoir avec un lycéen de 16 ans.
Je sais quel âge j'ai ! Je ne comprends juste pas pourquoi vous retranscrivez notre conversation.
Pour la mettre sur mon site. Et les personnes qui le lisent ne connaissent pas ton âge.
Mais... Pourquoi vous faites ça ?
Eh bien, beaucoup des conversations que nous avons eues ensemble, je les ai eues avec mes autres élèves, et il se trouve que, comme toi, ça les a beaucoup aidé à se concentrer et trouver confiance en eux.
Et vous pensez que ça pourrait aider d'autres élèves de lire ces dialogues ?
Je le pense en effet.
Mais vous avez le droit de retranscrire publiquement ce que je dis ?
Que veux-tu dire ?
Bah, je dois bien avoir des droits d'auteur ou un truc du genre.
Je ne pense pas. Si je ne m'abuse, en droit français, les personnages imaginaires ne peuvent prétendre à droits d'auteur.
Mais internet c'est sur toute la Terre. Donc J'ai peut-être des droits ailleurs.
Je ne pense pas m'avancer beaucoup en affirmant qu'il en est de même dans tous les pays du monde.
Ça c'est vous qui le dites.
C'est vrai. Mais tu es quelqu'un de bien, et l'idée que tes paroles puissent venir en aide au plus grand nombre devrait te satisfaire.
Ouais. C'est sûr. Vu comme ça. Mais vous allez partager lesquels de nos conversations, alors ?
Toutes celles qui concernent le pandémonium.
Cest-à-dire celles où vous m'avez parlé de la mémoire et de l'importance d'apprendre par cœur, de la gestion du stress et tout ça ?
Celles-là même. Et de l'organisation de son travail, et de plein de sujets plus spécifiques aux mathématiques.
Et comment vous allez organiser ça ?
C'est simple. Les dialogues se lisant de préférence dans l'ordre, je mettrai dans la première réplique un lien vers le dialogue précédent pour les personnes qui ne lauraient pas lu.
Ou qui souhaiteraient se rafraîchir la mémoire.
Voilà. Et dans la dernière réplique, je mettrai un lien vers le dialogue suivant.
Mais vous avez déjà eu le temps de retranscrire toutes nos conversations ?
Non. Mais il suffit de me suivre sur les réseaux sociaux ou de s'abonner au flux RSS pour être tenu au courant de la publication des nouveaux articles.
Ouais. D'ailleurs je vois qu'il y a des boutons de partage. Je vais vous faire de la pub sur les réseaux que j'utilise. Après tout c&rsquo;est un peu mes dialogues aussi.
C'est une très bonne initiative. J'espère que d'autres suivront ton exemple, afin que les techniques que je t'ai apprises puissent atteindre un maximum d'élèves.
Ok. Et donc si on arrive sur cette page pour la première fois, par quel dialogue faudra-t-il commencer ?
Par celui qui concerne la question la plus importante que je ne t'ai jamais posée : Qu'est-ce que tu vois ?`"



{-
    ███╗   ███╗███████╗████████╗ █████╗       ██████╗ ██╗ █████╗ ██╗      ██████╗  ██████╗ ██╗   ██╗███████╗
    ████╗ ████║██╔════╝╚══██╔══╝██╔══██╗      ██╔══██╗██║██╔══██╗██║     ██╔═══██╗██╔════╝ ██║   ██║██╔════╝
    ██╔████╔██║█████╗     ██║   ███████║█████╗██║  ██║██║███████║██║     ██║   ██║██║  ███╗██║   ██║█████╗  
    ██║╚██╔╝██║██╔══╝     ██║   ██╔══██║╚════╝██║  ██║██║██╔══██║██║     ██║   ██║██║   ██║██║   ██║██╔══╝  
    ██║ ╚═╝ ██║███████╗   ██║   ██║  ██║      ██████╔╝██║██║  ██║███████╗╚██████╔╝╚██████╔╝╚██████╔╝███████╗
    ╚═╝     ╚═╝╚══════╝   ╚═╝   ╚═╝  ╚═╝      ╚═════╝ ╚═╝╚═╝  ╚═╝╚══════╝ ╚═════╝  ╚═════╝  ╚═════╝ ╚══════╝

             ██████╗ ███████╗██████╗  █████╗  ██████╗  ██████╗  ██████╗ ██╗ ██████╗ ██╗   ██╗███████╗        
             ██╔══██╗██╔════╝██╔══██╗██╔══██╗██╔════╝ ██╔═══██╗██╔════╝ ██║██╔═══██╗██║   ██║██╔════╝        
             ██████╔╝█████╗  ██║  ██║███████║██║  ███╗██║   ██║██║  ███╗██║██║   ██║██║   ██║█████╗          
             ██╔═══╝ ██╔══╝  ██║  ██║██╔══██║██║   ██║██║   ██║██║   ██║██║██║▄▄ ██║██║   ██║██╔══╝          
             ██║     ███████╗██████╔╝██║  ██║╚██████╔╝╚██████╔╝╚██████╔╝██║╚██████╔╝╚██████╔╝███████╗        
             ╚═╝     ╚══════╝╚═════╝ ╚═╝  ╚═╝ ╚═════╝  ╚═════╝  ╚═════╝ ╚═╝ ╚══▀▀═╝  ╚═════╝ ╚══════╝        
-}

MetaDialoguePedagogique : String
MetaDialoguePedagogique = "var d1=`Pourquoi me demandez-vous tout le temps ce que je vois?
Pour le comprendre, il te faut savoir ce qu’est un dialogue pédagogique.
Et c’est quoi?
C’est une technique pédagogique qui consiste à discuter avec l’élève de ce qui se passe dans son esprit quand il est en train d’apprendre.
En quoi ça peut l’aider à apprendre mieux?
Je vais te raconter une petite histoire qui devrait t’éclairer.
Ah oui, j’adore les histoires!
J’ai suivi un élève en grandes difficultés il y a quelques années. Il était en terminale, mais il était totalement incapable de mener à bien un calcul nécessitant plus de cinq ou six étapes.
Comme par exemple?
Comme par exemple frac{frac23+frac45}{3−(frac17)^2}
Oui, ça j’y arrive. C’est quand il y a des lettres que je m’embrouille.
Nous y reviendrons. En tout cas, cet élève là, il n’y avait pas eu moyen de lui faire apprendre même les règles de calcul les plus simples.
En même temps s’il ne foutait rien…
Ne crois pas ça. Ses parents lui avait fait répéter ses règles de calculs jusqu’à lui en faire tourner la tête. Il était capable de les réciter par cœur. Mais rien à faire. Au moment de faire le calcul, il faisait n’importe quoi.
C’est le genre de truc qui m’énerve. C’est tellement inutile d’apprendre par cœur.
Ne crois pas ça non plus! Ce n’est pas du tout là qu’était le problème. L’attitude des parents était très louable. Il n’y en a pas tant qui aurait fait ce simple effort. Et ça aurait été payant avec la plupart des élèves. Mais pas avec celui-là.
Qu’avait-il de si différent ?
Je vais te raconter la discussion que nous avons eu, après que ses parents m’ont engagé, en désespoir de cause.
Comme les miens, quoi.
Bien plus encore. Ils étaient convaincus que leur fils était un cas désespéré, et m’avaient engagé pour « sauver les meubles ».
C’est triste de ne plus croire en ses propres enfants.
<div class='è'>
        Rassure-toi. C’est une histoire qui fini bien. Voici comment a commencé le fameux dialogue qui aura permis de déverrouiller les blocages qu’avait l’élève :
        ^{dialogueDansLeDialogue}
        J’arrête là le dialogue. Ce serait un peu long de raconter comment il a réussi à sentir les formules. L’important c’est qu’il y soit parvenu.
</div>
Si je te montre (displaystylefrac13+frac35) qu'est-ce que tu vois ?
Des fractions.
Eh bien vois-tu, ce n'est pas ce que tu devrais voir.
Si vous me dites qu'il ne faut pas que je vois des fractions quand y en a, je vais vraiment complètement m'embrouiller.
N'ai pas peur. Je vais te montrer ce que tu dois voir. Mais avant, j'ai quelques questions.
Oui...
Quand tu es face à un âne, est-ce que tu dis \"Tiens! Un âne.\" ou \"Tiens! Des oreilles.\" ?
Bah... \"Un âne\"
Pourtant, il y a plus d'oreilles que d'ânes.
Dans ce cas là, pourquoi ne pas dire \"Tiens! des pates.\" ? Il y en a encore plus!
Tout à fait. Tu as pourtant choisi de ne parler que de l'âne.
Parce-que les oreilles, les pâtes... Tout ça, ça va ensemble.
Exactement. Ça forme un tout. Eh c'est bien le problème. Quand tu regardes (displaystylefrac13+frac35) tu ne vois pas un tout. Tu vois deux oreilles! Dans ces conditions, ça ne te sert à rien de connaître tes règles de calcul. Puisque tu ne sais pas en face de quoi tu te trouves.
Oui, c'est ce que je ressens. Et donc si les oreilles sont les fractions, l'âne c'est censé être quoi?
Ah, Ah! C'est là toute la question. Pour l'instant les mathématiques te font peur, et ça te brouille la vue. Sans doute es-tu bon dans quelque chose.
Ouais. Le baskett.
Et pourquoi es-tu bon en baskett exactement ?
Juste, je sens le ballon. J'ai l'impression de le contrôler même quand il est plus dans mes mains, et je l'emmène jusqu'au panier avec ma pensée.
Comme s'il faisait partie de ton corps?
Ouais, comme s'il faisait partie de mon corps. C'est un peu ça.
Eh bien c'est ce que nous allons apprendre à faire avec cette formule.
Genre je vais sentir la formule dans mon corps?
Oui. Et plus vite que tu ne le crois!

Humm… Et ça l’a aidé ?
Absolument.
C’est bizarre.
Quoi donc ?
De sentir une formule avec son corps.
En effet. C’est contraire à tout ce qu’on nous enseigne. Mais réfléchi à ça : ne serait-il pas curieux qu’une personne capable de sentir qu’un ballon fait parti de son corps ne soit pas capable de faire la même chose avec tout autre objet ?
Vu comme ça… Mais, en même temps les formules de maths ne sont pas des objets.
Ah bon ?
On ne peut pas les toucher.
Pose ta main sur la feuille.
Hein ? Pourquoi ?
Pour toucher la formule.
Nan mais, vous voyez ce que je veux dire.
La question c’est : Est-ce que toi tu vois ce que tu veux dire ? L’esprit humain ne cherche pas à avoir une représentation réaliste du monde. Il cherche à se le représenter de la façon qui lui soit la plus pratique. Pour moi cette formule est aussi réelle qu’un ballon de basket. Et même plus encore, sans doute.
Ok. Mais ce serait bien pratique pour moi que mon esprit voit les formules comme vous. J’aurais de meilleurs résultats. Pourtant ce n’est pas le cas.
Oui, ce serait plus pratique pour toi. Mais pas forcément pour ton esprit. C’est pour ça que la motivation c’est tellement important.
Mon esprit ce n’est pas moi ?
Pas tout à fait. Mais on en parlera un autre jour. En attendant qu’est-ce que tu vois toi quand je te montre (displaystylefrac13+frac35) ?
Bah une somme de fractions.
Exactement ! Et c’est pour ça que toi tu ne te trompes pas. Tu vois bien la formule comme un tout.
Je vois la même chose que vous alors ?
Non.
Non ?
Non.
Mais alors vous voyez quoi ?
Une somme.
Une somme de quoi ?
Juste une somme.
Mais… Je vois mieux que vous alors !
Oui.
Donc je suis meilleur en maths !
Mais les maths ce n’est pas que ça. Moi je ne fais pas d’erreurs quand je calcule avec des lettres. Toi si. Et c’est parce-que je ne vois qu’une somme là où tu vois une somme de fractions que je suis plus à l’aise avec le calcul littéral.
Vous voulez dire que pour gagner d’un côté, vous avez dû perdre de l’autre ?
Oui. Mais j’ai très peu perdu en calcul. Un peu de rapidité peut être. Mais j’ai gagné en assurance. J’ai appris à chercher des raccourcis de calcul, à calculer avec des lettres. Et donc au final je trouve des manières plus simples de faire les calculs. Je vais donc plus vite, et je fais moins de faute. C’est aussi ça apprendre. Oublier ce qui n’est pas important, pour que l’esprit puisse bâtir une représentation toujours plus efficace des problèmes rencontrés.
C’est cool ! Et alors le dialogue pédagogique ça vous sert à trouver les représentations les mieux adaptées à l’élève en fonction de sa personnalité afin qu’il puisse travailler le plus efficacement possible.
Exactement. C’est même plus fort que ça encore. Cela permet à l’élève de prendre lui-même conscience de son propre fonctionnement, et donc de pouvoir mettre en place des stratégies personnelles d’apprentissage, lesquelles seront de toute façon bien meilleures pour lui que toutes celles que je pourrais lui proposer. Bref, ça lui permet de se débrouiller tout seul.
Mais si on a pas de prof particulier pour nous aider on ne peut pas y arriver.
C’est certainement plus facile, et surtout plus rapide, si on est aidé. Mais en fait tu es en ce moment même victime d’une vielle technique pédagogique qui permet à l’élève de s’en sortir seul. Si tu avais été un élève ayant les mêmes difficultés que celui de mon histoire, est-ce que tu penses que le fait que je te raconte comment il était parvenu à sentir les formules t’aurait aidé ?
Euh, oui.
C’est donc un méta-dialogue pédagogique. Un élève qui sera dans une situation comparable à celle décrite par ce dialogue pourrait trouver de l’aide dans le simple fait de l’écouter, ou de le lire…
En tout cas, il m’a aidé aussi. Même si mon cas est différent, ça m’a donné confiance en moi. Je commence à croire que je pourrais n’être pas si mauvais en maths.
Je suis heureux de l’entendre. Et si quelqu’un nous écoute, j’espère que ce méta-méta-dialogue l’aidera également.
Qui pourrait bien nous entendre?
Va savoir… En tout cas il faudrait que je t’apprenne à <a title='La forme des formules' href='#'>voir les formules autrement.`"



{-
    ██╗      █████╗     ███████╗ ██████╗ ██████╗ ███╗   ███╗███████╗    ██████╗ ███████╗███████╗
    ██║     ██╔══██╗    ██╔════╝██╔═══██╗██╔══██╗████╗ ████║██╔════╝    ██╔══██╗██╔════╝██╔════╝
    ██║     ███████║    █████╗  ██║   ██║██████╔╝██╔████╔██║█████╗      ██║  ██║█████╗  ███████╗
    ██║     ██╔══██║    ██╔══╝  ██║   ██║██╔══██╗██║╚██╔╝██║██╔══╝      ██║  ██║██╔══╝  ╚════██║
    ███████╗██║  ██║    ██║     ╚██████╔╝██║  ██║██║ ╚═╝ ██║███████╗    ██████╔╝███████╗███████║
    ╚══════╝╚═╝  ╚═╝    ╚═╝      ╚═════╝ ╚═╝  ╚═╝╚═╝     ╚═╝╚══════╝    ╚═════╝ ╚══════╝╚══════╝

                ███████╗ ██████╗ ██████╗ ███╗   ███╗██╗   ██╗██╗     ███████╗███████╗
                ██╔════╝██╔═══██╗██╔══██╗████╗ ████║██║   ██║██║     ██╔════╝██╔════╝
                █████╗  ██║   ██║██████╔╝██╔████╔██║██║   ██║██║     █████╗  ███████╗
                ██╔══╝  ██║   ██║██╔══██╗██║╚██╔╝██║██║   ██║██║     ██╔══╝  ╚════██║
                ██║     ╚██████╔╝██║  ██║██║ ╚═╝ ██║╚██████╔╝███████╗███████╗███████║
                ╚═╝      ╚═════╝ ╚═╝  ╚═╝╚═╝     ╚═╝ ╚═════╝ ╚══════╝╚══════╝╚══════╝
-}


LaFormeDesFormules : String
LaFormeDesFormules = "var d2=`L’autre jour vous m’avez dit que pour vous (displaystylefrac12+frac23) était une somme, et pas une somme de fractions. Et depuis ça me travaille.
C’était (displaystylefrac12+frac34), c’est beaucoup plus facile à calculer. Mais surtout je n’ai jamais dit ça.
Euh…
J’ai dit que je ne voyais qu’une somme, et non une somme de fractions.
Je ne suis pas sûr de voir la différence… En fait, ce que je ne comprends pas, c’est comment vous faites le calcul si vous ne voyez pas les fractions ?
Je les vois… Quand je les regarde. C’est comme une cafetière. Tant qu’elle fait du café tu ne vois pas la prise de courant, mais le jour où le voyant lumineux ne s’allume plus…
Donc vous ne voyez les fractions que si on vous demande de calculer la somme ?
Tout juste.
Mais de toute façon le but c’est de calculer, donc vous devriez tout de suite voir les fractions. Sinon vous ne pouvez pas faire le calcul.
Si tu insinues que c’est parce-que tu as vu les fractions que tu es parvenu à faire le calcul, laisse-moi te convaincre que tu n’as pas tout à fait raison.
Que j’ai tort, plutôt.
Plutôt… Pour faire le calcul, il ne suffit pas de savoir que c’est une somme de fractions. Encore faut-il connaître ces fractions. Il faudrait donc voir la somme de la fraction (displaystylefrac12) et de la fraction (displaystylefrac34). Tu ne crois pas ?
Si, évidemment.
Tu es sûr d’avoir vu ça quand tu m’as dit que tu voyais une somme de fractions ?
Hum…
Moi je suis sûr que non. Je t’expliquerais pourquoi un jour.
Si vous le dites.
En somme, toi et moi n’avons vu qu’une représentation abstraite de la réalité. La mienne l’étant juste davantage. À ce propos, saurais-tu me dire concrètement ce que c’est que (displaystylefrac12+frac34) ?
Bah, comme vous avez dit : la somme de la fraction (displaystylefrac12) et de la fraction (displaystylefrac34).
Mais « la fraction (displaystylefrac12) », par exemple, c’est un concept abstrait. Il serait donc plus proche de la réalité de dire « le quotient du nombre entier 1 et du nombre entier 2 ».
Mais ce serait seulement plus proche parce-que… De toute façon les nombres sont des concepts abstraits ?
Tu as saisi le truc. La réalité est riche d’une infinité de détails. Même en allant jusqu’à parler de courbes dessinées à l’encre sur du papier, on est loin de l’avoir épuisée.
En gros, une représentation n’est pas abstraite ou concrète, elle est juste plus ou moins concrète.
Je dirais plutôt plus ou moins abstraite, mais c’est l’idée. Et tu t’en doutes, les mathématiciens ont besoin d’un vocabulaire précis pour décrire différents niveaux d’abstractions. C’est pourquoi ils ont inventés la notion de « forme » d’une expression mathématique.
Expression mathématique ?
Oui. N’importe quoi qui ait un sens, comme : $$3π4$$ $$f:xmapsto5x2+2x–4$$ $$ain A$$ $$overline{AB}$$ $$t_2ge0$$ $$2ptextrm{ est un entier}$$ $$textrm{bf etc}$$Par contre, (displaystylefrac{3+}5) n’est pas une expression mathématique valide. On dit qu’elle est mal formée.
Je vois. Et donc c’est quoi la forme de (displaystylefrac{3π}4), par exemple ?
Tout dépend de ce que tu cherches à voir. Tu peux dire que c’est de la forme (displaystylefrac ab), avec (a=3π) et (b=4). Ou encore que c’est de la forme (displaystylefrac{kπ}n) avec (k=3) et (n=4) ou que sais-je encore.
Et donc (displaystylefrac ab) et (displaystylefrac{kπ}n) sont deux niveaux d’abstractions distincts. Où (displaystylefrac ab) est la plus abstraite.
Exactement. Il arrive d’ailleurs qu’on ne puisse pas comparer deux niveaux d’abstractions. Si par exemple on interprète une expression mathématique dans deux langages différents.
J’imagine. Enfin plus ou moins. Et on est obligé de préciser les « avec (a=)… » ?
En théorie, oui. Sinon il peut y avoir des ambiguïtés. Par exemple si tu dis que (3(2x+4)(7x−5))
est de la forme (u(x)⋅v(x)). Est-ce que tu veux dire que (u(x)=3(2x+4)) et (v(x)=7x−5) ?  Ou est-ce que tu veux dire que (u(x)=3) et (v(x)=(2x+4)(7x−5)) ?
Ok. Donc si le contexte est clair, on peut s’en passer, mais sinon on précise.
Voilà. D’ailleurs on est parfois encore plus fainéant. Il arrive que l’on soit amené à dire des choses comme
(displaystylefrac12+3) est de la forme (displaystylefrac ab+frac cd)
Euh… Mais 3, c’est pas une fraction.
Bah… Si, c’est (displaystylefrac31) !
Ouais… Mais du coup vous avez changé la forme !
Tu as absolument raison. Mais quand il suffit d’une ligne pour passer à la forme voulue, on se dispense souvent de l’écrire. En vérité, n’importe qui d’un peu habitué à ce genre de calcul voit (displaystylefrac ab+frac cd)quand on lui demande de calculer une expression comme (displaystylefrac12+3).
Parce-que c’est la forme la plus utile pour avancer dans le calcul.
Bien, je vois que tu as compris le principe.
Je crois, oui. Mais je suis quand même curieux de savoir en quoi (displaystylefrac12+frac34) est beaucoup plus simple que (displaystylefrac12+frac13)…
(displaystylefrac12+frac34) ça fait (displaystylefrac54), ça se voit !
Arrêtez ! Me faites pas croire que vous n’avez pas besoin de faire le calcul.
Je fais le calcul. C’est juste que je n’ai pas besoin d’y penser. Regarde : une demie pizza ou deux quarts de pizza c’est la même chose. Ça se voit.
Ouais…
Eh bien (displaystylefrac12) et (displaystylefrac24) c’est pareil. C’est exactement le même nombre. Ça se voit.
C’est quand même plus simple avec des pizzas.
C’est là que tu fais erreur. C’est plus « concret ». C’est donc intrinsèquement plus complexe. Tu es juste plus à l’aise avec les pizzas qu’avec les nombres. Mais ça va changer, je te rassure.
Alors là, vous sous-estimez mon amour des pizzas !
Mais c’est toi qui sous-estime la capacité qu'on les nombres à se faire aimer.
J’attends de voir ça.
Le truc c’est que quand tu vois (displaystylefrac12) il y a une petite voix qui crie « fraction simple » dans ta tête. Alors que chez moi ça évoque juste une demie pizza.
Mais ça on y peut rien. Je peux pas décider de voir autre chose que ce que je vois.
Détrompe-toi. Je t’apprendrai à faire ça, et ce sera sûrement la chose la plus importante que j’aurai à t’enseigner. En attendant, aussi sûrement que 2 chêvres plus 3 chêvres ça fait 5 chêvres, 2 quarts plus 3 quarts ça fait 5 quarts. Autrement dit (displaystylefrac24+frac34=frac54).
C’est tout de suite plus simple vu comme ça. Apprenez-moi à contrôler ce que je vois alors.
Pas aujourd’hui, il faut avant tout que je te parle du <a title='Le pandémonium de Selfridge' href='https://web.archive.org/web/20161023011613/http://echologie.org/meta-dialogue-pedagogique/'>pandémonium de Selfridge</a>.
Le quoi ?`"


{-
    ███████╗████████╗██████╗ ██╗   ██╗ ██████╗████████╗██╗   ██╗██████╗ ███████╗
    ██╔════╝╚══██╔══╝██╔══██╗██║   ██║██╔════╝╚══██╔══╝██║   ██║██╔══██╗██╔════╝
    ███████╗   ██║   ██████╔╝██║   ██║██║        ██║   ██║   ██║██████╔╝█████╗
    ╚════██║   ██║   ██╔══██╗██║   ██║██║        ██║   ██║   ██║██╔══██╗██╔══╝
    ███████║   ██║   ██║  ██║╚██████╔╝╚██████╗   ██║   ╚██████╔╝██║  ██║███████╗
    ╚══════╝   ╚═╝   ╚═╝  ╚═╝ ╚═════╝  ╚═════╝   ╚═╝    ╚═════╝ ╚═╝  ╚═╝╚══════╝

                ██████╗ ██╗   ██╗    ███████╗██╗████████╗███████╗
                ██╔══██╗██║   ██║    ██╔════╝██║╚══██╔══╝██╔════╝
                ██║  ██║██║   ██║    ███████╗██║   ██║   █████╗
                ██║  ██║██║   ██║    ╚════██║██║   ██║   ██╔══╝
                ██████╔╝╚██████╔╝    ███████║██║   ██║   ███████╗
                ╚═════╝  ╚═════╝     ╚══════╝╚═╝   ╚═╝   ╚══════╝
-}


-- Sans que je sache pourquoi, la fonction writeFile ne fonctionne pas. Alors pour remplacer le simple renomage que serait :
--   enregistrer : String -> String -> IO (Either FileError ())
--   enregistrer nomFichier contenu = writeFile nomFichier contenu

-- j'ai dû opter pour un code plus détaillé, qui a le mérite de marcher, mais qui présente le désagrément de ne pas couvrir les cas potentiels d'erreurs (du genre j'écris dans un fichier ouvert dans un autre programme...)

enregistrer : String -> String -> IO ()
enregistrer nomFichier contenu = do
    Right fichier <- openFile nomFichier WriteTruncate
    fPutStr fichier contenu
    closeFile fichier


-- Le programme, une fois compilé, n'a pas d'autre tâche que de générer la nouvelle version du site.

main : IO()
main = do
  enregistrer "i.js" Introduction
  enregistrer "d0.js" DialoguesPedagogiques
  enregistrer "d1.js" MetaDialoguePedagogique
  enregistrer "d2.js" LaFormeDesFormules
