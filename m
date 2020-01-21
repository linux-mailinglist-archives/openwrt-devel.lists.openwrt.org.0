Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59695143AE4
	for <lists+openwrt-devel@lfdr.de>; Tue, 21 Jan 2020 11:24:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nxf/S+IbrxgBFxYu3t/T3wE0wL0G15fLyfu0oKe8jX8=; b=EnvI8pKlGebgXfuoinIzu3noI
	qSUxGBPh7T4EA7Ma3jRoExmoGtxdr85de1pYaxXL8moRoQvImj1rhBz4dgUlzdKS/vNCTrxDq96SS
	vpqfQ1EcDRF6fo05lX8y+kQQmQIPO2c7kahSkGX7szLog4QGEF11TWz4nvpKOYK0XXRoD9ulheWJL
	WkeIoYghKxGyQ63bi3KY9EqtpszC6I2WiOnxaiPMsBcST0iFSiWl0tb6r0vnfDwurZf0vh5GBYzTh
	vyRtO4XH4AaUs5B/i5e8PTBz053yzv5fSZ1BsPvxRz2vcCdtWcLS7hNl9D9ETN5/137rGF8+Lzr1u
	EgwmIoeIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itqiJ-0003vY-2f; Tue, 21 Jan 2020 10:24:51 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itqi8-0003si-SO
 for openwrt-devel@lists.openwrt.org; Tue, 21 Jan 2020 10:24:42 +0000
Received: by mail-vs1-xe43.google.com with SMTP id t12so1365220vso.13
 for <openwrt-devel@lists.openwrt.org>; Tue, 21 Jan 2020 02:24:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=A5wF1DnV77KyIoCnmDZ+yyKH4AE6TvMBBAmDCCGkT4E=;
 b=XQFs8RHUZUvqG+7y8++TBjG8C0BR++IL5BRp8//2fOo0WwG9t8N3k5SwxVGyZqd4Wv
 o/j8UUejt63J33zrYT2VVpCNLmlY3cFHx3pLwM76fXolOA5LY3pd8kcBzBgSl5oMYWAS
 sMzv+wGYu9uYuS/l0RnNW0s7/COSIeZjtLNLKOE5cNlaSEF6cTCrYukY3sN/unuyKFTB
 sOQxtAWWW4KOX5s2g/OhefyP+pkzbPEn9f9kkoigh0Y/GGIAm/Ojy/pKkd1vvGF0FSWF
 0HxcbYjtk9J2uqLXFHCRuN3GpbrUHXD2znnKhru/Cl80RBZk9iXESs273vTDRlRpqkE1
 1SZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=A5wF1DnV77KyIoCnmDZ+yyKH4AE6TvMBBAmDCCGkT4E=;
 b=bhb/+2fthgBSJfJl5CIAUK1fe1x6v+2hFRni2Pmp8rpXjNEHqJiZBFU1F8Aw/k4gdz
 OtCBfF1dQOi3S8pmsKRTEMVQkkuFlMxLrQze28AWFSUeCkMkHkZzBjOK8clSeewnxAHm
 gzGH+esehtb2qCtrfkC8U3Wuke3XFDpC61rHOaF61sRuCNCHC137DtSkykRECFpVhUDT
 rLCkBIMUvW7v0pmYUHLQjC5z/0yEcVW0c/gBFbHtV2bRz/+0ojF9WJ0Ka8jn+FgT+LMK
 fhj9zz2F8gkJDIa48OYpb8P7BuGb2HriGsVUz3Z/qLifNXpuj3P+DpB0gmyp3YcaX+Hw
 ZHpQ==
X-Gm-Message-State: APjAAAV/kHqhcjthj9c3Sq5zwcXChmfUl9y5MclUrXD1biAzeAG0IwaR
 oJSCOCS6kUpCWBmV0uBycJk7D91VVXr+FxyY5ysvxA==
X-Google-Smtp-Source: APXvYqw/72II0eQ8ZDqTLD0SY1/YaHmGqQu8GYidn9XycimI9GVS2e5sWBzNO9f5zPhhWAznx3V3wEBnQqJrTOIEx9Y=
X-Received: by 2002:a67:fd56:: with SMTP id g22mr2099324vsr.67.1579602279179; 
 Tue, 21 Jan 2020 02:24:39 -0800 (PST)
MIME-Version: 1.0
References: <1578138728-1256-1-git-send-email-brunompena@gmail.com>
 <0cf18b56d78d859f8d7bf30bccc6ce0762d35302.camel@ewol.com>
 <CADwgkMUhZ4TrqhiJJPHLL0aVyxxvKfABwDz-4wv_QZ_cyZvj9A@mail.gmail.com>
In-Reply-To: <CADwgkMUhZ4TrqhiJJPHLL0aVyxxvKfABwDz-4wv_QZ_cyZvj9A@mail.gmail.com>
From: Bruno Pena <brunompena@gmail.com>
Date: Tue, 21 Jan 2020 11:24:28 +0100
Message-ID: <CADwgkMWzviYbcOcbY1R5C9gyY_WAwQpyyYW0eWptm369k-d7-Q@mail.gmail.com>
To: Steve Brown <sbrown@ewol.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_022440_923655_AADC364A 
X-CRM114-Status: GOOD (  19.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
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
Content-Type: multipart/mixed; boundary="===============7829424438712175927=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============7829424438712175927==
Content-Type: multipart/alternative; boundary="000000000000bcabfc059ca3d036"

--000000000000bcabfc059ca3d036
Content-Type: text/plain; charset="UTF-8"

Please also include the contents of "dmesg" and of the files
"/proc/cmdline" and "/proc/mtd".

Best regards,
Bruno Pena

On Tue, Jan 21, 2020, 11:01 Bruno Pena <brunompena@gmail.com> wrote:

> Hi Steve,
>
> These patches should only impact partitions that are marked as read only.
> Can you please provide more details about your configuration?
> (architecture, device profile, mtd layout, the mtd partition generating the
> error)
>
> Best regards,
> Bruno Pena
>
> On Tue, Jan 21, 2020, 10:51 Steve Brown <sbrown@ewol.com> wrote:
>
>> Hi Bruno,
>>
>> On Sat, 2020-01-04 at 12:52 +0100, Bruno Pena wrote:
>> > This patch enables fstools to open read-only MTD partitions, which in
>> > turn also enables OpenWrt to boot from read-only partitions.
>> >
>> > The use of read-only partitions is of special importance for WiFi-
>> > only
>> > devices, where a protected read-only recovery image can be used in
>> > case
>> > something goes wrong with the main firmware (eg. user gets locked out
>> > due to bad settings, flash of an unbootable dev firmware, etc).
>> >
>> > Signed-off-by: Bruno Pena <brunompena@gmail.com>
>> > ---
>> >  libfstools/mtd.c | 19 +++++++++++++++----
>> >  1 file changed, 15 insertions(+), 4 deletions(-)
>> >
>> > diff --git a/libfstools/mtd.c b/libfstools/mtd.c
>> > index 77c71ee..aae633e 100644
>> > --- a/libfstools/mtd.c
>> > +++ b/libfstools/mtd.c
>> > @@ -36,20 +36,31 @@ struct mtd_volume {
>> >
>> >  static struct driver mtd_driver;
>> >
>> > +static int mtd_open_device(const char *dev)
>> > +{
>> > +     int ret;
>> > +
>> > +     ret = open(dev, O_RDWR | O_SYNC);
>> > +     if (ret < 0)
>> > +             ret = open(dev, O_RDONLY);
>> > +
>> > +     return ret;
>> > +}
>> > +
>> >  static int mtd_open(const char *mtd, int block)
>> >  {
>> >       FILE *fp;
>> >       char dev[PATH_MAX];
>> > -     int i, ret, flags = O_RDWR | O_SYNC;
>> > +     int i, ret;
>> >
>> >       if ((fp = fopen("/proc/mtd", "r"))) {
>> >               while (fgets(dev, sizeof(dev), fp)) {
>> >                       if (sscanf(dev, "mtd%d:", &i) && strstr(dev,
>> > mtd)) {
>> >                               snprintf(dev, sizeof(dev),
>> > "/dev/mtd%s/%d", (block ? "block" : ""), i);
>> > -                             ret = open(dev, flags);
>> > +                             ret = mtd_open_device(dev);
>> >                               if (ret < 0) {
>> >                                       snprintf(dev, sizeof(dev),
>> > "/dev/mtd%s%d", (block ? "block" : ""), i);
>> > -                                     ret = open(dev, flags);
>> > +                                     ret = mtd_open_device(dev);
>> >                               }
>> >                               fclose(fp);
>> >                               return ret;
>> > @@ -58,7 +69,7 @@ static int mtd_open(const char *mtd, int block)
>> >               fclose(fp);
>> >       }
>> >
>> > -     return open(mtd, flags);
>> > +     return mtd_open_device(mtd);
>> >  }
>> >
>> >  static void mtd_volume_close(struct mtd_volume *p)
>>
>>
>> This patch and related commit de80424f706682e8bba27c60bcd2a9c1b4a5e875
>> break the jffs erase on my Archer a7 v5.
>>
>>     [   11.787856] jffs2_scan_eraseblock(): End of filesystem marker
>> found at 0x10000
>>     [   11.795357] jffs2_build_filesystem(): unlocking the mtd device...
>>     [   11.795390] done.
>>     [   11.803771] jffs2_build_filesystem(): erasing all blocks after the
>> end marker...
>>     [   11.803781] jffs2: Erase at 0x009e0000 failed immediately: -EROFS.
>> Is the sector locked?
>>          -------------
>>     [   13.138841] jffs2: Erase at 0x00010000 failed immediately: -EROFS.
>> Is the sector locked?
>>     [   13.147188] done.
>>     [   13.149202] jffs2: notice: (487) jffs2_build_xattr_subsystem:
>> complete building xattr subsystem, 0 of xdatum (0 unchecked, 0 orphan) and
>> 0 of xref (0 .
>>     [   13.165896] mount_root: unable to set filesystem state
>>     [   13.171443] mount_root: switching to jffs2 overlay
>>     [   13.201867] overlayfs: failed to resolve '/overlay/upper': -2
>>     [   13.223939] mount_root: mount failed:
>> lowerdir=/,upperdir=/overlay/upper,workdir=/overlay/work, options No such
>> device
>>     [   13.235145] mount_root: switching to jffs2 failed - fallback to
>> ramoverlay
>>
>> Verified by reverting de80424f7.
>>
>> Steve
>>
>>
>>

--000000000000bcabfc059ca3d036
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Please also include the contents of &quot;dmesg&quot; and=
 of the files &quot;/proc/cmdline&quot; and &quot;/proc/mtd&quot;.<div dir=
=3D"auto"><br></div><div dir=3D"auto">Best=C2=A0regards,</div><div dir=3D"a=
uto">Bruno Pena</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Tue, Jan 21, 2020, 11:01 Bruno Pena &lt;<a href=3D"=
mailto:brunompena@gmail.com">brunompena@gmail.com</a>&gt; wrote:<br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px=
 #ccc solid;padding-left:1ex"><div dir=3D"auto">Hi Steve,<div dir=3D"auto">=
<br></div><div dir=3D"auto">These patches should only impact partitions tha=
t are marked as read only.</div><div dir=3D"auto">Can you please provide mo=
re details about your configuration? (architecture, device profile, mtd lay=
out, the mtd partition generating the error)</div><div dir=3D"auto"><br></d=
iv><div dir=3D"auto">Best regards,</div><div dir=3D"auto">Bruno Pena</div><=
/div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">O=
n Tue, Jan 21, 2020, 10:51 Steve Brown &lt;<a href=3D"mailto:sbrown@ewol.co=
m" target=3D"_blank" rel=3D"noreferrer">sbrown@ewol.com</a>&gt; wrote:<br><=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-le=
ft:1px #ccc solid;padding-left:1ex">Hi Bruno,<br>
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
rel=3D"noreferrer noreferrer" target=3D"_blank">brunompena@gmail.com</a>&gt=
;<br>
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
</blockquote></div>

--000000000000bcabfc059ca3d036--


--===============7829424438712175927==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7829424438712175927==--

