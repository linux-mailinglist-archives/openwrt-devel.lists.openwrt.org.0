Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE9FC84F9F
	for <lists+openwrt-devel@lfdr.de>; Wed,  7 Aug 2019 17:17:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CSMfnAh15qiLY2ZEmjuG1KSskz/G+zQtpIIzdRtkjnY=; b=XYBXjuJu9bpU99S72/fg/wtiD
	gxXKp3qOEkYxWx0xrrxA6Rok6P5VrlqEQhSKkmpH2f75fgRhXnI4002/OFbPNoO0elPn9vO5p0zSY
	NlvI7l9Fw6LrRrAXNBHCIFQZwdCOOV0WuxuIN4gRetCT5oHIz2Mo1htOQMu+5Mi7wZBOJyGZX+ZBN
	xvt6WH1irm+q2bIBzS1C6swdEaieHp1+mazeFdHHKgV92X0/3WAsIiDniPk9G8FKP9SOKNT+B1y5Q
	LAzn3flKrX2NLR9pP9t9cVtELZtUjiS+C8fCr9uuekm2o7kJ4hnrXDyS/NPokHQlj42eIuJBD7P9r
	MIXFUDXYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvNgX-0006Ch-JJ; Wed, 07 Aug 2019 15:17:05 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvNg3-0006CJ-VU
 for openwrt-devel@lists.openwrt.org; Wed, 07 Aug 2019 15:16:37 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue009
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1MjjGV-1iaiiD2cH5-00lDNS; Wed, 07
 Aug 2019 17:16:30 +0200
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Birger Koblitz'" <mail@birger-koblitz.de>,
 <openwrt-devel@lists.openwrt.org>
References: <1d85f1b0-7cdb-68d6-3535-72666de254c3@birger-koblitz.de>
In-Reply-To: <1d85f1b0-7cdb-68d6-3535-72666de254c3@birger-koblitz.de>
Date: Wed, 7 Aug 2019 17:16:30 +0200
Message-ID: <020001d54d33$1746bb80$45d43280$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQJIImTgqpVld/JhqOEe/G1Y6hA9nKYKICQQ
Content-Language: de
X-Provags-ID: V03:K1:fYsm9/l+zBYiFuMuY3yeipsP5KVBy+KovO+w6nyQb60OLTaC0ff
 PFZdRE5qEzOEizTWsuuo+FgiGavcQEWBPg+C/6pZiaG631EDbSCJC9NcRhOREuFXdFIYYCm
 TwXOFQTrO95si9TFcFp9SnBlvPYbIBsTdgJgUZKtQRHqrulfD8dSpjs0Zr4Og8e0MivnXi2
 8xqlTISGDOHQdeyrap0PA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:pugbsENeKsM=:r3guIf9FV2Fi2YzIFSAgSs
 BoxEzixU2Ou1pRs9MR90rkaYxg8596r62+DYOJkLlDZ4Tmm8ei9BQKUBYq8k5mT/sDyhdBFky
 0j083NE3GwWOgp88iLkSCvZPp2yXM+RiucUbztY2mUQRyHoR07k6B4Yjoebx8ei+pqSH7/sa2
 DcH2i6nsEamSEL0UswsG5++Wn5yoSMoU7Ncsl1TCtCG9gukgYjvVCvX9+hk3fT/AVc31NGB5W
 eWtjK0wvR6KwrpyZQ8ImQ9CYafQcprtpB6Rli/LMAqXi6PnvaAKgd/i7UFNLY/fHH45MLTC/h
 7jVPVWYG8D2Rs/7Z/vhQ7/7H6fDLIRipWVqdycdlKfJ+x7+lZjIVhCgh0JsQqglREOKn09HuB
 OQO8+wCjDiq1mf8VyaNiNS9cKyGvYxCUJTalVwM3JzjnyvPsT/EWTqv7QEwuOyNIGgsPJ0q8x
 6KKxocpNZElwKV5s3tsvJR4Zlj62jyc+eog2uIf86HObuvcUuDbA7f1FDwUQQ/qcbK7AxYwj/
 dpdbMzQKcRLrYDyTtHkF42xP18u0GJaDaWzCheXseudwAIphx5J1MJIqK6Vzl/8OdWA21dr0l
 1U5KgSnGlQgEEEUIiIY8/Ny67BYB6m7jSu7WNXBLHBL945RohPc708pBqkYoAZ6YqSa46N5Pf
 fTml8fSPPriZfel+CCAitjaqAm5nVzAF2HQBDgpUaMSEgvSl+25+2CTJuGVV2JqAtXvs2PgcQ
 o4cKM66PE9u+IUJc3QgzI8YA4c5QJWOiLtLiMxNKu+itRnmtAOrZgwrmWNU=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_081636_310743_E5E427B1 
X-CRM114-Status: UNSURE (   5.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: use gpio_hog instead of
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
Content-Type: multipart/mixed; boundary="===============8692528009461739720=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============8692528009461739720==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=yiVmkG83fNDPWq=-="

This is a multipart message in MIME format.

--=-=yiVmkG83fNDPWq=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> +=C2=A0=C2=A0=C2=A0 lna0 {

is there a scheme for proper names already?

While I do not have an opinion for lnaX, I'd prefer "usb_power"/"usb0_power=
" over just "usb"/"usb0".

> +=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 gpio-hog;
> +=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 line-name =3D "tp-link:ext:lna0";
> +=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 gpios =3D <18 GPIO_ACTIVE_HIGH>;

At least for lnaX, so far "0" (e.g. "gpios =3D <18 0>;") has been used inst=
ead of GPIO_ACTIVE_HIGH. Is there a preference for one of the options?

> +=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 output-high;
> +=C2=A0=C2=A0=C2=A0 };

Best

Adrian


--=-=yiVmkG83fNDPWq=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl1K60oACgkQoNyKO7qx
AnB46A/5AQLqztrFmBXtTttfh3ezMuZVPAVu2Ip01DloJZklbtrTGMLHbgjzmA3/
jo6HgcIejtZXeEYszTIVHxjNeYjAV+maEbU60H1fb0kmML1pC1E2/c2e+2cIBR6F
06W1VRmYWpEY4apIQDZP7A8wJXplrjY1yAVRkUHp8EeQmBnbZa/lB/gb0cEPd0OB
w+hwKL/t0pXWrKoGVS1pZWvbv/5ycyLnDLuG2c3I0MgGbakZvG9Bm73zL9bIoX4R
uIf2nX73phLCJYgvHjDb/ifGa11YDf+aH3L/sT1azZpgHY18j8qSM7wj98PTTCTS
fkk1siknJoAGyt7pQDD5Pg40yMT+zrBwF5uKAB70Tnlc+1tPETqwXvTdijGOLKwj
QC3NJzOV99onqh4gsEauiugwE5pqZJ92jHgTmC81iFtrxshZQwkHQoy7To8s5glN
XJ18iAc8yqnG7BxmLe4pW7z8tIdXW5hXmOFB0PJ0wBeHK0oKuGzItrcuxTCQ0+He
i3llXohlaLCIWawXrAb5x4eHeReLv6qVY0V4bQ9Sh3B6J4N8od248QU5YV1FmQwb
umFYnmKbDKUzDDOUBTZUyGvdw/NN0pscuCqXW7vWwILfRELNBt8xTI0UgQMJCBhb
aion/wFIsJWnaDpnmUlW0oxSFiu2Cdpx4V7xVi0ZdiIncP2QFJI=
=JrFx
-----END PGP SIGNATURE-----


--=-=yiVmkG83fNDPWq=-=--



--===============8692528009461739720==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8692528009461739720==--


