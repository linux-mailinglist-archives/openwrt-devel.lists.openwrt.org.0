Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C92E62031B
	for <lists+openwrt-devel@lfdr.de>; Thu, 16 May 2019 12:05:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:References:In-Reply-To:Message-ID:Date:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=IBoKvoXOpKjin+CszOiSIodauCxZUAwmrrHtPZMDW3I=; b=qGi5KJQMZal5Ua2KkrHPENh22
	Fa2mi5hXuoAeGapOQzV4DwL4fGtPM4RxntQwbYQR+yChgLZVE3oRjVF7QS7QtVI7U3K4IERapwnVn
	mL5UIY7OF0mcYGdunjbmOUFqNLDfAxilCcFmLPrn/2xZTe+l3040Ezwep3qSS6GOXRjDB2Phhq5HF
	SZF+UU5l2jxSfBs4YqMQp7wuc1dHwzm8fXJFhtBFeo7lrfBLueABICBcxws3NS/UzoJL+VS0qp3hK
	928kJvDz92xwkcCbPXuFqh8+/vdIIXGIfRITQIYiHRQVgHOqaMux9IQyc0qR6x3U2CpRUkOYEagh8
	j9Z9nvNIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRDGR-0002KY-GZ; Thu, 16 May 2019 10:05:27 +0000
Received: from narfation.org ([79.140.41.39] helo=v3-1039.vlinux.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRDGJ-0002KD-1X
 for openwrt-devel@lists.openwrt.org; Thu, 16 May 2019 10:05:20 +0000
Received: from bentobox.localnet
 (p200300C5971012EA00000000000003ED.dip0.t-ipconnect.de
 [IPv6:2003:c5:9710:12ea::3ed])
 by v3-1039.vlinux.de (Postfix) with ESMTPSA id DCF2B1100B2;
 Thu, 16 May 2019 12:05:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org;
 s=20121; t=1558001114;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=iqBxAXgxjbnBeP8B3VltpglsSPMX9EKDOdQXGKnkLy8=;
 b=i4qaQxh0hAoQaQAoT1hK30QC4ASueB4yN0AX4PtpxoaIrRZqiwl+1q8q0VRcXs1cUVQshI
 3aOCbM6bNfHx3HiHKIlkGLRCbTZKp0ZBMYyw4aV8KueNM5k5sf37fagfk6NMSPRrhYitAJ
 IXcwjSD/Yi9e8kWeSp08gD4ns3EWp2Y=
From: Sven Eckelmann <sven@narfation.org>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 16 May 2019 12:05:05 +0200
Message-ID: <2125930.tk2zk5hxM4@bentobox>
In-Reply-To: <CAEdN=pF=kv5T=Fkui9f2fehsCB6wy1hHiyzZ=kqhOANJG002-A@mail.gmail.com>
References: <20190514134220.3626-1-be.dissent@gmail.com>
 <20190515155529.GA4938@meh.true.cz>
 <CAEdN=pF=kv5T=Fkui9f2fehsCB6wy1hHiyzZ=kqhOANJG002-A@mail.gmail.com>
MIME-Version: 1.0
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=narfation.org; 
 s=20121; t=1558001114;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=iqBxAXgxjbnBeP8B3VltpglsSPMX9EKDOdQXGKnkLy8=;
 b=14DHqM9lAZ7j3v967uTsSdaa4n+gtifb+6zEFeDXwLf7/zMzIrLMw2mwu/kbU5V+zng6mN
 9JH7mCDJ1hErbvobYDlr0ee8JK8Erh+8G6gbw2HW4DCQjms7G1BuWmKaATvWBnWXQrLUbY
 6snv3EvqfULP6rSyA40OEFZE8g1UkwQ=
ARC-Seal: i=1; s=20121; d=narfation.org; t=1558001114; a=rsa-sha256; cv=none;
 b=EhxviyhhkklH+/fVMIeqJycdFrDWj8joVfFbMgs7JMCZCcTtdR3nU87DCqeA7ovS0R93cH
 eM5YTrXcckT0En3lwDPDkoqbn4O0QyW6NaVFAAaDKv3l7Ytb1sPUAQx/oCA9ULFGcgEp6w
 o1ARwZHZF54GkzMwtCwh2+o04lUhOfs=
ARC-Authentication-Results: i=1; v3-1039.vlinux.de;
 auth=pass smtp.auth=sven smtp.mailfrom=sven@narfation.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_030519_529242_B015BE40 
X-CRM114-Status: UNSURE (   8.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [79.140.41.39 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH 2/4] ipq40xx: fix sleep clock
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: =?utf-8?B?0J/QsNCy0LXQuw==?= <be.dissent@gmail.com>,
 Petr =?utf-8?B?xaB0ZXRpYXI=?= <ynezz@true.cz>,
 Christian Lamparter <chunkeey@gmail.com>
Content-Type: multipart/mixed; boundary="===============1371757987561100853=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============1371757987561100853==
Content-Type: multipart/signed; boundary="nextPart2734749.ZixivuotfD"; micalg="pgp-sha512"; protocol="application/pgp-signature"

--nextPart2734749.ZixivuotfD
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"

On Wednesday, 15 May 2019 19:16:51 CEST =D0=9F=D0=B0=D0=B2=D0=B5=D0=BB wrot=
e:
[...]
> > Is there any particular reason why
> > this
> > shouldn't be sent upstream and then backported to OpenWrt?
> >
>=20
> There are no reasons why it shouldn't be sent upstream along with other
> patches. I hope to find someone with datasheet beforehand to verify the
> correct sleep clock rate.

But you will most likely find the persons with the datasheet when you try t=
o=20
upstream it via=20

* Andy Gross <agross@kernel.org> (maintainer:ARM/QUALCOMM SUPPORT)
* David Brown <david.brown@linaro.org> (maintainer:ARM/QUALCOMM SUPPORT)
* linux-arm-msm@vger.kernel.org (open list:ARM/QUALCOMM SUPPORT)

And maybe some of these guys also know how to find the ipq40xx clock=20
controller reference or hardware reference. Because I was only able to veri=
fy=20
for IPQ8072 that it had a 32.768 KHz sleep clock. But the=20
"IPQ4018/IPQ4028/IPQ4019/IPQ4029 Watchdog" document states that the watchdo=
g=20
runs on a 32 KHz sleep clock. And according to the device tree, the clock y=
ou=20
modified here is connected to the watchdog.

And for the device tree bindings:

* devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE =
TREE BINDINGS)
* Rob Herring <robh+dt@kernel.org> (maintainer:OPEN FIRMWARE AND FLATTENED =
DEVICE TREE BINDINGS)
* Mark Rutland <mark.rutland@arm.com> (maintainer:OPEN FIRMWARE AND FLATTEN=
ED DEVICE TREE BINDINGS)

> Besides upstreaming a patch takes time while the next openwrt release
> should be out soon I suppose.

Good reason to try to upstream it at the same time to OpenWrt and upstream =
:)
At least then we could get some feedback from upstream before OpenWrt ships=
=20
something which potentially has negative effects.

Kind regards,
	Sven
--nextPart2734749.ZixivuotfD
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEF10rh2Elc9zjMuACXYcKB8Eme0YFAlzdNdEACgkQXYcKB8Em
e0ZoLhAAh7U7c8RrKz1X5EiV/W5MDG9mK5ohaz9AmcHQE6HHdaudJiIJlbgd0UVL
mpuILx5qDleC7/IXz58hi3/hk8s6cVUBi6qQvyNUnsMz7ImDOd9kkltTnGiKQzRP
mcFKkRkViRY5kezfTLhAaggUeBe4/jro5mpyKsoQOY1X0QbBPcu1rKZfCzCDx1+Z
OjNGSVr1EsjJ1tcTr+lbkkkiGnSAPBaqlSmad/4lTAKdGOuP6rRc/wiLRvZz50hD
YvdRhYj3UyuO8XZEintrTQt2B/uc3VlSaLRr/nxm13wuOa2eUvb7ELu6ZUFm50gK
x+pzgrgeqKIuJUI635q5duLuDcftO8sLqXdLRvq1Tm3MSnNShgcApgrRyBNlhB2o
0qLMQdAF5/q/H25aRdmsXYBdMW4F6gCBrj6Kzn5CgsiWVNvq+X2uu7f9MYmr+eV1
LUWeXHjjvO9r9HHeM0vLC/934Jk0nbNTZHhTNjXWNKmKUF3FkRWtdOjLVHSvOdER
8Gs0jL6tKg/7KtqN2EFEsWFHQne7C+1+HuxauEFHu0SKGaXvLYoukch4FKHRTFG6
PqdPVw4OoY23Cb8w9UdwIpi/AbYwYqqwkoMfqeqnXAsxWy24f1hK6cL0NQG7VtiY
66qRWngiBwj9Rk3I31eKdYcnuHLcxu8SeH1kIiondZnqrZkZmSs=
=oA3G
-----END PGP SIGNATURE-----

--nextPart2734749.ZixivuotfD--





--===============1371757987561100853==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1371757987561100853==--




