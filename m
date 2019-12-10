Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADF37118964
	for <lists+openwrt-devel@lfdr.de>; Tue, 10 Dec 2019 14:17:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FoWstbhOsI937YKAavG2UMaQxfZkGOLxYRIGDaoG2/Q=; b=WUC1J9HnOHeEq1jkjjJ5neHkl
	uXhIDnx699MkBIBlQuqVMxKxrYByzRG+W+IJy/NZUZqQGuxshwOU7D4btOat0kOTMkWZz3XZc45qj
	ued12liL2IEr2Slzp/PNBMaSWZPqEHZ3peqrWGLlDANUH/Wlya6qNFT0d+G2ZIFsQDBZzZsH8dyQA
	MuQ7tYK7ZIK1BepKcNwTl/23zXjOkgHmTuYQUXODFGlDVqisY5VZXo60SOzDC0Dze7xTiqAIRDIN2
	O87KZNZ5DoFFX4rkLkxvm5mqO+j5LgfSD3NuJHNLVw0mwtJfpSttAPQiU9UtQ2gitojgoSNESYUxx
	RGLJ2vqSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iefOB-0007Hp-IU; Tue, 10 Dec 2019 13:17:19 +0000
Received: from mail-pg1-x52d.google.com ([2607:f8b0:4864:20::52d])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iefNz-0007HV-RX
 for openwrt-devel@lists.openwrt.org; Tue, 10 Dec 2019 13:17:09 +0000
Received: by mail-pg1-x52d.google.com with SMTP id x7so8885820pgl.11
 for <openwrt-devel@lists.openwrt.org>; Tue, 10 Dec 2019 05:17:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DGLlyfx+CTvrX8fOJYsg/HOne0r3KbU1caIFp4AGowE=;
 b=WMkdzPAVR0lUb7IIULfralz4aMkkkMllTP3YEy3gfEL7cepsRkXC4K4zI6edz7hVnc
 eOTnf2YLoM4Ja0yuhs9xderl62JpobfeSMA0dPg3q1UM2A3XtZSyxL4YU4KFop3/DuFn
 vZ9NqxfsDLWv30/4UU4wKC2RQYJZYrss8Uu0SWYe5tv9r8qjqzk9SnAm8HtEzsc7KbJ/
 NNs65v1h6NXmW1QmhwTI6lrXs7UU65uk9zzrEQh4cjCxeK/5GYrO6gLeC7ojnZVrriWb
 9gSrPkS8ZRtvTdbk2/RLTAw9dYvUk8ZJ52s6TJVzQm9dOllBxXoh5gJdihQbVS9ODLhW
 5r4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DGLlyfx+CTvrX8fOJYsg/HOne0r3KbU1caIFp4AGowE=;
 b=fgqCIg+Ddg4Vw19GBY3/mla/IVLo4FS1XszHcw4lTVzcmtERSMGq+6HqkpveEh8z7r
 VdVH8+2OcQaXoJH4irMT35V0phj3gW/uAu20l3DaWmaYXDCqLHMLBR/RrjZLHi+QVks0
 lnwEJ1TYfwfhXJ104VxplQDDqG6Qd9ROgYi8FnFYxL8QyAuSGuY+kbnMMhHvRKFcIDHd
 Ck2SWPSBUETp2mWOcSbT+mnGCOe9EetIO8mNbGM3OZvsYgDtZvWDubDFEgCGM/Z+2HDQ
 7E7FGaznRhpcXRg6k0uMKz747W2t+SMWnnuzmE18hCKFjtQQESny72yznIGi3Bi4KpHm
 AE2A==
X-Gm-Message-State: APjAAAU897LGYkenQHhfB25nsDIevmFdGAEzCdBxbnXJsXx2Ih8T1hHK
 cAMsRnppvFemF97nW9CCQ3BJaL5ag5c3/de8/tw=
X-Google-Smtp-Source: APXvYqzszTvUVWDWPuMoMNELndBDGRyK6lvL7nIGqPczA/LigTwk0Ue+St51rW0RN+At/EwJWdtZWFymOLnkdLIFdys=
X-Received: by 2002:a63:360a:: with SMTP id d10mr3267937pga.366.1575983826445; 
 Tue, 10 Dec 2019 05:17:06 -0800 (PST)
MIME-Version: 1.0
References: <20191209220358.103352-1-vargagab@gmail.com>
 <011b01d5af4e$70ff5830$52fe0890$@adrianschmutzler.de>
In-Reply-To: <011b01d5af4e$70ff5830$52fe0890$@adrianschmutzler.de>
From: =?UTF-8?B?R8OhYm9yIFZhcmdh?= <vargagab@gmail.com>
Date: Tue, 10 Dec 2019 14:16:55 +0100
Message-ID: <CADQ6-wvyOuFE1aD_MVD38QkQbsRmst5OEBGVFapQcsMt+nfkwg@mail.gmail.com>
To: Adrian Schmutzler <mail@adrianschmutzler.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_051707_894839_E52FF9EF 
X-CRM114-Status: GOOD (  16.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:52d listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (vargagab[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: ynezz@true.cz, openwrt-devel@lists.openwrt.org, gch981213@gmail.com,
 Birger Koblitz <mail@birger-koblitz.de>
Content-Type: multipart/mixed; boundary="===============9017961259130960303=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============9017961259130960303==
Content-Type: multipart/alternative; boundary="00000000000025a95f0599595454"

--00000000000025a95f0599595454
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Dear Adrian,

of course no, I have only Asus RT-AC65P router. As I see, the two devices
are identical, but hopefully Birger can confirm (or not) this. When the
port numbering are different on two devices, than I send a new patch.

Thanks,

Gabor Varga

Adrian Schmutzler <mail@adrianschmutzler.de> ezt =C3=ADrta (id=C5=91pont: 2=
019. dec.
10., K, 12:39):

> Hi,
>
> have you verified this for both devices (rt-ac65p and rt-ac85p)?
>
> I've added Birger Koblitz to recipients (RT-AC85P author).
>
> Best
>
> Adrian
>
> > -----Original Message-----
> > From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On
> > Behalf Of vargagab@gmail.com
> > Sent: Montag, 9. Dezember 2019 23:04
> > To: openwrt-devel@lists.openwrt.org
> > Cc: ynezz@true.cz; gch981213@gmail.com; Gabor Varga <vargagab@gmail.com=
>
> > Subject: [OpenWrt-Devel] [PATCH] ramips: fix switch port numbering for
> RT-
> > AC65P/RT-AC85P
> >
> > From: Gabor Varga <vargagab@gmail.com>
> >
> > The switch LAN port numbers are in reversed order with original config.
> > With this patch they are fixed.
> >
> > Signed-off-by: Gabor Varga <vargagab@gmail.com>
> > ---
> >  .../linux/ramips/mt7621/base-files/etc/board.d/02_network  | 7 +++++--
> >  1 file changed, 5 insertions(+), 2 deletions(-)
> >
> > diff --git a/target/linux/ramips/mt7621/base-files/etc/board.d/02_netwo=
rk
> > b/target/linux/ramips/mt7621/base-files/etc/board.d/02_network
> > index 420780a101..42cdb4d57f 100755
> > --- a/target/linux/ramips/mt7621/base-files/etc/board.d/02_network
> > +++ b/target/linux/ramips/mt7621/base-files/etc/board.d/02_network
> > @@ -37,6 +37,11 @@ ramips_setup_interfaces()
> >               ucidef_add_switch "switch0" \
> >                       "0:lan" "1:lan" "2:lan" "3:lan" "4:wan" "6@eth0"
> >               ;;
> > +     asus,rt-ac65p|\
> > +     asus,rt-ac85p)
> > +             ucidef_add_switch "switch0" \
> > +                     "1:lan:1" "2:lan:2" "3:lan:3" "4:lan:4" "0:wan"
> "6@eth0"
> > +             ;;
> >       alfa-network,quad-e4g|\
> >       netgear,r6220|\
> >       netgear,r6260|\
> > @@ -64,8 +69,6 @@ ramips_setup_interfaces()
> >               ucidef_add_switch "switch0" \
> >                       "1:lan" "2:lan" "3:lan" "4:lan" "0:wan" "6@eth0"
> >               ;;
> > -     asus,rt-ac65p|\
> > -     asus,rt-ac85p|\
> >       dlink,dir-860l-b1|\
> >       elecom,wrc-1167ghbk2-s|\
> >       elecom,wrc-1900gst|\
> > --
> > 2.24.0
> >
> >
> > _______________________________________________
> > openwrt-devel mailing list
> > openwrt-devel@lists.openwrt.org
> > https://lists.openwrt.org/mailman/listinfo/openwrt-devel
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>

--00000000000025a95f0599595454
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Dear Adrian,<div><br></div><div>of course no, I have only =
Asus RT-AC65P router. As I see, the two devices are identical, but hopefull=
y Birger can confirm (or not) this. When the port numbering are different o=
n two devices, than I send a new patch.</div><div><br></div><div>Thanks,</d=
iv><div><br></div><div>Gabor Varga</div></div><br><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">Adrian Schmutzler &lt;<a href=3D"ma=
ilto:mail@adrianschmutzler.de">mail@adrianschmutzler.de</a>&gt; ezt =C3=ADr=
ta (id=C5=91pont: 2019. dec. 10., K, 12:39):<br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex">Hi,<br>
<br>
have you verified this for both devices (rt-ac65p and rt-ac85p)?<br>
<br>
I&#39;ve added Birger Koblitz to recipients (RT-AC85P author).<br>
<br>
Best<br>
<br>
Adrian<br>
<br>
&gt; -----Original Message-----<br>
&gt; From: openwrt-devel [mailto:<a href=3D"mailto:openwrt-devel-bounces@li=
sts.openwrt.org" target=3D"_blank">openwrt-devel-bounces@lists.openwrt.org<=
/a>] On<br>
&gt; Behalf Of <a href=3D"mailto:vargagab@gmail.com" target=3D"_blank">varg=
agab@gmail.com</a><br>
&gt; Sent: Montag, 9. Dezember 2019 23:04<br>
&gt; To: <a href=3D"mailto:openwrt-devel@lists.openwrt.org" target=3D"_blan=
k">openwrt-devel@lists.openwrt.org</a><br>
&gt; Cc: <a href=3D"mailto:ynezz@true.cz" target=3D"_blank">ynezz@true.cz</=
a>; <a href=3D"mailto:gch981213@gmail.com" target=3D"_blank">gch981213@gmai=
l.com</a>; Gabor Varga &lt;<a href=3D"mailto:vargagab@gmail.com" target=3D"=
_blank">vargagab@gmail.com</a>&gt;<br>
&gt; Subject: [OpenWrt-Devel] [PATCH] ramips: fix switch port numbering for=
 RT-<br>
&gt; AC65P/RT-AC85P<br>
&gt; <br>
&gt; From: Gabor Varga &lt;<a href=3D"mailto:vargagab@gmail.com" target=3D"=
_blank">vargagab@gmail.com</a>&gt;<br>
&gt; <br>
&gt; The switch LAN port numbers are in reversed order with original config=
.<br>
&gt; With this patch they are fixed.<br>
&gt; <br>
&gt; Signed-off-by: Gabor Varga &lt;<a href=3D"mailto:vargagab@gmail.com" t=
arget=3D"_blank">vargagab@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 .../linux/ramips/mt7621/base-files/etc/board.d/02_network=C2=A0 =
| 7 +++++--<br>
&gt;=C2=A0 1 file changed, 5 insertions(+), 2 deletions(-)<br>
&gt; <br>
&gt; diff --git a/target/linux/ramips/mt7621/base-files/etc/board.d/02_netw=
ork<br>
&gt; b/target/linux/ramips/mt7621/base-files/etc/board.d/02_network<br>
&gt; index 420780a101..42cdb4d57f 100755<br>
&gt; --- a/target/linux/ramips/mt7621/base-files/etc/board.d/02_network<br>
&gt; +++ b/target/linux/ramips/mt7621/base-files/etc/board.d/02_network<br>
&gt; @@ -37,6 +37,11 @@ ramips_setup_interfaces()<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ucidef_add_switc=
h &quot;switch0&quot; \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0&quot;0:lan&quot; &quot;1:lan&quot; &quot;2:lan&quot; &quot;3:=
lan&quot; &quot;4:wan&quot; &quot;6@eth0&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0;;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0asus,rt-ac65p|\<br>
&gt; +=C2=A0 =C2=A0 =C2=A0asus,rt-ac85p)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ucidef_add_switch &qu=
ot;switch0&quot; \<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0&quot;1:lan:1&quot; &quot;2:lan:2&quot; &quot;3:lan:3&quot; &quot;4:=
lan:4&quot; &quot;0:wan&quot; &quot;6@eth0&quot;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0;;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0alfa-network,quad-e4g|\<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0netgear,r6220|\<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0netgear,r6260|\<br>
&gt; @@ -64,8 +69,6 @@ ramips_setup_interfaces()<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ucidef_add_switc=
h &quot;switch0&quot; \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0&quot;1:lan&quot; &quot;2:lan&quot; &quot;3:lan&quot; &quot;4:=
lan&quot; &quot;0:wan&quot; &quot;6@eth0&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0;;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0asus,rt-ac65p|\<br>
&gt; -=C2=A0 =C2=A0 =C2=A0asus,rt-ac85p|\<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0dlink,dir-860l-b1|\<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0elecom,wrc-1167ghbk2-s|\<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0elecom,wrc-1900gst|\<br>
&gt; --<br>
&gt; 2.24.0<br>
&gt; <br>
&gt; <br>
&gt; _______________________________________________<br>
&gt; openwrt-devel mailing list<br>
&gt; <a href=3D"mailto:openwrt-devel@lists.openwrt.org" target=3D"_blank">o=
penwrt-devel@lists.openwrt.org</a><br>
&gt; <a href=3D"https://lists.openwrt.org/mailman/listinfo/openwrt-devel" r=
el=3D"noreferrer" target=3D"_blank">https://lists.openwrt.org/mailman/listi=
nfo/openwrt-devel</a><br>
_______________________________________________<br>
openwrt-devel mailing list<br>
<a href=3D"mailto:openwrt-devel@lists.openwrt.org" target=3D"_blank">openwr=
t-devel@lists.openwrt.org</a><br>
<a href=3D"https://lists.openwrt.org/mailman/listinfo/openwrt-devel" rel=3D=
"noreferrer" target=3D"_blank">https://lists.openwrt.org/mailman/listinfo/o=
penwrt-devel</a><br>
</blockquote></div>

--00000000000025a95f0599595454--


--===============9017961259130960303==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============9017961259130960303==--

