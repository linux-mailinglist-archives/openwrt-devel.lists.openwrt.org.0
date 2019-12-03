Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B070F10FCF2
	for <lists+openwrt-devel@lfdr.de>; Tue,  3 Dec 2019 12:55:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=P7kqQASNxatkFdtwmMdAHSOk0fGSHJuTP1dux1g89Ws=; b=J2SqQ2jk52YEbX8mlkt2xy/Wh
	6BiGkWqa5hOsIu7UatFysQ8D2WqXJ3q6SUJFiXLpTo1maFpWpi4KVjac7JtXr1pE2L/vpMTBW6CKz
	en2U17jYWkRaYVLwvnBDsTFFw3D8FmUJv/3OzhFJm9YM4yXtyMF8Ifq7rmi45EaRrf7taQ5DrbyQ2
	SgQOkYqvSAVWoxrVtHpcjLvg5Q3K00+oibMZ11/cizLPQMYF/GwSHpC0QmLfaeaBKKRFt2jNKffcG
	VTsE3nNG/3DW6uMNejROMqjasJ/7PCTV8kpa7GIKOuW9OwHg5zF0BtmdXeYtFvJhcS8RhuHZWqogD
	s6kyI1zWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic6m8-0006lu-Ta; Tue, 03 Dec 2019 11:55:28 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic6lu-0006kw-5A
 for openwrt-devel@lists.openwrt.org; Tue, 03 Dec 2019 11:55:15 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue012
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1MiMIY-1i5oTy1Ufu-00fRRI; Tue, 03
 Dec 2019 12:55:00 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Stijn Tintel'" <stijn@linux-ipv6.be>
References: <20191202232629.952385-1-stijn@linux-ipv6.be>
 <00f701d5a969$b9aa8cc0$2cffa640$@adrianschmutzler.de>
 <075e2d8a-191b-2993-2ee0-ebf432b4c2d6@linux-ipv6.be>
In-Reply-To: <075e2d8a-191b-2993-2ee0-ebf432b4c2d6@linux-ipv6.be>
Date: Tue, 3 Dec 2019 12:54:59 +0100
Message-ID: <00c701d5a9d0$7da69ae0$78f3d0a0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQGTXJoeUjZX+dYvmEdnKnqdj0FkCwKX8CklAfcicwCoCG5qoA==
X-Provags-ID: V03:K1:hi0RQdFL1m6M+H2UYJtdLtpjElFnee9oD0kHR+vq9bMxMpdE87M
 KTnjqbBrFAUyDYe2e7aWd46BkglPWULUmTMj5vIyHgVKB3gdVLc1dxt1/WoCCuw8w3p0oeA
 88G65dMq875FkM5inxA5vyoCnOKja90wDF02fuC+rafrmbiLqToa0EmQwzhXOIyfGzU97DL
 8IZuds+REVxQJ/Pkcdpng==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:awykb6LIRLU=:9oZqiH72MKYECvqdhRFwhj
 oMPLTYMuwJCp5CM1rOHAoX3aueXfT4+3HG/gBa2RP0xBVoiTQbhsIBirP6NBX58jF7g+JPWaK
 7lCsFpvmi2/z+oITBIuD4FOMvkPUINlZfVdEF6MAXHTGtPh7o51tH5GTcTOi7fXVYn68NBalm
 nvWwtFIwjlccVNlbUEL5cJnNP5P0s7Nk6Zut33QzJyyP/obeiI7Q3M8SIvzqZeWl9Y8rZTvRX
 K/pD5er/yUURiG2TRgGUPjGVj+SpFeGwzkAtGtsas4TtDRrUJ4uF+S8MUdAdQFj+ZdS8kXboi
 r+bvsPrj9Q1Vxpd02aeMDaPffUsfRAIRd4hnqaimp9PP5ZIz/qK2Z5ouf086mS8vjnYK7noXk
 giN9rYJ1IyztUywRoI9OnMhztOiLvs0Ep4xv6JOPBirQNuVCvMiq7zQVYLZwWtlFxZOLNmhuO
 EeGJjRoxhwND3WEj1XoCW2+DbMvodlG+0kQMC/B+hUY1+Nbfs4/cGjXQ/mghMLcm2DGni8GRX
 DVnAEpHhjoJouewLfGib0nTfLY1TMk2Txl5ZxQrAp/77C7BlhYH24WKMxFyBWYV0Tz10CMIkt
 srxJoOByb66yscI2b9GaIil0GORb9P2sKTlkFruwPIec1GQXkP4vIJ+rjdWcPsxOpwqVdW+JP
 KldrJ6e3V4Hrqmq6gQ4nnxLGt/f1b9F2E4ecQOwADEyxV+do/yl20zGptffQNyBYLBxDqqvqB
 leRKKrjnbg8n4qSYojzsVTp060kwkMSrat24G/uCe5ztX89FE0lovZA5IPWXVjymBj0a+cw4m
 SmJsucrTUoWPxauFjS7PbRjZcC+oxUPr2fwCrUtJd1V/Av0Fp2uvDe7PUOQro5gJb3EPg5Z35
 eFy7vK80mZ5eIgwkZhOd5Y3/+9Eul27vIvJolSP3c=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_035514_493541_516AA719 
X-CRM114-Status: UNSURE (   9.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add support for Ubiquiti
 LiteBeam AC Gen2
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
Cc: openwrt-devel@lists.openwrt.org, pozega.tomislav@gmail.com
Content-Type: multipart/mixed; boundary="===============9067143668157886112=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============9067143668157886112==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=IhAUx7qlRoBMWp=-=";
	micalg=pgp-sha256;
	protocol="application/pgp-signature"

This is a multipart message in MIME format.

--=-=IhAUx7qlRoBMWp=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

> >> +  IMAGE/factory.bin :=3D $$(IMAGE/sysupgrade.bin) | mkubntimage-split
> > Can we reuse the IMAGE/factory.bin from Device/ubnt here? The only thing
> missing compared to your line is append-metadata ...
>=20
> I used the same as with other ubnt-wa devices. I'm not really up to date
> on this metadata thing. Do we normally not include it in factory images?

I overlooked the definition for other ubnt-wa devices.

I'm also not sure whether we need the append-metadata, thus I wouldn't devi=
ate from the other ubnt-wa devices.

So, either keep your version or move IMAGE/factory.bin definition from the =
ubnt-wa devices to parent Device/ubnt-wa as it's the same for all ubnt-wa d=
evices.

Best

Adrian

>=20
> Thanks,
> Stijn
>=20

--=-=IhAUx7qlRoBMWp=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl3mTRMACgkQoNyKO7qx
AnB2ZhAAzVUnS5dh/UrGF9927HX3+Fc0qISLstTEK5nLgKpfTDfg23GGsm781Uns
y75HUzsNRvJ75kv/uZu0tRlKhsYtUhxHQlZUfFF4aixo5Z29ADcLz0zxqSS5W8ZD
rk4K3t2Wqnw1eRS9OJ8czZeDEvsCB6jZiIsQx/dkNfX7797eS95RbS/yxZSqA8AA
7lC4Uyw1dz64S3F306pvPguhc3BP4b08JJQJrFMGOIHWMPo7qzwMtZmQDvfn2BGq
PIDc5NNyCI+7teoVMcuv2HGBAb/j+vd8mtf92H0H78hXCMpS4jFMQMdNzf0GKKfz
oxH+UqNcggT5OGk4/ndpCUOMGFWgBDox1B7XJTE078KCGaM9vfswGhoNuHTPk76F
icjAdFE4eZ2v3a3WORBJGQ58ngiFS+XPRcyyjVtsn0dcQWuewHnlBWZP9CHGlTkd
jHgei+mDMIzPR6+gdAoOx/YMgyCfjnQO5Ui3azsztDy2dClDo1kCgaVSSqgwJIvb
GWl37zko4+ftzf7HrTto/CJUCiZUv5BZo4QFJHwbMpN4ajk6CccLyTKU5gwc06d7
4G6gVxnzuneO17Owqx9BYBIuBYXe32wiww4tl8ucMK+nkuCNkeorWaA+fSgpqQzu
yiBihJCq84Iit0onrD8kkaUuKLiOPdy9sXW+cWkku+SVwlI/yUs=
=2KlX
-----END PGP SIGNATURE-----


--=-=IhAUx7qlRoBMWp=-=--



--===============9067143668157886112==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============9067143668157886112==--


