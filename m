Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BC1F1D6D23
	for <lists+openwrt-devel@lfdr.de>; Sun, 17 May 2020 22:59:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:References:To:In-Reply-To:Date:Mime-Version:Message-Id:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Jbq/kaqu97foZ+3HFwWFGh6VjU3K6nofGT+bg+pP6pA=; b=GTmunzQI621YsogvUmHQunOFz
	ZZPSTN4mqMWF5HG2VKlRjr8ww3A9HvlLthvFNmZ/Sf0mZIWzRv7fqFZj0bjR6BVJsQ6LD8MsPGFLx
	KMCY4D2u+vLGwXgpm6iwdmlfMiuq7TsMi8KgL2hTL1zo0nAP/CwOKhxPkuzGDscTlGB/B1neVk2Az
	+OYZ6fc3O0zWIo9c+g4pU0/ujqPW4v+BbkKG0c9/XhIJyf/XIufTTpLVtciBDoKm0RRvQnQnT7xwE
	kK7SB/R475nHMIAbZxxN9+Z7XMCHzmzS4wdl2HNe4i3QWfH2am1jCmxTya+Z9RE52STeG74WK+YOq
	IT6Gt6HMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaQNU-0006eG-4S; Sun, 17 May 2020 20:59:20 +0000
Received: from vps.slashdirt.org ([144.91.108.218])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaQNM-0006dr-Fk
 for openwrt-devel@lists.openwrt.org; Sun, 17 May 2020 20:59:14 +0000
Received: from chuck.tardis.lan (tardis.herebedragons.eu [171.22.3.161])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by vps.slashdirt.org (Postfix) with ESMTPSA id 5B77A6007B;
 Sun, 17 May 2020 22:59:08 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 vps.slashdirt.org 5B77A6007B
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=slashdirt.org; s=mail;
 t=1589749148; bh=WN8CwMYr5mSsSnnVvIc0Z0r1Al3wmv8JWP2CiH6F1OM=;
 h=From:Subject:Date:In-Reply-To:Cc:To:References:From;
 b=SghOOE7PLeRuDerY3EECcXnLKd0x2wwNGzsUp4O/4MeViqbBDWdUcsFwm/iZ/KpWx
 LDZdIe2ElQBhv1vwqUtGdqsal2GIz6Wh3M+2G4c8/bW2npJMVeTC4ix9rRu9e0OUlh
 oYcsTkqOwM2Rjqp7b4XX66uw244MPoX1hpGf27AI=
From: Thibaut <hacks@slashdirt.org>
Message-Id: <C60FB157-2EBE-4884-9D33-30C7C4487732@slashdirt.org>
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.14\))
Date: Sun, 17 May 2020 22:59:07 +0200
In-Reply-To: <CAOdf3gogkVvy==Na9tDTmf2fJFcggNyT2erBHHTNPa4yDu6Yfg@mail.gmail.com>
To: Etienne Champetier <champetier.etienne@gmail.com>
References: <20200517182851.33553-1-hacks@slashdirt.org>
 <20200517194609.34294-1-hacks@slashdirt.org>
 <CAOdf3gogkVvy==Na9tDTmf2fJFcggNyT2erBHHTNPa4yDu6Yfg@mail.gmail.com>
X-Mailer: Apple Mail (2.3445.104.14)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200517_135912_856872_3249E7C4 
X-CRM114-Status: UNSURE (   5.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.4 NO_DNS_FOR_FROM        RBL: Envelope sender has no MX or A DNS records
 [listed in slashdirt.org.	IN	A]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH v2] package/base-files: caldata: work
 around dd's limitation
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: multipart/mixed; boundary="===============1057246675115255042=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org


--===============1057246675115255042==
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_593EBA74-CA5B-4858-BEB1-13658D592AC3"


--Apple-Mail=_593EBA74-CA5B-4858-BEB1-13658D592AC3
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Hi =C3=89tienne,

> Le 17 mai 2020 =C3=A0 22:24, Etienne Champetier =
<champetier.etienne@gmail.com> a =C3=A9crit :
>=20
> Hi Thibaut,
>=20
> Le dim. 17 mai 2020 =C3=A0 15:46, Thibaut VAR=C3=88NE =
<hacks@slashdirt.org <mailto:hacks@slashdirt.org>> a =C3=A9crit :
>>=20
>> -       dd if=3D$source of=3D$target iflag=3Dskip_bytes bs=3D$count =
skip=3D$offset count=3D1 2>/dev/null || \
>> +       # dd doesn't handle partial reads from special files: use cat
>> +       cat $source | dd of=3D$target iflag=3Dskip_bytes bs=3D$count =
skip=3D$offset count=3D1 2>/dev/null || \
>=20
> Not way more elegant, but you could use something like
> tail -c+$start $source | head -c$count > $target
> with $start =3D=3D $offset+1 I think
>=20
> # head -c10 /dev/zero | wc
>        0         0        10
> # head -c10 /dev/zero | tail -c+3 | wc
>        0         0         8

I=E2=80=99m not sure there=E2=80=99s a good reason to do it that way: my =
change barely touches the current logic: it is trivial to confirm that =
it doesn=E2=80=99t break anything that was previously working. On the =
other hand, doing away with dd entirely will need more proofing, and if =
some extra dd flag is needed in the future it will have to be =
reinstated.

Your approach also puts more burden on the shell (it uses redirection to =
output the final file).
All in all I=E2=80=99m afraid it doesn=E2=80=99t look more elegant to =
me, and it seems less efficient too.

The really clean fix which isn=E2=80=99t available to us as busybox dd =
doesn=E2=80=99t support the =E2=80=98count_bytes=E2=80=99 iflag would be =
something along those lines:

dd if=3D$source of=3D$target iflag=3Dskip_bytes,count_bytes =
bs=3D$PAGE_SIZE skip=3D$offset count=3D$count

And then everything would work correctly. This is a different approach =
which I tested successfully with the =C2=AB real =C2=BB dd.

Cheers,
Thibaut


--Apple-Mail=_593EBA74-CA5B-4858-BEB1-13658D592AC3
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" class=3D"">Hi =
=C3=89tienne,<div class=3D""><div><br class=3D""><blockquote type=3D"cite"=
 class=3D""><div class=3D"">Le 17 mai 2020 =C3=A0 22:24, Etienne =
Champetier &lt;<a href=3D"mailto:champetier.etienne@gmail.com" =
class=3D"">champetier.etienne@gmail.com</a>&gt; a =C3=A9crit :</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><span =
style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; =
font-size: 11px; font-style: normal; font-variant-caps: normal; =
font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none; float: none; display: inline !important;" class=3D"">Hi =
Thibaut,</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: =
Menlo-Regular; font-size: 11px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;" class=3D""><br style=3D"caret-color: rgb(0, 0, 0); font-family: =
Menlo-Regular; font-size: 11px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;" class=3D""><span style=3D"caret-color: rgb(0, 0, 0); font-family: =
Menlo-Regular; font-size: 11px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none; float: none; display: inline !important;" class=3D"">Le dim. 17 =
mai 2020 =C3=A0 15:46, Thibaut VAR=C3=88NE &lt;</span><a =
href=3D"mailto:hacks@slashdirt.org" style=3D"font-family: Menlo-Regular; =
font-size: 11px; font-style: normal; font-variant-caps: normal; =
font-weight: normal; letter-spacing: normal; orphans: auto; text-align: =
start; text-indent: 0px; text-transform: none; white-space: normal; =
widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; =
-webkit-text-stroke-width: 0px;" class=3D"">hacks@slashdirt.org</a><span =
style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; =
font-size: 11px; font-style: normal; font-variant-caps: normal; =
font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none; float: none; display: inline !important;" class=3D"">&gt; a =C3=A9cr=
it :</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: =
Menlo-Regular; font-size: 11px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;" class=3D""><blockquote type=3D"cite" style=3D"font-family: =
Menlo-Regular; font-size: 11px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; =
-webkit-text-stroke-width: 0px; text-decoration: none;" class=3D""><br =
class=3D"">- &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dd if=3D$source =
of=3D$target iflag=3Dskip_bytes bs=3D$count skip=3D$offset count=3D1 =
2&gt;/dev/null || \<br class=3D"">+ =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;# dd doesn't handle partial reads =
from special files: use cat<br class=3D"">+ =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;cat $source | dd of=3D$target =
iflag=3Dskip_bytes bs=3D$count skip=3D$offset count=3D1 2&gt;/dev/null =
|| \<br class=3D""></blockquote><br style=3D"caret-color: rgb(0, 0, 0); =
font-family: Menlo-Regular; font-size: 11px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D""><span style=3D"caret-color: rgb(0, 0, =
0); font-family: Menlo-Regular; font-size: 11px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none; float: none; display: inline !important;" =
class=3D"">Not way more elegant, but you could use something =
like</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: =
Menlo-Regular; font-size: 11px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;" class=3D""><span style=3D"caret-color: rgb(0, 0, 0); font-family: =
Menlo-Regular; font-size: 11px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none; float: none; display: inline !important;" class=3D"">tail =
-c+$start $source | head -c$count &gt; $target</span><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; =
font-size: 11px; font-style: normal; font-variant-caps: normal; =
font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;" class=3D""><span style=3D"caret-color: rgb(0, 0, 0); font-family: =
Menlo-Regular; font-size: 11px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none; float: none; display: inline !important;" class=3D"">with $start =
=3D=3D $offset+1 I think</span><br style=3D"caret-color: rgb(0, 0, 0); =
font-family: Menlo-Regular; font-size: 11px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D""><br style=3D"caret-color: rgb(0, 0, =
0); font-family: Menlo-Regular; font-size: 11px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D""><span style=3D"caret-color: rgb(0, 0, =
0); font-family: Menlo-Regular; font-size: 11px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none; float: none; display: inline !important;" =
class=3D""># head -c10 /dev/zero | wc</span><br style=3D"caret-color: =
rgb(0, 0, 0); font-family: Menlo-Regular; font-size: 11px; font-style: =
normal; font-variant-caps: normal; font-weight: normal; letter-spacing: =
normal; text-align: start; text-indent: 0px; text-transform: none; =
white-space: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D""><span style=3D"caret-color: rgb(0, 0, =
0); font-family: Menlo-Regular; font-size: 11px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none; float: none; display: inline !important;" =
class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0 =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0 =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;10</span><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Menlo-Regular; =
font-size: 11px; font-style: normal; font-variant-caps: normal; =
font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;" class=3D""><span style=3D"caret-color: rgb(0, 0, 0); font-family: =
Menlo-Regular; font-size: 11px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none; float: none; display: inline !important;" class=3D""># head -c10 =
/dev/zero | tail -c+3 | wc</span><br style=3D"caret-color: rgb(0, 0, 0); =
font-family: Menlo-Regular; font-size: 11px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D""><span style=3D"caret-color: rgb(0, 0, =
0); font-family: Menlo-Regular; font-size: 11px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none; float: none; display: inline !important;" =
class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0 =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;0 =
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;8</span></div></blockquote=
><br class=3D""></div><div>I=E2=80=99m not sure there=E2=80=99s a good =
reason to do it that way: my change barely touches the current logic: it =
is trivial to confirm that it doesn=E2=80=99t break anything that was =
previously working. On the other hand, doing away with dd entirely will =
need more proofing, and if some extra dd flag is needed in the future it =
will have to be reinstated.</div><div><br class=3D""></div><div>Your =
approach also puts more burden on the shell (it uses redirection to =
output the final file).</div><div>All in all I=E2=80=99m afraid it =
doesn=E2=80=99t look more elegant to me, and it seems less efficient =
too.</div><div><br class=3D""></div><div>The really clean fix which =
isn=E2=80=99t available to us as busybox dd doesn=E2=80=99t support the =
=E2=80=98count_bytes=E2=80=99 iflag would be something along those =
lines:</div><div><br class=3D""></div><div>dd if=3D$source of=3D$target =
iflag=3Dskip_bytes,count_bytes bs=3D$PAGE_SIZE skip=3D$offset =
count=3D$count</div><div><br class=3D""></div><div>And then everything =
would work correctly. This is a different approach which I tested =
successfully with the =C2=AB&nbsp;real&nbsp;=C2=BB dd.</div><div><br =
class=3D""></div><div>Cheers,</div><div>Thibaut</div><br =
class=3D""></div></body></html>=

--Apple-Mail=_593EBA74-CA5B-4858-BEB1-13658D592AC3--


--===============1057246675115255042==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1057246675115255042==--

