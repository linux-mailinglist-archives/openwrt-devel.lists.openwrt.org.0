Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D20F9AD96
	for <lists+openwrt-devel@lfdr.de>; Fri, 23 Aug 2019 12:48:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FyMzYqsmuekp9c8tUt5sy+68f+OCjDINbBGRu7n3TKo=; b=GnEvsvNbMTTVJy40aEQrm5ISn
	erGvyi2Yhq32gGe0DU5MwcCmGsiRisidKExteuoW+fKrSWLtCqk+9EA5U0D2PVrM9fQU7g8dbXaT0
	TacN766kqKyvKrCA029QsuXvJrYUKOWB1hgXm3C78uR+KBAf7bx/Ysavb32YSQOn/z6Kd8KDgbOBZ
	N6Kz+YlLYdYUhdEOZ93EDD3r/saP9k4WMDcSK8FxeNhzeeupCdz8idvvvpVdH25R5QM7ybZT/EO/D
	6MvciamdnuC/4XS8CkThGXPFjZjmT0yQuBPrCd+1mJdcfUMskbnuquPMslgB5CUEQz/K8fDM2mL0F
	7lnf2cDtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i176t-0005Po-Lc; Fri, 23 Aug 2019 10:47:59 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i176j-0005PM-VV
 for openwrt-devel@lists.openwrt.org; Fri, 23 Aug 2019 10:47:51 +0000
Received: by mail-pl1-x644.google.com with SMTP id w11so4905477plp.5
 for <openwrt-devel@lists.openwrt.org>; Fri, 23 Aug 2019 03:47:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=tv2T1i3KqXd6RkM4yf7pDTvIVoizZv7dT3+NQ6knSYA=;
 b=M1qkDO/sXzQOXOqf6NXSsDIF218gw1pqw4smcK4M2tTJgIzpQAgyJOBAh5Jq3cIckW
 MjCU/Acf0p5H1ItXV0Vrv9bf09+gw16xWXC6U2LQMZKxDuGOK1NOeej3wpaPnWCE3Faa
 01UTI9Z37T7zpRQFQ9N7ePXTWv6kyIFdx8zPgBEQh/ZOucTtuGunA7bYhbltlM0l7qlQ
 ppVxo45op3eddK0twxKRsw0PtdDjERiRHc3sbSGvmypn233ys3EvPMPLpmHVpgt7PAaR
 WaQW63HJm78lOc35ugpHpaf4iQqRT5sASy/jvZ0W0lPWEUX/db/NAJ9y8VsMVfFVaLV4
 QiZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tv2T1i3KqXd6RkM4yf7pDTvIVoizZv7dT3+NQ6knSYA=;
 b=fV6QUPHu1FOZBk4G6mtCtXQoYBaZHkxhn2qN286hbbLKGUMj9euT0N9AGWYJ2FdN5R
 WyMBgIv0yCgpiK/3eLiM/dHSIkCuOG/3GwMR6/DY0Fnm4ILLV8BaW65alnRWarOm+KHu
 3LLq/i/K1320igwXesx4fL4V71rhev0egLEgWrBm/sxYZ78wRuUfl9bUzke5+hsTzEDB
 2aT4+J/RgFD6bwWIUbvPJ0NXwkpenyGRCvsQjyvZV3rcaroHiJgMe9Be8mb8Nc/E9SmW
 bQ2maLCH/DRT7S0yXu3gozWeU0Tt6XzP705bytONIoUuMIsOtXKiFi4YymljPYFJrt90
 lUpg==
X-Gm-Message-State: APjAAAUUCZHXflAyvb1sxmoMrxJpl4RCw8SDMeCZqzg3fsq36PAl5RfK
 Kyx4bBCox8T85HtcgOw6ehBqH3c58aAelsXKK2A=
X-Google-Smtp-Source: APXvYqyZZ6ZjWfdwULt9iFgzImcteXpupBFe66ep7+pdaG1Pu0iuCMSquM4WlyDJzE341s2m1UM/ieBBqHP4CWQwUwE=
X-Received: by 2002:a17:902:bcc2:: with SMTP id
 o2mr4048544pls.127.1566557268315; 
 Fri, 23 Aug 2019 03:47:48 -0700 (PDT)
MIME-Version: 1.0
References: <3f82a09f-916b-3ba0-c595-b1d5fc7226cc@birger-koblitz.de>
 <CADQ6-wscaDh7H84CrkpXbW=HfHSLtxvjSERzLf-GjpCBq7nbZA@mail.gmail.com>
 <0ffbe647-e111-e405-e949-062a3b2bb981@birger-koblitz.de>
In-Reply-To: <0ffbe647-e111-e405-e949-062a3b2bb981@birger-koblitz.de>
From: =?UTF-8?B?R8OhYm9yIFZhcmdh?= <vargagab@gmail.com>
Date: Fri, 23 Aug 2019 12:47:37 +0200
Message-ID: <CADQ6-wtu_8SzB4PSJ4eX=0qrSMAp5btFwiTPnuge7OcfDq4Pbg@mail.gmail.com>
To: Birger Koblitz <mail@birger-koblitz.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_034750_014540_220B75F9 
X-CRM114-Status: GOOD (  18.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (vargagab[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
Subject: Re: [OpenWrt-Devel] [PATCH v3] ramips: add Asus RT-AC85P
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: multipart/mixed; boundary="===============7949463107416795790=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============7949463107416795790==
Content-Type: multipart/alternative; boundary="0000000000007f93680590c689a0"

--0000000000007f93680590c689a0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi!

Birger Koblitz <mail@birger-koblitz.de> ezt =C3=ADrta (id=C5=91pont: 2019. =
aug. 23.,
P, 11:56):

> Hi,
>
> On 23.08.19 11:04, G=C3=A1bor Varga wrote:
> > Hi!
> >
> > Although it looks like the Asus RT-AC85P and the Asus RT-AC65P models
> > are identical, but I have separated them into two dts and have
> > introduced the HW version into the names (for the new versions in the
> > future).
>
> Are you sure that is necessary? AFAIK there are no different versions of
> the routers around and Asus seems to have a policy of constantly
> churning out new router models without upgrading existing routers to new
> revisions.


I introduced the HW revision because according to the Asus specification
the two routers should be different at least at the radio hardware. Maybe
Asus can't buy only temporarily MT7615S and MT7615B radios, and fix this in
the next hardware release. Otherwise the Asus has more routers with same
name and different HW version with fully different hardware. For example:
RT-N10 rev A1 has a BroadCom SoC, the rev. C1 has a RaLink SoC.
Or you mean, why have I separated the two models? I have made this, because
with only one dts the model of the router under OpenWrt would be in both
case Asus RT-AC85P.


> >
> > I have an alternative installation method via SSH:
> >
> > Note: The user/password for SSH is identical with the one used in the
> > Web-interface.
> >
> > 1. Complete the initial setup wizard.
> > 2. Activate SSH under "Administration" -> "System".
> > 3. Transfer the OpenWrt factory image via scp:
> >  > scp openwrt-ramips-mt7621-asus_rt-ac65p-r01-squashfs-factory.bin
> > admin@192.168.50.1:/tmp
> > 4. Connect via SSH to the router.
> >  > ssh admin@192.168.50.1 <mailto:admin@192.168.50.1>
> > 5. Write the OpenWrt image to flash.
> >  > mtd-write -i
> > /tmp/openwrt-ramips-mt7621-asus_rt-ac65p-r01-squashfs-factory.bin -d
> linux
> > 6. Reboot the router
> >  > reboot
> >
> > Another thing: I don't know, if it's good method to replace the second
> > firmware partition with OpenWrt image during sysupgrade. When we don't
> > do that, than we have always a factory firmware on the secondary
> > firmware partition, so the back to the factory firmware would be much
> > easier.
>
> I don't have a strong opinion on this. Both ways have their advantages.
> If during sysupgrade both copies of the FW are written, then this is
> consistent with the original software's behavior and additionally, the
> outcome is independent of the OpenWRT initial installation method. When
> using tftp (or the Web-GUI should someone figure out the exact format)
> both copies are written, only ssh and serial port allow to install only
> one copy. Not copying over the previous OpenWRT image to the second
> partition during sysupgrade allows having a copy of the factory firmware
> around (but which needs to be written to the first partition again to be
> booted).
>

I don't know what is the best option. But, when we leave the second
partition untouched, than the user go back to the factory firmware, when he
write only one block to the firmware partition (and the checksum will be
wrong, so the bootloader overwrites the first partition with the second
one.

Cheers,

Gabor Varga

>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>

--0000000000007f93680590c689a0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi!</div><br><div class=3D"gmail_quote"><div dir=3D"l=
tr" class=3D"gmail_attr">Birger Koblitz &lt;<a href=3D"mailto:mail@birger-k=
oblitz.de">mail@birger-koblitz.de</a>&gt; ezt =C3=ADrta (id=C5=91pont: 2019=
. aug. 23., P, 11:56):<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex">Hi,<br>
<br>
On 23.08.19 11:04, G=C3=A1bor Varga wrote:<br>
&gt; Hi!<br>
&gt;<br>
&gt; Although it looks like the Asus RT-AC85P and the Asus RT-AC65P models<=
br>
&gt; are identical, but I have separated them into two dts and have<br>
&gt; introduced the HW version into the names (for the new versions in the<=
br>
&gt; future).<br>
<br>
Are you sure that is necessary? AFAIK there are no different versions of<br=
>
the routers around and Asus seems to have a policy of constantly<br>
churning out new router models without upgrading existing routers to new<br=
>
revisions.</blockquote><div>=C2=A0</div><div>I introduced the HW revision b=
ecause according to the Asus specification the two routers should be differ=
ent at least at the radio hardware. Maybe Asus can&#39;t buy only temporari=
ly MT7615S and MT7615B radios, and fix this in the next hardware release. O=
therwise the Asus has more routers with same name and different HW version =
with fully different hardware. For example: RT-N10 rev A1 has a BroadCom So=
C, the rev. C1 has a RaLink SoC.</div><div>Or you mean, why have I separate=
d the two models? I have made this, because with only one dts the model of =
the router under OpenWrt would be in both case Asus RT-AC85P.</div><div><br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex"><br>
&gt;<br>
&gt; I have an alternative installation method via SSH:<br>
&gt;<br>
&gt; Note: The user/password for SSH is identical with the one used in the<=
br>
&gt; Web-interface.<br>
&gt;<br>
&gt; 1. Complete the initial setup wizard.<br>
&gt; 2. Activate SSH under &quot;Administration&quot; -&gt; &quot;System&qu=
ot;.<br>
&gt; 3. Transfer the OpenWrt factory image via scp:<br>
&gt; =C2=A0&gt; scp openwrt-ramips-mt7621-asus_rt-ac65p-r01-squashfs-factor=
y.bin<br>
&gt; admin@192.168.50.1:/tmp<br>
&gt; 4. Connect via SSH to the router.<br>
&gt; =C2=A0&gt; ssh <a href=3D"mailto:admin@192.168.50.1" target=3D"_blank"=
>admin@192.168.50.1</a> &lt;mailto:<a href=3D"mailto:admin@192.168.50.1" ta=
rget=3D"_blank">admin@192.168.50.1</a>&gt;<br>
&gt; 5. Write the OpenWrt image to flash.<br>
&gt; =C2=A0&gt; mtd-write -i<br>
&gt; /tmp/openwrt-ramips-mt7621-asus_rt-ac65p-r01-squashfs-factory.bin -d l=
inux<br>
&gt; 6. Reboot the router<br>
&gt; =C2=A0&gt; reboot<br>
&gt;<br>
&gt; Another thing: I don&#39;t know, if it&#39;s good method to replace th=
e second<br>
&gt; firmware partition with OpenWrt image during sysupgrade. When we don&#=
39;t<br>
&gt; do that, than we have always a factory firmware on the secondary<br>
&gt; firmware partition, so the back to the factory firmware would be much<=
br>
&gt; easier.<br>
<br>
I don&#39;t have a strong opinion on this. Both ways have their advantages.=
<br>
If during sysupgrade both copies of the FW are written, then this is<br>
consistent with the original software&#39;s behavior and additionally, the<=
br>
outcome is independent of the OpenWRT initial installation method. When<br>
using tftp (or the Web-GUI should someone figure out the exact format)<br>
both copies are written, only ssh and serial port allow to install only<br>
one copy. Not copying over the previous OpenWRT image to the second<br>
partition during sysupgrade allows having a copy of the factory firmware<br=
>
around (but which needs to be written to the first partition again to be<br=
>
booted).<br></blockquote><div><br></div><div>I don&#39;t know what is the b=
est option. But, when we leave the second partition untouched, than the use=
r go back to the factory firmware, when he write only one block to the firm=
ware partition (and the checksum will be wrong, so the bootloader overwrite=
s the first partition with the second one.=C2=A0</div><div><br></div><div>C=
heers,</div><div><br></div><div>Gabor Varga</div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex">
<br>
_______________________________________________<br>
openwrt-devel mailing list<br>
<a href=3D"mailto:openwrt-devel@lists.openwrt.org" target=3D"_blank">openwr=
t-devel@lists.openwrt.org</a><br>
<a href=3D"https://lists.openwrt.org/mailman/listinfo/openwrt-devel" rel=3D=
"noreferrer" target=3D"_blank">https://lists.openwrt.org/mailman/listinfo/o=
penwrt-devel</a><br>
</blockquote></div></div>

--0000000000007f93680590c689a0--


--===============7949463107416795790==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7949463107416795790==--

