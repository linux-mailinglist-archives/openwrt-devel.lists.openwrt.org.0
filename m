Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E74F9A147C
	for <lists+openwrt-devel@lfdr.de>; Thu, 29 Aug 2019 11:16:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UVuTOhvmh5CCZknWngDNuyLQGfCUrEVV/qjaM+8eiis=; b=huvxEq/K9PBiKSCNiKqb+pEe1
	q742etAeipob9hm6MtLj3aZP0KpAUS72Gda76GvkEKlUPggqo6ibMBvIEELjdw2j+UGQeWOEwSffZ
	9XkaKpOO5/Rt4PhEFQJ3mKzs9mnUfyZgxYR1Yi1B69ecfSXz7DW1mplEI3XK+1CaJbdNQRIyaL1oq
	Oa3/Zz8HeeqcP3iQdPXGPnPFNWsa/2JG3x9QG0Gmz8CTVUTSHdkarapLxcKx+NdiFW3t1qi87ZiNG
	nSJ8dfOof9zb6dzL2YFupS5COGVwAlaZO5lKaN9b0z+7ogiYqOgwI6UEWn0x27hXysAm0pt6hZ5DN
	9cisWTEsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3GXC-0006bK-Lo; Thu, 29 Aug 2019 09:16:02 +0000
Received: from mail-qt1-x832.google.com ([2607:f8b0:4864:20::832])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3GWu-0006ap-8r
 for openwrt-devel@lists.openwrt.org; Thu, 29 Aug 2019 09:15:46 +0000
Received: by mail-qt1-x832.google.com with SMTP id t12so2836388qtp.9
 for <openwrt-devel@lists.openwrt.org>; Thu, 29 Aug 2019 02:15:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Uee+oDCskFJt/5mF+QK2ngHVZX4vjrBPIHU8ECwAaaI=;
 b=Jtpj3ZZmy+H3j2rsWyj1QYLxzB6H2f8zzCu4HsLCVdxXZCTtxFfoI1W57MsdtZ0TUI
 nFzRV/xB9dZdgBbb5VRhT0V8h0eVf/UvaICgIA/lavjFtf8MQJkrf7z/qpqK1LSonxGP
 pfXsCej6sk6n/1iG3Zb9UcjI93oxfaFg3FRLzMnSHidaWEMZyurtW3PN5ZbxoFYPQMMn
 eK2aDlYlI/uzvF2RF41QHQASxQpniH1tahX4DTkQZQmfuhkjU5gL4R0AhTznL2LDrE2g
 sXu1X0pv9Lk40zY7gTfltaNWnXK+KCWg9C6sjNhN2e5XdbZqpQlkycjg/DT25n505qi6
 0wZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Uee+oDCskFJt/5mF+QK2ngHVZX4vjrBPIHU8ECwAaaI=;
 b=Ms8EKJ6OzROlj8ihiMt8mOdW9+qaatyY0qOVIoT/UZiWouu1oE30aowk2pUaF9a09q
 BaCJCNVF46XWhTCDW4biVgPP8dk/lnO5Pl3XLpTp8sAcTwUiu5ityDeZxG3JypcHVowG
 fmOWiyuhOX2csxayFwsAUyxsWlRPatnm9gLLPWTQbNAfqp+HmOIg3qLQPZ/7dG5ohJiU
 Qq2vg0vHxzXV4vHWlChcsQhvZuff3K9UUAMokuXmozjD27YTU6qpXKoseHO6jJbHzXEp
 ize1Yue6O96dUKr0t3A3jRFUlXCVyCKdad8rzv0B+XKAmPLRVzkVaSK4VWuU5C+Oer4z
 x8RA==
X-Gm-Message-State: APjAAAXpY/VU7PcYS7PAPb94FKmhA8HvMbuodPQIY59fwVDE2QzLbx6k
 GiOnyFKw3Bk3f29rs7j8+5JabxoUGa4Qh3de8SA=
X-Google-Smtp-Source: APXvYqw95omvxE7LjSpoJ5fjXQEZ9hALdftotwoKPONmJ1nlYidVelnKUpRSO2S/BKFjBlGiWj2uGxesDDqwBny+lOk=
X-Received: by 2002:ac8:43c4:: with SMTP id w4mr8649610qtn.238.1567070140632; 
 Thu, 29 Aug 2019 02:15:40 -0700 (PDT)
MIME-Version: 1.0
References: <alpine.LNX.2.21.99999.352.1908240114240.6377@localhost.localdomain>
 <CAFBinCDbyb0mWeBt738XtMoWVHHi6sOep5DY5f6ddS0a5GKT3g@mail.gmail.com>
 <alpine.LNX.2.21.99999.352.1908281820530.3996@localhost.localdomain>
 <878srdp6zt.fsf@miraculix.mork.no>
 <alpine.LNX.2.21.99999.352.1908290226520.4679@localhost.localdomain>
In-Reply-To: <alpine.LNX.2.21.99999.352.1908290226520.4679@localhost.localdomain>
From: Robert Marko <robimarko@gmail.com>
Date: Thu, 29 Aug 2019 11:15:29 +0200
Message-ID: <CAOX2RU6=KFmP+LwWF23xUa3LVN3vD8a-Q6sw1_S7PC+DeWSATw@mail.gmail.com>
To: Enrico Mioso <mrkiko.rs@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_021544_341384_AF08C44A 
X-CRM114-Status: GOOD (  24.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:832 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robimarko[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [lantiq] help in supporting FRITZ!BOX 3272
 (Fritz_Box_HW198))
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Hauke Mehrtens <hauke@hauke-m.de>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 =?UTF-8?Q?Bj=C3=B8rn_Mork?= <bjorn@mork.no>
Content-Type: multipart/mixed; boundary="===============7983792257151986224=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============7983792257151986224==
Content-Type: multipart/alternative; boundary="00000000000012139105913df396"

--00000000000012139105913df396
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 29 Aug 2019 at 02:35, Enrico Mioso <mrkiko.rs@gmail.com> wrote:

> Dear Bjorn,
> Thank you very very much! You've been always helpful tome... :)
>
> thank you for pointing me at your work - it has been very useful. I was
> using as references sources from the TP-Link Archer D2.
>
> thanks to your hints and work, I arrived to some of the conclusions you
> did. Your device was booting, instead in my case I am not able to get it
> past the PMU issue.
> And even ignoring this error I end up having issues with the GPTU.
>
> I guess the FRITZ!BOX3272 is maybe of another family of devices. don't
> know, running out of ideas.
> Any hint of what I might try next?
> I didn't find GPL code for this device from AVM - but maybe it's just me.
> Any help would be really apreciated.
>
This should be it:
https://osp.avm.de/fritzbox/fritzbox-3272/source-files-FRITZ.Box_3272-06.20=
.tar.gz

>
> BTW - PMU activation fails in sysctrl.c, in function
> static int pmu_enable(struct clk *clk) ...
>
> Enrico
>
> On Wed, 28 Aug 2019, Bj=C3=B8rn Mork wrote:
>
> > Date: Wed, 28 Aug 2019 18:52:38
> > From: Bj=C3=B8rn Mork <bjorn@mork.no>
> > To: Enrico Mioso <mrkiko.rs@gmail.com>
> > Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
> >     Hauke Mehrtens <hauke@hauke-m.de>, openwrt-devel@lists.openwrt.org
> > Subject: Re: [OpenWrt-Devel] [lantiq] help in supporting FRITZ!BOX 3272
> >     (Fritz_Box_HW198))
> >
> > Enrico Mioso <mrkiko.rs@gmail.com> writes:
> >
> >> I am still trying to port a FRITZ!BOX3272 device to OpenWRt.
> >> I tried to grab as much informations as I could, but I am arriving to
> the conclusion I hould be doing something really wrong.
> >>
> >> First of all, the kernel panics due to a data abort at
> >> linux-4.19.66/arch/mips/lantiq/xway/sysctrl.c, line 478
> >> /* make sure to unprotect the memory region where flash is located */
> >> ltq_ebu_w32(ltq_ebu_r32(LTQ_EBU_BUSCON0) & ~EBU_WRDIS, LTQ_EBU_BUSCON0=
);
> > ..
> >> [SYSTEM:] AR10 on 500MHz/250MHz/250MHz
> >>
> >> ..
> >> Eva_AVM >
> >>
> >>
> >>
> >>
> >>
> >>
> >>
> >>
> .........................................................................=
.............[
>   0.000000] Linux version 4.19.66 (mrkiko@mStation) (gcc version 7.4.0
> (OpenWrt GCC 7.4.0 r10863-e1dcfe02b2)) #0 SMP Mon Aug 26 16:21:13 2019
> >> [    0.000000] SoC: xRX300 rev 1.2
> >
> >
> > Right, so this is AR10/xRX300. Been there, trying to get a D-Link
> > DWR-956 running, and gave up without getting the T-Shirt ;-)
> >
> > I believe the problem you are hitting right now is caused by wrong
> > address for the EBU.  It is not at 0x1E105300 like for the VR9 etc, but
> > at 0x16000000 on the AR10.
> >
> > So change this:
> >
> >               ebu0: ebu@e105300 {
> >                       compatible =3D "lantiq,ebu-xway";
> >                       reg =3D <0xe105300 0x100>;
> >               };
> >
> > into
> >
> >               ebu0: ebu@6000000 {
> >                       compatible =3D "lantiq,ebu-xway";
> >                       reg =3D <0x6000000 0x100>;
> >               };
> >
> >
> > I was stuck the same place for quite some time....
> >
> > I pushed my abandoned DWR-956 branch here now:
> > https://github.com/bmork/OpenWrt/tree/dwr-956-wip
> > in case it is of any use to you.
> >
> > Note that this branch is a terrible mess of Work-in-Progress, meant for
> > my eyes only.  And even I can't make much sense out of it anymore.  So
> > you might be better off just ignoring it.  Your call.
> >
> >
> >
> >
> > Bj=C3=B8rn
> >_______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>

--00000000000012139105913df396
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Thu, 29 Aug 2019 at 02:35, Enrico =
Mioso &lt;<a href=3D"mailto:mrkiko.rs@gmail.com">mrkiko.rs@gmail.com</a>&gt=
; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Dear Bj=
orn,<br>
Thank you very very much! You&#39;ve been always helpful tome... :)<br>
<br>
thank you for pointing me at your work - it has been very useful. I was usi=
ng as references sources from the TP-Link Archer D2.<br>
<br>
thanks to your hints and work, I arrived to some of the conclusions you did=
. Your device was booting, instead in my case I am not able to get it past =
the PMU issue.<br>
And even ignoring this error I end up having issues with the GPTU.<br>
<br>
I guess the FRITZ!BOX3272 is maybe of another family of devices. don&#39;t =
know, running out of ideas.<br>
Any hint of what I might try next?<br>
I didn&#39;t find GPL code for this device from AVM - but maybe it&#39;s ju=
st me. Any help would be really apreciated.<br></blockquote><div>This shoul=
d be it:</div><div><a href=3D"https://osp.avm.de/fritzbox/fritzbox-3272/sou=
rce-files-FRITZ.Box_3272-06.20.tar.gz">https://osp.avm.de/fritzbox/fritzbox=
-3272/source-files-FRITZ.Box_3272-06.20.tar.gz</a> </div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">
<br>
BTW - PMU activation fails in sysctrl.c, in function<br>
static int pmu_enable(struct clk *clk) ...<br>
<br>
Enrico<br>
<br>
On Wed, 28 Aug 2019, Bj=C3=B8rn Mork wrote:<br>
<br>
&gt; Date: Wed, 28 Aug 2019 18:52:38<br>
&gt; From: Bj=C3=B8rn Mork &lt;<a href=3D"mailto:bjorn@mork.no" target=3D"_=
blank">bjorn@mork.no</a>&gt;<br>
&gt; To: Enrico Mioso &lt;<a href=3D"mailto:mrkiko.rs@gmail.com" target=3D"=
_blank">mrkiko.rs@gmail.com</a>&gt;<br>
&gt; Cc: Martin Blumenstingl &lt;<a href=3D"mailto:martin.blumenstingl@goog=
lemail.com" target=3D"_blank">martin.blumenstingl@googlemail.com</a>&gt;,<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0Hauke Mehrtens &lt;<a href=3D"mailto:hauke@hauke-m.=
de" target=3D"_blank">hauke@hauke-m.de</a>&gt;, <a href=3D"mailto:openwrt-d=
evel@lists.openwrt.org" target=3D"_blank">openwrt-devel@lists.openwrt.org</=
a><br>
&gt; Subject: Re: [OpenWrt-Devel] [lantiq] help in supporting FRITZ!BOX 327=
2<br>
&gt;=C2=A0 =C2=A0 =C2=A0(Fritz_Box_HW198))<br>
&gt; <br>
&gt; Enrico Mioso &lt;<a href=3D"mailto:mrkiko.rs@gmail.com" target=3D"_bla=
nk">mrkiko.rs@gmail.com</a>&gt; writes:<br>
&gt;<br>
&gt;&gt; I am still trying to port a FRITZ!BOX3272 device to OpenWRt.<br>
&gt;&gt; I tried to grab as much informations as I could, but I am arriving=
 to the conclusion I hould be doing something really wrong.<br>
&gt;&gt;<br>
&gt;&gt; First of all, the kernel panics due to a data abort at<br>
&gt;&gt; linux-4.19.66/arch/mips/lantiq/xway/sysctrl.c, line 478<br>
&gt;&gt; /* make sure to unprotect the memory region where flash is located=
 */<br>
&gt;&gt; ltq_ebu_w32(ltq_ebu_r32(LTQ_EBU_BUSCON0) &amp; ~EBU_WRDIS, LTQ_EBU=
_BUSCON0);<br>
&gt; ..<br>
&gt;&gt; [SYSTEM:] AR10 on 500MHz/250MHz/250MHz<br>
&gt;&gt;<br>
&gt;&gt; ..<br>
&gt;&gt; Eva_AVM &gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; ..................................................................=
....................[=C2=A0 =C2=A0 0.000000] Linux version 4.19.66 (mrkiko@=
mStation) (gcc version 7.4.0 (OpenWrt GCC 7.4.0 r10863-e1dcfe02b2)) #0 SMP =
Mon Aug 26 16:21:13 2019<br>
&gt;&gt; [=C2=A0 =C2=A0 0.000000] SoC: xRX300 rev 1.2<br>
&gt;<br>
&gt;<br>
&gt; Right, so this is AR10/xRX300. Been there, trying to get a D-Link<br>
&gt; DWR-956 running, and gave up without getting the T-Shirt ;-)<br>
&gt;<br>
&gt; I believe the problem you are hitting right now is caused by wrong<br>
&gt; address for the EBU.=C2=A0 It is not at 0x1E105300 like for the VR9 et=
c, but<br>
&gt; at 0x16000000 on the AR10.<br>
&gt;<br>
&gt; So change this:<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ebu0: ebu@e10530=
0 {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0compatible =3D &quot;lantiq,ebu-xway&quot;;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0reg =3D &lt;0xe105300 0x100&gt;;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0};<br>
&gt;<br>
&gt; into<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ebu0: ebu@600000=
0 {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0compatible =3D &quot;lantiq,ebu-xway&quot;;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0reg =3D &lt;0x6000000 0x100&gt;;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0};<br>
&gt;<br>
&gt;<br>
&gt; I was stuck the same place for quite some time....<br>
&gt;<br>
&gt; I pushed my abandoned DWR-956 branch here now:<br>
&gt; <a href=3D"https://github.com/bmork/OpenWrt/tree/dwr-956-wip" rel=3D"n=
oreferrer" target=3D"_blank">https://github.com/bmork/OpenWrt/tree/dwr-956-=
wip</a><br>
&gt; in case it is of any use to you.<br>
&gt;<br>
&gt; Note that this branch is a terrible mess of Work-in-Progress, meant fo=
r<br>
&gt; my eyes only.=C2=A0 And even I can&#39;t make much sense out of it any=
more.=C2=A0 So<br>
&gt; you might be better off just ignoring it.=C2=A0 Your call.<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; Bj=C3=B8rn<br>
&gt;_______________________________________________<br>
openwrt-devel mailing list<br>
<a href=3D"mailto:openwrt-devel@lists.openwrt.org" target=3D"_blank">openwr=
t-devel@lists.openwrt.org</a><br>
<a href=3D"https://lists.openwrt.org/mailman/listinfo/openwrt-devel" rel=3D=
"noreferrer" target=3D"_blank">https://lists.openwrt.org/mailman/listinfo/o=
penwrt-devel</a><br>
</blockquote></div></div>

--00000000000012139105913df396--


--===============7983792257151986224==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7983792257151986224==--

