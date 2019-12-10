Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D64A118F6C
	for <lists+openwrt-devel@lfdr.de>; Tue, 10 Dec 2019 19:00:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:Message-ID:From:To:MIME-Version:References:In-Reply-To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=B9MOMxMuOZmF3Q3FgHnMYwozRFDKLIAyNTXp9nLXzNM=; b=ngNsTbVcY7Bsrpe6WCWThxP6M
	SSMDbI2T4/3XpXKN/ooTH/FAERfbPJ8nKZRLXZy+jVMyMTztshMZmXq+E1t2Sx4HBGDPwqUY/T9h3
	7dtaZbOpDyU20+sCY3hwMpinoPoqvFQ+fo9ke4PwbWbf8tS56ca486Ay6JUMOdZKqRCYIQG/cMXTH
	VSTKSuxaJ8CKWdwhEcATWSqCo/ScZG+JU2ZRQ7VV3UdqAx4cbOGnkmy8kwHVFOSQ9TwTGAgWkv36Y
	kO3p1Wbu38sC7gmfKzjMPBiqvCoCfOBS5XEec5hyCxrX7bzWA7bMtKFrXpCllFw1hmjm3cyOyHNat
	VUmMkW/nQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iejoJ-0004Hm-DA; Tue, 10 Dec 2019 18:00:35 +0000
Received: from wp175.webpack.hosteurope.de ([2a01:488:42:1000:50ed:84b6::])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iejoC-0004GC-Fv
 for openwrt-devel@lists.openwrt.org; Tue, 10 Dec 2019 18:00:30 +0000
Received: from p200300c587241100d059fb8031439343.dip0.t-ipconnect.de
 ([2003:c5:8724:1100:d059:fb80:3143:9343]); authenticated
 by wp175.webpack.hosteurope.de running ExIM with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 id 1iejo7-0005rO-Mv; Tue, 10 Dec 2019 19:00:23 +0100
Date: Tue, 10 Dec 2019 19:00:21 +0100
User-Agent: K-9 Mail for Android
In-Reply-To: <77A5BB04-DBA2-493A-BB2C-C65A57E72620@birger-koblitz.de>
References: <20191209220358.103352-1-vargagab@gmail.com>
 <011b01d5af4e$70ff5830$52fe0890$@adrianschmutzler.de>
 <CADQ6-wvyOuFE1aD_MVD38QkQbsRmst5OEBGVFapQcsMt+nfkwg@mail.gmail.com>
 <77A5BB04-DBA2-493A-BB2C-C65A57E72620@birger-koblitz.de>
MIME-Version: 1.0
To: openwrt-devel@lists.openwrt.org,
 =?ISO-8859-1?Q?G=E1bor_Varga?= <vargagab@gmail.com>,
 Adrian Schmutzler <mail@adrianschmutzler.de>
From: Birger Koblitz <mail@birger-koblitz.de>
Message-ID: <D957C65B-9B7F-42C3-8F7D-4911BD7EA675@birger-koblitz.de>
X-bounce-key: webpack.hosteurope.de; mail@birger-koblitz.de; 1576000828;
 43a91d37; 
X-HE-SMSGID: 1iejo7-0005rO-Mv
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_100028_682501_ADDFE2D3 
X-CRM114-Status: GOOD (  10.68  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: fix switch port numbering for
 RT-AC65P/RT-AC85P
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
Cc: ynezz@true.cz, gch981213@gmail.com
Content-Type: multipart/mixed; boundary="===============8966542630806909629=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============8966542630806909629==
Content-Type: multipart/alternative; boundary="----JPZ6NBHUN1VH13VJSIQCWDDOCFHG2U"
Content-Transfer-Encoding: 7bit

------JPZ6NBHUN1VH13VJSIQCWDDOCFHG2U
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

Dear all,=20

I acknowledge this patch on the RT-AC85P=2E For me in the setup without th=
e patch, port numbers above the LEDs are correctly linked to respective phy=
sical port numbers, but the naming under Luci is incorrect, e=2Eg=2E LAN1 c=
orresponds to physical port 4=2E

Birger=20

On 10 December 2019 14:25:00 CET, Birger Koblitz <mail@birger-koblitz=2Ede=
> wrote:
>Dear all,
>
>I'll check this this evening=2E Maybe I got the numbers backwards=2E The
>router's leds are labelled in the sequence 4 to 1 while the ports are
>numbered 1-4 at the back=2E=2E=2E
>
>Birger=20
>
>
>On 10 December 2019 14:16:55 CET, "G=C3=A1bor Varga" <vargagab@gmail=2Eco=
m>
>wrote:
>>Dear Adrian,
>>
>>of course no, I have only Asus RT-AC65P router=2E As I see, the two
>>devices
>>are identical, but hopefully Birger can confirm (or not) this=2E When
>the
>>port numbering are different on two devices, than I send a new patch=2E
>>
>>Thanks,
>>
>>Gabor Varga
>>
>>Adrian Schmutzler <mail@adrianschmutzler=2Ede> ezt =C3=ADrta (id=C5=91po=
nt: 2019=2E
>>dec=2E
>>10=2E, K, 12:39):
>>
>>> Hi,
>>>
>>> have you verified this for both devices (rt-ac65p and rt-ac85p)?
>>>
>>> I've added Birger Koblitz to recipients (RT-AC85P author)=2E
>>>
>>> Best
>>>
>>> Adrian
>>>
>>> > -----Original Message-----
>>> > From: openwrt-devel
>>[mailto:openwrt-devel-bounces@lists=2Eopenwrt=2Eorg] On
>>> > Behalf Of vargagab@gmail=2Ecom
>>> > Sent: Montag, 9=2E Dezember 2019 23:04
>>> > To: openwrt-devel@lists=2Eopenwrt=2Eorg
>>> > Cc: ynezz@true=2Ecz; gch981213@gmail=2Ecom; Gabor Varga
>><vargagab@gmail=2Ecom>
>>> > Subject: [OpenWrt-Devel] [PATCH] ramips: fix switch port numbering
>>for
>>> RT-
>>> > AC65P/RT-AC85P
>>> >
>>> > From: Gabor Varga <vargagab@gmail=2Ecom>
>>> >
>>> > The switch LAN port numbers are in reversed order with original
>>config=2E
>>> > With this patch they are fixed=2E
>>> >
>>> > Signed-off-by: Gabor Varga <vargagab@gmail=2Ecom>
>>> > ---
>>> >  =2E=2E=2E/linux/ramips/mt7621/base-files/etc/board=2Ed/02_network  =
| 7
>>+++++--
>>> >  1 file changed, 5 insertions(+), 2 deletions(-)
>>> >
>>> > diff --git
>>a/target/linux/ramips/mt7621/base-files/etc/board=2Ed/02_network
>>> > b/target/linux/ramips/mt7621/base-files/etc/board=2Ed/02_network
>>> > index 420780a101=2E=2E42cdb4d57f 100755
>>> > --- a/target/linux/ramips/mt7621/base-files/etc/board=2Ed/02_network
>>> > +++ b/target/linux/ramips/mt7621/base-files/etc/board=2Ed/02_network
>>> > @@ -37,6 +37,11 @@ ramips_setup_interfaces()
>>> >               ucidef_add_switch "switch0" \
>>> >                       "0:lan" "1:lan" "2:lan" "3:lan" "4:wan"
>>"6@eth0"
>>> >               ;;
>>> > +     asus,rt-ac65p|\
>>> > +     asus,rt-ac85p)
>>> > +             ucidef_add_switch "switch0" \
>>> > +                     "1:lan:1" "2:lan:2" "3:lan:3" "4:lan:4"
>>"0:wan"
>>> "6@eth0"
>>> > +             ;;
>>> >       alfa-network,quad-e4g|\
>>> >       netgear,r6220|\
>>> >       netgear,r6260|\
>>> > @@ -64,8 +69,6 @@ ramips_setup_interfaces()
>>> >               ucidef_add_switch "switch0" \
>>> >                       "1:lan" "2:lan" "3:lan" "4:lan" "0:wan"
>>"6@eth0"
>>> >               ;;
>>> > -     asus,rt-ac65p|\
>>> > -     asus,rt-ac85p|\
>>> >       dlink,dir-860l-b1|\
>>> >       elecom,wrc-1167ghbk2-s|\
>>> >       elecom,wrc-1900gst|\
>>> > --
>>> > 2=2E24=2E0
>>> >
>>> >
>>> > _______________________________________________
>>> > openwrt-devel mailing list
>>> > openwrt-devel@lists=2Eopenwrt=2Eorg
>>> > https://lists=2Eopenwrt=2Eorg/mailman/listinfo/openwrt-devel
>>> _______________________________________________
>>> openwrt-devel mailing list
>>> openwrt-devel@lists=2Eopenwrt=2Eorg
>>> https://lists=2Eopenwrt=2Eorg/mailman/listinfo/openwrt-devel
>>>

------JPZ6NBHUN1VH13VJSIQCWDDOCFHG2U
Content-Type: text/html;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body>Dear all, <br><br>I acknowledge this patch on the =
RT-AC85P=2E For me in the setup without the patch, port numbers above the L=
EDs are correctly linked to respective physical port numbers, but the namin=
g under Luci is incorrect, e=2Eg=2E LAN1 corresponds to physical port 4=2E<=
br><br>Birger <br><br><div class=3D"gmail_quote">On 10 December 2019 14:25:=
00 CET, Birger Koblitz &lt;mail@birger-koblitz=2Ede&gt; wrote:<blockquote c=
lass=3D"gmail_quote" style=3D"margin: 0pt 0pt 0pt 0=2E8ex; border-left: 1px=
 solid rgb(204, 204, 204); padding-left: 1ex;">
Dear all,<br><br>I'll check this this evening=2E Maybe I got the numbers b=
ackwards=2E The router's leds are labelled in the sequence 4 to 1 while the=
 ports are numbered 1-4 at the back=2E=2E=2E<br><br>Birger <br><br><br><div=
 class=3D"gmail_quote">On 10 December 2019 14:16:55 CET, "G=C3=A1bor Varga"=
 &lt;vargagab@gmail=2Ecom&gt; wrote:<blockquote class=3D"gmail_quote" style=
=3D"margin: 0pt 0pt 0pt 0=2E8ex; border-left: 1px solid rgb(204, 204, 204);=
 padding-left: 1ex;">
<div dir=3D"ltr">Dear Adrian,<div><br></div><div>of course no, I have only=
 Asus RT-AC65P router=2E As I see, the two devices are identical, but hopef=
ully Birger can confirm (or not) this=2E When the port numbering are differ=
ent on two devices, than I send a new patch=2E</div><div><br></div><div>Tha=
nks,</div><div><br></div><div>Gabor Varga</div></div><br><div class=3D"gmai=
l_quote"><div dir=3D"ltr" class=3D"gmail_attr">Adrian Schmutzler &lt;<a hre=
f=3D"mailto:mail@adrianschmutzler=2Ede">mail@adrianschmutzler=2Ede</a>&gt; =
ezt =C3=ADrta (id=C5=91pont: 2019=2E dec=2E 10=2E, K, 12:39):<br></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=2E8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex">Hi,<br>
<br>
have you verified this for both devices (rt-ac65p and rt-ac85p)?<br>
<br>
I've added Birger Koblitz to recipients (RT-AC85P author)=2E<br>
<br>
Best<br>
<br>
Adrian<br>
<br>
&gt; -----Original Message-----<br>
&gt; From: openwrt-devel [mailto:<a href=3D"mailto:openwrt-devel-bounces@l=
ists=2Eopenwrt=2Eorg" target=3D"_blank">openwrt-devel-bounces@lists=2Eopenw=
rt=2Eorg</a>] On<br>
&gt; Behalf Of <a href=3D"mailto:vargagab@gmail=2Ecom" target=3D"_blank">v=
argagab@gmail=2Ecom</a><br>
&gt; Sent: Montag, 9=2E Dezember 2019 23:04<br>
&gt; To: <a href=3D"mailto:openwrt-devel@lists=2Eopenwrt=2Eorg" target=3D"=
_blank">openwrt-devel@lists=2Eopenwrt=2Eorg</a><br>
&gt; Cc: <a href=3D"mailto:ynezz@true=2Ecz" target=3D"_blank">ynezz@true=
=2Ecz</a>; <a href=3D"mailto:gch981213@gmail=2Ecom" target=3D"_blank">gch98=
1213@gmail=2Ecom</a>; Gabor Varga &lt;<a href=3D"mailto:vargagab@gmail=2Eco=
m" target=3D"_blank">vargagab@gmail=2Ecom</a>&gt;<br>
&gt; Subject: [OpenWrt-Devel] [PATCH] ramips: fix switch port numbering fo=
r RT-<br>
&gt; AC65P/RT-AC85P<br>
&gt; <br>
&gt; From: Gabor Varga &lt;<a href=3D"mailto:vargagab@gmail=2Ecom" target=
=3D"_blank">vargagab@gmail=2Ecom</a>&gt;<br>
&gt; <br>
&gt; The switch LAN port numbers are in reversed order with original confi=
g=2E<br>
&gt; With this patch they are fixed=2E<br>
&gt; <br>
&gt; Signed-off-by: Gabor Varga &lt;<a href=3D"mailto:vargagab@gmail=2Ecom=
" target=3D"_blank">vargagab@gmail=2Ecom</a>&gt;<br>
&gt; ---<br>
&gt;&nbsp; =2E=2E=2E/linux/ramips/mt7621/base-files/etc/board=2Ed/02_netwo=
rk&nbsp; | 7 +++++--<br>
&gt;&nbsp; 1 file changed, 5 insertions(+), 2 deletions(-)<br>
&gt; <br>
&gt; diff --git a/target/linux/ramips/mt7621/base-files/etc/board=2Ed/02_n=
etwork<br>
&gt; b/target/linux/ramips/mt7621/base-files/etc/board=2Ed/02_network<br>
&gt; index 420780a101=2E=2E42cdb4d57f 100755<br>
&gt; --- a/target/linux/ramips/mt7621/base-files/etc/board=2Ed/02_network<=
br>
&gt; +++ b/target/linux/ramips/mt7621/base-files/etc/board=2Ed/02_network<=
br>
&gt; @@ -37,6 +37,11 @@ ramips_setup_interfaces()<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;ucidef_add_swit=
ch "switch0" \<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp;"0:lan" "1:lan" "2:lan" "3:lan" "4:wan" "6@eth0"<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;;;<br>
&gt; +&nbsp; &nbsp; &nbsp;asus,rt-ac65p|\<br>
&gt; +&nbsp; &nbsp; &nbsp;asus,rt-ac85p)<br>
&gt; +&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;ucidef_add_switch "s=
witch0" \<br>
&gt; +&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp;"1:lan:1" "2:lan:2" "3:lan:3" "4:lan:4" "0:wan" "6@eth0"<br>
&gt; +&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;;;<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp;alfa-network,quad-e4g|\<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp;netgear,r6220|\<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp;netgear,r6260|\<br>
&gt; @@ -64,8 +69,6 @@ ramips_setup_interfaces()<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;ucidef_add_swit=
ch "switch0" \<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp;"1:lan" "2:lan" "3:lan" "4:lan" "0:wan" "6@eth0"<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;;;<br>
&gt; -&nbsp; &nbsp; &nbsp;asus,rt-ac65p|\<br>
&gt; -&nbsp; &nbsp; &nbsp;asus,rt-ac85p|\<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp;dlink,dir-860l-b1|\<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp;elecom,wrc-1167ghbk2-s|\<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp;elecom,wrc-1900gst|\<br>
&gt; --<br>
&gt; 2=2E24=2E0<br>
&gt; <br>
&gt; <br>
&gt; _______________________________________________<br>
&gt; openwrt-devel mailing list<br>
&gt; <a href=3D"mailto:openwrt-devel@lists=2Eopenwrt=2Eorg" target=3D"_bla=
nk">openwrt-devel@lists=2Eopenwrt=2Eorg</a><br>
&gt; <a href=3D"https://lists=2Eopenwrt=2Eorg/mailman/listinfo/openwrt-dev=
el" rel=3D"noreferrer" target=3D"_blank">https://lists=2Eopenwrt=2Eorg/mail=
man/listinfo/openwrt-devel</a><br>
_______________________________________________<br>
openwrt-devel mailing list<br>
<a href=3D"mailto:openwrt-devel@lists=2Eopenwrt=2Eorg" target=3D"_blank">o=
penwrt-devel@lists=2Eopenwrt=2Eorg</a><br>
<a href=3D"https://lists=2Eopenwrt=2Eorg/mailman/listinfo/openwrt-devel" r=
el=3D"noreferrer" target=3D"_blank">https://lists=2Eopenwrt=2Eorg/mailman/l=
istinfo/openwrt-devel</a><br>
</blockquote></div>
</blockquote></div></blockquote></div></body></html>
------JPZ6NBHUN1VH13VJSIQCWDDOCFHG2U--


--===============8966542630806909629==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8966542630806909629==--

