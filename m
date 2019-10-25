Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D896FE4982
	for <lists+openwrt-devel@lfdr.de>; Fri, 25 Oct 2019 13:13:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XP6IgE5AycrtIQamgLl3o0zjcEnyNkHscyZ03me3jtE=; b=DYdhDveWpt/z5RL+wDozy3zR1
	hKEMJhu+9sbEPMbhSHNPgzuTC8yXVcApseeuZ7+cMR5VWbNfwphPUf9qCiGDPm6S72MtFm37z6PGi
	awTJogXQJ5gbe7ACImA+kx3oH9+kLTWhzyw2xXyDT21GgD8vsK7gq8IRDoMZ3xUwPYREDygBZXbCy
	ke5C2YQU4i96hkCAHLympThMzSauVwmuDp04+zytA0t3e/mYZPb1BvP/YYhyvTPaFil+xMbDIUnkm
	pd9fe6WJPyjX9dYIi9+oLNdwlkKL3S9zOMhCXYYeBvzR4s034b38NzcxqlGXeWc0sfI30h/AMs4+2
	bD7X447AQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNxWl-0007zf-Hm; Fri, 25 Oct 2019 11:13:07 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNxWb-0007z0-Qf
 for openwrt-devel@lists.openwrt.org; Fri, 25 Oct 2019 11:12:59 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue011
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1M4K2r-1iOEdZ0n57-000K0J; Fri, 25
 Oct 2019 13:12:44 +0200
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Paul Fertser'" <fercerpav@gmail.com>
References: <20190813182540.w4ee64he6hkteahc@home.paul.comp>
 <20190828090924.14695-1-fercerpav@gmail.com>
 <038201d56043$9a8a7c20$cf9f7460$@adrianschmutzler.de>
 <20191025102308.GD1190@home.paul.comp>
In-Reply-To: <20191025102308.GD1190@home.paul.comp>
Date: Fri, 25 Oct 2019 13:12:43 +0200
Message-ID: <006a01d58b25$1fddd460$5f997d20$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQKIGW1Y570Qne3YyC7HKhrAHEQTGAFDBQKYAaEIG/0B+PjtraXfLrqw
X-Provags-ID: V03:K1:ngauX/xiWsu3EaownPe6rDb/xM7qDclJCMp7eniRyQW6H+GGIs0
 spAjpfCH3URo+kobquuHOajPJWuSRHObVIY3twi5+wEJWFLV7eQOa8pZ7fyfrhiTm4a8rI+
 +RMWFv6MqJtL069/RJEAL92PCcHNCOTxx18VITnwMb1hRPqjxmA8makmSLJOh2Tj/meJpKT
 k20EacQg+CcScPV11Br5Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:bMxS4JgXmZo=:OXT/VhEiUGk9U3z3f9Ryex
 hvgo0YY6J/M9wbDnfquaCaw7XVdzbEJcd7UCEeKxlW/8LRW7Pk2yFPxgzXhp2GoC0Qip7LQuE
 wNnhHcj+BNbYT/63yKgX1qGus+ItX7AwuRpVl3rPORsY8xd2t3fc3L7A7uK8B+qGaNg2BySnl
 24SjgD6Xlgt8xUKtNe63dtzpzqiZooSlWd7Nj/ytsTPa+1zd790V4Rmc8ZqgVzGO5BO/BUad3
 O/5gH99B9Pk0TpzwjYlBP6DjhD5ga1jBum/B5mriU3I8g3kggVzlZ+ovNwnZ4QsRDUPHrIwZp
 9+iZlAhpdjEU8ZoABzC/9wkCRSJ3GWYqBrGixnZM9e9LU/nkKqFopuYwitnAdf3o3QJRL8P0U
 WVXvh1kTKiuYshx1+Ztipcc+hLtzwNV47ALstTCg5Kw2uOQd+Ah0DDr5NGXK/UoHaGm51pvXZ
 wL4j5GOvsKHbmn3WB7QEBsuxtukHPrPN3MwtPouliY9klMMCVolyOP4fk/QwTqnvzYwuE0dhL
 DeO7pyYsXfUFUosWYohbtmKNaPg9MnhSTyHDZ0NCuAWjJGB3GjVOi/OlpcEFueznO+axxL8fM
 QoAATG1wiPPK2cuUTJ+8jFCypjkOlaIEUgeTL7MpI/4ApDE5/JFtqyp1vt8SWLdvy25/+3P10
 Cln+XNK0T4hSx8cPLZ+kxQx9SNg5kUBGmTSy9W3+ipaRCHKL2aOvv7NSKu4KAqYIMBCloNgmN
 ep/jFfPPcwmIa8/NZ3j7JnetWw721B52lanP4X1EaO05zSET6ellmDww/5zmdjr4Aby8C9gcg
 /Xj+z0lJNNVJ9mL62j/wy/BYQLyGHSpYuvYB53bsasAD/AJC7KedKD8k7r/g0eIbjU7boU57U
 aEvB+WcEU+Jl/gISPNJWdtJbVKZjDR5YqzP1iI8t4=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_041258_158449_D037154C 
X-CRM114-Status: UNSURE (   8.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH v3] ramips: add support for Xiaomi Mi
 Wi-Fi Router 3G v2
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
Cc: openwrt-devel@lists.openwrt.org, 'John Crispin' <john@phrozen.org>
Content-Type: multipart/mixed; boundary="===============2355672497929848818=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============2355672497929848818==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=oN++yrx/gQ71GM=-="

This is a multipart message in MIME format.

--=-=oN++yrx/gQ71GM=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> > > +	xiaomi,mir3g-v2)
> > > +		wan_mac=3D$(mtd_get_mac_binary factory 0xe006)
> > > +		;;
> >
> > This can be merged with elecom,wrc-1167ghbk2-s|\ etc.
>=20
> I rebased to current master and added label_mac (as per Roger's
> suggestion), and since I can not be sure about all the other devices,
> I left the dedicated section for this model.

Yes, merging only makes sense if cases are exactly the same. With the addit=
ion of label_mac (providing additional information), you cannot merge this =
anymore. (So, you did it correctly in v4).

Best

Adrian=20

--=-=oN++yrx/gQ71GM=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl2y2KgACgkQoNyKO7qx
AnCaig/+LOxPCa8Ld6qqeXgs02O63pn/c4LyB9LdMVjNjBK6dDOq7QONjPtcbgAS
u0/I5elB+okSZJOB0tEuzRGajifkURdl6Fg24BeZ2bjinFBGj2aWv7oU/oYwbXCM
XjV3BcUFI+7VgQGkWadDaFv3GVqTiNFQ5F/6OvdrQ4bPXzZlYiwQc6GVmSnX7Bb2
D3FPlzn7uRsKLOrf9P4LGxnt06fswboUv6kp9okcOAboXKnOCSgmsgi5rS1UujqT
49p7+HyBBZcqmVVO4g2SlwLtg+Y3XLqPzVcSDgl3f8GGU6M2No2+IxnMskvAVwWw
ZGdOIqaWqNu2NxPIFKOGpo3dWzgcydFI3FtdGd5bD/+IE7JVI4Y/Yn8sFFZZ7KyB
+zolBzKhbZfGnAIPUeTH8CttchV8I975vVGiBQXkSyKlH4rOFi6Q76NDvHwmr7aE
t16eMWhGw/A9A+xo09LJez5E9n6SDf+pyBvO+2X97Fl0E9PJal33CWg8EM/7JMaz
xVJ97+RWt9DV9u/hFegMNJsHaCaJZTKhWKIGCgUrgveVv4dZXtvB3yFH8WX/yH5S
+k3NSf8nqavSxAPwiV8NscSKETezfLL7iKVcOeaZcNI/GPMMu6y7MRQ7jwAHfwxy
5csGkTzms9dCobcV5bwdy0iQI1E71hANS6/+XMLdJEZOAFfLvwc=
=fW6Q
-----END PGP SIGNATURE-----


--=-=oN++yrx/gQ71GM=-=--



--===============2355672497929848818==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2355672497929848818==--


