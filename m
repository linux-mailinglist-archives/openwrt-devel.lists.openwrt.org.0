Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6FD4161C12
	for <lists+openwrt-devel@lfdr.de>; Mon, 17 Feb 2020 21:02:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yEL3gKkLPMeczzf8cmJAok2TlMNkJjmVRVOcdQwg9Bk=; b=WCezB7t2NzC8Ym6khxC66gUiH
	tmrdkMwFAeHLe41qBgtzrknSnZ2nwH6g2/YjV0bUL1w74yeA49F0o6JmeCqgIMkvvtcjMC7/MsuQK
	fAATlkITFFKU9GX6fswu3BEFla0GTydhk18LQyXxO+iDMUXMmTCv4UlxU3P9TXlRyRkDqlL61IFML
	5iU/LAWJLTU98MSP/EiO+3MT4NoLTMuAfKk/MxXNpW14CjhmX5vZ9vpmHd6pkV5tctH+mLLCdvzKP
	iBuOX8DKGGfc5bncwgh9lKwIyGXswp4B+T9PTVK/j46tCqrYZEpHmK3KtZBQkN35/SrOZzxuDqM08
	5c0AcI2Jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3man-0002Jf-AL; Mon, 17 Feb 2020 20:02:09 +0000
Received: from mail-io1-xd2d.google.com ([2607:f8b0:4864:20::d2d])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3mae-0002Hy-OZ
 for openwrt-devel@lists.openwrt.org; Mon, 17 Feb 2020 20:02:02 +0000
Received: by mail-io1-xd2d.google.com with SMTP id t26so6489619ioi.13
 for <openwrt-devel@lists.openwrt.org>; Mon, 17 Feb 2020 12:02:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=v2sLn8MIMUeAiKDREbtyJ+bcR8pLuKFwVsCcbsMjIqU=;
 b=jov17p8p9gI+woGdQwX3sZq17jUOhjrWdgOFSOMo0E8Dh7y9ffOc0pdPjPPOMyht7h
 sD2TwHtldmBqg+sttdQiLGXyXpea2k9aCsK9oIS/LPNBOgzD2sOCR6vVraR/3W9dc+bY
 S2jOmNEKZKTBZh9T8nT+pSXOn+EZ6Qk09TICgn832jxu3Yk9HiPbTIJ7LNuCgumg4SZJ
 IPgi8G6ofgPiv/LTKlnt3dGWjkjEaqNkQaukQaG3ZFqVqOYjFVOmN0Xfc/B6+uMfUgfs
 BQH5U5MMuOCvdAFWA4MJvepGAv6CNdGVtchEQSzTFdarXADpGbVhZElQ6tHa4/SpK9/3
 6k7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=v2sLn8MIMUeAiKDREbtyJ+bcR8pLuKFwVsCcbsMjIqU=;
 b=Jv+AGs6F+vULnuiDlOfveDMI3PX+vMx+9+mppuSwOMK16qOGQv4GDAzru9+gw7yk4D
 T6frVz9nHYM1M5tjAMoN4cgHfiY/L9Am3EWVWt3KaCtDyCDtVgKePpCxiV7Qs2v3filw
 KDYjHw9u4YXIhiP7UbXQWXhJ8l1goJt5KGymCRlZRRlFWH1fH9IrnLNIlbFj/ETBL3Jy
 5RkLUGX6HAipi3GEAtC4823DvNN+bC5V7u1NrNiCPEs49PPKZ3o+ttM0Ymw5AmMqDhbY
 VHGFjQt4SoH1hmu5BFB7pzemUSY6wZsz0wq7W1o4EkOub/TFqVUOO/2ZyIcuKCPF3i2U
 1LAA==
X-Gm-Message-State: APjAAAXixmKxr4OPwzX6zgX+oakaPQ1FzDkvnwcCklG1aJAlOlaxPvFG
 JpeaGdAoNffJE/a5qtVwCACgnPL+96h68Km/FY8eLA==
X-Google-Smtp-Source: APXvYqznh67HgMNlLkeZMq1AEBJqY0YxLYHHGektV1qBhgcthHrS4jMjKdjpb/Ea957/IJ7N19P7As3sR7RjZEfPueY=
X-Received: by 2002:a6b:6f01:: with SMTP id k1mr13373486ioc.28.1581969716250; 
 Mon, 17 Feb 2020 12:01:56 -0800 (PST)
MIME-Version: 1.0
References: <31903fcf-bc5c-a484-e844-c3ce8516c37b@gmail.com>
 <018201d5e5c8$b7b797a0$2726c6e0$@adrianschmutzler.de>
In-Reply-To: <018201d5e5c8$b7b797a0$2726c6e0$@adrianschmutzler.de>
From: Christopher Hill <ch6574@gmail.com>
Date: Mon, 17 Feb 2020 15:01:45 -0500
Message-ID: <CAAcvB+NDWdw7f6Qb4r3nSVKpAqFqxo+daYtxSffXXSmhE+VZ_g@mail.gmail.com>
To: Adrian Schmutzler <mail@adrianschmutzler.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_120200_807634_8B25853F 
X-CRM114-Status: GOOD (  19.11  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d2d listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ch6574[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [ch6574[at]gmail.com]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] Mikrotik ar71xx -> ath79 port
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
Content-Type: multipart/mixed; boundary="===============1571704278102006582=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============1571704278102006582==
Content-Type: multipart/alternative; boundary="000000000000fb8c84059ecb0605"

--000000000000fb8c84059ecb0605
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Much appreciated. I will check this out when I get home later today.

On Mon, Feb 17, 2020, 14:30 Adrian Schmutzler <mail@adrianschmutzler.de>
wrote:

> > -----Original Message-----
> > From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On
> > Behalf Of Christopher Hill
> > Sent: Montag, 17. Februar 2020 16:03
> > To: openwrt-devel@lists.openwrt.org
> > Subject: [OpenWrt-Devel] Mikrotik ar71xx -> ath79 port
> >
> > Hi,
> >
> > New here, and am looking for some advice on porting an existing device
> > to ath79 - specifically a Mikrotik RB493G (which is NAND).
> >
> > The area I'm looking for guidance / tips on is getting the lzma-loader
> > to boot the new kernel. I have compiled a new image* and I can tftp boo=
t
> > this and see on the serial console the lzma-loader running and
> > decompressing the kernel and then starting it... but then nothing
> > happens next.
>
> Have a look at the annotations I put into your repo. It looks like you
> have mistaken size for partition endings in the DTS.
> I remember @rogerpueyo also had problems booting his device due to a wron=
g
> partition setup. Maybe fixing the partitions will be enough ...
>
> Best
>
> Adrian
>
> >
> > I have two questions below that I would be grateful for any opinions
> over.
> >
> > Thanks,
> > Chris
> >
> >
> > * The new dts file and makefile changes are here:
> > https://github.com/ch6574/openwrt/tree/rb493g
> >
> >
> >
> > This is what I see on the serial console:
> >
> >   OpenWrt kernel loader for AR7XXX/AR9XXX
> >   Copyright (C) 2011 Gabor Juhos <juhosg@openwrt.org>
> >   Decompressing kernel... done!
> >   Starting kernel at 80060000...
> >
> > That's it.
> >
> > I've tried adding extra bootargs "earlycon" and "earlyprintk" in the dt=
s
> > "chosen" section however I still don't see anything. Running binwalk on
> > my new ath79 image vs the 19.07 ar71xx initramfs image reveals some
> > differences:
> >
> > 19.01 ar71xx:
> >
> >   DECIMAL HEXADECIMAL DESCRIPTION
> >
> >
> -------------------------------------------------------------------------=
-------
> >   0       0x0         ELF, 32-bit MSB MIPS-I executable, MIPS, version =
1
> > (SYSV)
> >   9580    0x256C      Copyright string: "Copyright (C) 2011 Gabor Juhos
> > <juhosg@openwrt.org>"
> >   9788    0x263C      LZMA compressed data, properties: 0x6D, dictionar=
y
> > size: 8388608 bytes, uncompressed size: 7543556 bytes
> >
> > New ath79:
> >
> >   DECIMAL HEXADECIMAL DESCRIPTION
> >
> >
> -------------------------------------------------------------------------=
-------
> >   0       0x0         ELF, 32-bit MSB MIPS-I executable, MIPS, version =
1
> > (SYSV)
> >   9532    0x253C      Copyright string: "Copyright (C) 2011 Gabor Juhos
> > <juhosg@openwrt.org>"
> >   9740    0x260C      LZMA compressed data, properties: 0x6D, dictionar=
y
> > size: 8388608 bytes, uncompressed size: 12739582 bytes
> >
> > So my ath79 image is quite a lot bigger, almost double.
> >
> >
> > Question 1 -  Am I running into size issues and simply clobbering other
> > areas of memory?
> >
> >
> >
> >
> >
> > Next using binwalk to extract and unpack the LZMA data reveals their
> > content is very different:
> >
> > 19.01 ar71xx:
> >
> >   $ tree
> > _openwrt-19.07.0-ar71xx-mikrotik-vmlinux-initramfs-lzma.elf.extracted/ =
|
> > head -20
> >   _openwrt-19.07.0-ar71xx-mikrotik-vmlinux-initramfs-lzma.elf.extracted=
/
> >   =E2=94=9C=E2=94=80=E2=94=80 263C
> >   =E2=94=9C=E2=94=80=E2=94=80 263C.7z
> >   =E2=94=94=E2=94=80=E2=94=80 _263C.extracted
> >       =E2=94=9C=E2=94=80=E2=94=80 45DB88.xz
> >       =E2=94=9C=E2=94=80=E2=94=80 4F2D34
> >       =E2=94=9C=E2=94=80=E2=94=80 4F2D34.7z
> >       =E2=94=94=E2=94=80=E2=94=80 _4F2D34.extracted
> >           =E2=94=9C=E2=94=80=E2=94=80 0.cpio
> >           =E2=94=94=E2=94=80=E2=94=80 cpio-root
> >               =E2=94=9C=E2=94=80=E2=94=80 bin
> >               =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 ash -> busybox
> >               =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 board_detect
> >               =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 busybox
> >               =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 cat -> busybox
> >               =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 chgrp -> busybox
> >
> >
> > New ath79:
> >
> >   $ tree
> > _openwrt-ath79-nand-mikrotik_routerboard-rb493g-initramfs-
> > kernel.bin.extracted/
> >   =E2=94=9C=E2=94=80=E2=94=80 260C
> >   =E2=94=9C=E2=94=80=E2=94=80 260C.7z
> >   =E2=94=94=E2=94=80=E2=94=80 _260C.extracted
> >       =E2=94=9C=E2=94=80=E2=94=80 [
> >       =E2=94=9C=E2=94=80=E2=94=80 [[
> >       =E2=94=9C=E2=94=80=E2=94=80 00-netstate
> >       =E2=94=9C=E2=94=80=E2=94=80 00_preinit.conf
> >       =E2=94=9C=E2=94=80=E2=94=80 00-sysctl
> >       =E2=94=9C=E2=94=80=E2=94=80 00-wifi-migration
> >       =E2=94=9C=E2=94=80=E2=94=80 01_leds
> >       =E2=94=9C=E2=94=80=E2=94=80 02_default_set_state
> >       =E2=94=9C=E2=94=80=E2=94=80 02_network
> >       =E2=94=9C=E2=94=80=E2=94=80 02_sysinfo
> >       =E2=94=9C=E2=94=80=E2=94=80 0b26f36ae0f4106d
> >   <snip>
> >       =E2=94=9C=E2=94=80=E2=94=80 540B28.xz
> >       =E2=94=9C=E2=94=80=E2=94=80 5D3B84.cpio
> >   <snip>
> >       =E2=94=9C=E2=94=80=E2=94=80 cpio-root
> >       =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 bin
> >       =E2=94=82   =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 ash -> busybo=
x
> >       =E2=94=82   =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 board_detect
> >
> >
> > Question 2 - are these differences in how the image is being packed
> > causing problems?
> >
> >
> >
> > _______________________________________________
> > openwrt-devel mailing list
> > openwrt-devel@lists.openwrt.org
> > https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>
>

--000000000000fb8c84059ecb0605
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div>Much appreciated. I will check this out when=C2=A0I =
get home later today.<br><br><div class=3D"gmail_quote"><div dir=3D"ltr" cl=
ass=3D"gmail_attr">On Mon, Feb 17, 2020, 14:30 Adrian Schmutzler &lt;<a hre=
f=3D"mailto:mail@adrianschmutzler.de">mail@adrianschmutzler.de</a>&gt; wrot=
e:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bo=
rder-left:1px #ccc solid;padding-left:1ex">&gt; -----Original Message-----<=
br>
&gt; From: openwrt-devel [mailto:<a href=3D"mailto:openwrt-devel-bounces@li=
sts.openwrt.org" target=3D"_blank" rel=3D"noreferrer">openwrt-devel-bounces=
@lists.openwrt.org</a>] On<br>
&gt; Behalf Of Christopher Hill<br>
&gt; Sent: Montag, 17. Februar 2020 16:03<br>
&gt; To: <a href=3D"mailto:openwrt-devel@lists.openwrt.org" target=3D"_blan=
k" rel=3D"noreferrer">openwrt-devel@lists.openwrt.org</a><br>
&gt; Subject: [OpenWrt-Devel] Mikrotik ar71xx -&gt; ath79 port<br>
&gt; <br>
&gt; Hi,<br>
&gt; <br>
&gt; New here, and am looking for some advice on porting an existing device=
<br>
&gt; to ath79 - specifically a Mikrotik RB493G (which is NAND).<br>
&gt; <br>
&gt; The area I&#39;m looking for guidance / tips on is getting the lzma-lo=
ader<br>
&gt; to boot the new kernel. I have compiled a new image* and I can tftp bo=
ot<br>
&gt; this and see on the serial console the lzma-loader running and<br>
&gt; decompressing the kernel and then starting it... but then nothing<br>
&gt; happens next.<br>
<br>
Have a look at the annotations I put into your repo. It looks like you have=
 mistaken size for partition endings in the DTS.<br>
I remember @rogerpueyo also had problems booting his device due to a wrong =
partition setup. Maybe fixing the partitions will be enough ...<br>
<br>
Best<br>
<br>
Adrian<br>
<br>
&gt; <br>
&gt; I have two questions below that I would be grateful for any opinions o=
ver.<br>
&gt; <br>
&gt; Thanks,<br>
&gt; Chris<br>
&gt; <br>
&gt; <br>
&gt; * The new dts file and makefile changes are here:<br>
&gt; <a href=3D"https://github.com/ch6574/openwrt/tree/rb493g" rel=3D"noref=
errer noreferrer" target=3D"_blank">https://github.com/ch6574/openwrt/tree/=
rb493g</a><br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; This is what I see on the serial console:<br>
&gt; <br>
&gt;=C2=A0 =C2=A0OpenWrt kernel loader for AR7XXX/AR9XXX<br>
&gt;=C2=A0 =C2=A0Copyright (C) 2011 Gabor Juhos &lt;<a href=3D"mailto:juhos=
g@openwrt.org" target=3D"_blank" rel=3D"noreferrer">juhosg@openwrt.org</a>&=
gt;<br>
&gt;=C2=A0 =C2=A0Decompressing kernel... done!<br>
&gt;=C2=A0 =C2=A0Starting kernel at 80060000...<br>
&gt; <br>
&gt; That&#39;s it.<br>
&gt; <br>
&gt; I&#39;ve tried adding extra bootargs &quot;earlycon&quot; and &quot;ea=
rlyprintk&quot; in the dts<br>
&gt; &quot;chosen&quot; section however I still don&#39;t see anything. Run=
ning binwalk on<br>
&gt; my new ath79 image vs the 19.07 ar71xx initramfs image reveals some<br=
>
&gt; differences:<br>
&gt; <br>
&gt; 19.01 ar71xx:<br>
&gt; <br>
&gt;=C2=A0 =C2=A0DECIMAL HEXADECIMAL DESCRIPTION<br>
&gt; <br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt;=C2=A0 =C2=A00=C2=A0 =C2=A0 =C2=A0 =C2=A00x0=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0ELF, 32-bit MSB MIPS-I executable, MIPS, version 1<br>
&gt; (SYSV)<br>
&gt;=C2=A0 =C2=A09580=C2=A0 =C2=A0 0x256C=C2=A0 =C2=A0 =C2=A0 Copyright str=
ing: &quot;Copyright (C) 2011 Gabor Juhos<br>
&gt; &lt;<a href=3D"mailto:juhosg@openwrt.org" target=3D"_blank" rel=3D"nor=
eferrer">juhosg@openwrt.org</a>&gt;&quot;<br>
&gt;=C2=A0 =C2=A09788=C2=A0 =C2=A0 0x263C=C2=A0 =C2=A0 =C2=A0 LZMA compress=
ed data, properties: 0x6D, dictionary<br>
&gt; size: 8388608 bytes, uncompressed size: 7543556 bytes<br>
&gt; <br>
&gt; New ath79:<br>
&gt; <br>
&gt;=C2=A0 =C2=A0DECIMAL HEXADECIMAL DESCRIPTION<br>
&gt; <br>
&gt; ----------------------------------------------------------------------=
----------<br>
&gt;=C2=A0 =C2=A00=C2=A0 =C2=A0 =C2=A0 =C2=A00x0=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0ELF, 32-bit MSB MIPS-I executable, MIPS, version 1<br>
&gt; (SYSV)<br>
&gt;=C2=A0 =C2=A09532=C2=A0 =C2=A0 0x253C=C2=A0 =C2=A0 =C2=A0 Copyright str=
ing: &quot;Copyright (C) 2011 Gabor Juhos<br>
&gt; &lt;<a href=3D"mailto:juhosg@openwrt.org" target=3D"_blank" rel=3D"nor=
eferrer">juhosg@openwrt.org</a>&gt;&quot;<br>
&gt;=C2=A0 =C2=A09740=C2=A0 =C2=A0 0x260C=C2=A0 =C2=A0 =C2=A0 LZMA compress=
ed data, properties: 0x6D, dictionary<br>
&gt; size: 8388608 bytes, uncompressed size: 12739582 bytes<br>
&gt; <br>
&gt; So my ath79 image is quite a lot bigger, almost double.<br>
&gt; <br>
&gt; <br>
&gt; Question 1 -=C2=A0 Am I running into size issues and simply clobbering=
 other<br>
&gt; areas of memory?<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; Next using binwalk to extract and unpack the LZMA data reveals their<b=
r>
&gt; content is very different:<br>
&gt; <br>
&gt; 19.01 ar71xx:<br>
&gt; <br>
&gt;=C2=A0 =C2=A0$ tree<br>
&gt; _openwrt-19.07.0-ar71xx-mikrotik-vmlinux-initramfs-lzma.elf.extracted/=
 |<br>
&gt; head -20<br>
&gt;=C2=A0 =C2=A0_openwrt-19.07.0-ar71xx-mikrotik-vmlinux-initramfs-lzma.el=
f.extracted/<br>
&gt;=C2=A0 =C2=A0=E2=94=9C=E2=94=80=E2=94=80 263C<br>
&gt;=C2=A0 =C2=A0=E2=94=9C=E2=94=80=E2=94=80 263C.7z<br>
&gt;=C2=A0 =C2=A0=E2=94=94=E2=94=80=E2=94=80 _263C.extracted<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=94=9C=E2=94=80=E2=94=80 45DB88.xz<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=94=9C=E2=94=80=E2=94=80 4F2D34<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=94=9C=E2=94=80=E2=94=80 4F2D34.7z<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=94=94=E2=94=80=E2=94=80 _4F2D34.extracte=
d<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=94=9C=E2=94=80=E2=94=80 0.=
cpio<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=94=94=E2=94=80=E2=94=80 cp=
io-root<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=94=9C=E2=94=
=80=E2=94=80 bin<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=94=82=C2=A0 =
=C2=A0=E2=94=9C=E2=94=80=E2=94=80 ash -&gt; busybox<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=94=82=C2=A0 =
=C2=A0=E2=94=9C=E2=94=80=E2=94=80 board_detect<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=94=82=C2=A0 =
=C2=A0=E2=94=9C=E2=94=80=E2=94=80 busybox<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=94=82=C2=A0 =
=C2=A0=E2=94=9C=E2=94=80=E2=94=80 cat -&gt; busybox<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=94=82=C2=A0 =
=C2=A0=E2=94=9C=E2=94=80=E2=94=80 chgrp -&gt; busybox<br>
&gt; <br>
&gt; <br>
&gt; New ath79:<br>
&gt; <br>
&gt;=C2=A0 =C2=A0$ tree<br>
&gt; _openwrt-ath79-nand-mikrotik_routerboard-rb493g-initramfs-<br>
&gt; kernel.bin.extracted/<br>
&gt;=C2=A0 =C2=A0=E2=94=9C=E2=94=80=E2=94=80 260C<br>
&gt;=C2=A0 =C2=A0=E2=94=9C=E2=94=80=E2=94=80 260C.7z<br>
&gt;=C2=A0 =C2=A0=E2=94=94=E2=94=80=E2=94=80 _260C.extracted<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=94=9C=E2=94=80=E2=94=80 [<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=94=9C=E2=94=80=E2=94=80 [[<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=94=9C=E2=94=80=E2=94=80 00-netstate<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=94=9C=E2=94=80=E2=94=80 00_preinit.conf<=
br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=94=9C=E2=94=80=E2=94=80 00-sysctl<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=94=9C=E2=94=80=E2=94=80 00-wifi-migratio=
n<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=94=9C=E2=94=80=E2=94=80 01_leds<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=94=9C=E2=94=80=E2=94=80 02_default_set_s=
tate<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=94=9C=E2=94=80=E2=94=80 02_network<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=94=9C=E2=94=80=E2=94=80 02_sysinfo<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=94=9C=E2=94=80=E2=94=80 0b26f36ae0f4106d=
<br>
&gt;=C2=A0 =C2=A0&lt;snip&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=94=9C=E2=94=80=E2=94=80 540B28.xz<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=94=9C=E2=94=80=E2=94=80 5D3B84.cpio<br>
&gt;=C2=A0 =C2=A0&lt;snip&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=94=9C=E2=94=80=E2=94=80 cpio-root<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=94=82=C2=A0 =C2=A0=E2=94=9C=E2=94=80=E2=
=94=80 bin<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=94=82=C2=A0 =C2=A0=E2=94=82=C2=A0 =C2=A0=
=E2=94=9C=E2=94=80=E2=94=80 ash -&gt; busybox<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0=E2=94=82=C2=A0 =C2=A0=E2=94=82=C2=A0 =C2=A0=
=E2=94=9C=E2=94=80=E2=94=80 board_detect<br>
&gt; <br>
&gt; <br>
&gt; Question 2 - are these differences in how the image is being packed<br=
>
&gt; causing problems?<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; _______________________________________________<br>
&gt; openwrt-devel mailing list<br>
&gt; <a href=3D"mailto:openwrt-devel@lists.openwrt.org" target=3D"_blank" r=
el=3D"noreferrer">openwrt-devel@lists.openwrt.org</a><br>
&gt; <a href=3D"https://lists.openwrt.org/mailman/listinfo/openwrt-devel" r=
el=3D"noreferrer noreferrer" target=3D"_blank">https://lists.openwrt.org/ma=
ilman/listinfo/openwrt-devel</a><br>
<br>
</blockquote></div></div></div>

--000000000000fb8c84059ecb0605--


--===============1571704278102006582==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1571704278102006582==--

