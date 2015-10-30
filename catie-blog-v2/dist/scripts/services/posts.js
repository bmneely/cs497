'use strict';

/**
 * @ngdoc service
 * @name catieBlog.posts
 * @description
 * # posts
 * Service in the catieBlog.
 */
angular.module('catieBlog')
  .service('posts', function () {
    var o = {
      posts: [
        {
          title: 'Road Trip and a New Baby Package',
          publishedDate: 'Sunday, September 22, 2013',
          body: '<img class="post-photos-smaller" src="/assets/images/photos/9.22.13-01.jpg">' +
            '<img class="post-photos-smaller" src="/assets/images/photos/9.22.13-02.jpg">' +
            '<img class="post-photos-smaller" src="/assets/images/photos/9.22.13-03.jpg">' +
            '<p>The "road trip" (it was only an hour outside Boise, so not really a road trip, but it felt forever away because of how quickly and dramatically the scenery changed) we took to Idaho City on Saturday didn\'t really pay off in the way of antique shopping as I\'d hoped it would, but we got some ice cream and walked around a bit.</p>' +
            '<p>We got to see some of the fire damage from this year on the way up.  You can sort of see it in the last picture.  That line that goes across the hill.  It was really bad in some places.  We saw a burned out house, and at least one place where the fire had jumped the fire line and just kept going until it finally stopped at the next fire line.  It wasn\'t more than 20 minutes outside Boise either, which put the whole thing in perspective a little.  I always feel like the fires are so far outside of town,but this didn\'t feel very far at all.  It makes more sense now why the air gets so weighed down with thick smoke, and why every time I blew my nose this summer, black stuff came out (sry, tmi).</p>' +
            '<p>So, we left Idaho City pretty quickly and went back home.  Home is where we most enjoy spending our weekends anyway.  I sometimes feel like we\'re missing out by not doing enough (thus the Idaho City "road trip"), but it\'s just so much comfortable at home.  And I got to finish up some baby presents for Autumn, the new baby that\'s coming to Ben\'s side of the family in October.</p>' +
            '<img class="post-photos-smaller" src="/assets/images/photos/9.22.13-04.jpg">' +
            '<img class="post-photos-small" src="/assets/images/photos/9.22.13-05.jpg">' +
            '<img class="post-photos-smaller" src="/assets/images/photos/9.22.13-06.jpg">' +
            '<img class="post-photos-smallest" src="/assets/images/photos/9.22.13-07.jpg">' +
            '<img class="post-photos-smaller" src="/assets/images/photos/9.22.13-08.jpg">' +
            '<img class="post-photos-smaller" src="/assets/images/photos/9.22.13-09.jpg">' +
            '<p>Can you tell it\'s been a while since I was able to sew for a baby girl?  I love all the little boys so, so much, but there\'s just something fun and sweet about girl things.</p>' +
            '<p>The quilt is just a bunch of half triangles in aqua, grey, brown, mustard, and one pail sage green, against the white background and with a 4 inch white border all the way around.  It\'s approximately 40x40" square.  I don\'t know why I like square baby blankets as opposed to rectangular, but I do.</p>' +
            '<p>The ball is an Amish puzzle ball and I made the pattern myself, which was pretty easy to do with a compass and some basic folding.  The pants are from this pattern, which was so easy and fun to make.  I want to make even more and have enough of the lightweight denim I used to make a few more pairs, I think.</p>' +
            '<p>The rattle is from this etsy shop and is just darling, personalized with the baby\'s name.  Plus, added bonus, I got to get it in colors that matched the quilt!  It really shouldn\'t have thrilled me as much as it did, since I\'m pretty sure it\'s terribly unhealthy to raise a baby with everything all matchy-match, but it was just too good, so I couldn\'t pass it up. I\'m pretty sure every baby needs a rattle with their name on it, right?  I told myself they did when I saw the price, and it was worth every penny! ;)</p>' +
            '<p>The weekend is already over and I so don\'t want to go back to work (I never do), but the mornings have been so much cooler lately, and it\'s even not-hot when I get off in the evening, so I\'m telling myself it will be cozy there.  We\'ll see.</p>',
          coverImage: '/assets/images/photos/9.22.13-03.jpg',
          comments: []
        },
        {
          title: '"happy hangers" - dottie angel',
          publishedDate: 'Sunday, February 3, 2013',
          body: '<img class="post-photos" src="/assets/images/photos/hanger01.jpg">' +
                '<img class="post-photos" src="/assets/images/photos/hanger02.jpg">' +
                '<img class="post-photos" src="/assets/images/photos/hanger03.jpg">' +
                '<img class="post-photos" src="/assets/images/photos/hanger04.jpg">' +
                '<img class="post-photos" src="/assets/images/photos/hanger05.jpg">' +
                '<p>I finally found some wooden hangers at the thrift store that worked for dottie angel\'s "happy hanger how-to".  And now I\'m pretty much in love with crocheting hangers...  I made three yesterday, the pink, the grey, and the white, and then went back to the thrift store and picked up the other four they had left.  The second batch (which I wrapped all up in yarn before I had a chance to take a before shot of) was in far less fancy shape than the first.  One was broken clean through, but that\'s the beauty of this project because I just duct taped it back together, wrapped some fabric around it, using masking tape to secure the ends, and covered it in crochet!  Perfect project for old, dingy thrift store hangers.</p>' +
                '<p>In other news, my camera came!</p>' +
                '<p>Actually, it came last week... but I\'ve been so busy playing with it and taking pictures CONSTANTLY that I haven\'t had a chance to do anything else at all.  Except for going to the antique store yesterday to pick up that yummy little teapot in the first picture.</p>' +
                '<p>Current obsessions include: crocheted hangers, my new camera, teapots.  I picked up three teapots yesterday.  Ridiculous, yes, but also perfect, especially for tea since I have a couple of other really darling ones, but they\'re cracked badly enough that they won\'t hold water.  I know this because I tried and got scalding hot water all over me! :)  This tragic event definitely called for more and various teapottage (in better working shape), which was quickly and easily acquired at the antique mall where everyone is exceedingly grouchy and cautious of those of us who are not over 50.  It may or may not have had to do with the lavender-purple hair I\'m rocking at the moment, but every single old lady on the planet used to have Mrs. Stewart\'s bluing-dyed hair, so what\'s wrong with mine?  And maybe that\'s just an easy out for them, to say it was my hair....  because MAYBE they\'re just grouchy in general.  Oh, well, they were incredibly wary of me indeed, and I\'m not entirely inclined to return...  except to buy teapots.  They had so many and I loved them all, but the apples and pears were so perfect, and the "personal" size so adorable...  pictures of the others later, perhaps.</p>' +
                '<p>For now, who wants hangers??</p>',
          coverImage: '/assets/images/photos/hanger01.jpg',
          comments: []
        },
        {
          title: 'cozy, snowy nights',
          publishedDate: 'Tuesday, January 29, 2013',
          body: '<img class="post-photos-small" src="/assets/images/photos/snowy-01.jpg">' +
          '<p>The view outside our bedroom is as snowy as ever.  We talked about moving somewhere else in the summer.  Somewhere cuter, with hardwood floors?  But the view here will always be the best.</p>' +
          '<img class="post-photos-smaller" src="/assets/images/photos/snowy-02.jpg">' +
          '<img class="post-photos-smaller" src="/assets/images/photos/snowy-03.jpg">' +
          '<p>I made (gluten free) macaroni and cheese, ben made green beans and the most tender, juicy tenderloin steaks.  A cooperative dinner, and it was delicious.  Seriously, so good.</p>' +
          '<img class="post-photos-smallest" src="/assets/images/photos/snowy-04.jpg">' +
          '<p>Laying in bed.  Ben codes while I drink hot tea and knit.  If it\'s going to be all snowy, snowy days this winter, we might as well take advantage of a cozy bed and the trusty tea kettle.</p>' +
          '<p>My Quill shawl/baby blanket is coming along.  I worked on it all through class today, but ran out of yarn after an hour and a half, so I\'m happy to pick it back up again.</p>',
          coverImage: '/assets/images/photos/snowy-01.jpg',
          comments: []
        },
        {
          title: 'diy washi tape - not exactly practical, but oh-so-pretty',
          publishedDate: 'Monday, January 28, 2013',
          body: '<img class="post-photos-small" src="/assets/images/photos/washi-01.jpg">' +
            '<img class="post-photos-smaller" src="/assets/images/photos/washi-02.jpg">' +
            '<img class="post-photos-small" src="/assets/images/photos/washi-03.jpg">' +
            '<img class="post-photos-smaller" src="/assets/images/photos/washi-04.jpg">' +
            '<img class="post-photos-small" src="/assets/images/photos/washi-05.jpg">' +
            '<p>I had fun making washi tape last night.  It\'s not "real" washi tape, which is a bummer, because you can\'t get that lovely torn edge look, but it\'s pretty and you can cut with slanted ribbon edges and make it out of any sort of paper you have on hand.  And that\'s fun in my book.</p>' +
            '<p>I used some tissue paper (the black and white polka dots), wrapping paper (the red and brown gingham), and printable scrapbooking paper (pretty much everything else).  I printed most of mine, for free, from <a href="http://shop.starsunflowerstudio.com/index.php?route=common/home">Starsunflower Studio</a> which actually has a variety of free, printable paper and other things.  The paper I used is from the <a href="http://shop.starsunflowerstudio.com/free-shabby-cottage-damask-doily-kitschy-digital-kit-3">Cottage Memories Free Kit Part 3</a>, and when I stumbled upon <a href="http://shop.starsunflowerstudio.com/free-photoshop-gimp-paper-patterns-floral-dots-pastel-chevron">this bundle</a> of free printable paper, I knew I had to make even more, so I\'ll get started on that...</p>' +
            '<p><a href="http://craftingagreenworld.com/2012/05/23/diy-washi-tape/">The tutorial</a> I used was from <a href="http://craftingagreenworld.com/">Crafting a Green World</a>, which was mostly because that\'s where I ended up first.  It\'s not a bad tutorial.  Really easy, and super pretty, but I do have to say that it isn\'t entirely practical to use wax paper as backing.  As it wasn\'t exactly invented for this purpose, it doesn\'t always cooperate smoothly when you go to peel it off.  It hasn\'t been awful, but I will say you should always try to cut your tape off so that you leave a bit of backing poking out, which will make it easier to peel off.  However, if it just tears as you\'re peeling it, then... I don\'t have a lot of help for you there.  I haven\'t figured out what to do in that instance either.  It could also be that I wasn\'t using natural wax paper like the instructions suggest?  So, keep that in mind, too.</p>' +
            '<p>In the end, I think it just would have been easier to use double sticky tape that had a backing on it already and I would have used that had I known it existed. I would really recommend a tutorial like <a href="http://www.niftythriftythings.com/2012/04/diy-washi-tape.html">this one</a>, perhaps, from <a href="http://www.niftythriftythings.com/"> Nifty Thrifty Things</a>.</p>' +
            '<p>Anyway, it is super fun and I\'m definitely going to make more as soon as I get my hands on the pre-backed tape.  To make the spools I have here, I just covered cardboard DMC embroidery floss spools in scrapbooking paper, which I also wouldn\'t recommend unless you use something stronger than rubber cement, but I\'ll be careful with them and maybe the paper will stick for a while! ;)</p>',
          coverImage: '/assets/images/photos/washi-01.jpg',
          comments: []
        },
        {
          title: 'a little quill and some paper mache',
          publishedDate: 'Sunday, January 27, 2013',
          body: '<img class="post-photos-small" src="photos/quill-01.jpg">' +
            '<img class="post-photos-smallest" src="photos/quill-02.jpg">' +
            '<p>I\'ve been working on a steely-gray Quill for the past few days.  It\'s what I finally decided on for class, although I didn\'t end up going to class because of all the ICE.  It was so intense and I don\'t know if it was just my driving, or that everyone else had snow tires, or if I was just so concentrated on my own driving that I didn\'t notice anyone else\'s, but I slid all over the road while taking Ben to work.  Seriously.  All over the road.  And after fighting for parking and walking in the 0 degree FREEZING cold all week, I didn\'t imagine I would have been able to get to class on time, and if I had, I probably wouldn\'t have been in one piece, so class was cancelled for me.  I\'ve been knitting my Quill anyway, though, and it seems to be taking ages (endless garter stitch can be, well, endless), but I\'m committed.  I just love the border around it.   Since I only have enough to make the small size, I may put aside and into our "baby box" for the future.  But, if I\'m truly in love with it, it may hang out on the back of a chair for a while to lend some texture and so I can gaze at it.</p>' +
            '<p>Yesterday night -- which was actually early this morning because that\'s how we roll around here, especially on the weekends -- Ben bought me a camera.  I am so full of anticipation and excitement I think I will burst before it arrives!  I. Can\'t. Wait.  It\'s a <a href="http://www.amazon.com/gp/product/B004J3Y9U6/ref=oh_details_o00_s00_i02">Canon EOS Rebel T3</a>, 12.2 megapixels, and an 18-55mm lens.  Can you believe how nice he is??  And have I said that I can\'t wait?!</p>' +
            '<p>Maybe you should know that this is an upgrade from a <a href="http://www.amazon.com/Fujifilm-FinePix-T200-Digital-Gunmetal/dp/B004SBK7TQ/ref=sr_1_1?s=electronics&ie=UTF8&qid=1359333236&sr=1-1&keywords=fujifilm+finepix+t200">Fujifilm Finepix T200</a> (a point-and-shoot) that I fight with every time I want to take a picture.  I started taking photos with a regular Canon film SLR, which I bought for $500 at age 17, before digital SLRs were really affordable.  At all.  I love that camera and it\'s just dead simple to take good pictures with it.  It\'s like it just takes good pictures all by itself.  So, I know that everybody says you don\'t need a good camera, and I\'ve read lots and lots of good reviews about the Fujifilm Finepix T200, but I just FIGHT with it!  It seems like I have to adjust the settings every single time I open the durn thing, and it drives me absolutely craaazy.  So, anyway, I\'m really looking forward to having a more manual camera that I can fiddle with.  I also like the bulk of an SLR.  It feels like I can get a really good grip on it, whereas with a tiny little point and shoot I\'m always fumbling for a better hold.</p>' +
            '<p>Anyway, so I\'m excited.</p>' +
            '<p>You can see some of the other stuff I\'ve been working on in the top picture, too.  The cat and the bunny are puppets I made using <a href="http://mermag.blogspot.nl/2011/10/getting-frightfully-festive-this.html">this tutorial</a> from <a href="http://mermag.blogspot.nl/">Mer Mag</a>.  I love them so, so much, and have thrown together 7 more heads that I\'m excited about.  FYI, because I hadn\'t done papier mache since about 5th grade, it is super messy.  Don\'t use your living room carpet as a work space.  Better yet, don\'t sit on the floor at all, as I learned, because if you\'ve recently thrown your back out, you will re-injure yourself and end up on a Flexeril and stuck in bed for the rest of the day, too drug-dumb even to knit, watching super-bad youtube reruns of Dr.Phil. :-/  Not ideal, to say the least.  But, I do digress.</p>' +
            '<p>That\'s the Quill in there, too, that they\'re all cozied up together on.  And some <a href="http://madebyjoel.com/2010/02/slotted-building-discs.html">building discs</a> from <a href="http://madebyjoel.com/">madebyjoel.com</a> that I\'ve been loving putting together and taking apart.  I printed them on cardstock and then glued them to paint chips to stabilize them even further.  They\'re actually a little fiddly, but super fun.</p>' +
            '<p>Last, and also pictured, are a couple of the vintage pot holders I\'ve been working on.  I love the green and beige one, and the mauve and white one has ended up being more coaster-sized because I didn\'t pay attention to the yarn requirements.  Oh, well.  I love the pattern anyway.</p>' +
            '<p>Outside, the snow is oh-so-hard, just stuck as firm as royal icing to the ground, but not nearly as pretty as freezing sleet and rain have turned the sides of the roads just black as grime and so, so dirty.  I am more than ready for these dreary, cold days to end so I can take a deep breath and stop wearing so many sweaters.</p>' +
            '<p>That\'s all.  I\'m going to go back to my Quill and to my marathon of the first season of The Beekman Boys, because that show is just adorable and so funny.  It makes me feel a bit like it might be spring soon.  I\'m waiting and thinking about Easter!</p>',
          coverImage: '/assets/images/photos/quill-01.jpg',
          comments: []
        },
        {
          title: 'funnel cakes and knitting',
          publishedDate: 'Tuesday, October 2, 2012',
          body: '<p>Have you seen the <a href="http://www.ravelry.com/patterns/library/high-plains-drifter">High Plains Drifter</a> pattern on Ravelry?  I love the simplicity of it.  It\'s perfect and pretty, but not too fussy and fiddly.</p>' +
                '<img class="post-photos-smallest" src="/assets/images/photos/funnelcake01.jpg" />' +
                '<p>And, most of all, I love that I can knit it during class.  There are a few things a knitting pattern must possess to be approved for in-class knitting.</p>' +
                '<p>They must be:<ol><li>Easy to carry around in a backpack FULL of everything else.</li>' +
                '<li>A simple enough pattern that I can memorize it and don\'t have to keep checking what the next step is -- I have to maintain the illusion that the professor is at my center of attention, after all.  I do have some sense of self preservation.</li>' +
                '<li>At a point where I can knit through the whole class period without breaking yarn and without ending the project (because then I\'m just bored!).  Baby socks, for instance, not always the best project, because if you finish the first one and then you want to dig around in your bag for scissors to cut the yarn, but you forgot them, so you just want to pull-pop-break-the-yarn, but you know it will be too loud.... anyway.</li>' +
                '</ol></p><p>This project has all of those qualities!  So, I started one.</p><img class="post-photos-smallest" src="/assets/images/photos/funnelcake02.jpg" />' +
                '<p>I don\'t have enough of this crazy-weird-variegated skein (I think it\'s a Misty Alpaca sock), but I have some dark brown malabrigo sock leftover that I\'ll finish off with when this one dies out.</p>' +
                '<img class="post-photos-smallest" src="/assets/images/photos/funnelcake03.jpg" /><p>I don\'t really have any pictures that showcase it\'s greatness yet.  Maybe soon.</p>' +
                '<p>And here\'s the grain free funnel cake I made this afternoon.</p><img class="post-photos-smallest" src="/assets/images/photos/funnelcake04.jpg" />' +
                '<p>Looks yummy, eh?  I know, not so much.  Turns out sometimes gluten really IS good for something, like keeping funnel cakes together in hot oil.  But, trust me, it really did taste delicious!</p>' +
                '<p>I also started a quilt today!  And if all goes well, I will share pictures soon.  For now, there are enchiladas cooling on the counter and I am HUNGRY!</p>',
          coverImage: '/assets/images/photos/funnelcake02.jpg',
          comments: [
            { user: 'Ben Neely',
              body: 'I want some funnel cake!'}
          ]
        },
      ]
    };
    return o;
  });
