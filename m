Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34151144BB2
	for <lists+openwrt-devel@lfdr.de>; Wed, 22 Jan 2020 07:23:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LN0riiF6IN2FUVMfoyz7KvHqb3tTCkmPEY1c5bbxw1s=; b=I8A6BqP5p7t/EptxDU52+fRJM
	AfYbHEaPpQcio+A1uX4/wYV0CHOQu75yatpsSCL0K7JeSv9zcwL4LboCIdKqmuLR1vbvDpqGWtNYV
	HW48YEAOYJeXepvrXIUAFfRRusByqudSBbcKyJSVC9Ogqqi6UjyCyrY4DgvPcNCQRsxa6rQ2awN6M
	DzSPuGIoGdiWBRZljgsDUgUGiZ7nRSphyYIngm9yMnZeMPBXej+pPKtImrCyo0yx5K5tm4pbvOhtC
	yRCwTYHFT0DQq1gIRev0CalpC44yEcJNe9Pl1km9IuuW/AWqC0e3KIOe/eKquY8MbThO7ejb6DxTD
	kfU8Mq+8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iu9Qb-0005sR-TU; Wed, 22 Jan 2020 06:23:49 +0000
Received: from mail-vs1-xe41.google.com ([2607:f8b0:4864:20::e41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iu9QR-0005s4-Rg
 for openwrt-devel@lists.openwrt.org; Wed, 22 Jan 2020 06:23:41 +0000
Received: by mail-vs1-xe41.google.com with SMTP id x18so3504019vsq.4
 for <openwrt-devel@lists.openwrt.org>; Tue, 21 Jan 2020 22:23:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=GbBptJ7Z5XpKfcYdvm7xESse/R4wsoATf503JpPNDsU=;
 b=FpkEGpduTkteEJaDoEcYbaevhiEBc0Q3w3+qbjNcYLOeu0d4xFSgvWX7ZEAu4MD1Ok
 oiQWLksuNyDUJEB4/JGo5XfzlZSjkAheRzWbR7YYqSN4BCnqmubKoDsX0GZq2IDmVSQh
 b5qjW5iw8HT56K9qzEn31/0pDroEv5nc2sjsl66dkR9bmAmLpasmwRCfKv5pC+u/p9GI
 YcnPNjm/y7d6NWDcPeKR4WMUIoV4Cg+5IKj/Jgx+tbMjvXtMU3o965r0JqpPG5hNbugn
 zzZghCyqTq0HfYD7alDeiyOeGLdwbuSvyoTbsHUpYlnTh+x9JcGPTM5Zwb3Ciy5+waEO
 lJuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=GbBptJ7Z5XpKfcYdvm7xESse/R4wsoATf503JpPNDsU=;
 b=sFirgioC6LmUUxKWsrC19Rg6/d3+qC9R/yOuLpEMOKkZi4JJQACrtoHi5oD3J5LFQk
 gsN4vYsYi7SmkT8b4IG0e+OUwown9r2404IpKD6DB1d4ex0pOxquK0Zk5XNBL1nr6gkf
 MfrYskrW0V2UgiNFsVkd+QPglR5Aw2erjdTxh2c8YQXATYrzoktKs/KJnc/eSmLM2Iaz
 +wSUkanYzP6mFnjfH+jXmD2VLya15fShBd09z0A4apWwVRNgPnpMJSbNXuNKaBTj1UAy
 d9uZ0PVBZVlLMrxBCJ+nF44nY5R1/prnDQ8PhMaylP+ZGl8aLLNjQxHa3On03knnCVdj
 XFjw==
X-Gm-Message-State: APjAAAUxWHWBq0EH2FytRl0Jw85J/AqislIjsxS09vIRBPFilNFjPIdC
 mnM42IlJDuowJTo6i1R5Yv8KEv/oxcAv9Cbnn1E=
X-Google-Smtp-Source: APXvYqyDvYOJ0CmxfO/g+BpxFf51Kmqmdjw9FzWAB0BP+sP4xXC7O/5NvaOnDefN/Z85tM/YrGCpu6Xq2BCJ+bBvzY0=
X-Received: by 2002:a67:7a03:: with SMTP id v3mr1825400vsc.66.1579674218345;
 Tue, 21 Jan 2020 22:23:38 -0800 (PST)
MIME-Version: 1.0
References: <1578138728-1256-1-git-send-email-brunompena@gmail.com>
 <0cf18b56d78d859f8d7bf30bccc6ce0762d35302.camel@ewol.com>
 <CADwgkMUhZ4TrqhiJJPHLL0aVyxxvKfABwDz-4wv_QZ_cyZvj9A@mail.gmail.com>
 <CADwgkMWzviYbcOcbY1R5C9gyY_WAwQpyyYW0eWptm369k-d7-Q@mail.gmail.com>
 <20200121104934.GA2465@makrotopia.org>
 <CADwgkMWQxN5WLeG9oyR0RdeahC+ZHeykLNGj0PfKtCvG81Qxxw@mail.gmail.com>
 <20200121185716.GL69327@meh.true.cz>
 <CADwgkMVVX_kX8w18AtGwhvwoY=MOW=_7chPScey-7T32+g1uDA@mail.gmail.com>
 <CADwgkMUy5--GR3du_-qj+m0Ag=fTA9pfOhDJO0DCbWcDtvHjZg@mail.gmail.com>
 <8d6e68f8-6baa-0338-e40e-4d5f9aac37f8@kresin.me>
In-Reply-To: <8d6e68f8-6baa-0338-e40e-4d5f9aac37f8@kresin.me>
From: Bruno Pena <brunompena@gmail.com>
Date: Wed, 22 Jan 2020 07:23:01 +0100
Message-ID: <CADwgkMULwgzqyxUHBm-GtNH1AayJ4L-W6cf1NM6BNvtq5R8Otg@mail.gmail.com>
To: Mathias Kresin <dev@kresin.me>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_222339_897194_66673BDE 
X-CRM114-Status: GOOD (  17.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e41 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [brunompena[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH v2] fstools: Add support to read-only
 MTD partitions (eg. recovery images)
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
Cc: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>,
 openwrt-devel@lists.openwrt.org, Steve Brown <sbrown@ewol.com>,
 Daniel Golle <daniel@makrotopia.org>
Content-Type: multipart/mixed; boundary="===============5125235351008646239=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============5125235351008646239==
Content-Type: multipart/alternative; boundary="000000000000a53a2d059cb49015"

--000000000000a53a2d059cb49015
Content-Type: text/plain; charset="UTF-8"

Hi Mathias,

Actually the current default for the ath79 architecture is to pad the
partitions as seen on target/linux/ath79/image/Makefile:

    define Device/Default
      [...]
      IMAGE/sysupgrade.bin = append-kernel | pad-to $$$$(BLOCKSIZE) | \
            append-rootfs | pad-rootfs | append-metadata | check-size
$$$$(IMAGE_SIZE)

This means that all devices that do not customize the sysupgrade.bin will
have their partitions padded to the blocksize (which are still quite a few).

Having said that, I do understand and agree that for very small flash sizes
it may seem unwise to spend up to 64k (32k on average) just to round the
partition to the blocksize.
However, due to how mtd is implemented the padding is actually a
requirement for this kernel patch to work properly.

Best regards,
Bruno Pena

On Tue, Jan 21, 2020 at 11:51 PM Mathias Kresin <dev@kresin.me> wrote:

> 21/01/2020 22:10, Bruno Pena:
> > Hi everyone,
> >
> > I was finally able to replicate the issue you are observing.
> >
> > The problem comes from the fact that the kernel partition on the TP-Link
> > images is not padded to the write blocksize - which can be observed on
> > the dmesg from Steve:
> >
> > [    0.450987] 0x000000000000-0x0000001a39ea : "kernel"
> > [    0.456772] 0x0000001a39ea-0x000000ec0000 : "rootfs"
>
> [...]
>
>  > Would any of you be willing to spend some time testing this change on
>  > your TP-Link?
>
> Hey Bruno,
>
> what you see here, is pretty much OpenWrt standard. It's done this way
> to not waste any flash space.
>
> If we would pad the kernel to the erase block boundary, we would lose
> flash space, which can't be used for the rootfs. Considering the 0x10000
> bytes EB size for the TP-Link device, we would loose 64 KByte in worst
> case.
>
> Mathias
>

--000000000000a53a2d059cb49015
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Mathias,<div><br></div><div>Actually the current defaul=
t for the ath79 architecture is to pad the partitions as seen on=C2=A0targe=
t/linux/ath79/image/Makefile:</div><div><br></div><div>=C2=A0 =C2=A0 define=
 Device/Default<br>=C2=A0 =C2=A0 =C2=A0 [...]<br>=C2=A0 =C2=A0 =C2=A0 IMAGE=
/sysupgrade.bin =3D append-kernel | pad-to $$$$(BLOCKSIZE) | \<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 append-rootfs | pad-rootfs | append-meta=
data | check-size $$$$(IMAGE_SIZE)</div><div><br></div><div>This means that=
 all devices that do not customize the sysupgrade.bin will have their parti=
tions padded to the blocksize (which are still quite a few).</div><div><br>=
</div><div>Having said that, I do understand and agree that for very small =
flash sizes it may seem unwise to spend up to 64k (32k on average) just to =
round the partition to the blocksize.</div><div>However, due to how mtd is =
implemented the padding is actually a requirement for this kernel patch to =
work properly.</div><div><br></div><div>Best regards,<br></div><div>Bruno P=
ena</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gma=
il_attr">On Tue, Jan 21, 2020 at 11:51 PM Mathias Kresin &lt;<a href=3D"mai=
lto:dev@kresin.me">dev@kresin.me</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">21/01/2020 22:10, Bruno Pena:<br>
&gt; Hi everyone,<br>
&gt; <br>
&gt; I was finally able to replicate the issue you are observing.<br>
&gt; <br>
&gt; The problem comes from the fact that the kernel partition on the TP-Li=
nk <br>
&gt; images is not padded to the write blocksize=C2=A0- which can be observ=
ed on <br>
&gt; the dmesg from Steve:<br>
&gt; <br>
&gt; [=C2=A0 =C2=A0 0.450987] 0x000000000000-0x0000001a39ea : &quot;kernel&=
quot;<br>
&gt; [=C2=A0 =C2=A0 0.456772] 0x0000001a39ea-0x000000ec0000 : &quot;rootfs&=
quot;<br>
<br>
[...]<br>
<br>
=C2=A0&gt; Would any of you be willing to spend some time testing this chan=
ge on<br>
=C2=A0&gt; your TP-Link?<br>
<br>
Hey Bruno,<br>
<br>
what you see here, is pretty much OpenWrt standard. It&#39;s done this way =
<br>
to not waste any flash space.<br>
<br>
If we would pad the kernel to the erase block boundary, we would lose <br>
flash space, which can&#39;t be used for the rootfs. Considering the 0x1000=
0 <br>
bytes EB size for the TP-Link device, we would loose 64 KByte in worst case=
.<br>
<br>
Mathias<br>
</blockquote></div>

--000000000000a53a2d059cb49015--


--===============5125235351008646239==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5125235351008646239==--

