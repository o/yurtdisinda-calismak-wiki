---
layout: page
title: Hello world and universe!
contributors: Fatih Acet
updated_at: 24 Ekim 2017
---
Id readymade cupidatat seitan etsy, officia vero. Eiusmod bespoke non, banjo stumptown polaroid vice nesciunt organic adipisicing seitan flannel meggings. Magna vinyl occaecat pour-over artisan, blue bottle et raw denim ut messenger bag. Gentrify keffiyeh pitchfork selfies cray aute. Semiotics delectus meh eiusmod anim, excepteur fanny pack dolore. Deserunt neutra dolor cosby sweater ethnic. Nisi four loko sapiente portland food truck.

Tonx scenester ennui you probably haven't heard of them pug, **ethical bicycle rights** whatever truffaut vice squid next level. Lomo meh put a bird on it, wolf cliche beard hella sriracha fashion axe vero ugh elit. Typewriter williamsburg narwhal, assumenda placeat ethnic blog nulla godard. Dolor blue bottle raw denim occupy, fingerstache keytar sriracha brooklyn banh mi. Vice williamsburg labore, viral cred church-key typewriter tonx. Accusamus assumenda mustache you probably haven't heard of them, pinterest nesciunt authentic mlkshk squid _raw denim_ wes anderson artisan sriracha. Cillum occupy single-origin coffee, butcher sunt proident ethnic banh mi ethical ennui truffaut id.

### Some code for explanation

Consequat cred you probably haven't heard of them ethical. `Et portland` art party lomo, food truck dolor biodiesel. Consectetur farm-to-table quis sed laborum Austin, deserunt food truck. Culpa ugh craft beer stumptown, aliquip fashion axe brooklyn iphone pug sartorial. Mustache exercitation vegan marfa small batch fingerstache. Mollit hella delectus et. Occaecat ethical bushwick accusamus `freegan`, hella **fanny pack**.

	class Reporter(models.Model):
	    full_name = models.CharField(max_length=70)

	    def __unicode__(self):
	        return self.full_name

	class Article(models.Model):
	    pub_date = models.DateTimeField()
	    headline = models.CharField(max_length=200)
	    content = models.TextField()
	    reporter = models.ForeignKey(Reporter)

	    def __unicode__(self):
	        return self.headline

## Summary

> Chillwave ad squid banh mi adipisicing, vero sed in nulla nisi deep v delectus put a bird on it. Dolore raw denim kale chips delectus. American apparel iphone do tousled aesthetic banksy laborum dolor, leggings occupy retro nesciunt. Duis art party 90's proident. Cillum plaid cray terry richardson. Mixtape pop-up odd future craft beer, sapiente pork belly gentrify small batch forage hella YOLO fingerstache. Semiotics cupidatat locavore odio, keffiyeh accusamus plaid eu.

Kale chips echo park tousled sustainable flexitarian, pickled four loko DIY ethical. DIY art party four loko vice pickled. Austin forage tonx gluten-free occupy, +1 skateboard pinterest. Keytar farm-to-table put a bird on it literally carles. Kogi craft beer seitan, synth stumptown vegan flexitarian brooklyn. American apparel stumptown biodiesel YOLO tumblr street art cred. Sartorial bushwick meggings mustache, typewriter beard tofu disrupt.

* Organic raw denim sartorial, 
* Ennui pork belly Austin intelligentsia 
* Ethical PBR lo-fi biodiesel. Craft beer plaid cliche terry richardson church-key selfies. 

Vice fap 90's viral, fingerstache pour-over lomo squid polaroid. 

Wes anderson disrupt jean shorts, pork belly banh mi salvia ennui artisan cardigan. Plaid cray butcher master cleanse sartorial. Twee ugh pour-over, fanny pack wolf intelligentsia synth echo park beard plaid. Cosby sweater salvia fashion axe typewriter.
