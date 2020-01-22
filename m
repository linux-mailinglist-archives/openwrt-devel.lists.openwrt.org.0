Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2DE6145437
	for <lists+openwrt-devel@lfdr.de>; Wed, 22 Jan 2020 13:11:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XUVrEke64eF7T8uQoJ9smxhcWJNcF0aoqciOAIC5QqY=; b=LXl7XzacYGFreuOjUE3BGKae7
	PwiuQ1v3aQfCmuqkunPcX0MgZXNeS9N7VA+Uopl56WpkYlVyUVCvUqvHXeV5gnhHC10a/16YmMEyz
	fddfS/mzhJIEODmopWPrdx8ihZM19tULyNfdWG+XVuIkIF3g/TXiNpxOD9icEqdhb0qD365WYloTe
	SpY87oYb9RfPIEBGaTrPUcJ3vV195Wo7e/B4GjdUZrU3U+pQDdFTtAJgym9xRjcQbCauB+rAVfkZI
	izFVpPYQQ0RbQeumvaIAxr9ZwNe01S7QAU84nw5+uMnRGYHZPo1HLsoh/ymncJXC5AmmRzOUCcbcu
	LW1t5EWQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuEqx-000675-EN; Wed, 22 Jan 2020 12:11:23 +0000
Received: from mail-ua1-x941.google.com ([2607:f8b0:4864:20::941])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuEqo-00066N-J0
 for openwrt-devel@lists.openwrt.org; Wed, 22 Jan 2020 12:11:16 +0000
Received: by mail-ua1-x941.google.com with SMTP id u17so2292644uap.9
 for <openwrt-devel@lists.openwrt.org>; Wed, 22 Jan 2020 04:11:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QbiEOB3cY/nPUEVCu78W1YAvzVCym3j1ksy4DKiThpE=;
 b=kDFvLbLwLIit0fzeTCPPiMWlrRS6ueNz/J0ViJjiAeiR7aeVL5LxzQhQB9bhfkOaQ1
 lBugsQKFTLm9Cfx9CJ8qFMHJngMuapFOwCv9g1bc4NxxKUjxwJHcA4MClvElP0/lFKoG
 m/wQvh8cAEr9yBmg4JJFZKH0HHKSqzxi0Z0Cd66+KtQWdWFYdx4xvIIYACHOInwRPypJ
 d94z8u32cuPo9Yb7MBKNBzZcnX5YKNTPr1QuiM/jgQPYJWKKc/5pqRqjPFI7cjVyHqbQ
 wXhFrcSSTVvtulQ3kpY8L9GFYj8BMBlJ/bI793IralMy7NjFa8zDQHE54e6L2y12Yk8E
 wZJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QbiEOB3cY/nPUEVCu78W1YAvzVCym3j1ksy4DKiThpE=;
 b=piJh/qo0BuXni+3CSAckyTnBCQZdM6XYK+nNZBfctf6B/UpdHZppA2+P4ePbTZLIMk
 asqOXptRidKY3c/cOeAv08RsixTLRTt8iCS6gf4S378LzdmlNEhdIPois6CUOwMoYhiS
 wHW/2Zx12qJT1/5dj8FOlmuJuxMK6+TDwvTI5Shsq41EwvF2pMfuFBLdBpOYz/vRCX2N
 rTsbfEMGOHiojAkpLCkQcqL5urUH3IKyRNBP/wK8mz/AOreWDf0f/yl1oDatYb18xxDd
 c6EzI3f3Yg+IirCFh6u6A/W34ExNQTlKgeRTrXfQ2l8M/skFZD/2UtI/9BeplMV5j8Cs
 WKuw==
X-Gm-Message-State: APjAAAVSiO/of3HaVbABWAGYcv7T8clL2ggDa5T6QxI7hXC620NE2ye3
 20DafjCQXa3948bOyzWzPSfxcM9EoZ7fePUNDXc=
X-Google-Smtp-Source: APXvYqw7agjDek7T2D11RdSUeQxkx/TFDQZMRx7TNpVXvdaXcjwYdx5urMGCY+Pbb+P1kfUZ5QDB526XU3KRlDS3O84=
X-Received: by 2002:ab0:2745:: with SMTP id c5mr6259314uap.65.1579695072525;
 Wed, 22 Jan 2020 04:11:12 -0800 (PST)
MIME-Version: 1.0
References: <CADwgkMUhZ4TrqhiJJPHLL0aVyxxvKfABwDz-4wv_QZ_cyZvj9A@mail.gmail.com>
 <CADwgkMWzviYbcOcbY1R5C9gyY_WAwQpyyYW0eWptm369k-d7-Q@mail.gmail.com>
 <20200121104934.GA2465@makrotopia.org>
 <CADwgkMWQxN5WLeG9oyR0RdeahC+ZHeykLNGj0PfKtCvG81Qxxw@mail.gmail.com>
 <20200121185716.GL69327@meh.true.cz>
 <CADwgkMVVX_kX8w18AtGwhvwoY=MOW=_7chPScey-7T32+g1uDA@mail.gmail.com>
 <CADwgkMUy5--GR3du_-qj+m0Ag=fTA9pfOhDJO0DCbWcDtvHjZg@mail.gmail.com>
 <989a2a224ceac0368c713ecc537af005eb45f035.camel@ewol.com>
 <CADwgkMXLgcnJ0_KBCto+oS3o4PpQeQThH7qp=DwE0JWYAoz7eQ@mail.gmail.com>
 <CADwgkMXf2q3uuyTFrce2NL_Z3EGVW8OC9tVeh6MRxdiAMu7CvQ@mail.gmail.com>
 <20200122094051.GC1406@makrotopia.org>
 <CADwgkMWVL6g_=xkGyMbK4Xj-EEfx10tQYwtF1ZgFq6x-QnhhfA@mail.gmail.com>
 <CADwgkMXayQZ5f7sLiz0dEBv4CigJS=Gchsa2xw3OTSuUf7B7dQ@mail.gmail.com>
 <CADwgkMVz=EkUrD+55u4QqGw2b3tLH8ePh5nQPrrbnngnGwE3RQ@mail.gmail.com>
 <7d754443de8da7e27c944241aca5c804bd22e961.camel@ewol.com>
In-Reply-To: <7d754443de8da7e27c944241aca5c804bd22e961.camel@ewol.com>
From: Bruno Pena <brunompena@gmail.com>
Date: Wed, 22 Jan 2020 13:10:59 +0100
Message-ID: <CADwgkMXUsKVQfgUoXGFbw1HXFNtUY_ZPu=+i+2fd9y18rFLtEw@mail.gmail.com>
To: Steve Brown <sbrown@ewol.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_041114_664230_64BD2CA7 
X-CRM114-Status: GOOD (  33.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:941 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [brunompena[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 openwrt-devel@lists.openwrt.org, Daniel Golle <daniel@makrotopia.org>
Content-Type: multipart/mixed; boundary="===============0372851740990999433=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============0372851740990999433==
Content-Type: multipart/alternative; boundary="000000000000a6c32e059cb96bc6"

--000000000000a6c32e059cb96bc6
Content-Type: text/plain; charset="UTF-8"

Hi Steve,

You're fast!!
I highly appreciate your help on this issue and thank you one again for
testing this change.
The only thing left to test is the build of a full read-only firmware,
which I'll try today after work.
Assuming everything works fine I'll then submit a new patch on GitHub.

Best regards,
Bruno Pena

On Wed, Jan 22, 2020, 13:03 Steve Brown <sbrown@ewol.com> wrote:

> Hi Bruno,
>
> Your suggested fix works on my TPLink A7-V5.
>
> diff --git a/target/linux/ath79/image/common-tp-link.mk
> b/target/linux/ath79/image/common-tp-link.mk
> index 9048e8340c..8aa6a5a2be 100644
> --- a/target/linux/ath79/image/common-tp-link.mk
> +++ b/target/linux/ath79/image/common-tp-link.mk
> @@ -71,7 +71,7 @@ endef
>
>  define Device/tplink-safeloader-uimage
>    $(Device/tplink-safeloader)
> -  KERNEL := kernel-bin | append-dtb | lzma | uImageArcher lzma | pad-to
> 64k
> +  KERNEL := kernel-bin | append-dtb | lzma | uImageArcher lzma
>  endef
>
>  define Device/tplink-loader-okli
> diff --git
> a/target/linux/generic/hack-4.19/401-inherit-parent-partition-access-mode.patch
> b/target/linux/generic/hack-4.19/401-inherit-parent-partition-access-mode.patch
> index 61dd0369a6..85e958acff 100644
> ---
> a/target/linux/generic/hack-4.19/401-inherit-parent-partition-access-mode.patch
> +++
> b/target/linux/generic/hack-4.19/401-inherit-parent-partition-access-mode.patch
> @@ -36,7 +36,7 @@
>                 parts[i].offset += slave->offset;
>
>  +              /* adjust partition mask */
> -+              parts[i].mask_flags = !(slave->mtd.flags & MTD_WRITEABLE)
> ? MTD_WRITEABLE : 0;
> ++              parts[i].mask_flags = !(slave->mtd.orig_flags &
> MTD_WRITEABLE) ? MTD_WRITEABLE : 0;
>  +
>                 mtd_add_partition(slave->parent,
>                                   parts[i].name,
>
> Thanks,
> Steve
>
> On Wed, 2020-01-22 at 12:18 +0100, Bruno Pena wrote:
> > Hi Steve,
> >
> > Don't waste your time with the previous test request.
> > I'll try to test either today/tomorrow the "mtd.orig_flags" approach
> > on my device and - if successful - I'll then ask if you can try it on
> > your TP-Link.
> >
> > Thank you and best regards,
> > Bruno Pena
> >
> > On Wed, Jan 22, 2020, 11:34 Bruno Pena <brunompena@gmail.com> wrote:
> > > Just a small correction on the previous email, there's actually no
> > > padding requirement since everything will be read-only!
> > >
> > > On Wed, Jan 22, 2020, 11:25 Bruno Pena <brunompena@gmail.com>
> > > wrote:
> > > > Hi Daniel,
> > > >
> > > > I was looking at the code and I think it's possible to relax the
> > > > enforcement of the parent access mode.
> > > > We can switch from a strict enforcement of the resulting mtd
> > > > access mode, to only enforcing the configured access mode (from
> > > > the DTS file).
> > > >
> > > > This can be achieved by changing from using mtd.flags to
> > > > mtd.orig_flags:
> > > >     parts[i].mask_flags = !(slave->mtd.orig_flags &
> > > > MTD_WRITEABLE) ? MTD_WRITEABLE : 0;
> > > >
> > > > With this change we no longer impact builds that do not have a
> > > > read-only firmware partition, but we can still enforce it for
> > > > those that need it.
> > > > One thing to keep in mind is that the padding is still a
> > > > requirement for those devices which are building a read-only
> > > > firmware partition!
> > > >
> > > > Also please note this is not tested, these conclusions are only
> > > > based on the analysis of the kernel source code.
> > > >
> > > > Best regards,
> > > > Bruno Pena
> > > >
> > > >
> > > > On Wed, Jan 22, 2020, 10:40 Daniel Golle <daniel@makrotopia.org>
> > > > wrote:
> > > > > Hi Bruno,
> > > > >
> > > > > On Wed, Jan 22, 2020 at 10:22:01AM +0100, Bruno Pena wrote:
> > > > > > I would also like to take the opportunity to ask if it's
> > > > > worth pursuing
> > > > > > this patch if it means that all devices (using mtd) will
> > > > > require their
> > > > > > partitions to be padded to the blocksize?
> > > > >
> > > > > Please try not to introduce that padding, it's quite a big
> > > > > impact on
> > > > > all devices while only very few (wifi-only device) really need
> > > > > that
> > > > > change. Instead of wasting flash space by additional padding
> > > > > I'd rather
> > > > > want to see an OpenWrt-specific kernel-patch to allow a rw
> > > > > subpartition
> > > > > sitting inside an ro partition or just flatten the mtd
> > > > > partitioning.
> > > > > What I mean by flatteing is this:
> > > > >
> > > > > yout current approach:
> > > > > +-----------------------------+
> > > > > |          firmware           |
> > > > > +--------+--------------------+
> > > > > |        $       rootfs       |
> > > > > | kernel +------+-------------+
> > > > > |        $ rom  | rootfs_data |
> > > > > +--------+------+-------------+
> > > > >
> > > > > here rootfs_data inherigs the read-only from rootfs not being
> > > > > block-
> > > > > aligned. a better/flat approach would be:
> > > > > +-----------------------------+
> > > > > |          firmware           |
> > > > > +--------+------+-------------+
> > > > > | kernel $ rom  | rootfs_data |
> > > > > +--------+------+-------------+
> > > > >
> > > > > Now this would require major changes to our mtd-splitting
> > > > > subsystem
> > > > > which is quite a big amount of work...
> > > > >
> > > > >
> > > > > Cheers
> > > > >
> > > > >
> > > > > Daniel
>
>

--000000000000a6c32e059cb96bc6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div dir=3D"auto">Hi Steve,=C2=A0</div><div dir=3D"auto">=
<br></div>You&#39;re fast!!<div dir=3D"auto">I highly appreciate your help =
on this issue and thank you one again for testing this change.</div><div di=
r=3D"auto">The only thing left to test is the build of a full read-only fir=
mware, which I&#39;ll try today after=C2=A0work.<br></div><div dir=3D"auto"=
>Assuming everything works fine I&#39;ll then submit a new patch on GitHub.=
</div><div dir=3D"auto"><br></div><div dir=3D"auto">Best regards,</div><div=
 dir=3D"auto">Bruno Pena</div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Wed, Jan 22, 2020, 13:03 Steve Brown &lt;<=
a href=3D"mailto:sbrown@ewol.com">sbrown@ewol.com</a>&gt; wrote:<br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px=
 #ccc solid;padding-left:1ex">Hi Bruno,<br>
<br>
Your suggested fix works on my TPLink A7-V5.<br>
<br>
diff --git a/target/linux/ath79/image/<a href=3D"http://common-tp-link.mk" =
rel=3D"noreferrer noreferrer" target=3D"_blank">common-tp-link.mk</a> b/tar=
get/linux/ath79/image/<a href=3D"http://common-tp-link.mk" rel=3D"noreferre=
r noreferrer" target=3D"_blank">common-tp-link.mk</a><br>
index 9048e8340c..8aa6a5a2be 100644<br>
--- a/target/linux/ath79/image/<a href=3D"http://common-tp-link.mk" rel=3D"=
noreferrer noreferrer" target=3D"_blank">common-tp-link.mk</a><br>
+++ b/target/linux/ath79/image/<a href=3D"http://common-tp-link.mk" rel=3D"=
noreferrer noreferrer" target=3D"_blank">common-tp-link.mk</a><br>
@@ -71,7 +71,7 @@ endef<br>
<br>
=C2=A0define Device/tplink-safeloader-uimage<br>
=C2=A0 =C2=A0$(Device/tplink-safeloader)<br>
-=C2=A0 KERNEL :=3D kernel-bin | append-dtb | lzma | uImageArcher lzma | pa=
d-to 64k<br>
+=C2=A0 KERNEL :=3D kernel-bin | append-dtb | lzma | uImageArcher lzma<br>
=C2=A0endef<br>
<br>
=C2=A0define Device/tplink-loader-okli<br>
diff --git a/target/linux/generic/hack-4.19/401-inherit-parent-partition-ac=
cess-mode.patch b/target/linux/generic/hack-4.19/401-inherit-parent-partiti=
on-access-mode.patch<br>
index 61dd0369a6..85e958acff 100644<br>
--- a/target/linux/generic/hack-4.19/401-inherit-parent-partition-access-mo=
de.patch<br>
+++ b/target/linux/generic/hack-4.19/401-inherit-parent-partition-access-mo=
de.patch<br>
@@ -36,7 +36,7 @@<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 parts[i].offset +=
=3D slave-&gt;offset;<br>
<br>
=C2=A0+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* adjust partition=
 mask */<br>
-+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 parts[i].mask_flags =3D =
!(slave-&gt;mtd.flags &amp; MTD_WRITEABLE) ? MTD_WRITEABLE : 0;<br>
++=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 parts[i].mask_flags =3D =
!(slave-&gt;mtd.orig_flags &amp; MTD_WRITEABLE) ? MTD_WRITEABLE : 0;<br>
=C2=A0+<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 mtd_add_partition(s=
lave-&gt;parent,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 parts[i].name,<br>
<br>
Thanks,<br>
Steve<br>
<br>
On Wed, 2020-01-22 at 12:18 +0100, Bruno Pena wrote:<br>
&gt; Hi Steve,<br>
&gt; <br>
&gt; Don&#39;t waste your time with the previous test request.<br>
&gt; I&#39;ll try to test either today/tomorrow the &quot;mtd.orig_flags&qu=
ot; approach<br>
&gt; on my device and - if successful - I&#39;ll then ask if you can try it=
 on<br>
&gt; your TP-Link.<br>
&gt; <br>
&gt; Thank you and best regards,<br>
&gt; Bruno Pena<br>
&gt; <br>
&gt; On Wed, Jan 22, 2020, 11:34 Bruno Pena &lt;<a href=3D"mailto:brunompen=
a@gmail.com" target=3D"_blank" rel=3D"noreferrer">brunompena@gmail.com</a>&=
gt; wrote:<br>
&gt; &gt; Just a small correction on the previous email, there&#39;s actual=
ly no<br>
&gt; &gt; padding requirement since everything will be read-only!<br>
&gt; &gt; <br>
&gt; &gt; On Wed, Jan 22, 2020, 11:25 Bruno Pena &lt;<a href=3D"mailto:brun=
ompena@gmail.com" target=3D"_blank" rel=3D"noreferrer">brunompena@gmail.com=
</a>&gt;<br>
&gt; &gt; wrote:<br>
&gt; &gt; &gt; Hi Daniel,<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; I was looking at the code and I think it&#39;s possible to r=
elax the<br>
&gt; &gt; &gt; enforcement of the parent access mode.<br>
&gt; &gt; &gt; We can switch from a strict enforcement of the resulting mtd=
<br>
&gt; &gt; &gt; access mode, to only enforcing the configured access mode (f=
rom<br>
&gt; &gt; &gt; the DTS file).<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; This can be achieved by changing from using mtd.flags to<br>
&gt; &gt; &gt; mtd.orig_flags:<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0parts[i].mask_flags =3D !(slave-&gt;mtd.o=
rig_flags &amp;<br>
&gt; &gt; &gt; MTD_WRITEABLE) ? MTD_WRITEABLE : 0;<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; With this change we no longer impact builds that do not have=
 a<br>
&gt; &gt; &gt; read-only firmware partition, but we can still enforce it fo=
r<br>
&gt; &gt; &gt; those that need it.<br>
&gt; &gt; &gt; One thing to keep in mind is that the padding is still a<br>
&gt; &gt; &gt; requirement for those devices which are building a read-only=
<br>
&gt; &gt; &gt; firmware partition!<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; Also please note this is not tested, these conclusions are o=
nly<br>
&gt; &gt; &gt; based on the analysis of the kernel source code.<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; Best regards,<br>
&gt; &gt; &gt; Bruno Pena<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; On Wed, Jan 22, 2020, 10:40 Daniel Golle &lt;<a href=3D"mail=
to:daniel@makrotopia.org" target=3D"_blank" rel=3D"noreferrer">daniel@makro=
topia.org</a>&gt;<br>
&gt; &gt; &gt; wrote:<br>
&gt; &gt; &gt; &gt; Hi Bruno,<br>
&gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; On Wed, Jan 22, 2020 at 10:22:01AM +0100, Bruno Pena wr=
ote:<br>
&gt; &gt; &gt; &gt; &gt; I would also like to take the opportunity to ask i=
f it&#39;s<br>
&gt; &gt; &gt; &gt; worth pursuing<br>
&gt; &gt; &gt; &gt; &gt; this patch if it means that all devices (using mtd=
) will<br>
&gt; &gt; &gt; &gt; require their<br>
&gt; &gt; &gt; &gt; &gt; partitions to be padded to the blocksize?<br>
&gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; Please try not to introduce that padding, it&#39;s quit=
e a big<br>
&gt; &gt; &gt; &gt; impact on<br>
&gt; &gt; &gt; &gt; all devices while only very few (wifi-only device) real=
ly need<br>
&gt; &gt; &gt; &gt; that<br>
&gt; &gt; &gt; &gt; change. Instead of wasting flash space by additional pa=
dding<br>
&gt; &gt; &gt; &gt; I&#39;d rather<br>
&gt; &gt; &gt; &gt; want to see an OpenWrt-specific kernel-patch to allow a=
 rw<br>
&gt; &gt; &gt; &gt; subpartition<br>
&gt; &gt; &gt; &gt; sitting inside an ro partition or just flatten the mtd<=
br>
&gt; &gt; &gt; &gt; partitioning.<br>
&gt; &gt; &gt; &gt; What I mean by flatteing is this:<br>
&gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; yout current approach:<br>
&gt; &gt; &gt; &gt; +-----------------------------+<br>
&gt; &gt; &gt; &gt; |=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 firmware=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|<br>
&gt; &gt; &gt; &gt; +--------+--------------------+ <br>
&gt; &gt; &gt; &gt; |=C2=A0 =C2=A0 =C2=A0 =C2=A0 $=C2=A0 =C2=A0 =C2=A0 =C2=
=A0rootfs=C2=A0 =C2=A0 =C2=A0 =C2=A0|<br>
&gt; &gt; &gt; &gt; | kernel +------+-------------+<br>
&gt; &gt; &gt; &gt; |=C2=A0 =C2=A0 =C2=A0 =C2=A0 $ rom=C2=A0 | rootfs_data =
|<br>
&gt; &gt; &gt; &gt; +--------+------+-------------+<br>
&gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; here rootfs_data inherigs the read-only from rootfs not=
 being<br>
&gt; &gt; &gt; &gt; block-<br>
&gt; &gt; &gt; &gt; aligned. a better/flat approach would be:<br>
&gt; &gt; &gt; &gt; +-----------------------------+<br>
&gt; &gt; &gt; &gt; |=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 firmware=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|<br>
&gt; &gt; &gt; &gt; +--------+------+-------------+ <br>
&gt; &gt; &gt; &gt; | kernel $ rom=C2=A0 | rootfs_data |<br>
&gt; &gt; &gt; &gt; +--------+------+-------------+<br>
&gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; Now this would require major changes to our mtd-splitti=
ng<br>
&gt; &gt; &gt; &gt; subsystem<br>
&gt; &gt; &gt; &gt; which is quite a big amount of work...<br>
&gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; Cheers<br>
&gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; Daniel<br>
<br>
</blockquote></div>

--000000000000a6c32e059cb96bc6--


--===============0372851740990999433==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0372851740990999433==--

