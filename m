Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D5E3145287
	for <lists+openwrt-devel@lfdr.de>; Wed, 22 Jan 2020 11:25:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZoNag3H8Eg5tkOgBEpTZYPH79LP09NV+heGTE2XSsk8=; b=rr19qzTip6sszrafJBJXj78v1
	TASpnA3Gqu+LuLkat3brRWjItlu0seHnhAVj7TvCsXz0R3dJihsDGQW7nRKqFPWq7ZNTKeitBadzb
	4iRRMZ1zeJ0kcDQae7gNuflIqTv+ty7r+JqF1AmzMW3tvworcF+PKz0TU3nAz3uAok7zWkdkM2w43
	KihOa9JCl1kM/9Oyt4KkbWMbb9NK72IWpcpxkB8MwdmNEO/MuKkzEZwZ1hy7FxovEU9H6/H41Zv88
	gwPx6DmFbttncNMrE0++VjNp1KCdcR/5UXkK68I8/0Xy4Fqfo3iGY/IqYamtXgMfG++u2DbR0stKf
	FWNikarNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuDCn-0005IS-1U; Wed, 22 Jan 2020 10:25:49 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuDCV-0005Af-Mr
 for openwrt-devel@lists.openwrt.org; Wed, 22 Jan 2020 10:25:33 +0000
Received: by mail-vs1-xe44.google.com with SMTP id v12so3839421vsv.5
 for <openwrt-devel@lists.openwrt.org>; Wed, 22 Jan 2020 02:25:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0PMz96DT5mxap+QTJnSlR1HF9fAjwh7rPq6xz90OX28=;
 b=WJfrUxawg50auR3/WKF7kR3UFjE2zE3ji2/dRnx4h+/VEhSL9q1RlQH8UunQPMkSxa
 DOSmAeNuXnkfH9dmddHfwHcL786hRKEqK5Fzar1KQM7gG5SAh3r9pZX9AvthWudKwgUx
 30hbariiVZIwNX5k/aJWFzFxa8WhhRtrscyOFZFPJ9oFuOAL1Daf/pke/CR13RICgoA9
 8yfmxRunO67zUCIHKYMclQpPJ8AESd/JJOLuDlAHK/Gh1iJdf5/Aeub2ymy0j/JmF/xX
 DVujGjZcgNhEXcGa0DZEfFp+f6gynQYR9uyUR80XkRbtdxofeo9sqC/dqDm8N2Wcr9xC
 wRJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0PMz96DT5mxap+QTJnSlR1HF9fAjwh7rPq6xz90OX28=;
 b=uhV6XPsyLcDdhnD0aBmVbGUcI9+aqvLFmAG1Ytu9/INDud/Gwg+aqdrF5PqdTfMlDC
 tDpbqtzXXYOiG8p/PKEq/XFGQt4oco+c0zZjhbwm9mblFItqESeRcfEJsgkEJWQrzHBa
 l/VhUSbgJBE+ftFrczpf0jKJdSWHlhh063cV+d5bKKrpqIwU1pWG1KeHGRGH59E2URwn
 LEZO/iJ6Dank2DYUXHrtGO973Rp/vRu7Saf+Inkj9mCUWL59Vuk8Ob9LWbH8Hpie7NYK
 sTNgxDtQc4Wwc6myp2YLRsQKh556eRthLwVrteEJz3ice7thvqKbAhSAInhQPT9iMVmb
 8T1g==
X-Gm-Message-State: APjAAAVu2OE1SgBcV7GdqxaXCg+1m25lc94aMEgfNmjtPoAofqRqw2ov
 3iH+tNZa23xKH1hPJ1LDidpLzOMy8Ve1WWA5Ydc=
X-Google-Smtp-Source: APXvYqwBj/bCjklziyMXluSqsNX+Jgghxyv7vP9XlvAwLFbsx3Q+kKX2YmQH0qVMmxgrTNo2zIttQ3fBAI1rwS6sBIk=
X-Received: by 2002:a67:fd56:: with SMTP id g22mr2004662vsr.67.1579688729010; 
 Wed, 22 Jan 2020 02:25:29 -0800 (PST)
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
In-Reply-To: <20200122094051.GC1406@makrotopia.org>
From: Bruno Pena <brunompena@gmail.com>
Date: Wed, 22 Jan 2020 11:25:16 +0100
Message-ID: <CADwgkMWVL6g_=xkGyMbK4Xj-EEfx10tQYwtF1ZgFq6x-QnhhfA@mail.gmail.com>
To: Daniel Golle <daniel@makrotopia.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_022531_785655_D3784619 
X-CRM114-Status: GOOD (  17.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
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
 openwrt-devel@lists.openwrt.org, Steve Brown <sbrown@ewol.com>
Content-Type: multipart/mixed; boundary="===============3827815626719194339=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============3827815626719194339==
Content-Type: multipart/alternative; boundary="0000000000008c65e2059cb7f141"

--0000000000008c65e2059cb7f141
Content-Type: text/plain; charset="UTF-8"

Hi Daniel,

I was looking at the code and I think it's possible to relax the
enforcement of the parent access mode.
We can switch from a strict enforcement of the resulting mtd access mode,
to only enforcing the configured access mode (from the DTS file).

This can be achieved by changing from using mtd.flags to mtd.orig_flags:
    parts[i].mask_flags = !(slave->mtd.orig_flags & MTD_WRITEABLE) ?
MTD_WRITEABLE : 0;

With this change we no longer impact builds that do not have a read-only
firmware partition, but we can still enforce it for those that need it.
One thing to keep in mind is that the padding is still a requirement for
those devices which are building a read-only firmware partition!

Also please note this is not tested, these conclusions are only based on
the analysis of the kernel source code.

Best regards,
Bruno Pena


On Wed, Jan 22, 2020, 10:40 Daniel Golle <daniel@makrotopia.org> wrote:

> Hi Bruno,
>
> On Wed, Jan 22, 2020 at 10:22:01AM +0100, Bruno Pena wrote:
> > I would also like to take the opportunity to ask if it's worth pursuing
> > this patch if it means that all devices (using mtd) will require their
> > partitions to be padded to the blocksize?
>
> Please try not to introduce that padding, it's quite a big impact on
> all devices while only very few (wifi-only device) really need that
> change. Instead of wasting flash space by additional padding I'd rather
> want to see an OpenWrt-specific kernel-patch to allow a rw subpartition
> sitting inside an ro partition or just flatten the mtd partitioning.
> What I mean by flatteing is this:
>
> yout current approach:
> +-----------------------------+
> |          firmware           |
> +--------+--------------------+
> |        $       rootfs       |
> | kernel +------+-------------+
> |        $ rom  | rootfs_data |
> +--------+------+-------------+
>
> here rootfs_data inherigs the read-only from rootfs not being block-
> aligned. a better/flat approach would be:
> +-----------------------------+
> |          firmware           |
> +--------+------+-------------+
> | kernel $ rom  | rootfs_data |
> +--------+------+-------------+
>
> Now this would require major changes to our mtd-splitting subsystem
> which is quite a big amount of work...
>
>
> Cheers
>
>
> Daniel
>

--0000000000008c65e2059cb7f141
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div dir=3D"auto">Hi Daniel,</div><div dir=3D"auto"><br><=
/div><div dir=3D"auto">I was looking at the code and I think it&#39;s possi=
ble to relax the enforcement of the parent access mode.</div><div dir=3D"au=
to">We can switch from a strict enforcement of the resulting mtd access mod=
e, to only enforcing the configured access mode (from the DTS file).</div><=
div dir=3D"auto"><br></div><div dir=3D"auto">This can be achieved by changi=
ng from using mtd.flags to mtd.orig_flags:</div><div dir=3D"auto">=C2=A0 =
=C2=A0 parts[i].mask_flags =3D !(slave-&gt;mtd.orig_flags &amp; MTD_WRITEAB=
LE) ? MTD_WRITEABLE : 0;</div><div dir=3D"auto"><br></div><div dir=3D"auto"=
>With this change we no longer impact builds that do not have a read-only f=
irmware partition, but we can still enforce it for those that need it.</div=
><div dir=3D"auto">One thing to keep in mind is that the padding is still a=
 requirement for those devices which are building a read-only firmware part=
ition!</div><div dir=3D"auto"><br></div><div dir=3D"auto">Also please note =
this is not tested, these conclusions are only based on the analysis of the=
 kernel source code.</div><div dir=3D"auto"><br></div><div dir=3D"auto">Bes=
t regards,</div><div dir=3D"auto">Bruno Pena</div><div dir=3D"auto"><br></d=
iv></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_att=
r">On Wed, Jan 22, 2020, 10:40 Daniel Golle &lt;<a href=3D"mailto:daniel@ma=
krotopia.org">daniel@makrotopia.org</a>&gt; wrote:<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pa=
dding-left:1ex">Hi Bruno,<br>
<br>
On Wed, Jan 22, 2020 at 10:22:01AM +0100, Bruno Pena wrote:<br>
&gt; I would also like to take the opportunity to ask if it&#39;s worth pur=
suing<br>
&gt; this patch if it means that all devices (using mtd) will require their=
<br>
&gt; partitions to be padded to the blocksize?<br>
<br>
Please try not to introduce that padding, it&#39;s quite a big impact on<br=
>
all devices while only very few (wifi-only device) really need that<br>
change. Instead of wasting flash space by additional padding I&#39;d rather=
<br>
want to see an OpenWrt-specific kernel-patch to allow a rw subpartition<br>
sitting inside an ro partition or just flatten the mtd partitioning.<br>
What I mean by flatteing is this:<br>
<br>
yout current approach:<br>
+-----------------------------+<br>
|=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 firmware=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0|<br>
+--------+--------------------+ <br>
|=C2=A0 =C2=A0 =C2=A0 =C2=A0 $=C2=A0 =C2=A0 =C2=A0 =C2=A0rootfs=C2=A0 =C2=
=A0 =C2=A0 =C2=A0|<br>
| kernel +------+-------------+<br>
|=C2=A0 =C2=A0 =C2=A0 =C2=A0 $ rom=C2=A0 | rootfs_data |<br>
+--------+------+-------------+<br>
<br>
here rootfs_data inherigs the read-only from rootfs not being block-<br>
aligned. a better/flat approach would be:<br>
+-----------------------------+<br>
|=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 firmware=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0|<br>
+--------+------+-------------+ <br>
| kernel $ rom=C2=A0 | rootfs_data |<br>
+--------+------+-------------+<br>
<br>
Now this would require major changes to our mtd-splitting subsystem<br>
which is quite a big amount of work...<br>
<br>
<br>
Cheers<br>
<br>
<br>
Daniel<br>
</blockquote></div>

--0000000000008c65e2059cb7f141--


--===============3827815626719194339==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============3827815626719194339==--

