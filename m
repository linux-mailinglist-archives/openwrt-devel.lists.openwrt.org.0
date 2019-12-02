Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 552CA10F384
	for <lists+openwrt-devel@lfdr.de>; Tue,  3 Dec 2019 00:39:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KD9zHT/S4PZLhT/KM4kNVvadpysnuv3UfbxQ6BshJsk=; b=H8pAuyj9iVO1psoJlz/GIjH5v
	qcFJQWTV3FweBPbW/BU97rRgdbV00OKaUzmlJfC5JN/oG7ELkJq3katCR5I6j/e4eDcvJxpDW9kSw
	sanpmW6O+DJCxGAiBtlmjFkz8TID59lwV4cQXEhO9KOm5KQF8q51/86+ODoOP9v6jxleC92ZUlU3J
	Uijogm2CW+rWG9j9eHdj0L1uyelzQONDsJKRULeq1wxcpk/Df3UTB1F6GY9RxpblyXy8iDjpmxGg1
	sXbrpdHcjD7D8js0t3XdRJwgBf3cHPQlSkmvM9ll8s4pPDfAZ6XgnD9FjRiB8FbmtzfsCpQp05Qef
	leUZxBhvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibvI5-0006Uo-Ny; Mon, 02 Dec 2019 23:39:41 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibvHy-0006TZ-Qr
 for openwrt-devel@lists.openwrt.org; Mon, 02 Dec 2019 23:39:36 +0000
Received: from desktop ([188.193.231.72]) by mrelayeu.kundenserver.de
 (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1Mv3I0-1hl3cI3cHY-00qxSu; Tue, 03 Dec 2019 00:39:22 +0100
From: <mail@adrianschmutzler.de>
To: "'Stijn Tintel'" <stijn@linux-ipv6.be>, <openwrt-devel@lists.openwrt.org>
References: <20191202232629.952385-1-stijn@linux-ipv6.be>
In-Reply-To: <20191202232629.952385-1-stijn@linux-ipv6.be>
Date: Tue, 3 Dec 2019 00:39:22 +0100
Message-ID: <00f701d5a969$b9aa8cc0$2cffa640$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQGTXJoeUjZX+dYvmEdnKnqdj0FkC6gsGDwg
Content-Language: de
MIME-Version: 1.0
X-Provags-ID: V03:K1:M3y1NaLV2f6KsMrRt68pl8V9sAOifKCFG4PDqLC4MYgbFNrU8eI
 UqjY3h9AkjImNbftV0bDEnW1DtBg9pRm6rIOBEDjaWxysXEuqzgJJx8I1jPh9lG1fmL7BVj
 BnOmwVf3qaZLJovfjbK/3loPNqmRkoEhiakcnkliY7rVrR1wz2u2eAo32gDbEAbgYSvLVJF
 ORHyhXleqONVtrqa49mQA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:KQhQovtlj9I=:4YQpAAktzwqMzs+jf4hgZG
 XahHjs9VqSnaNc9EGWi/1OlFaX9lJU65tzWk10g3TmQdyPqWAeFj6oMdjtZRpqLgYDEztxnIr
 rWfOt6Dugj2Ym3ZV156L4emN9HRlKeoTYASIH7J0fSHRytSCixbmRe+4h9zuXfG+gXx7oy8yU
 rKZ8EACNz8ezeQpLhnFklkRAJRtUWHwekJ5tIlKT062zwT5mOaN0/tWos7rEsp4WriB0P4l2Y
 KpE/UPhOolahU7Za/sK9VQy0atymjgHMxCqnk2D2fbPhQtIbgdiZUEqATIr/tV7Up6fNE7wpx
 lsWSKWmLJ+/eslLaTM3k6PVbHg0fYtO4t6ytZS2tZNobUPnQ24GGC1VSpm7Pg0l0ypd5KqiqA
 8c8l48DLHMbt6Oc1C9EB6Idkqu26wYrCKmEc5K12RzgNx+00jsqAK3YGQJQlecl4yLrRl+/JA
 6RS8Ds4V9z3lJl4YMXBPap/meM7Czj/QtNA1H84KO2/rD9NZ+9Z0UujE6y9NVOgvsTGjTRXQ9
 FdNhIu++O2Yta5jYRsR2rTEshi+U726bPqL3MHq+un5CO3w07dTYY/aTDc1Xd3eSC1NhJ82lT
 ais696fDddUyaXElgDV10OG6AUEghJ0yF4cH38vf8LNip0b9n/4IAZz/1ohiORhuZvTwQK5nG
 yhFBo6B00eV7NpoiFLdDA7rCux0gsy3liT0bQKuItOHOEdDKphgi7lI9SFrkFUS/UULQLXO69
 OHxDhGIlOSYornwVWGTWlGEtz5rdWbIAuThR6pULfixBmustsO3MmFmVKlApRn8sgGv0QLy7P
 07t+zCsAkIjez6yyRtf8qtWjLoWarjVGXfdBr6WPhbXPhGxwFO/YZ/x+Uya8CZCIXgQdtt6Z0
 pKeVMfZ+LAJP2DzYTAV/ICXctA2TxSCvtFqw28wj4=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_153935_165659_37A46E0B 
X-CRM114-Status: UNSURE (   6.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
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
Cc: pozega.tomislav@gmail.com
Content-Type: multipart/mixed; boundary="===============2543474416738506394=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============2543474416738506394==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	boundary="=-=/YdUN05nZC8cB4=-=";
	micalg=pgp-sha256

This is a multipart message in MIME format.

--=-=/YdUN05nZC8cB4=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Stijn,

does the device have a MAC address label or imprint on the box?

[...]

> +define Device/ubnt_litebeam-ac-gen2
> +  $(Device/ubnt-wa)
> +  DEVICE_TITLE :=3D Ubiquiti LiteBeam AC Gen2

DEVICE_TITLE has been replaced by DEVICE_VENDOR, DEVICE_MODEL and DEVICE_VA=
RIANT. In your case, I'd choose:

DEVICE_MODEL :=3D LiteBeam AC
DEVICE_VARIANT :=3D Gen2

DEVICE_VENDOR is inherited from Device/ubnt.

> +  DEVICE_PACKAGES :=3D kmod-ath10k-ct ath10k-firmware-qca988x-ct
> +  IMAGE_SIZE :=3D 15744k

IMAGE_SIZE can be dropped here, it is inherited from Device/ubnt-wa.

> +  IMAGE/factory.bin :=3D $$(IMAGE/sysupgrade.bin) | mkubntimage-split

Can we reuse the IMAGE/factory.bin from Device/ubnt here? The only thing mi=
ssing compared to your line is append-metadata ...

Best

Adrian=20

--=-=/YdUN05nZC8cB4=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl3loKQACgkQoNyKO7qx
AnA/5xAArKemKsVQpGf6Y6EaePbrpbC9sbeCn6fFd6kincmxDJ2bgfpmUIko889v
zhc2ef/0nhhug3BsolKIlApVKo5JjLeo1Q3ZkntsbAOm7EvXnGp8Aloe4l7rvDTe
z+eRuuJdx6VH9kWqAzgYuUFZ6999q2cZDNG5vO5o5aNWms9A5AtVBSPwdvgsECwk
gEjE0/2Dui1ZPI+4R2c1U+FaYW3967DIffj1fc0KAKshaBD4oBlzLIlTG3+sOUfF
L1IfvFvtzaI140OoGsgsZqVynJ9yMQLmYoot38BvoxlXsP3gp39H7RJxQ2C45S9L
NeM/54PVWX3KlGToPVDU+W/S8YgldGenMCidqsPCjDXVUZGwffvphuj+SSYc/s2F
Hk/lqh1JAI9MxGPZ0Vh09nbT+NGgfgd5u7+8L6cRoP2GF1k4Vy8rQ/2Cn+TDv/f4
yvhQDRoh3pO+SIahWi7+oSgEDoyT8VgZUxxVF06DHRbI8jxK8ByugQJNqbUquVId
M3FfBNTw9SmzoKoH2OFHWwJQFq+Jnzd9iC0mV7DWNJs4d26s1/vA2dekfpSNiGLS
AUdpfCAj8kZZHpgR6/X/F/3hJtoUww2PFWx+8kJqd7rWRf2rABKlMRat3/a3/UoF
sEdFHv17BAatQN6DoNflxuwggW5Pgmar1FFaF9JosBu2+c0vnrA=
=YIOr
-----END PGP SIGNATURE-----


--=-=/YdUN05nZC8cB4=-=--



--===============2543474416738506394==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2543474416738506394==--


