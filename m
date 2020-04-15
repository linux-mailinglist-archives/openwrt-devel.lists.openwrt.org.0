Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00A321AB421
	for <lists+openwrt-devel@lfdr.de>; Thu, 16 Apr 2020 01:17:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=t24s2Q+F6IryS3VQ70jIkrcY+qDdzbsVKhQzYj3RlbA=; b=lX6erS1FpIB8pH6CodidUNwPV
	cNJwDm6Lepob9kAPdHgHs+4dAg1D5EAeqTAeqf1YhvZDylVThnU2wDHzh+34gVtjIPddm4fhaFV/9
	iJh5gPSpMB/G47Q7J/DXIUTSRZb4xqCIj0dPhw4oBlxlsZMgcUIOdNvbq1L9TATqhme4yNHSkbsfQ
	AABYGa5Cmp2rkc0I3ZHKfmBgqOqG8XjRJ1YVXa+n8ydg2BNEH+Jmnt4rO52gvpmgfpKimsgpNet22
	89PJs4srPqjmlIgChFoqO9d77ayLEAiQqqOURd7y9Cx1+nuYzqFCjnmH6FcaqwFJaOGfvW+xq70vP
	3+3JYSl+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOrH7-0005EN-7m; Wed, 15 Apr 2020 23:16:57 +0000
Received: from mail-yb1-xb2b.google.com ([2607:f8b0:4864:20::b2b])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOrGw-00057c-6f
 for openwrt-devel@lists.openwrt.org; Wed, 15 Apr 2020 23:16:52 +0000
Received: by mail-yb1-xb2b.google.com with SMTP id e17so984100ybq.0
 for <openwrt-devel@lists.openwrt.org>; Wed, 15 Apr 2020 16:16:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aenertia.net; s=dkimaenertianet;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=UzfToYFNBq2/K7cD9S2+4wuWs5dBjRGon5W17Q068yk=;
 b=c14Xfs2ysjTXpytX7gVu6nRCCTY6vnHGmYqEx23FSwZpkuGao8BbptcnPhLvyELMgV
 2CykFSso2SY8No2R6M/9xAFRA3Txx/Bve+HTHdEdOfJvy3aFOjvG2hFQQ3C7hVoleA12
 fmIB2/Ei70+lme/Jve2azobw2V6QmMZflNqwE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=UzfToYFNBq2/K7cD9S2+4wuWs5dBjRGon5W17Q068yk=;
 b=XC37R0ed3C0xvAxnHqAWpKACdv9dF5CPgHXIMAyVv3Z/4E4RJMyeOD5JUmnHidlXc8
 uNTqyrZIQqla0x8HDsnF1vuuMW6b5Z6t5MZHyfvs9B49x2JwrEcM5/iAa1qH1hw4j8Vx
 1lYozh18tlcS1aNYGrXCpOSqANIQ9keFTy/SFh8gywHLGSP+sqdOA3ofR1eKI5C5Aawl
 16RNipHuA1p6fBQkogukCHY6zvOULx/Sv/Y1RzSH9/upujXS0sTfj9zsOoBlJvqTxoNf
 glgizGrQaZJMx2T2Hkok1jSqTytLpVPdpbJHFzWNntpaL+6r9fG3+eow9I5gWjRjHj5L
 f9mQ==
X-Gm-Message-State: AGi0PuYlJ0by6OSLht7LksqMoUU1rkyOrS5bGnli3dgL/TktFdFVHFXO
 bofWxf2XvypHNmiSY8p2z4JrOk9QChsKurYlkcNscEyu
X-Google-Smtp-Source: APiQypJZMBHAB4Pnk1v4Rmg5wDU5YLEWLLDi6e/9KJRxnUxq7EWgf/23SusdnyU8calNMd7uX3OqpCKhOx/5f1O5XLc=
X-Received: by 2002:a5b:403:: with SMTP id m3mr11853630ybp.299.1586992603157; 
 Wed, 15 Apr 2020 16:16:43 -0700 (PDT)
MIME-Version: 1.0
References: <5a867e8b86c262fcfd29df991becb493731e86c7.camel@aparcar.org>
 <20200415220218.GG14478@makrotopia.org>
In-Reply-To: <20200415220218.GG14478@makrotopia.org>
From: =?UTF-8?Q?Joel_Wir=C4=81mu_Pauling?= <joel@aenertia.net>
Date: Thu, 16 Apr 2020 11:16:31 +1200
Message-ID: <CAKiAkGSfF=GNBo9=UX2wa4z6QOwDkkc_gqq=6euH7qjGYFSpdw@mail.gmail.com>
To: Daniel Golle <daniel@makrotopia.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_161646_629947_4A558F18 
X-CRM114-Status: GOOD (  11.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b2b listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [RFC] x86: use multiple profiles
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
Cc: openwrt-devel <openwrt-devel@lists.openwrt.org>,
 Paul Spooren <mail@aparcar.org>
Content-Type: multipart/mixed; boundary="===============5741519138302354196=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============5741519138302354196==
Content-Type: multipart/alternative; boundary="0000000000006001f705a35c8290"

--0000000000006001f705a35c8290
Content-Type: text/plain; charset="UTF-8"

Related;

would be nice to have a supported atomic update method (rollforward/back)
and/or adapt sysupgrade/opkg to cope with full sys-upgrade style opperation.

Fedora CoreOS and OSTree may be a possible inspiration point. Either way I
am getting tired of need to have to stand up a new VM - clone config/opkg
update and then switch over from running VM as being the only decent way of
doing sysupgrades on x86 targets.

-Joel

On Thu, 16 Apr 2020 at 10:02, Daniel Golle <daniel@makrotopia.org> wrote:

> On Tue, Apr 14, 2020 at 03:08:09PM -1000, Paul Spooren wrote:
> > Hi all,
> >
> > the x86 been recently reworked (cb007a7bf6) and now it is easily
> possible to
> > define multiple profiles. Currently only a `generic` profile is offered
> which
> > builds mbr and efi grub images with a standard selection of packages
> (common
> > device drivers).
> >
> > I'd suggest to have multiple profiles for common x86 devices, including
> the
> > correct drivers. An example is the APU2 board, which requires additional
> kmods
> > to shine[0].
> >
> > A first split could be to have mbr and efi images separated and the APU2
> board.
>
> +1
> also for splitting EFI and MBR generic images, because EFI image
> should have some different packages (efibootmgr, kmod-fs-efivars, ...)
> installed which are useless when booting from MBR.
>
>
> >
> > Please share your opinions.
> >
> > Best,
> > Paul
> >
> > [0]: https://openwrt.org/toh/pcengines/apu2#kernel_modules
> >
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>

--0000000000006001f705a35c8290
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:verdana,=
sans-serif">Related;</div><div class=3D"gmail_default" style=3D"font-family=
:verdana,sans-serif"><br></div><div class=3D"gmail_default" style=3D"font-f=
amily:verdana,sans-serif">would be nice to have a supported atomic update m=
ethod (rollforward/back) and/or adapt sysupgrade/opkg to cope with full sys=
-upgrade style opperation.</div><div class=3D"gmail_default" style=3D"font-=
family:verdana,sans-serif"><br></div><div class=3D"gmail_default" style=3D"=
font-family:verdana,sans-serif">Fedora CoreOS and OSTree may be a possible =
inspiration point. Either way I am getting tired of need to have to stand u=
p a new VM - clone config/opkg update and then switch over from running VM =
as being the only decent way of doing sysupgrades on x86 targets.</div><div=
 class=3D"gmail_default" style=3D"font-family:verdana,sans-serif"><br></div=
><div class=3D"gmail_default" style=3D"font-family:verdana,sans-serif">-Joe=
l<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"g=
mail_attr">On Thu, 16 Apr 2020 at 10:02, Daniel Golle &lt;<a href=3D"mailto=
:daniel@makrotopia.org">daniel@makrotopia.org</a>&gt; wrote:<br></div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex">On Tue, Apr 14, 2020 at 03:08:=
09PM -1000, Paul Spooren wrote:<br>
&gt; Hi all,<br>
&gt; <br>
&gt; the x86 been recently reworked (cb007a7bf6) and now it is easily possi=
ble to<br>
&gt; define multiple profiles. Currently only a `generic` profile is offere=
d which<br>
&gt; builds mbr and efi grub images with a standard selection of packages (=
common<br>
&gt; device drivers).<br>
&gt; <br>
&gt; I&#39;d suggest to have multiple profiles for common x86 devices, incl=
uding the<br>
&gt; correct drivers. An example is the APU2 board, which requires addition=
al kmods<br>
&gt; to shine[0].<br>
&gt; <br>
&gt; A first split could be to have mbr and efi images separated and the AP=
U2 board.<br>
<br>
+1<br>
also for splitting EFI and MBR generic images, because EFI image<br>
should have some different packages (efibootmgr, kmod-fs-efivars, ...)<br>
installed which are useless when booting from MBR.<br>
<br>
<br>
&gt; <br>
&gt; Please share your opinions.<br>
&gt; <br>
&gt; Best,<br>
&gt; Paul<br>
&gt; <br>
&gt; [0]: <a href=3D"https://openwrt.org/toh/pcengines/apu2#kernel_modules"=
 rel=3D"noreferrer" target=3D"_blank">https://openwrt.org/toh/pcengines/apu=
2#kernel_modules</a> <br>
&gt; <br>
<br>
_______________________________________________<br>
openwrt-devel mailing list<br>
<a href=3D"mailto:openwrt-devel@lists.openwrt.org" target=3D"_blank">openwr=
t-devel@lists.openwrt.org</a><br>
<a href=3D"https://lists.openwrt.org/mailman/listinfo/openwrt-devel" rel=3D=
"noreferrer" target=3D"_blank">https://lists.openwrt.org/mailman/listinfo/o=
penwrt-devel</a><br>
</blockquote></div>

--0000000000006001f705a35c8290--


--===============5741519138302354196==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5741519138302354196==--

