Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8BA6185C7D
	for <lists+openwrt-devel@lfdr.de>; Sun, 15 Mar 2020 13:57:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:References:To:In-Reply-To:Date:Mime-Version:Message-Id:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Vy04t7/oyYPmc9xJ3TQRQj7Kc1s2RkoOHqZjHeVvWDw=; b=Dw7UHDoJqdIgwRqRz21uNKMX1
	4aIW8CYQ0YcP2TfT6IRiLtyY3of3TYcHRqaAgrIceczsjWcGoGpdt9mQp/LlhanbwX/d76OBXO/V7
	tAGuir0uu9O4gtRad706lQpjq1a8qG86HrITPrufQEFVBzL8bSON0Ntjg84L3e/cA2Zxtt42hvLcD
	7wJlR0bdz3ljUIyNo0C0e+/MFu/kFgg8Bv2Y4pcU0sHHVTE3BLlju7noDX6FP3rPZOoAyXNDbSV5W
	awm2ZkujNWHQROvmoGbSkvq5MEiiBLPjs1aenYNjTk3aJA8HzZwK+g8gnTqB2HbSR2QKaLd3mPRdG
	iFhnaUIjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDSpI-0004ZS-CV; Sun, 15 Mar 2020 12:57:08 +0000
Received: from vps.slashdirt.org ([144.91.108.218])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDSp9-0004Z1-P6
 for openwrt-devel@lists.openwrt.org; Sun, 15 Mar 2020 12:57:01 +0000
Received: from chuck.tardis.lan (161-3-22-171.ftth.cust.kwaoo.net
 [171.22.3.161])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by vps.slashdirt.org (Postfix) with ESMTPSA id 4AD81600B1;
 Sun, 15 Mar 2020 13:56:58 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.11.0 vps.slashdirt.org 4AD81600B1
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=slashdirt.org; s=mail;
 t=1584277018; bh=aZXaP4LTjCAG8A7feJocTwrOkHsg4ER5FlA1ne3MfWg=;
 h=From:Subject:Date:In-Reply-To:Cc:To:References:From;
 b=QbO6p0v6BTX3CFQR8lgv2d/+dDMfbqnQzsbsj9GEMOPaKNJiLSDjsU/dJYioRMHx/
 Dep4jWcl37dPmhKPCJVP0DTHyJwbjKPvtmcvxVnyMjxxk5b6PSokVEQVvBgBeRCH6A
 HctwyL+SsbfE1xd7Jp/YnZOJKsCLqBNuoDGjwCTA=
From: Thibaut <hacks@slashdirt.org>
Message-Id: <C161EAD9-7C28-484D-A0B6-DA7A9366F514@slashdirt.org>
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Date: Sun, 15 Mar 2020 13:56:57 +0100
In-Reply-To: <00e101d5fac8$99b84050$cd28c0f0$@adrianschmutzler.de>
To: mail@adrianschmutzler.de
References: <20200314212303.29701-1-hacks@slashdirt.org>
 <20200315103451.34439-1-hacks@slashdirt.org>
 <005101d5fac2$06e7c670$14b75350$@adrianschmutzler.de>
 <AB7BAD62-99F2-4E02-8C70-BAA463D24D5A@slashdirt.org>
 <00e101d5fac8$99b84050$cd28c0f0$@adrianschmutzler.de>
X-Mailer: Apple Mail (2.3445.104.11)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_055700_149782_A66B1D31 
X-CRM114-Status: GOOD (  18.00  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.4 NO_DNS_FOR_FROM        RBL: Envelope sender has no MX or A DNS records
 [listed in slashdirt.org.	IN	A]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH v2] ar71xx: add support for RB SXTsq 2nD
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
Content-Type: multipart/mixed; boundary="===============5089592370204114077=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org


--===============5089592370204114077==
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_9CA2DFA3-9EE1-400F-9820-BB898C881509"


--Apple-Mail=_9CA2DFA3-9EE1-400F-9820-BB898C881509
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Hi,

> Le 15 mars 2020 =C3=A0 13:52, <mail@adrianschmutzler.de> =
<mail@adrianschmutzler.de> a =C3=A9crit :
>=20
> Hi,
>=20
>> -----Original Message-----
>> From: Thibaut [mailto:hacks@slashdirt.org]
>> Sent: Sonntag, 15. M=C3=A4rz 2020 13:39
>> To: mail@adrianschmutzler.de
>> Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
>> Subject: Re: [OpenWrt-Devel] [PATCH v2] ar71xx: add support for RB =
SXTsq
>> 2nD
>>=20
>> Hi,
>>=20
>>> Le 15 mars 2020 =C3=A0 13:05, <mail@adrianschmutzler.de>
>> <mail@adrianschmutzler.de> a =C3=A9crit :
>>>=20
>>> Hi,
>>>=20
>>>> -----Original Message-----
>>>> From: openwrt-devel [mailto:openwrt-devel-
>> bounces@lists.openwrt.org]
>>>> On Behalf Of Thibaut VAR=C3=88NE
>>>> Sent: Sonntag, 15. M=C3=A4rz 2020 11:35
>>>> To: openwrt-devel@lists.openwrt.org
>>>> Cc: Thibaut VAR=C3=88NE <hacks@slashdirt.org>
>>>> Subject: [OpenWrt-Devel] [PATCH v2] ar71xx: add support for RB =
SXTsq
>> 2nD
>>>=20
>>> the ar71xx target will only be supported in already released 19.07 =
branch
>> and be removed afterwards.
>>>=20
>>> Consequently, we do not accept any device support for this target
>> anymore.
>>>=20
>>> Please work with the ath79 target instead, which is meant to replace =
ar71xx
>> and is also already included in 19.07.x (though Mikrotik devices have =
only
>> been added in master).
>>=20
>> I had a feeling this would be the answer.
>>=20
>> At least the code is there for those who need it, and it details the =
necessary
>> bits to get this hardware to work.
>>=20
>> Regarding moving to ath79 there are a number of issues which I=E2=80=99=
m trying to
>> wrap my head around.
>>=20
>> Specifically, right now we have a (imo very convenient) =C2=AB one =
image fits them
>> all =C2=BB approach for ar71xx-based mikrotik devices. This relies on =
load-time
>> detection of the hardware which is based part on the kernel command =
string
>> passed by the routerboot bootloader, and part on actual hardware =
detection
>> at kernel load time (MIPS machine name).
>>=20
>> I don=E2=80=99t know yet if it is possible to transcribe this in a =
DTS world: routerboot
>> doesn=E2=80=99t support DTS, so my impression is that in order to =
maintain this
>> feature an intermediary loader is needed, which is going to be =
non-trivial.
>>=20
>> Second, I don=E2=80=99t know if the machine name detection can also =
be
>> implemented in DTS: I was under the impression that all DTSes define =
a fixed
>> string, there doesn=E2=80=99t seem to be a mechanism to lift that =
string from the mtd
>> device as is currently done on ar71xx. Is this correct?
>=20
> The way devices were detected in ar71xx also caused a lot of problem, =
as it was very confusing even to seasoned developers. Now, we just build =
a separate image for each device, so we do not need this mess of scripts =
for detection anymore.

I believe this is a waste of resources and a very suboptimal approach. =
I=E2=80=99m not sure I=E2=80=99m interested in spending time on this :P

Some devices share the exact same hardware and differ only in =
(marketing) name, as evidenced by:
=
https://git.openwrt.org/?p=3Dopenwrt/openwrt.git;a=3Dcommitdiff;h=3D5ac974=
f2145c770431a6eb7e006dd086b70224b1 =
<https://git.openwrt.org/?p=3Dopenwrt/openwrt.git;a=3Dcommitdiff;h=3D5ac97=
4f2145c770431a6eb7e006dd086b70224b1>

(this device uses the 911L platform)

> Just have a look at how the few ath79 devices are implemented, but =
note that they will be moved to a mikrotik subtarget soon as indicated =
by Roger already.

I=E2=80=99ve offered in this thread a couple patches to align the ath79 =
implementation on the existing ramips one wrt mtd partitioning and =
naming.

Best,
Thibaut=

--Apple-Mail=_9CA2DFA3-9EE1-400F-9820-BB898C881509
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" =
class=3D"">Hi,<br class=3D""><div><br class=3D""><blockquote type=3D"cite"=
 class=3D""><div class=3D"">Le 15 mars 2020 =C3=A0 13:52, &lt;<a =
href=3D"mailto:mail@adrianschmutzler.de" =
class=3D"">mail@adrianschmutzler.de</a>&gt; &lt;<a =
href=3D"mailto:mail@adrianschmutzler.de" =
class=3D"">mail@adrianschmutzler.de</a>&gt; a =C3=A9crit :</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div class=3D"">Hi,<br=
 class=3D""><br class=3D""><blockquote type=3D"cite" =
class=3D"">-----Original Message-----<br class=3D"">From: Thibaut [<a =
href=3D"mailto:hacks@slashdirt.org" =
class=3D"">mailto:hacks@slashdirt.org</a>]<br class=3D"">Sent: Sonntag, =
15. M=C3=A4rz 2020 13:39<br class=3D"">To: <a =
href=3D"mailto:mail@adrianschmutzler.de" =
class=3D"">mail@adrianschmutzler.de</a><br class=3D"">Cc: OpenWrt =
Development List &lt;<a href=3D"mailto:openwrt-devel@lists.openwrt.org" =
class=3D"">openwrt-devel@lists.openwrt.org</a>&gt;<br class=3D"">Subject: =
Re: [OpenWrt-Devel] [PATCH v2] ar71xx: add support for RB SXTsq<br =
class=3D"">2nD<br class=3D""><br class=3D"">Hi,<br class=3D""><br =
class=3D""><blockquote type=3D"cite" class=3D"">Le 15 mars 2020 =C3=A0 =
13:05, &lt;<a href=3D"mailto:mail@adrianschmutzler.de" =
class=3D"">mail@adrianschmutzler.de</a>&gt;<br =
class=3D""></blockquote>&lt;<a href=3D"mailto:mail@adrianschmutzler.de" =
class=3D"">mail@adrianschmutzler.de</a>&gt; a =C3=A9crit :<br =
class=3D""><blockquote type=3D"cite" class=3D""><br class=3D"">Hi,<br =
class=3D""><br class=3D""><blockquote type=3D"cite" =
class=3D"">-----Original Message-----<br class=3D"">From: openwrt-devel =
[mailto:openwrt-devel-<br class=3D""></blockquote></blockquote><a =
href=3D"mailto:bounces@lists.openwrt.org" =
class=3D"">bounces@lists.openwrt.org</a>]<br class=3D""><blockquote =
type=3D"cite" class=3D""><blockquote type=3D"cite" class=3D"">On Behalf =
Of Thibaut VAR=C3=88NE<br class=3D"">Sent: Sonntag, 15. M=C3=A4rz 2020 =
11:35<br class=3D"">To: <a href=3D"mailto:openwrt-devel@lists.openwrt.org"=
 class=3D"">openwrt-devel@lists.openwrt.org</a><br class=3D"">Cc: =
Thibaut VAR=C3=88NE &lt;<a href=3D"mailto:hacks@slashdirt.org" =
class=3D"">hacks@slashdirt.org</a>&gt;<br class=3D"">Subject: =
[OpenWrt-Devel] [PATCH v2] ar71xx: add support for RB SXTsq<br =
class=3D""></blockquote></blockquote>2nD<br class=3D""><blockquote =
type=3D"cite" class=3D""><br class=3D"">the ar71xx target will only be =
supported in already released 19.07 branch<br class=3D""></blockquote>and =
be removed afterwards.<br class=3D""><blockquote type=3D"cite" =
class=3D""><br class=3D"">Consequently, we do not accept any device =
support for this target<br class=3D""></blockquote>anymore.<br =
class=3D""><blockquote type=3D"cite" class=3D""><br class=3D"">Please =
work with the ath79 target instead, which is meant to replace ar71xx<br =
class=3D""></blockquote>and is also already included in 19.07.x (though =
Mikrotik devices have only<br class=3D"">been added in master).<br =
class=3D""><br class=3D"">I had a feeling this would be the answer.<br =
class=3D""><br class=3D"">At least the code is there for those who need =
it, and it details the necessary<br class=3D"">bits to get this hardware =
to work.<br class=3D""><br class=3D"">Regarding moving to ath79 there =
are a number of issues which I=E2=80=99m trying to<br class=3D"">wrap my =
head around.<br class=3D""><br class=3D"">Specifically, right now we =
have a (imo very convenient) =C2=AB one image fits them<br class=3D"">all =
=C2=BB approach for ar71xx-based mikrotik devices. This relies on =
load-time<br class=3D"">detection of the hardware which is based part on =
the kernel command string<br class=3D"">passed by the routerboot =
bootloader, and part on actual hardware detection<br class=3D"">at =
kernel load time (MIPS machine name).<br class=3D""><br class=3D"">I =
don=E2=80=99t know yet if it is possible to transcribe this in a DTS =
world: routerboot<br class=3D"">doesn=E2=80=99t support DTS, so my =
impression is that in order to maintain this<br class=3D"">feature an =
intermediary loader is needed, which is going to be non-trivial.<br =
class=3D""><br class=3D"">Second, I don=E2=80=99t know if the machine =
name detection can also be<br class=3D"">implemented in DTS: I was under =
the impression that all DTSes define a fixed<br class=3D"">string, there =
doesn=E2=80=99t seem to be a mechanism to lift that string from the =
mtd<br class=3D"">device as is currently done on ar71xx. Is this =
correct?<br class=3D""></blockquote><br class=3D"">The way devices were =
detected in ar71xx also caused a lot of problem, as it was very =
confusing even to seasoned developers. Now, we just build a separate =
image for each device, so we do not need this mess of scripts for =
detection anymore.<br class=3D""></div></div></blockquote><div><br =
class=3D""></div>I believe this is a waste of resources and a very =
suboptimal approach. I=E2=80=99m not sure I=E2=80=99m interested in =
spending time on this :P</div><div><br class=3D""></div><div>Some =
devices share the exact same hardware and differ only in (marketing) =
name, as evidenced by:</div><div><a =
href=3D"https://git.openwrt.org/?p=3Dopenwrt/openwrt.git;a=3Dcommitdiff;h=3D=
5ac974f2145c770431a6eb7e006dd086b70224b1" =
class=3D"">https://git.openwrt.org/?p=3Dopenwrt/openwrt.git;a=3Dcommitdiff=
;h=3D5ac974f2145c770431a6eb7e006dd086b70224b1</a></div><div><br =
class=3D""></div><div>(this device uses the 911L platform)</div><div><br =
class=3D""></div><div><blockquote type=3D"cite" class=3D""><div =
class=3D""><div class=3D"">Just have a look at how the few ath79 devices =
are implemented, but note that they will be moved to a mikrotik =
subtarget soon as indicated by Roger already.<br =
class=3D""></div></div></blockquote></div><br class=3D""><div =
class=3D"">I=E2=80=99ve offered in this thread a couple patches to align =
the ath79 implementation on the existing ramips one wrt mtd partitioning =
and naming.</div><div class=3D""><br class=3D""></div><div =
class=3D"">Best,</div><div class=3D"">Thibaut</div></body></html>=

--Apple-Mail=_9CA2DFA3-9EE1-400F-9820-BB898C881509--


--===============5089592370204114077==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5089592370204114077==--

