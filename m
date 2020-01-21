Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9512D143A37
	for <lists+openwrt-devel@lfdr.de>; Tue, 21 Jan 2020 11:02:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=73Y/2/tQmSbrTzlc8qcoIj2P9HPrMk+13f7y8XCb1sA=; b=Co9PfS7qBX9OX/XLOFn0Fkdmh
	s6fXJBGX1Io/DEQ8CmT/lXEBNe5fFKC0ewtJPXfHRg8rCcSBHPjoTvt6K6sZSpJoztGEwmtXoyff+
	2DdM4yVrkVv2jz/GtdxF1yWaKnk5T6H8ILiVa8F8w4iMloSl1V92HvJVT/Wei7dHWOaejOf+5vMku
	0ICxBDOwMzTvyEPTaxX9EthCnNHhwVRd+tRuoTrD3fRf7GHk6aeXjjbH921ag9xNnu9Q6Ya3hSoCC
	1inHirHeWg/Xz4uvSfGtqJO81IpJNW2v7+XUdc4Bo4ZKK8AzpB9j1tKmQmMTEGqlM7imVCpMHWJdD
	4ROm6Lz0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itqMK-00051L-Od; Tue, 21 Jan 2020 10:02:08 +0000
Received: from mail-ua1-x941.google.com ([2607:f8b0:4864:20::941])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itqLr-0004mz-4p
 for openwrt-devel@lists.openwrt.org; Tue, 21 Jan 2020 10:01:45 +0000
Received: by mail-ua1-x941.google.com with SMTP id y3so737312uae.3
 for <openwrt-devel@lists.openwrt.org>; Tue, 21 Jan 2020 02:01:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Wm3tvViQNG1rzghgumQBUIoiwrZn6V7GVQPQ+4LjdFU=;
 b=bW+UMKRSnMPGFOSWUHe/9WZRJu9NuIEe2Usd1mYUhSUz4f7L3tVfWfYixXcc4kXtxh
 DgPHsY0fL7b8wjSuLeLJi1vdns8nUj3xH6lI6Ed3gsUm063SObJLoSsk+AUw+CDf1blt
 PNOOojazG4bpnUKU4utbn4XNggTJKvC18d+qmXX/op1mNKYKxCJfCGZP0w8X5gxrkELl
 ZckroRVOhJWUfR24LqXYH69q+kHGWCVuSn1SpXR5elQyShFYLNWY3ywGwtD+E9f9TZJT
 ZHgZKpK1bki89tKKmPB1x//0kwskOlGgQAaIwU7qQ97gPS9hiUviUqDRqao1Fn6E9v94
 4Q1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Wm3tvViQNG1rzghgumQBUIoiwrZn6V7GVQPQ+4LjdFU=;
 b=JZw+mOcQl/keFkvQseaqOMEG/33ZwhknlfTF4O8jcuIs5QD6/L28dd216XFjfGcZus
 9ZVAKWJCGfNTiNQ0uhl3K8Sh89NOi/kppZ4ogfQ32eTlqE2TcTlzEWYxaKOLvn6Xe0cS
 +uG5EkNFvJ+NI9fuVKBv2UuRKOy9YkQW6Yd7Uj+slkhTlNTa/1h3uYjhs9S6AUL+Tu+r
 UV6ZqnobcVbbrBbxY0aWVn4SdMUw0Y312P6j5x3SJGlEMUhoHAUF61ZR0U6k/WU5LCMI
 3vc0qrCFpetWHNI8o0mndwDhOKNY1sySQaTgiXml8RSexRpb1qByUZMDiDYUVfP6NsA8
 gLsA==
X-Gm-Message-State: APjAAAVJl8P7yFM3+JtW4VyMpJcrh2MAzzfMfMdvTfPmTZtGxNhBGCOR
 Y9D2i9JcxU7aoo639VgzPqWe10ii1O4XssY6Th8=
X-Google-Smtp-Source: APXvYqwy67z4LuJqCId07O6+FCMzuxO2NKEsZoRaBExkik8WGFymbEC453Z736D29OsaO0bxPNR9/zuBX170i2gj//M=
X-Received: by 2002:ab0:6017:: with SMTP id j23mr2396013ual.3.1579600897720;
 Tue, 21 Jan 2020 02:01:37 -0800 (PST)
MIME-Version: 1.0
References: <1578138728-1256-1-git-send-email-brunompena@gmail.com>
 <0cf18b56d78d859f8d7bf30bccc6ce0762d35302.camel@ewol.com>
In-Reply-To: <0cf18b56d78d859f8d7bf30bccc6ce0762d35302.camel@ewol.com>
From: Bruno Pena <brunompena@gmail.com>
Date: Tue, 21 Jan 2020 11:01:27 +0100
Message-ID: <CADwgkMUhZ4TrqhiJJPHLL0aVyxxvKfABwDz-4wv_QZ_cyZvj9A@mail.gmail.com>
To: Steve Brown <sbrown@ewol.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_020139_193135_73190DA3 
X-CRM114-Status: GOOD (  23.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:941 listed in]
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: multipart/mixed; boundary="===============4497168813609962643=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============4497168813609962643==
Content-Type: multipart/alternative; boundary="000000000000654429059ca37ec6"

--000000000000654429059ca37ec6
Content-Type: text/plain; charset="UTF-8"

Hi Steve,

These patches should only impact partitions that are marked as read only.
Can you please provide more details about your configuration?
(architecture, device profile, mtd layout, the mtd partition generating the
error)

Best regards,
Bruno Pena

On Tue, Jan 21, 2020, 10:51 Steve Brown <sbrown@ewol.com> wrote:

> Hi Bruno,
>
> On Sat, 2020-01-04 at 12:52 +0100, Bruno Pena wrote:
> > This patch enables fstools to open read-only MTD partitions, which in
> > turn also enables OpenWrt to boot from read-only partitions.
> >
> > The use of read-only partitions is of special importance for WiFi-
> > only
> > devices, where a protected read-only recovery image can be used in
> > case
> > something goes wrong with the main firmware (eg. user gets locked out
> > due to bad settings, flash of an unbootable dev firmware, etc).
> >
> > Signed-off-by: Bruno Pena <brunompena@gmail.com>
> > ---
> >  libfstools/mtd.c | 19 +++++++++++++++----
> >  1 file changed, 15 insertions(+), 4 deletions(-)
> >
> > diff --git a/libfstools/mtd.c b/libfstools/mtd.c
> > index 77c71ee..aae633e 100644
> > --- a/libfstools/mtd.c
> > +++ b/libfstools/mtd.c
> > @@ -36,20 +36,31 @@ struct mtd_volume {
> >
> >  static struct driver mtd_driver;
> >
> > +static int mtd_open_device(const char *dev)
> > +{
> > +     int ret;
> > +
> > +     ret = open(dev, O_RDWR | O_SYNC);
> > +     if (ret < 0)
> > +             ret = open(dev, O_RDONLY);
> > +
> > +     return ret;
> > +}
> > +
> >  static int mtd_open(const char *mtd, int block)
> >  {
> >       FILE *fp;
> >       char dev[PATH_MAX];
> > -     int i, ret, flags = O_RDWR | O_SYNC;
> > +     int i, ret;
> >
> >       if ((fp = fopen("/proc/mtd", "r"))) {
> >               while (fgets(dev, sizeof(dev), fp)) {
> >                       if (sscanf(dev, "mtd%d:", &i) && strstr(dev,
> > mtd)) {
> >                               snprintf(dev, sizeof(dev),
> > "/dev/mtd%s/%d", (block ? "block" : ""), i);
> > -                             ret = open(dev, flags);
> > +                             ret = mtd_open_device(dev);
> >                               if (ret < 0) {
> >                                       snprintf(dev, sizeof(dev),
> > "/dev/mtd%s%d", (block ? "block" : ""), i);
> > -                                     ret = open(dev, flags);
> > +                                     ret = mtd_open_device(dev);
> >                               }
> >                               fclose(fp);
> >                               return ret;
> > @@ -58,7 +69,7 @@ static int mtd_open(const char *mtd, int block)
> >               fclose(fp);
> >       }
> >
> > -     return open(mtd, flags);
> > +     return mtd_open_device(mtd);
> >  }
> >
> >  static void mtd_volume_close(struct mtd_volume *p)
>
>
> This patch and related commit de80424f706682e8bba27c60bcd2a9c1b4a5e875
> break the jffs erase on my Archer a7 v5.
>
>     [   11.787856] jffs2_scan_eraseblock(): End of filesystem marker found
> at 0x10000
>     [   11.795357] jffs2_build_filesystem(): unlocking the mtd device...
>     [   11.795390] done.
>     [   11.803771] jffs2_build_filesystem(): erasing all blocks after the
> end marker...
>     [   11.803781] jffs2: Erase at 0x009e0000 failed immediately: -EROFS.
> Is the sector locked?
>          -------------
>     [   13.138841] jffs2: Erase at 0x00010000 failed immediately: -EROFS.
> Is the sector locked?
>     [   13.147188] done.
>     [   13.149202] jffs2: notice: (487) jffs2_build_xattr_subsystem:
> complete building xattr subsystem, 0 of xdatum (0 unchecked, 0 orphan) and
> 0 of xref (0 .
>     [   13.165896] mount_root: unable to set filesystem state
>     [   13.171443] mount_root: switching to jffs2 overlay
>     [   13.201867] overlayfs: failed to resolve '/overlay/upper': -2
>     [   13.223939] mount_root: mount failed:
> lowerdir=/,upperdir=/overlay/upper,workdir=/overlay/work, options No such
> device
>     [   13.235145] mount_root: switching to jffs2 failed - fallback to
> ramoverlay
>
> Verified by reverting de80424f7.
>
> Steve
>
>
>

--000000000000654429059ca37ec6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi Steve,<div dir=3D"auto"><br></div><div dir=3D"auto">Th=
ese patches should only impact partitions that are marked as read only.</di=
v><div dir=3D"auto">Can you please provide more details about your configur=
ation? (architecture, device profile, mtd layout, the mtd partition generat=
ing the error)</div><div dir=3D"auto"><br></div><div dir=3D"auto">Best rega=
rds,</div><div dir=3D"auto">Bruno Pena</div></div><br><div class=3D"gmail_q=
uote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jan 21, 2020, 10:51 Ste=
ve Brown &lt;<a href=3D"mailto:sbrown@ewol.com">sbrown@ewol.com</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;b=
order-left:1px #ccc solid;padding-left:1ex">Hi Bruno,<br>
<br>
On Sat, 2020-01-04 at 12:52 +0100, Bruno Pena wrote:<br>
&gt; This patch enables fstools to open read-only MTD partitions, which in<=
br>
&gt; turn also enables OpenWrt to boot from read-only partitions.<br>
&gt; <br>
&gt; The use of read-only partitions is of special importance for WiFi-<br>
&gt; only<br>
&gt; devices, where a protected read-only recovery image can be used in<br>
&gt; case<br>
&gt; something goes wrong with the main firmware (eg. user gets locked out<=
br>
&gt; due to bad settings, flash of an unbootable dev firmware, etc).<br>
&gt; <br>
&gt; Signed-off-by: Bruno Pena &lt;<a href=3D"mailto:brunompena@gmail.com" =
target=3D"_blank" rel=3D"noreferrer">brunompena@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 libfstools/mtd.c | 19 +++++++++++++++----<br>
&gt;=C2=A0 1 file changed, 15 insertions(+), 4 deletions(-)<br>
&gt; <br>
&gt; diff --git a/libfstools/mtd.c b/libfstools/mtd.c<br>
&gt; index 77c71ee..aae633e 100644<br>
&gt; --- a/libfstools/mtd.c<br>
&gt; +++ b/libfstools/mtd.c<br>
&gt; @@ -36,20 +36,31 @@ struct mtd_volume {<br>
&gt;=C2=A0 <br>
&gt;=C2=A0 static struct driver mtd_driver;<br>
&gt;=C2=A0 <br>
&gt; +static int mtd_open_device(const char *dev)<br>
&gt; +{<br>
&gt; +=C2=A0 =C2=A0 =C2=A0int ret;<br>
&gt; +<br>
&gt; +=C2=A0 =C2=A0 =C2=A0ret =3D open(dev, O_RDWR | O_SYNC);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (ret &lt; 0)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ret =3D open(dev, O_R=
DONLY);<br>
&gt; +<br>
&gt; +=C2=A0 =C2=A0 =C2=A0return ret;<br>
&gt; +}<br>
&gt; +<br>
&gt;=C2=A0 static int mtd_open(const char *mtd, int block)<br>
&gt;=C2=A0 {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0FILE *fp;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0char dev[PATH_MAX];<br>
&gt; -=C2=A0 =C2=A0 =C2=A0int i, ret, flags =3D O_RDWR | O_SYNC;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0int i, ret;<br>
&gt;=C2=A0 <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if ((fp =3D fopen(&quot;/proc/mtd&quot;, &qu=
ot;r&quot;))) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0while (fgets(dev=
, sizeof(dev), fp)) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0if (sscanf(dev, &quot;mtd%d:&quot;, &amp;i) &amp;&amp; strstr(=
dev,<br>
&gt; mtd)) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0snprintf(dev, sizeof(dev),<br>
&gt; &quot;/dev/mtd%s/%d&quot;, (block ? &quot;block&quot; : &quot;&quot;),=
 i);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ret =3D open(dev, flags);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ret =3D mtd_open_device(dev);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (ret &lt; 0) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0snprin=
tf(dev, sizeof(dev),<br>
&gt; &quot;/dev/mtd%s%d&quot;, (block ? &quot;block&quot; : &quot;&quot;), =
i);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ret =3D open=
(dev, flags);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ret =3D mtd_=
open_device(dev);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0fclose(fp);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return ret;<br>
&gt; @@ -58,7 +69,7 @@ static int mtd_open(const char *mtd, int block)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0fclose(fp);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 <br>
&gt; -=C2=A0 =C2=A0 =C2=A0return open(mtd, flags);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0return mtd_open_device(mtd);<br>
&gt;=C2=A0 }<br>
&gt;=C2=A0 <br>
&gt;=C2=A0 static void mtd_volume_close(struct mtd_volume *p)<br>
<br>
<br>
This patch and related commit de80424f706682e8bba27c60bcd2a9c1b4a5e875<br>
break the jffs erase on my Archer a7 v5.<br>
<br>
=C2=A0 =C2=A0 [=C2=A0 =C2=A011.787856] jffs2_scan_eraseblock(): End of file=
system marker found at 0x10000<br>
=C2=A0 =C2=A0 [=C2=A0 =C2=A011.795357] jffs2_build_filesystem(): unlocking =
the mtd device...<br>
=C2=A0 =C2=A0 [=C2=A0 =C2=A011.795390] done.<br>
=C2=A0 =C2=A0 [=C2=A0 =C2=A011.803771] jffs2_build_filesystem(): erasing al=
l blocks after the end marker...<br>
=C2=A0 =C2=A0 [=C2=A0 =C2=A011.803781] jffs2: Erase at 0x009e0000 failed im=
mediately: -EROFS. Is the sector locked?<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0-------------<br>
=C2=A0 =C2=A0 [=C2=A0 =C2=A013.138841] jffs2: Erase at 0x00010000 failed im=
mediately: -EROFS. Is the sector locked?<br>
=C2=A0 =C2=A0 [=C2=A0 =C2=A013.147188] done.<br>
=C2=A0 =C2=A0 [=C2=A0 =C2=A013.149202] jffs2: notice: (487) jffs2_build_xat=
tr_subsystem: complete building xattr subsystem, 0 of xdatum (0 unchecked, =
0 orphan) and 0 of xref (0 .<br>
=C2=A0 =C2=A0 [=C2=A0 =C2=A013.165896] mount_root: unable to set filesystem=
 state<br>
=C2=A0 =C2=A0 [=C2=A0 =C2=A013.171443] mount_root: switching to jffs2 overl=
ay<br>
=C2=A0 =C2=A0 [=C2=A0 =C2=A013.201867] overlayfs: failed to resolve &#39;/o=
verlay/upper&#39;: -2<br>
=C2=A0 =C2=A0 [=C2=A0 =C2=A013.223939] mount_root: mount failed: lowerdir=
=3D/,upperdir=3D/overlay/upper,workdir=3D/overlay/work, options No such dev=
ice<br>
=C2=A0 =C2=A0 [=C2=A0 =C2=A013.235145] mount_root: switching to jffs2 faile=
d - fallback to ramoverlay<br>
<br>
Verified by reverting de80424f7. <br>
<br>
Steve<br>
<br>
<br>
</blockquote></div>

--000000000000654429059ca37ec6--


--===============4497168813609962643==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4497168813609962643==--

