Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A378F1B997D
	for <lists+openwrt-devel@lfdr.de>; Mon, 27 Apr 2020 10:12:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Message-ID:Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:Date:MIME-Version:To:From:Reply-To:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Q+o20ybS56mMz+u26uNxXHYmB7dWWVzVGut8zdwAWkA=; b=bvlBUMQeIXjrEuvG0WiWGOhj49
	8PfJgpZTF3Tge3qVnUD/Au8HpijFRKS6l7pNpVSuzzbsXQy1RP7yqkWMgnhSITSA782ulDsciUp3S
	FzF4WQzkp8WqEMJKHVQI35Dlx1XACX9fx8iA5JkeVKqx9zD2khCxL0t0A0UMu2C86nKCrvzoLbXcf
	dYCe9bzSZmHuV5zAbZwfDJzzxCmlaXMRPigxttKC4u3b8F4vDTq8dYPFIovCjirDnRqVzpnQiFxnI
	dSvMTyNxtL1LfPTaCXy+yvwV6IWgWc88c9+1/uAAYd+PMaQCMJjJpbKYOoMid7a6sKbXk8BheVGPR
	AJ0WHdwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSysC-0006rK-Dg; Mon, 27 Apr 2020 08:12:16 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSys6-0006p5-63
 for openwrt-devel@bombadil.infradead.org; Mon, 27 Apr 2020 08:12:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Date:MIME-Version:Content-Type:To:
 Subject:From:Sender:Reply-To:Message-ID:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=XgkZyPb20oFbtUnSheAT0Ikn2qrY5ir4/nqKjqPP4OE=; b=RyaaQboTW0I5gv6A1/ixS5nWDC
 THLegJIHJ2H5gTVpJX4uy64FwJuzIgzwHnfdE+pvNMLqoDZJl7Skdz1RsfH43RAQJauwTWk3aeV2X
 kg4/pWL1SuhQXNvmOv38lS6cnNx/sAvVQo8KGBAAdVl/MWoGUm0W3titM8MHZ0aAEgSD+LEgGYUHI
 ONOBaS5Q1p8d0dyDINrWD3qDK0p4GK306T+8KhBf2iOt0NDr/gQIWQGRM3qdpBYD64QPONkeb6U10
 4ZgRuQLXECj7j0Vt1jHkreet9c4nADhLYOZ7bTI+c5IG8ASrkgmV5r6U9e4cJR5WOUIQvmsJBVT84
 8drSXT0A==;
Received: from far-gruber.volia.net ([93.72.68.186] helo=DESKTOP-11NDN77)
 by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSyrv-00029v-Rm
 for openwrt-devel@lists.openwrt.org; Mon, 27 Apr 2020 08:12:01 +0000
From: "SSH" <sshah@i.ua>
To: "openwrt-devel" <openwrt-devel@lists.openwrt.org>
MIME-Version: 1.0
Organization: NSTU
Date: Mon, 27 Apr 2020 11:11:59 +0300
Priority: urgent
X-Priority: 1
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: 4.8 (++++)
X-Spam-Report: SpamAssassin version 3.4.4 on merlin.infradead.org summary:
 Content analysis details:   (4.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 3.6 RCVD_IN_PBL            RBL: Received via a relay in Spamhaus PBL
 [93.72.68.186 listed in zen.spamhaus.org]
 0.0 FSL_HELO_NON_FQDN_1    No description available.
 0.7 SPF_NEUTRAL            SPF: sender does not match SPF record (neutral)
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.0 HELO_NO_DOMAIN         Relay reports its domain incorrectly
 0.1 MISSING_MID            Missing Message-Id: header
 0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
Subject: [OpenWrt-Devel] art Earth, art Solar System, art Universe.
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============3750780733708845815=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Message-ID: <E1jSysC-0006rK-Dg@bombadil.infradead.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multi-part message in MIME format

--===============3750780733708845815==
Content-Type: multipart/alternative; boundary="wRuyIbvS4URZuPAMPn93tMr=_ohc5jDxFv"

This is a multi-part message in MIME format

--wRuyIbvS4URZuPAMPn93tMr=_ohc5jDxFv
Content-Type: text/plain; charset="Windows-1251"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

This letter is forwarded because you are interested in outer space.
If you are not interested in space, sorry, an error occurred ...
=2E . . . .
Hello.
New artistic symbolic Paintings:
Earth, Moon, Solar System, Galaxy, Constellation, Universe, ...
=2E..
Pictures on the most famous sites of the world:
=2E . .
Site-author search:
saatchiart.com-Slava Shakhov
shutterstock.com-SHAKHOV
stock.adobe.com-Slava
fineartamerica.com-SLAVA SHAHOV (SLAVA SHAKHOV)
deviantart.com-VASHAHOV
twitter.com-Slava Shahov
instagram-vashakhov
instagram-shahovslava=20
youtube.com-Slava Shakhov
pixels.com-Slava Shakhov
facebook-Slava Shakhov
=2E . .
In detail (with links):
=2E . .
A Family. The Solar System in the form of a Big Family.
https://www.saatchiart.com/art/Painting-Family/1095892/4288933/view
=2E . .
https://www.shutterstock.com/image-illustration/solar-system-like-fami=
ly-sun-head-1212949486
=2E . .
https://stock.adobe.com/ru/images/family-the-solar-system-is-like-a-fa=
mily-the-sun-is-the-head-of-the-family/239996644
- - - - - - -
Journey (Trip). The flight of Mankind in a balloon (Earth) through the=
 universe.
https://www.saatchiart.com/art/Painting-Trip/1095892/4361220/view
=2E . .
https://www.shutterstock.com/image-illustration/journey-humanity-on-pl=
anet-earth-through-1211835463
=2E . .
https://stock.adobe.com/ru/images/trip/239900398
- - - - - - -
Vase with Flowers. Vase (Sun) with flowers (Planets).
https://www.saatchiart.com/art/Painting-Vases-System/1095892/6281827/v=
iew
=2E . .
https://www.shutterstock.com/ru/image-illustration/solar-system-form-v=
ase-flowers-1674523528
=2E . .
https://stock.adobe.com/ua/images/solar-system-in-the-form-of-a-vase-w=
ith-flowers/330847376
- - - - - - -
Shore (Coast). Solar System =3D coast of the ocean, but first there we=
re Traces of God.
https://www.saatchiart.com/art/Painting-SHORE/1095892/7416959/view
=2E..
https://www.shutterstock.com/ru/image-illustration/solar-system-form-o=
cean-coast-beginning-1664614624
=2E..
https://stock.adobe.com/ua/images/the-solar-system-in-the-form-of-the-=
ocean-coast-but-in-the-beginning-there-were-traces-of-god/328348809
- - - - - - -
Nest. Bird's Nest (Sun) in which Eggs (Planets).
https://www.saatchiart.com/art/Painting-Nest/1095892/4325932/view
=2E . .
https://www.shutterstock.com/image-illustration/solar-system-nest-top-=
view-sun-1212922564
=2E . .
https://stock.adobe.com/ua/images/solar-system-in-the-form-of-a-bird-s=
-nest/331174138
- - - - - - -
Sailboat. Corvette (Sun) with Sails (Planets).
https://www.saatchiart.com/art/Painting-Sailboat/1095892/4326939/view
=2E . .
https://www.shutterstock.com/ru/image-illustration/sailboat-sailingves=
sel-1207531309
=2E . .
https://stock.adobe.com/ua/images/sailboat/239900033
- - - - - - -
Birth. The scientific theory of the creation of planets by the Sun.
https://www.saatchiart.com/art/Painting-Birth/1095892/4338399/view
=2E . .
https://www.shutterstock.com/ru/image-illustration/solar-system-on-bac=
kground-milky-way-1216483315
=2E . .
https://stock.adobe.com/ua/images/the-solar-system-on-the-background-o=
f-the-milky-way-galaxy-star-the-sun-gives-rise-to-planets-plasma-clots=
-are-condensed-the-theory-of-the-formation-of-planets-around-the-star-=
constellations/245945790
- - - - - - -=20
Exhalation (Dandelion). Creating planets from Dandelion (Sun).
https://www.saatchiart.com/art/Painting-Exhalation/1095892/4329604/vie=
w
=2E . .
https://www.shutterstock.com/ru/image-illustration/solar-system-on-bac=
kground-milky-way-1211844607
=2E . .
https://stock.adobe.com/ua/images/exhalation/239899717
- - - - - - -
Etude (Chess). Chessboard (Sun) with figures (Planets), dark and light=
 side.
https://www.saatchiart.com/art/Painting-Etude/1095892/4332524/view
=2E . .
https://www.shutterstock.com/ru/image-illustration/sun-chessboard-on-w=
hich-batch-dark-1211848801
=2E . .
https://stock.adobe.com/ua/images/etude/239899713
- - - - - - -
Billiards. Billiard table (Milky Way) with balls (Sun and Planets).
https://www.saatchiart.com/art/Painting-Billiards/1095892/4330616/view=

=2E . .
https://www.shutterstock.com/ru/image-illustration/solar-system-on-bac=
kground-milky-way-1211828074
=2E . .
https://stock.adobe.com/ua/images/billiards/239900209
- - - - - - -
Harvest. Fruit Tree (Sun) with branches (prominences) and fruits (Plan=
ets).
https://www.saatchiart.com/art/Painting-Harvest/1095892/4337682/view
=2E . .
https://www.shutterstock.com/ru/image-illustration/solar-system-tree-b=
ottom-view-sun-1212971260
=2E . .
https://stock.adobe.com/ua/images/harvest-solar-system-as-a-tree-botto=
m-view-the-sun-is-a-tree-branches-prominences-large-and-small-planets-=
the-fruits-around-other-trees-stars-constellations-signs-of-the-zodiac=
/245943968
- - - - - - -
Golf. Golf club (Sun), balls (Planets) and hole (Black hole). Perhaps =
horizontal and vertical arrangement of the picture.
https://www.saatchiart.com/art/Painting-Game/1095892/4333798/view
=2E . .
https://www.shutterstock.com/ru/image-illustration/solar-system-like-g=
ame-golf-sun-1211852482
=2E . .
https://stock.adobe.com/ua/images/golf/239899935
- - - - - - -
Musical Instrument. Guitar (Earth, Moon, Sun). Perhaps horizontal and =
vertical arrangement of the picture.
https://www.saatchiart.com/art/Painting-Instrument/1095892/4341701/vie=
w
=2E . .
https://www.shutterstock.com/ru/image-illustration/planet-earth-moon-s=
un-form-tool-1216530742
=2E . .
https://stock.adobe.com/ua/images/planet-earth-the-moon-and-the-sun-in=
-the-form-of-a-tool-guitar-rays-of-the-sun-strings-around-the-stars-no=
tes-notes-collected-in-constellations-signs-of-the-zodiac/240011384
- - - - - - -
Clock. Hourglass (Sun) and grains of sand (Planets).
https://www.saatchiart.com/art/Painting-Clock/1095892/4494930/view
=2E . .
https://www.shutterstock.com/ru/image-illustration/solar-system-form-h=
ourglass-sun-clock-1213021975
=2E . .
https://stock.adobe.com/ua/images/hourglass-the-solar-system-in-the-fo=
rm-of-an-hourglass-the-sun-is-a-clock-planets-grains-of-sand/245949514=

- - - - - - -
Fabric Systems (Cloth System). Knitting needles (Sun) and balls of woo=
l (Planets).
https://www.saatchiart.com/art/Painting-Fabric-Systems/1095892/4509238=
/view
=2E . .
https://www.shutterstock.com/ru/image-illustration/fabric-systems-weav=
ing-1208308120
=2E . .
https://stock.adobe.com/ua/images/fabric-systems/239899908
- - - - - - -
Graduation. (Exhaust). On a holiday, children release balloons (planet=
s).
https://www.saatchiart.com/art/Painting-Graduation/1095892/4498961/vie=
w
=2E . .
https://www.shutterstock.com/ru/image-illustration/solar-system-holida=
y-last-day-school-1213055284
=2E . .
https://stock.adobe.com/ua/images/graduation-exhaust-the-solar-system-=
as-a-holiday-the-last-day-of-school-children-release-balloons-from-a-c=
loudless-childhood-to-a-thundery-adult-life-moving-away-from-the-heat-=
of-the-sun/245947979
- - - - - - -
Duality. The duality of being planet Earth, between the Sun and the Mo=
on.
https://www.saatchiart.com/art/Painting-Duality/1095892/4326766/view
=2E . .
https://www.shutterstock.com/ru/image-illustration/planet-earth-arms-d=
ay-night-light-1226742343
=2E . .
https://stock.adobe.com/ua/images/planet-earth-in-the-arms-of-day-and-=
night-light-and-darkness-heat-and-cold-good-and-evil-war-and-peace-on-=
the-wings-of-the-constellation-the-signs-of-the-zodiac/242982525
- - - - - - -
Rain. Water - a Symbol of Life. Every drop of rain is a Planet.
https://www.saatchiart.com/art/Painting-Rain/1095892/4505345/view
=2E . .
https://www.shutterstock.com/ru/image-illustration/water-symbol-life-p=
resence-guarantees-availability-1212997786
=2E . .
https://stock.adobe.com/ua/images/rain-is-a-natural-phenomenon-water-i=
s-a-symbol-of-life-drops-are-collected-in-constellations-constellation=
s-signs-of-the-zodiac/245946542
- - - - - - -
Ekibana Solar System. Sunflower (Sun) and flowers (Big and small Plane=
ts).
https://www.saatchiart.com/art/Painting-The-Solar-System/1095892/43158=
13/view
=2E . .
https://www.shutterstock.com/ru/image-illustration/bouquet-flowers-for=
m-solar-system-sunflower-1211856763
=2E . .
https://stock.adobe.com/ua/images/the-solar-system/239900224
- - - - - - -
The Beginning (Start). The Big Bang Theory, Fibonacci Spiral Life Deve=
lopment.
https://www.saatchiart.com/art/Painting-Starting/1095892/4315763/view
=2E . .
https://www.shutterstock.com/ru/image-illustration/creation-universe-b=
ig-bang-theory-fibonacci-1213076299
=2E . .
https://stock.adobe.com/ua/images/the-creation-of-the-universe-is-the-=
big-bang-theory-fibonacci-spiral-appearance-of-stars-planets-and-life-=
rainbow-a-natural-phenomenon-of-the-planet-earth/239997037
- - - - - - -
Earth. Map of the planet Earth without civilization. Based on multiple=
 geographic maps.
https://www.saatchiart.com/art/Painting-Flat-Earth/1095892/4330824/vie=
w
=2E . .
https://www.shutterstock.com/ru/image-illustration/planet-earth-withou=
t-civilization-depths-heights-1216587481
=2E . .
https://stock.adobe.com/ua/images/earth-planet-earth-without-civilizat=
ion-depths-and-heights-analysis-and-combination-of-several-maps/245953=
887
- - - - - - -
Transformation. Spiritual Transformation of the Human Soul into Stars.=
 Several variants.
https://www.saatchiart.com/art/Painting-Transformation/1095892/4498739=
/view
=2E . .
https://www.saatchiart.com/art/Painting-Transformation/1095892/4337979=
/view
=2E . .
https://www.shutterstock.com/ru/image-illustration/mill-destiny-conver=
ts-ripe-grains-into-1216554076
https://www.shutterstock.com/ru/image-illustration/life-multilayered-m=
ill-destiny-converts-ripe-1216573174
=2E . .
https://stock.adobe.com/ua/images/transformation-mill-of-destiny-conve=
rts-ripe-grains-into-stars-above-the-pleiades-constellation-symbolic-f=
or-the-earth/245955362
https://stock.adobe.com/ua/images/mill-of-destiny-converts-ripe-grains=
-into-stars-above-the-pleiades-constellation-symbolic-for-the-earth-pa=
st-trials-on-planet-earth-become-more-spiritual-love-family-contribute=
-to-the-rise/240011216
- - - - - - -
Also on other sites:
Fineartamerica
https://fineartamerica.com/profiles/slava-shahov
Deviantart
https://www.deviantart.com/vashahov/gallery/
Youtube. Video clip "The Sun"
https://www.youtube.com/watch?v=3DugAAEhB-tPk&t=3D17s
Artmajeur
https://www.artmajeur.com/ru/art-vash/artworks
Pixels
https://pixels.com/profiles/slava-shahov
- - - - -
https://www.facebook.com/vashshaxov/media_set?set=3Da.552100854941502&=
type=3D3
https://twitter.com/vashshaxov
https://www.saatchiart.com/account/artworks/1095892
https://www.shutterstock.com/ru/g/SHAKHOV
https://stock.adobe.com/ua/contributor/208354939/slava
- - - - -
On the desktop, on the wall, for a gift, in a collection.
Download the file and print it in the workshop.
Buy the printed image on paper, canvas.
Use as a study guide.
- - - - -
Sincerely, the author of the paintings Slava Shakhov
=2E . .
(auto translator)
=2E . .


--wRuyIbvS4URZuPAMPn93tMr=_ohc5jDxFv
Content-Type: text/html; charset="Windows-1251"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

<HTML><HEAD></HEAD>
<BODY>This letter is forwarded because you are interested in outer spa=
ce.<BR>If you are not interested in space, sorry, an error occurred ..=
=2E<BR>. . . . .<BR>Hello.<BR>New artistic symbolic Paintings:<BR>Eart=
h, Moon, Solar System, Galaxy, Constellation, Universe, ...<BR>...<BR>=
Pictures on the most famous sites of the world:<BR>. . .<BR>Site-autho=
r search:<BR>saatchiart.com-Slava Shakhov<BR>shutterstock.com-SHAKHOV<=
BR>stock.adobe.com-Slava<BR>fineartamerica.com-SLAVA SHAHOV (SLAVA SHA=
KHOV)<BR>deviantart.com-VASHAHOV<BR>twitter.com-Slava Shahov<BR>instag=
ram-vashakhov<BR>instagram-shahovslava <BR>youtube.com-Slava Shakhov<B=
R>pixels.com-Slava Shakhov<BR>facebook-Slava Shakhov<BR>. . .<BR>In de=
tail (with links):<BR>. . .<BR>A Family. The Solar System in the form =
of a Big Family.<BR><A href=3D"https://www.saatchiart.com/art/Painting=
-Family/1095892/4288933/view">https://www.saatchiart.com/art/Painting-=
Family/1095892/4288933/view</A><BR>. . .<BR><A href=3D"https://www.shu=
tterstock.com/image-illustration/solar-system-like-family-sun-head-121=
2949486">https://www.shutterstock.com/image-illustration/solar-system-=
like-family-sun-head-1212949486</A><BR>. . .<BR><A href=3D"https://sto=
ck.adobe.com/ru/images/family-the-solar-system-is-like-a-family-the-su=
n-is-the-head-of-the-family/239996644">https://stock.adobe.com/ru/imag=
es/family-the-solar-system-is-like-a-family-the-sun-is-the-head-of-the=
-family/239996644</A><BR>- - - - - - -<BR>Journey (Trip). The flight o=
f Mankind in a balloon (Earth) through the universe.<BR><A href=3D"htt=
ps://www.saatchiart.com/art/Painting-Trip/1095892/4361220/view">https:=
//www.saatchiart.com/art/Painting-Trip/1095892/4361220/view</A><BR>. .=
 .<BR><A href=3D"https://www.shutterstock.com/image-illustration/journ=
ey-humanity-on-planet-earth-through-1211835463">https://www.shuttersto=
ck.com/image-illustration/journey-humanity-on-planet-earth-through-121=
1835463</A><BR>. . .<BR><A href=3D"https://stock.adobe.com/ru/images/t=
rip/239900398">https://stock.adobe.com/ru/images/trip/239900398</A><BR=
>- - - - - - -<BR>Vase with Flowers. Vase (Sun) with flowers (Planets)=
=2E<BR><A href=3D"https://www.saatchiart.com/art/Painting-Vases-System=
/1095892/6281827/view">https://www.saatchiart.com/art/Painting-Vases-S=
ystem/1095892/6281827/view</A><BR>. . .<BR><A href=3D"https://www.shut=
terstock.com/ru/image-illustration/solar-system-form-vase-flowers-1674=
523528">https://www.shutterstock.com/ru/image-illustration/solar-syste=
m-form-vase-flowers-1674523528</A><BR>. . .<BR><A href=3D"https://stoc=
k.adobe.com/ua/images/solar-system-in-the-form-of-a-vase-with-flowers/=
330847376">https://stock.adobe.com/ua/images/solar-system-in-the-form-=
of-a-vase-with-flowers/330847376</A><BR>- - - - - - -<BR>Shore (Coast)=
=2E Solar System =3D coast of the ocean, but first there were Traces o=
f God.<BR><A href=3D"https://www.saatchiart.com/art/Painting-SHORE/109=
5892/7416959/view">https://www.saatchiart.com/art/Painting-SHORE/10958=
92/7416959/view</A><BR>...<BR><A href=3D"https://www.shutterstock.com/=
ru/image-illustration/solar-system-form-ocean-coast-beginning-16646146=
24">https://www.shutterstock.com/ru/image-illustration/solar-system-fo=
rm-ocean-coast-beginning-1664614624</A><BR>...<BR><A href=3D"https://s=
tock.adobe.com/ua/images/the-solar-system-in-the-form-of-the-ocean-coa=
st-but-in-the-beginning-there-were-traces-of-god/328348809">https://st=
ock.adobe.com/ua/images/the-solar-system-in-the-form-of-the-ocean-coas=
t-but-in-the-beginning-there-were-traces-of-god/328348809</A><BR>- - -=
 - - - -<BR>Nest. Bird's Nest (Sun) in which Eggs (Planets).<BR><A hre=
f=3D"https://www.saatchiart.com/art/Painting-Nest/1095892/4325932/view=
">https://www.saatchiart.com/art/Painting-Nest/1095892/4325932/view</A=
><BR>. . .<BR><A href=3D"https://www.shutterstock.com/image-illustrati=
on/solar-system-nest-top-view-sun-1212922564">https://www.shutterstock=
=2Ecom/image-illustration/solar-system-nest-top-view-sun-1212922564</A=
><BR>. . .<BR><A href=3D"https://stock.adobe.com/ua/images/solar-syste=
m-in-the-form-of-a-bird-s-nest/331174138">https://stock.adobe.com/ua/i=
mages/solar-system-in-the-form-of-a-bird-s-nest/331174138</A><BR>- - -=
 - - - -<BR>Sailboat. Corvette (Sun) with Sails (Planets).<BR><A href=3D=
"https://www.saatchiart.com/art/Painting-Sailboat/1095892/4326939/view=
">https://www.saatchiart.com/art/Painting-Sailboat/1095892/4326939/vie=
w</A><BR>. . .<BR><A href=3D"https://www.shutterstock.com/ru/image-ill=
ustration/sailboat-sailingvessel-1207531309">https://www.shutterstock.=
com/ru/image-illustration/sailboat-sailingvessel-1207531309</A><BR>. .=
 .<BR><A href=3D"https://stock.adobe.com/ua/images/sailboat/239900033"=
>https://stock.adobe.com/ua/images/sailboat/239900033</A><BR>- - - - -=
 - -<BR>Birth. The scientific theory of the creation of planets by the=
 Sun.<BR><A href=3D"https://www.saatchiart.com/art/Painting-Birth/1095=
892/4338399/view">https://www.saatchiart.com/art/Painting-Birth/109589=
2/4338399/view</A><BR>. . .<BR><A href=3D"https://www.shutterstock.com=
/ru/image-illustration/solar-system-on-background-milky-way-1216483315=
">https://www.shutterstock.com/ru/image-illustration/solar-system-on-b=
ackground-milky-way-1216483315</A><BR>. . .<BR><A href=3D"https://stoc=
k.adobe.com/ua/images/the-solar-system-on-the-background-of-the-milky-=
way-galaxy-star-the-sun-gives-rise-to-planets-plasma-clots-are-condens=
ed-the-theory-of-the-formation-of-planets-around-the-star-constellatio=
ns/245945790">https://stock.adobe.com/ua/images/the-solar-system-on-th=
e-background-of-the-milky-way-galaxy-star-the-sun-gives-rise-to-planet=
s-plasma-clots-are-condensed-the-theory-of-the-formation-of-planets-ar=
ound-the-star-constellations/245945790</A><BR>- - - - - - - <BR>Exhala=
tion (Dandelion). Creating planets from Dandelion (Sun).<BR><A href=3D=
"https://www.saatchiart.com/art/Painting-Exhalation/1095892/4329604/vi=
ew">https://www.saatchiart.com/art/Painting-Exhalation/1095892/4329604=
/view</A><BR>. . .<BR><A href=3D"https://www.shutterstock.com/ru/image=
-illustration/solar-system-on-background-milky-way-1211844607">https:/=
/www.shutterstock.com/ru/image-illustration/solar-system-on-background=
-milky-way-1211844607</A><BR>. . .<BR><A href=3D"https://stock.adobe.c=
om/ua/images/exhalation/239899717">https://stock.adobe.com/ua/images/e=
xhalation/239899717</A><BR>- - - - - - -<BR>Etude (Chess). Chessboard =
(Sun) with figures (Planets), dark and light side.<BR><A href=3D"https=
://www.saatchiart.com/art/Painting-Etude/1095892/4332524/view">https:/=
/www.saatchiart.com/art/Painting-Etude/1095892/4332524/view</A><BR>. .=
 .<BR><A href=3D"https://www.shutterstock.com/ru/image-illustration/su=
n-chessboard-on-which-batch-dark-1211848801">https://www.shutterstock.=
com/ru/image-illustration/sun-chessboard-on-which-batch-dark-121184880=
1</A><BR>. . .<BR><A href=3D"https://stock.adobe.com/ua/images/etude/2=
39899713">https://stock.adobe.com/ua/images/etude/239899713</A><BR>- -=
 - - - - -<BR>Billiards. Billiard table (Milky Way) with balls (Sun an=
d Planets).<BR><A href=3D"https://www.saatchiart.com/art/Painting-Bill=
iards/1095892/4330616/view">https://www.saatchiart.com/art/Painting-Bi=
lliards/1095892/4330616/view</A><BR>. . .<BR><A href=3D"https://www.sh=
utterstock.com/ru/image-illustration/solar-system-on-background-milky-=
way-1211828074">https://www.shutterstock.com/ru/image-illustration/sol=
ar-system-on-background-milky-way-1211828074</A><BR>. . .<BR><A href=3D=
"https://stock.adobe.com/ua/images/billiards/239900209">https://stock.=
adobe.com/ua/images/billiards/239900209</A><BR>- - - - - - -<BR>Harves=
t. Fruit Tree (Sun) with branches (prominences) and fruits (Planets).<=
BR><A href=3D"https://www.saatchiart.com/art/Painting-Harvest/1095892/=
4337682/view">https://www.saatchiart.com/art/Painting-Harvest/1095892/=
4337682/view</A><BR>. . .<BR><A href=3D"https://www.shutterstock.com/r=
u/image-illustration/solar-system-tree-bottom-view-sun-1212971260">htt=
ps://www.shutterstock.com/ru/image-illustration/solar-system-tree-bott=
om-view-sun-1212971260</A><BR>. . .<BR><A href=3D"https://stock.adobe.=
com/ua/images/harvest-solar-system-as-a-tree-bottom-view-the-sun-is-a-=
tree-branches-prominences-large-and-small-planets-the-fruits-around-ot=
her-trees-stars-constellations-signs-of-the-zodiac/245943968">https://=
stock.adobe.com/ua/images/harvest-solar-system-as-a-tree-bottom-view-t=
he-sun-is-a-tree-branches-prominences-large-and-small-planets-the-frui=
ts-around-other-trees-stars-constellations-signs-of-the-zodiac/2459439=
68</A><BR>- - - - - - -<BR>Golf. Golf club (Sun), balls (Planets) and =
hole (Black hole). Perhaps horizontal and vertical arrangement of the =
picture.<BR><A href=3D"https://www.saatchiart.com/art/Painting-Game/10=
95892/4333798/view">https://www.saatchiart.com/art/Painting-Game/10958=
92/4333798/view</A><BR>. . .<BR><A href=3D"https://www.shutterstock.co=
m/ru/image-illustration/solar-system-like-game-golf-sun-1211852482">ht=
tps://www.shutterstock.com/ru/image-illustration/solar-system-like-gam=
e-golf-sun-1211852482</A><BR>. . .<BR><A href=3D"https://stock.adobe.c=
om/ua/images/golf/239899935">https://stock.adobe.com/ua/images/golf/23=
9899935</A><BR>- - - - - - -<BR>Musical Instrument. Guitar (Earth, Moo=
n, Sun). Perhaps horizontal and vertical arrangement of the picture.<B=
R><A href=3D"https://www.saatchiart.com/art/Painting-Instrument/109589=
2/4341701/view">https://www.saatchiart.com/art/Painting-Instrument/109=
5892/4341701/view</A><BR>. . .<BR><A href=3D"https://www.shutterstock.=
com/ru/image-illustration/planet-earth-moon-sun-form-tool-1216530742">=
https://www.shutterstock.com/ru/image-illustration/planet-earth-moon-s=
un-form-tool-1216530742</A><BR>. . .<BR><A href=3D"https://stock.adobe=
=2Ecom/ua/images/planet-earth-the-moon-and-the-sun-in-the-form-of-a-to=
ol-guitar-rays-of-the-sun-strings-around-the-stars-notes-notes-collect=
ed-in-constellations-signs-of-the-zodiac/240011384">https://stock.adob=
e.com/ua/images/planet-earth-the-moon-and-the-sun-in-the-form-of-a-too=
l-guitar-rays-of-the-sun-strings-around-the-stars-notes-notes-collecte=
d-in-constellations-signs-of-the-zodiac/240011384</A><BR>- - - - - - -=
<BR>Clock. Hourglass (Sun) and grains of sand (Planets).<BR><A href=3D=
"https://www.saatchiart.com/art/Painting-Clock/1095892/4494930/view">h=
ttps://www.saatchiart.com/art/Painting-Clock/1095892/4494930/view</A><=
BR>. . .<BR><A href=3D"https://www.shutterstock.com/ru/image-illustrat=
ion/solar-system-form-hourglass-sun-clock-1213021975">https://www.shut=
terstock.com/ru/image-illustration/solar-system-form-hourglass-sun-clo=
ck-1213021975</A><BR>. . .<BR><A href=3D"https://stock.adobe.com/ua/im=
ages/hourglass-the-solar-system-in-the-form-of-an-hourglass-the-sun-is=
-a-clock-planets-grains-of-sand/245949514">https://stock.adobe.com/ua/=
images/hourglass-the-solar-system-in-the-form-of-an-hourglass-the-sun-=
is-a-clock-planets-grains-of-sand/245949514</A><BR>- - - - - - -<BR>Fa=
bric Systems (Cloth System). Knitting needles (Sun) and balls of wool =
(Planets).<BR><A href=3D"https://www.saatchiart.com/art/Painting-Fabri=
c-Systems/1095892/4509238/view">https://www.saatchiart.com/art/Paintin=
g-Fabric-Systems/1095892/4509238/view</A><BR>. . .<BR><A href=3D"https=
://www.shutterstock.com/ru/image-illustration/fabric-systems-weaving-1=
208308120">https://www.shutterstock.com/ru/image-illustration/fabric-s=
ystems-weaving-1208308120</A><BR>. . .<BR><A href=3D"https://stock.ado=
be.com/ua/images/fabric-systems/239899908">https://stock.adobe.com/ua/=
images/fabric-systems/239899908</A><BR>- - - - - - -<BR>Graduation. (E=
xhaust). On a holiday, children release balloons (planets).<BR><A href=
=3D"https://www.saatchiart.com/art/Painting-Graduation/1095892/4498961=
/view">https://www.saatchiart.com/art/Painting-Graduation/1095892/4498=
961/view</A><BR>. . .<BR><A href=3D"https://www.shutterstock.com/ru/im=
age-illustration/solar-system-holiday-last-day-school-1213055284">http=
s://www.shutterstock.com/ru/image-illustration/solar-system-holiday-la=
st-day-school-1213055284</A><BR>. . .<BR><A href=3D"https://stock.adob=
e.com/ua/images/graduation-exhaust-the-solar-system-as-a-holiday-the-l=
ast-day-of-school-children-release-balloons-from-a-cloudless-childhood=
-to-a-thundery-adult-life-moving-away-from-the-heat-of-the-sun/2459479=
79">https://stock.adobe.com/ua/images/graduation-exhaust-the-solar-sys=
tem-as-a-holiday-the-last-day-of-school-children-release-balloons-from=
-a-cloudless-childhood-to-a-thundery-adult-life-moving-away-from-the-h=
eat-of-the-sun/245947979</A><BR>- - - - - - -<BR>Duality. The duality =
of being planet Earth, between the Sun and the Moon.<BR><A href=3D"htt=
ps://www.saatchiart.com/art/Painting-Duality/1095892/4326766/view">htt=
ps://www.saatchiart.com/art/Painting-Duality/1095892/4326766/view</A><=
BR>. . .<BR><A href=3D"https://www.shutterstock.com/ru/image-illustrat=
ion/planet-earth-arms-day-night-light-1226742343">https://www.shutters=
tock.com/ru/image-illustration/planet-earth-arms-day-night-light-12267=
42343</A><BR>. . .<BR><A href=3D"https://stock.adobe.com/ua/images/pla=
net-earth-in-the-arms-of-day-and-night-light-and-darkness-heat-and-col=
d-good-and-evil-war-and-peace-on-the-wings-of-the-constellation-the-si=
gns-of-the-zodiac/242982525">https://stock.adobe.com/ua/images/planet-=
earth-in-the-arms-of-day-and-night-light-and-darkness-heat-and-cold-go=
od-and-evil-war-and-peace-on-the-wings-of-the-constellation-the-signs-=
of-the-zodiac/242982525</A><BR>- - - - - - -<BR>Rain. Water - a Symbol=
 of Life. Every drop of rain is a Planet.<BR><A href=3D"https://www.sa=
atchiart.com/art/Painting-Rain/1095892/4505345/view">https://www.saatc=
hiart.com/art/Painting-Rain/1095892/4505345/view</A><BR>. . .<BR><A hr=
ef=3D"https://www.shutterstock.com/ru/image-illustration/water-symbol-=
life-presence-guarantees-availability-1212997786">https://www.shutters=
tock.com/ru/image-illustration/water-symbol-life-presence-guarantees-a=
vailability-1212997786</A><BR>. . .<BR><A href=3D"https://stock.adobe.=
com/ua/images/rain-is-a-natural-phenomenon-water-is-a-symbol-of-life-d=
rops-are-collected-in-constellations-constellations-signs-of-the-zodia=
c/245946542">https://stock.adobe.com/ua/images/rain-is-a-natural-pheno=
menon-water-is-a-symbol-of-life-drops-are-collected-in-constellations-=
constellations-signs-of-the-zodiac/245946542</A><BR>- - - - - - -<BR>E=
kibana Solar System. Sunflower (Sun) and flowers (Big and small Planet=
s).<BR><A href=3D"https://www.saatchiart.com/art/Painting-The-Solar-Sy=
stem/1095892/4315813/view">https://www.saatchiart.com/art/Painting-The=
-Solar-System/1095892/4315813/view</A><BR>. . .<BR><A href=3D"https://=
www.shutterstock.com/ru/image-illustration/bouquet-flowers-form-solar-=
system-sunflower-1211856763">https://www.shutterstock.com/ru/image-ill=
ustration/bouquet-flowers-form-solar-system-sunflower-1211856763</A><B=
R>. . .<BR><A href=3D"https://stock.adobe.com/ua/images/the-solar-syst=
em/239900224">https://stock.adobe.com/ua/images/the-solar-system/23990=
0224</A><BR>- - - - - - -<BR>The Beginning (Start). The Big Bang Theor=
y, Fibonacci Spiral Life Development.<BR><A href=3D"https://www.saatch=
iart.com/art/Painting-Starting/1095892/4315763/view">https://www.saatc=
hiart.com/art/Painting-Starting/1095892/4315763/view</A><BR>. . .<BR><=
A href=3D"https://www.shutterstock.com/ru/image-illustration/creation-=
universe-big-bang-theory-fibonacci-1213076299">https://www.shutterstoc=
k.com/ru/image-illustration/creation-universe-big-bang-theory-fibonacc=
i-1213076299</A><BR>. . .<BR><A href=3D"https://stock.adobe.com/ua/ima=
ges/the-creation-of-the-universe-is-the-big-bang-theory-fibonacci-spir=
al-appearance-of-stars-planets-and-life-rainbow-a-natural-phenomenon-o=
f-the-planet-earth/239997037">https://stock.adobe.com/ua/images/the-cr=
eation-of-the-universe-is-the-big-bang-theory-fibonacci-spiral-appeara=
nce-of-stars-planets-and-life-rainbow-a-natural-phenomenon-of-the-plan=
et-earth/239997037</A><BR>- - - - - - -<BR>Earth. Map of the planet Ea=
rth without civilization. Based on multiple geographic maps.<BR><A hre=
f=3D"https://www.saatchiart.com/art/Painting-Flat-Earth/1095892/433082=
4/view">https://www.saatchiart.com/art/Painting-Flat-Earth/1095892/433=
0824/view</A><BR>. . .<BR><A href=3D"https://www.shutterstock.com/ru/i=
mage-illustration/planet-earth-without-civilization-depths-heights-121=
6587481">https://www.shutterstock.com/ru/image-illustration/planet-ear=
th-without-civilization-depths-heights-1216587481</A><BR>. . .<BR><A h=
ref=3D"https://stock.adobe.com/ua/images/earth-planet-earth-without-ci=
vilization-depths-and-heights-analysis-and-combination-of-several-maps=
/245953887">https://stock.adobe.com/ua/images/earth-planet-earth-witho=
ut-civilization-depths-and-heights-analysis-and-combination-of-several=
-maps/245953887</A><BR>- - - - - - -<BR>Transformation. Spiritual Tran=
sformation of the Human Soul into Stars. Several variants.<BR><A href=3D=
"https://www.saatchiart.com/art/Painting-Transformation/1095892/449873=
9/view">https://www.saatchiart.com/art/Painting-Transformation/1095892=
/4498739/view</A><BR>. . .<BR><A href=3D"https://www.saatchiart.com/ar=
t/Painting-Transformation/1095892/4337979/view">https://www.saatchiart=
=2Ecom/art/Painting-Transformation/1095892/4337979/view</A><BR>. . .<B=
R><A href=3D"https://www.shutterstock.com/ru/image-illustration/mill-d=
estiny-converts-ripe-grains-into-1216554076">https://www.shutterstock.=
com/ru/image-illustration/mill-destiny-converts-ripe-grains-into-12165=
54076</A><BR><A href=3D"https://www.shutterstock.com/ru/image-illustra=
tion/life-multilayered-mill-destiny-converts-ripe-1216573174">https://=
www.shutterstock.com/ru/image-illustration/life-multilayered-mill-dest=
iny-converts-ripe-1216573174</A><BR>. . .<BR><A href=3D"https://stock.=
adobe.com/ua/images/transformation-mill-of-destiny-converts-ripe-grain=
s-into-stars-above-the-pleiades-constellation-symbolic-for-the-earth/2=
45955362">https://stock.adobe.com/ua/images/transformation-mill-of-des=
tiny-converts-ripe-grains-into-stars-above-the-pleiades-constellation-=
symbolic-for-the-earth/245955362</A><BR><A href=3D"https://stock.adobe=
=2Ecom/ua/images/mill-of-destiny-converts-ripe-grains-into-stars-above=
-the-pleiades-constellation-symbolic-for-the-earth-past-trials-on-plan=
et-earth-become-more-spiritual-love-family-contribute-to-the-rise/2400=
11216">https://stock.adobe.com/ua/images/mill-of-destiny-converts-ripe=
-grains-into-stars-above-the-pleiades-constellation-symbolic-for-the-e=
arth-past-trials-on-planet-earth-become-more-spiritual-love-family-con=
tribute-to-the-rise/240011216</A><BR>- - - - - - -<BR>Also on other si=
tes:<BR>Fineartamerica<BR><A href=3D"https://fineartamerica.com/profil=
es/slava-shahov">https://fineartamerica.com/profiles/slava-shahov</A><=
BR>Deviantart<BR><A href=3D"https://www.deviantart.com/vashahov/galler=
y/">https://www.deviantart.com/vashahov/gallery/</A><BR>Youtube. Video=
 clip "The Sun"<BR><A href=3D"https://www.youtube.com/watch?v=3DugAAEh=
B-tPk&amp;t=3D17s">https://www.youtube.com/watch?v=3DugAAEhB-tPk&amp;t=
=3D17s</A><BR>Artmajeur<BR><A href=3D"https://www.artmajeur.com/ru/art=
-vash/artworks">https://www.artmajeur.com/ru/art-vash/artworks</A><BR>=
Pixels<BR><A href=3D"https://pixels.com/profiles/slava-shahov">https:/=
/pixels.com/profiles/slava-shahov</A><BR>- - - - -<BR><A href=3D"https=
://www.facebook.com/vashshaxov/media_set?set=3Da.552100854941502&amp;t=
ype=3D3">https://www.facebook.com/vashshaxov/media_set?set=3Da.5521008=
54941502&amp;type=3D3</A><BR><A href=3D"https://twitter.com/vashshaxov=
">https://twitter.com/vashshaxov</A><BR><A href=3D"https://www.saatchi=
art.com/account/artworks/1095892">https://www.saatchiart.com/account/a=
rtworks/1095892</A><BR><A href=3D"https://www.shutterstock.com/ru/g/SH=
AKHOV">https://www.shutterstock.com/ru/g/SHAKHOV</A><BR><A href=3D"htt=
ps://stock.adobe.com/ua/contributor/208354939/slava">https://stock.ado=
be.com/ua/contributor/208354939/slava</A><BR>- - - - -<BR>On the deskt=
op, on the wall, for a gift, in a collection.<BR>Download the file and=
 print it in the workshop.<BR>Buy the printed image on paper, canvas.<=
BR>Use as a study guide.<BR>- - - - -<BR>Sincerely, the author of the =
paintings Slava Shakhov<BR>. . .<BR>(auto translator)<BR>. . . </BODY>=
</HTML>


--wRuyIbvS4URZuPAMPn93tMr=_ohc5jDxFv--



--===============3750780733708845815==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============3750780733708845815==--


