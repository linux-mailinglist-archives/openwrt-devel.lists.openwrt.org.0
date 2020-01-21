Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FBC6143EA7
	for <lists+openwrt-devel@lfdr.de>; Tue, 21 Jan 2020 14:54:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=56GYx8x+wS2nK+MAA/IHB3Gk7NAWtxijCIMKKQ1CZkI=; b=aN5i0+QN+8It4PT9A6qFrMvGq
	pPbKvIRqC5lHyAtf4kJzhTA/gesJMsz2Rguc97ii/x25gjgRMGLmFa59w+yfqoO27QKLJmhd2IaIq
	P51X+rjeJbTq2b+T2OuH4v/LSSy9/pcuxz+1YFg2Rj/ErrxY2RzuKjLSsj66Fpei/31v68Eiqqo4T
	/h1lRBZjYrKkaT4677thgXSnNGwlWlHhWYf1lNfyfLK+gYvRex46YeV5ezShothZVfj5QPFZgqHM9
	Mq/2ZVtLCy1Gmk6/Ofnugs1P0V6zTs9zDAxwgjZq8I/0HVjq8HCIXl+c0TGAKegjBgAdL3mDCCYnc
	CvC0vpZzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ittyx-0004x0-Nb; Tue, 21 Jan 2020 13:54:15 +0000
Received: from mail-vk1-xa43.google.com ([2607:f8b0:4864:20::a43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ittyp-0004wa-NB
 for openwrt-devel@lists.openwrt.org; Tue, 21 Jan 2020 13:54:09 +0000
Received: by mail-vk1-xa43.google.com with SMTP id i78so899480vke.0
 for <openwrt-devel@lists.openwrt.org>; Tue, 21 Jan 2020 05:54:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1tSncLMMRrWywKJ2TMZaAHVuAZdTXFqqfG3F61Lv1tg=;
 b=rv/p9e+THomWfYaBnZ9YpYKu9n4kXSN+PxPrIzHdQ+LVRYR/DkDoWGDC0U2KLHhZEO
 7c6mqPIoNrOyK9UOl1JEEh/7zpCHp/+g2adbMsoWt5fcyGAq7cR57YLcHqOMY31Fx0rW
 3KZzJX6JBcyfEbIufOqyqsYM2oCpJemJSou3UwoWD4Wy0+cAaukxaX1xcPzoK3TYIV4E
 Rj18xX0N4vI3eR+8N+g+HK5FwvoH0UY2qH2O0T4KGvaeDWuwnovFgCUTa7k4EcIv7VFG
 NTjYFQ2PRQ56wvyfRfmQNk8aiUi+CAH4qZzuE0cJdv4K/J1uqSBG0lEMXFPAPrmiu1dV
 +JGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1tSncLMMRrWywKJ2TMZaAHVuAZdTXFqqfG3F61Lv1tg=;
 b=qqbXgAcw9PhT2Ezr5gQyw1OBLygcHeXI+G/JzWr6OpyQv7bxveuQghX0J1PqbOuW/8
 zKBz4FTWpHzpTy4h2DS0rTUjbx1daBgvKRiI6zN3N4WiJUL9gzfA8ZWoi0WkLVFJYJln
 dHIIVsT6XL8l06Y3IIZ9I2//XbeOlDX8XJMvrg74ZR3pCidJLKuhr19Yhn+LZsDCkK1L
 0dO2kibu0LsSziS/+MiQhv4AtksNQpBy2lQGcmwz/01ML7Nw5OuHz+HCA8zBhpdAplDs
 c77o+1a39fspH8Bw5nfuFrYBos0iedBAe351OzA8ckWNUuzRS3SdIsvWIps5ALYT89Le
 QqUQ==
X-Gm-Message-State: APjAAAX7X1VqzEVMgyv3W/7gwacdvCQa2P6dtmg7U1Nijyt/vpll4PDy
 PXuFYpPx9TUx6F76RMblxkuzncXxt0nf4PKYEhs=
X-Google-Smtp-Source: APXvYqw8ZGf8VkV5JQNDb5jEPMT5Xhh0K4X443HbJr91ybBmWW/Emsa6K86L9tIoz+qbadp9ln61fCTUdV42CaIdR8I=
X-Received: by 2002:ac5:cb0b:: with SMTP id r11mr3004508vkl.72.1579614845030; 
 Tue, 21 Jan 2020 05:54:05 -0800 (PST)
MIME-Version: 1.0
References: <1578138728-1256-1-git-send-email-brunompena@gmail.com>
 <0cf18b56d78d859f8d7bf30bccc6ce0762d35302.camel@ewol.com>
 <CADwgkMUhZ4TrqhiJJPHLL0aVyxxvKfABwDz-4wv_QZ_cyZvj9A@mail.gmail.com>
 <CADwgkMWzviYbcOcbY1R5C9gyY_WAwQpyyYW0eWptm369k-d7-Q@mail.gmail.com>
 <20200121104934.GA2465@makrotopia.org>
In-Reply-To: <20200121104934.GA2465@makrotopia.org>
From: Bruno Pena <brunompena@gmail.com>
Date: Tue, 21 Jan 2020 14:53:54 +0100
Message-ID: <CADwgkMWQxN5WLeG9oyR0RdeahC+ZHeykLNGj0PfKtCvG81Qxxw@mail.gmail.com>
To: Daniel Golle <daniel@makrotopia.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_055407_783450_3066C252 
X-CRM114-Status: GOOD (  33.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a43 listed in]
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
Cc: openwrt-devel@lists.openwrt.org, Steve Brown <sbrown@ewol.com>
Content-Type: multipart/mixed; boundary="===============0045277291366973047=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============0045277291366973047==
Content-Type: multipart/alternative; boundary="000000000000b853f4059ca6bd92"

--000000000000b853f4059ca6bd92
Content-Type: text/plain; charset="UTF-8"

Hi Daniel,

Based on the last comment from Steve (fstools patch was not reverted), I'm
not sure if that's the root cause.
The kernel patch (which when reverted makes rootfs_data writable again)
only enforces the parent mtd access mode on the sub-partitions.
When I look at the DTS file for this device I see that "firmware" is
read-write, so I wonder if there's something else marking these as
read-only.

Best regards,
Bruno Pena


On Tue, Jan 21, 2020, 11:55 Daniel Golle <daniel@makrotopia.org> wrote:

> Hi Bruno,
> Hi Steve,
>
> On Tue, Jan 21, 2020 at 11:24:28AM +0100, Bruno Pena wrote:
> > Please also include the contents of "dmesg" and of the files
> > "/proc/cmdline" and "/proc/mtd".
> >
> > Best regards,
> > Bruno Pena
> >
> > On Tue, Jan 21, 2020, 11:01 Bruno Pena <brunompena@gmail.com> wrote:
> >
> > > Hi Steve,
> > >
> > > These patches should only impact partitions that are marked as read
> only.
> > > Can you please provide more details about your configuration?
> > > (architecture, device profile, mtd layout, the mtd partition
> generating the
> > > error)
>
> I think this is because opening /dev/mtdX will fail as read-write
> but will succeed in read-only mode. Hence /dev/mtdblockX is not even
> considered which is a change from the previous behaviour.
>
> > >
> > > Best regards,
> > > Bruno Pena
> > >
> > > On Tue, Jan 21, 2020, 10:51 Steve Brown <sbrown@ewol.com> wrote:
> > >
> > >> Hi Bruno,
> > >>
> > >> On Sat, 2020-01-04 at 12:52 +0100, Bruno Pena wrote:
> > >> > This patch enables fstools to open read-only MTD partitions, which
> in
> > >> > turn also enables OpenWrt to boot from read-only partitions.
> > >> >
> > >> > The use of read-only partitions is of special importance for WiFi-
> > >> > only
> > >> > devices, where a protected read-only recovery image can be used in
> > >> > case
> > >> > something goes wrong with the main firmware (eg. user gets locked
> out
> > >> > due to bad settings, flash of an unbootable dev firmware, etc).
> > >> >
> > >> > Signed-off-by: Bruno Pena <brunompena@gmail.com>
> > >> > ---
> > >> >  libfstools/mtd.c | 19 +++++++++++++++----
> > >> >  1 file changed, 15 insertions(+), 4 deletions(-)
> > >> >
> > >> > diff --git a/libfstools/mtd.c b/libfstools/mtd.c
> > >> > index 77c71ee..aae633e 100644
> > >> > --- a/libfstools/mtd.c
> > >> > +++ b/libfstools/mtd.c
> > >> > @@ -36,20 +36,31 @@ struct mtd_volume {
> > >> >
> > >> >  static struct driver mtd_driver;
> > >> >
> > >> > +static int mtd_open_device(const char *dev)
> > >> > +{
> > >> > +     int ret;
> > >> > +
> > >> > +     ret = open(dev, O_RDWR | O_SYNC);
> > >> > +     if (ret < 0)
> > >> > +             ret = open(dev, O_RDONLY);
> > >> > +
> > >> > +     return ret;
> > >> > +}
> > >> > +
> > >> >  static int mtd_open(const char *mtd, int block)
> > >> >  {
> > >> >       FILE *fp;
> > >> >       char dev[PATH_MAX];
> > >> > -     int i, ret, flags = O_RDWR | O_SYNC;
> > >> > +     int i, ret;
> > >> >
> > >> >       if ((fp = fopen("/proc/mtd", "r"))) {
> > >> >               while (fgets(dev, sizeof(dev), fp)) {
> > >> >                       if (sscanf(dev, "mtd%d:", &i) && strstr(dev,
> > >> > mtd)) {
> > >> >                               snprintf(dev, sizeof(dev),
> > >> > "/dev/mtd%s/%d", (block ? "block" : ""), i);
> > >> > -                             ret = open(dev, flags);
> > >> > +                             ret = mtd_open_device(dev);
> > >> >                               if (ret < 0) {
> > >> >                                       snprintf(dev, sizeof(dev),
> > >> > "/dev/mtd%s%d", (block ? "block" : ""), i);
> > >> > -                                     ret = open(dev, flags);
> > >> > +                                     ret = mtd_open_device(dev);
> > >> >                               }
> > >> >                               fclose(fp);
> > >> >                               return ret;
> > >> > @@ -58,7 +69,7 @@ static int mtd_open(const char *mtd, int block)
> > >> >               fclose(fp);
> > >> >       }
> > >> >
> > >> > -     return open(mtd, flags);
> > >> > +     return mtd_open_device(mtd);
> > >> >  }
> > >> >
> > >> >  static void mtd_volume_close(struct mtd_volume *p)
> > >>
> > >>
> > >> This patch and related commit de80424f706682e8bba27c60bcd2a9c1b4a5e875
> > >> break the jffs erase on my Archer a7 v5.
> > >>
> > >>     [   11.787856] jffs2_scan_eraseblock(): End of filesystem marker
> > >> found at 0x10000
> > >>     [   11.795357] jffs2_build_filesystem(): unlocking the mtd
> device...
> > >>     [   11.795390] done.
> > >>     [   11.803771] jffs2_build_filesystem(): erasing all blocks after
> the
> > >> end marker...
> > >>     [   11.803781] jffs2: Erase at 0x009e0000 failed immediately:
> -EROFS.
> > >> Is the sector locked?
> > >>          -------------
> > >>     [   13.138841] jffs2: Erase at 0x00010000 failed immediately:
> -EROFS.
> > >> Is the sector locked?
> > >>     [   13.147188] done.
> > >>     [   13.149202] jffs2: notice: (487) jffs2_build_xattr_subsystem:
> > >> complete building xattr subsystem, 0 of xdatum (0 unchecked, 0
> orphan) and
> > >> 0 of xref (0 .
> > >>     [   13.165896] mount_root: unable to set filesystem state
> > >>     [   13.171443] mount_root: switching to jffs2 overlay
> > >>     [   13.201867] overlayfs: failed to resolve '/overlay/upper': -2
> > >>     [   13.223939] mount_root: mount failed:
> > >> lowerdir=/,upperdir=/overlay/upper,workdir=/overlay/work, options No
> such
> > >> device
> > >>     [   13.235145] mount_root: switching to jffs2 failed - fallback to
> > >> ramoverlay
> > >>
> > >> Verified by reverting de80424f7.
> > >>
> > >> Steve
> > >>
> > >>
> > >>
>
> > _______________________________________________
> > openwrt-devel mailing list
> > openwrt-devel@lists.openwrt.org
> > https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>
>

--000000000000b853f4059ca6bd92
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi Daniel,<div dir=3D"auto"><br></div><div dir=3D"auto">B=
ased on the last comment from Steve (fstools patch was not reverted), I&#39=
;m not sure if that&#39;s the root cause.</div><div dir=3D"auto">The kernel=
 patch (which when reverted makes rootfs_data writable again) only enforces=
 the parent mtd access mode on the sub-partitions.</div><div dir=3D"auto">W=
hen I look at the DTS file for this device I see that &quot;firmware&quot; =
is read-write, so I wonder if there&#39;s something else marking these as r=
ead-only.</div><div dir=3D"auto"><br></div><div dir=3D"auto">Best regards,<=
/div><div dir=3D"auto">Bruno Pena</div><br><br><div class=3D"gmail_quote" d=
ir=3D"auto"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jan 21, 2020, 11:=
55 Daniel Golle &lt;<a href=3D"mailto:daniel@makrotopia.org">daniel@makroto=
pia.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Hi Bruno,<br=
>
Hi Steve,<br>
<br>
On Tue, Jan 21, 2020 at 11:24:28AM +0100, Bruno Pena wrote:<br>
&gt; Please also include the contents of &quot;dmesg&quot; and of the files=
<br>
&gt; &quot;/proc/cmdline&quot; and &quot;/proc/mtd&quot;.<br>
&gt; <br>
&gt; Best regards,<br>
&gt; Bruno Pena<br>
&gt; <br>
&gt; On Tue, Jan 21, 2020, 11:01 Bruno Pena &lt;<a href=3D"mailto:brunompen=
a@gmail.com" target=3D"_blank" rel=3D"noreferrer">brunompena@gmail.com</a>&=
gt; wrote:<br>
&gt; <br>
&gt; &gt; Hi Steve,<br>
&gt; &gt;<br>
&gt; &gt; These patches should only impact partitions that are marked as re=
ad only.<br>
&gt; &gt; Can you please provide more details about your configuration?<br>
&gt; &gt; (architecture, device profile, mtd layout, the mtd partition gene=
rating the<br>
&gt; &gt; error)<br>
<br>
I think this is because opening /dev/mtdX will fail as read-write<br>
but will succeed in read-only mode. Hence /dev/mtdblockX is not even<br>
considered which is a change from the previous behaviour.<br>
<br>
&gt; &gt;<br>
&gt; &gt; Best regards,<br>
&gt; &gt; Bruno Pena<br>
&gt; &gt;<br>
&gt; &gt; On Tue, Jan 21, 2020, 10:51 Steve Brown &lt;<a href=3D"mailto:sbr=
own@ewol.com" target=3D"_blank" rel=3D"noreferrer">sbrown@ewol.com</a>&gt; =
wrote:<br>
&gt; &gt;<br>
&gt; &gt;&gt; Hi Bruno,<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; On Sat, 2020-01-04 at 12:52 +0100, Bruno Pena wrote:<br>
&gt; &gt;&gt; &gt; This patch enables fstools to open read-only MTD partiti=
ons, which in<br>
&gt; &gt;&gt; &gt; turn also enables OpenWrt to boot from read-only partiti=
ons.<br>
&gt; &gt;&gt; &gt;<br>
&gt; &gt;&gt; &gt; The use of read-only partitions is of special importance=
 for WiFi-<br>
&gt; &gt;&gt; &gt; only<br>
&gt; &gt;&gt; &gt; devices, where a protected read-only recovery image can =
be used in<br>
&gt; &gt;&gt; &gt; case<br>
&gt; &gt;&gt; &gt; something goes wrong with the main firmware (eg. user ge=
ts locked out<br>
&gt; &gt;&gt; &gt; due to bad settings, flash of an unbootable dev firmware=
, etc).<br>
&gt; &gt;&gt; &gt;<br>
&gt; &gt;&gt; &gt; Signed-off-by: Bruno Pena &lt;<a href=3D"mailto:brunompe=
na@gmail.com" target=3D"_blank" rel=3D"noreferrer">brunompena@gmail.com</a>=
&gt;<br>
&gt; &gt;&gt; &gt; ---<br>
&gt; &gt;&gt; &gt;=C2=A0 libfstools/mtd.c | 19 +++++++++++++++----<br>
&gt; &gt;&gt; &gt;=C2=A0 1 file changed, 15 insertions(+), 4 deletions(-)<b=
r>
&gt; &gt;&gt; &gt;<br>
&gt; &gt;&gt; &gt; diff --git a/libfstools/mtd.c b/libfstools/mtd.c<br>
&gt; &gt;&gt; &gt; index 77c71ee..aae633e 100644<br>
&gt; &gt;&gt; &gt; --- a/libfstools/mtd.c<br>
&gt; &gt;&gt; &gt; +++ b/libfstools/mtd.c<br>
&gt; &gt;&gt; &gt; @@ -36,20 +36,31 @@ struct mtd_volume {<br>
&gt; &gt;&gt; &gt;<br>
&gt; &gt;&gt; &gt;=C2=A0 static struct driver mtd_driver;<br>
&gt; &gt;&gt; &gt;<br>
&gt; &gt;&gt; &gt; +static int mtd_open_device(const char *dev)<br>
&gt; &gt;&gt; &gt; +{<br>
&gt; &gt;&gt; &gt; +=C2=A0 =C2=A0 =C2=A0int ret;<br>
&gt; &gt;&gt; &gt; +<br>
&gt; &gt;&gt; &gt; +=C2=A0 =C2=A0 =C2=A0ret =3D open(dev, O_RDWR | O_SYNC);=
<br>
&gt; &gt;&gt; &gt; +=C2=A0 =C2=A0 =C2=A0if (ret &lt; 0)<br>
&gt; &gt;&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ret =3D=
 open(dev, O_RDONLY);<br>
&gt; &gt;&gt; &gt; +<br>
&gt; &gt;&gt; &gt; +=C2=A0 =C2=A0 =C2=A0return ret;<br>
&gt; &gt;&gt; &gt; +}<br>
&gt; &gt;&gt; &gt; +<br>
&gt; &gt;&gt; &gt;=C2=A0 static int mtd_open(const char *mtd, int block)<br=
>
&gt; &gt;&gt; &gt;=C2=A0 {<br>
&gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0FILE *fp;<br>
&gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0char dev[PATH_MAX];<br>
&gt; &gt;&gt; &gt; -=C2=A0 =C2=A0 =C2=A0int i, ret, flags =3D O_RDWR | O_SY=
NC;<br>
&gt; &gt;&gt; &gt; +=C2=A0 =C2=A0 =C2=A0int i, ret;<br>
&gt; &gt;&gt; &gt;<br>
&gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if ((fp =3D fopen(&quot;/proc/=
mtd&quot;, &quot;r&quot;))) {<br>
&gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0wh=
ile (fgets(dev, sizeof(dev), fp)) {<br>
&gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0if (sscanf(dev, &quot;mtd%d:&quot;, &amp;i) &amp=
;&amp; strstr(dev,<br>
&gt; &gt;&gt; &gt; mtd)) {<br>
&gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0snprintf(dev, sizeof=
(dev),<br>
&gt; &gt;&gt; &gt; &quot;/dev/mtd%s/%d&quot;, (block ? &quot;block&quot; : =
&quot;&quot;), i);<br>
&gt; &gt;&gt; &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ret =3D open(dev, flags);<=
br>
&gt; &gt;&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ret =3D mtd_open_device(de=
v);<br>
&gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (ret &lt; 0) {<br=
>
&gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0snprintf(dev, sizeof(dev),<br>
&gt; &gt;&gt; &gt; &quot;/dev/mtd%s%d&quot;, (block ? &quot;block&quot; : &=
quot;&quot;), i);<br>
&gt; &gt;&gt; &gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0ret =3D open(dev, flags);<br>
&gt; &gt;&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0ret =3D mtd_open_device(dev);<br>
&gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0fclose(fp);<br>
&gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return ret;<br>
&gt; &gt;&gt; &gt; @@ -58,7 +69,7 @@ static int mtd_open(const char *mtd, i=
nt block)<br>
&gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0fc=
lose(fp);<br>
&gt; &gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; &gt;&gt; &gt;<br>
&gt; &gt;&gt; &gt; -=C2=A0 =C2=A0 =C2=A0return open(mtd, flags);<br>
&gt; &gt;&gt; &gt; +=C2=A0 =C2=A0 =C2=A0return mtd_open_device(mtd);<br>
&gt; &gt;&gt; &gt;=C2=A0 }<br>
&gt; &gt;&gt; &gt;<br>
&gt; &gt;&gt; &gt;=C2=A0 static void mtd_volume_close(struct mtd_volume *p)=
<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; This patch and related commit de80424f706682e8bba27c60bcd2a9c=
1b4a5e875<br>
&gt; &gt;&gt; break the jffs erase on my Archer a7 v5.<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0[=C2=A0 =C2=A011.787856] jffs2_scan_eraseb=
lock(): End of filesystem marker<br>
&gt; &gt;&gt; found at 0x10000<br>
&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0[=C2=A0 =C2=A011.795357] jffs2_build_files=
ystem(): unlocking the mtd device...<br>
&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0[=C2=A0 =C2=A011.795390] done.<br>
&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0[=C2=A0 =C2=A011.803771] jffs2_build_files=
ystem(): erasing all blocks after the<br>
&gt; &gt;&gt; end marker...<br>
&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0[=C2=A0 =C2=A011.803781] jffs2: Erase at 0=
x009e0000 failed immediately: -EROFS.<br>
&gt; &gt;&gt; Is the sector locked?<br>
&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 -------------<br>
&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0[=C2=A0 =C2=A013.138841] jffs2: Erase at 0=
x00010000 failed immediately: -EROFS.<br>
&gt; &gt;&gt; Is the sector locked?<br>
&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0[=C2=A0 =C2=A013.147188] done.<br>
&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0[=C2=A0 =C2=A013.149202] jffs2: notice: (4=
87) jffs2_build_xattr_subsystem:<br>
&gt; &gt;&gt; complete building xattr subsystem, 0 of xdatum (0 unchecked, =
0 orphan) and<br>
&gt; &gt;&gt; 0 of xref (0 .<br>
&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0[=C2=A0 =C2=A013.165896] mount_root: unabl=
e to set filesystem state<br>
&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0[=C2=A0 =C2=A013.171443] mount_root: switc=
hing to jffs2 overlay<br>
&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0[=C2=A0 =C2=A013.201867] overlayfs: failed=
 to resolve &#39;/overlay/upper&#39;: -2<br>
&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0[=C2=A0 =C2=A013.223939] mount_root: mount=
 failed:<br>
&gt; &gt;&gt; lowerdir=3D/,upperdir=3D/overlay/upper,workdir=3D/overlay/wor=
k, options No such<br>
&gt; &gt;&gt; device<br>
&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0[=C2=A0 =C2=A013.235145] mount_root: switc=
hing to jffs2 failed - fallback to<br>
&gt; &gt;&gt; ramoverlay<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; Verified by reverting de80424f7.<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; Steve<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt;<br>
<br>
&gt; _______________________________________________<br>
&gt; openwrt-devel mailing list<br>
&gt; <a href=3D"mailto:openwrt-devel@lists.openwrt.org" target=3D"_blank" r=
el=3D"noreferrer">openwrt-devel@lists.openwrt.org</a><br>
&gt; <a href=3D"https://lists.openwrt.org/mailman/listinfo/openwrt-devel" r=
el=3D"noreferrer noreferrer" target=3D"_blank">https://lists.openwrt.org/ma=
ilman/listinfo/openwrt-devel</a><br>
<br>
</blockquote></div></div>

--000000000000b853f4059ca6bd92--


--===============0045277291366973047==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0045277291366973047==--

