Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24136F0358
	for <lists+openwrt-devel@lfdr.de>; Tue,  5 Nov 2019 17:44:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QavejQixCBPXNwN5sNWqfBfJKffiEExjX46z9vL0+20=; b=FPSm3VSAXCyjA8DqLLofnauTB
	QwcgnKioeM3ttcVE0g6vvVgnvbDiUqr2JwlxzOdT1fI6EgXoHvSBcuSP1duQ3bxfB6VmFGHr4BfEG
	pqSx1GjxkjbdyFYc1QxdjJq3nJv0hrtHeP2tUts/VBiP2UN1EcGcfTuYqtqK9PdeI7LQwuhVxbS0C
	x5+LQZ7bKvaHdG3JMjSTdB0qWvFQfO9aW9zOi96rVyV8EFR7cX3OCW3XFMIIUsE7pY7QzaEYz4PXV
	mPaoAdzqwuhiNgdZlHjQRC6BWHvrnvbb8u1dxQKCcvAn6PHHDNZW8SN5mihbXb1QKYvuQqTtaIhwR
	aHHzlYEZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS1wl-0007ch-4J; Tue, 05 Nov 2019 16:44:47 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS1wd-0007af-9J
 for openwrt-devel@lists.openwrt.org; Tue, 05 Nov 2019 16:44:41 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue106
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1MfqGN-1hz2v11HUP-00gKnJ; Tue, 05
 Nov 2019 17:44:22 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: =?utf-8?Q?'Bj=C3=B8rn_Mork'?= <bjorn@mork.no>
References: <20191105151202.4709-1-freifunk@adrianschmutzler.de>
 <87r22m1dp3.fsf@miraculix.mork.no>
In-Reply-To: <87r22m1dp3.fsf@miraculix.mork.no>
Date: Tue, 5 Nov 2019 17:44:21 +0100
Message-ID: <002e01d593f8$469ca0a0$d3d5e1e0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQIj3krgsob+/zBNRWrfaNFjtbIbyAGb/ndiptNTDUA=
X-Provags-ID: V03:K1:cW5rtKOH1kxPfn+JdMkopPbRfxUTeopJkYNpaMqRIbOpeYmmdaj
 F8/9oiyltjGUwUmmXrdrDQ8aEDruGm/+rkU4Kbo46LjsfYIrvksAkdgJ/EzrG52lmUSTV50
 /Wk5p1RjpmG/o8g5xdLIRG6iNALUHVj6trbPYFvjdM4RRjjGFQfOFygDxAWqg/sZSdp+pnH
 adQ8W+/FWsC2UPjKZkupg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:vjRr6wW1qfA=:EgW3cEUa/PWWWvyNdjK5gp
 W/Spler0wtQY37DZeEmWkGJTMmpzFNiX7d627gqHLCFXfdw7/gXZ8UnV/0o/DrAFeXRSAEP+U
 0C3gswknWJ4RkknSZktJyJ6+mc5NYU98Doc/CK9HLcbq/AJAfJNfPH/fBTp6Y2R7osRDnppld
 58qlEHq5/r36PbkQsZ4rONkr3cx6E28FlkDc63/59rvVmCXYG3q63UBgodkAeFZSiMtrabBAK
 4qpPbB4A3mXd7Z8qdlhYJyCVZOjCP/d1lyQdaTsslMK33Zmf1UohoIu4g402pA88FLFjcrDMQ
 ucHwjLdWUEYyztaNsIb6YttNrpl6OkW6ZlSDFxaKWYczpVpx91fZp7D6y+mum0YZ6m0lAk0OM
 w4UtMplJU3CpElO+ZCmHELQX3sJ7BDSmAhu4alGKyaz0IpwZTXiTuuBlOqgGuo7wgesmxDKA2
 WmtCqsS4YXmFexdMqyHGPz3mB5AG9MJynZlL6GJGzb3Xm2PduopzMnK6WnRyk20plUbbJFtyy
 nEqe0LAtZpOixRa8SJ1ZDZoJQi3vtjewWk8ZtZLpLTp+98sse3ZBfrZg34Pt/0I4VII3fK0UH
 ilOZQxim4awE0ITpMEQwMmB5DyIWAiAFqtBwEts2N8FXaX4hiuQlYc/n2BFwlTB/hVs7knZwY
 /CfbHPReHgkfnTgNQlctSi3DH9/fdiHuJzFGaxcC2nJ9npKcJAcEihTbWFX2lKCsCqGEGLcAb
 FtsXeHKQo2imxYk3eMpt3In7Ng0Wa1OEAUL62cmueLq9ObbxdlyqtoyuiNFlQPcdpGw/B5UrF
 BHO4dTKRKS7Vh4pT9TvxQQ4wwQ0aEv7CARNuwWLIyg/apgo42LV7cdoscphCDX3N9sOvb/F+Z
 IDvV2IxkGZjZXDUYQhDtsZWIE+3rI9yfSCQXvCO20=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_084439_619408_29FF6694 
X-CRM114-Status: GOOD (  11.40  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH v2] ath79: use gpio_hog instead of
 gpio-export
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
Cc: openwrt-devel@lists.openwrt.org, 'Birger Koblitz' <mail@birger-koblitz.de>
Content-Type: multipart/mixed; boundary="===============4724547191214256595=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============4724547191214256595==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=2e9JctPUyEAmQr=-="

This is a multipart message in MIME format.

--=-=2e9JctPUyEAmQr=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On
> Behalf Of Bj=C3=B8rn Mork
> Sent: Dienstag, 5. November 2019 17:38
> To: Adrian Schmutzler <freifunk@adrianschmutzler.de>
> Cc: openwrt-devel@lists.openwrt.org; Birger Koblitz <mail@birger-koblitz.=
de>
> Subject: Re: [OpenWrt-Devel] [PATCH v2] ath79: use gpio_hog instead of gp=
io-
> export
>=20
> Adrian Schmutzler <freifunk@adrianschmutzler.de> writes:
>=20
> > This patch converts all DTS files with settings that normally do
> > not need user interaction, e.g. power for external USB ports, to
> > gpio_hog.
>=20
> Wouldn't it be better to map these as fixed regulators?  Then you could
> eventually link them to the connected ports/controllers, and allow them
> to be automatically turned off when not needed.

I'm no expert for this stuff.

But, based on the discussion here, the opposite has been identified as supe=
rior solution (discussing nand subtarget):
https://github.com/openwrt/openwrt/pull/2184#discussion_r342136635

Despite, I remember a comment that fixed regulators won't be available on a=
ll SOCs...

Best

Adrian


>=20
>=20
> Bj=C3=B8rn
>=20
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=2e9JctPUyEAmQr=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl3BpuIACgkQoNyKO7qx
AnA07w/7BbRX+uay9dnFPi20wkUsug3WPLZm3hq/m/XU/cGUNj4pygXhYO+///T9
388mZtQCZtvKEkib60HuC7DNOwq8DSwbTb4Hi5n9z/V/GJFEhHRrKQCE0bSdDXfw
p0kyNSV9MpvU7q8YZTPtc+QtbWaN8usL2pcquhT2GAFcTigBcEeigRWolA6FviNd
FtP7gOaWw0P7ZN6am8huFengIDUrqHGUCNow34PGT1uvApFirtleMcXZuUqQhCXu
Cb/a5q/VAD1xe3t0ON91BYg4Acih8QsvLhNAgppxrkswKwAsjTCg8gIatAIO2XK+
YZchdSO9aAaqDuLjlTUL316GZeJU5ZGbizRIjcZ76BaBgRmevznoXYAKk8Tp9ZIq
t+53ewiQlqbd25qZj86zQb4ST8elkmQNFN0znyiMbGgS11xmuQHNhCZCDTSKeheN
lZNo9y9mzz5kTJp5YSLKOWH0L0gJgOPCUOmIHv3v8AyzdPoIjRV0lDFQiLUEM3AB
r/S8Y6O7zM4T48w5Y78mEZJuomlGhG0ZW/0E3z12fMdMbuY3yxxPPqTAwSyr3rSI
AFWp59F5qQna6+KEchqcI6dQ2FQUwE5f3oKl0WpxXLOVBoiMm/O4ZSIEI/j4aMrz
i5W9WfmWQ/2hyDmHAKRpLjxkXLIRiYlg1qckAXzP3wHhiy34lSc=
=TzK7
-----END PGP SIGNATURE-----


--=-=2e9JctPUyEAmQr=-=--



--===============4724547191214256595==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4724547191214256595==--


