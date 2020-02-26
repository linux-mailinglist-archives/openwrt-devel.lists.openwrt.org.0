Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6271C16F4AA
	for <lists+openwrt-devel@lfdr.de>; Wed, 26 Feb 2020 02:07:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:References:In-Reply-To:Message-ID:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TvRqa2DZMHNUw7aivwlku0v3Y0uME3uP27nY1/UkUj0=; b=e2q5qFoWsYnUhrdh5IFznAtUw
	xQHo9J9J1l8S84/SETsJCRno42XEpm3SwUOKle2hY8x9zYxFLSmKabATG2mgKjW0yXvkRceywxw2B
	L8DeajXUOKLnZV3iLoNzzviF+mjJqboBgyccmuEfiqait2RXgXvJfmu8W86AnSGuqOuJSthVkHEhq
	tyK4oCHUu1P0yMlpq48eE1YxYKQGaeFXoUQby/79d4S/ImH+8QhBk4BKO8PpZx7BMguEDZkER1Q9c
	SIosrGo3PdIDI+FQTQeUz3PQC0HRlawGYx8ka6g0hDb2R3TJuzzVxZAKpLBYH8JUp3bmlP99Mb0Ft
	qKoXP8fCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6lA5-0004NV-1H; Wed, 26 Feb 2020 01:06:53 +0000
Received: from mail.base45.de ([2001:67c:2050:320::77])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6l9s-0004N3-N7
 for openwrt-devel@lists.openwrt.org; Wed, 26 Feb 2020 01:06:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=fe80.eu;
 s=20190804; h=Content-Type:MIME-Version:References:In-Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=fd+3Jkfxq6eUBHdAYDLh9AP3hQPeOfDVnw6ffKmNhAI=; b=bh5GpK+UZeXuNuBP17epHYRY6L
 lRewmtye9A94f96ro3NF7NDId66ccP0FZqluOpKbNDZ771qdEqJOIbhSj44I3PQTf/DWyQyausRiw
 PB2uBxA9KJtqpN8izLIunet9Fn+3RAKSFbhlZT3RuO8qLIFdPnpYtxvtCu9PPWbGR0McYoDpnnWI8
 dNCpxbe+9c/MkfDT4L6zHB8S+t0tZx2ixy8tvAG7V3Kdb0womDfnolRr+8tVgEGZ7wbPZn3ROkAqu
 ZKMPF1f2pKHed7o1xqcpCOiyQnelnvFtDrcUwPZy654pvzIMRAYgLY4N56NRQXTwZQXCudFJmRIPY
 oXefQzoA==;
Received: from [92.206.67.56] (helo=lazus.yip)
 by mail.base45.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <lynxis@fe80.eu>)
 id 1j6l9o-0007MP-DE; Wed, 26 Feb 2020 01:06:36 +0000
Date: Wed, 26 Feb 2020 02:06:29 +0100
From: Alexander 'lynxis' Couzens <lynxis@fe80.eu>
To: Arne Kappen <openwrt@arnekappen.de>
Message-ID: <20200226020542.64d71762@lazus.yip>
In-Reply-To: <e86abea1-6c7d-49b9-164f-6ce0971f8631@arnekappen.de>
References: <e86abea1-6c7d-49b9-164f-6ce0971f8631@arnekappen.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_170643_471567_40A4D678 
X-CRM114-Status: UNSURE (   7.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] hostapd fails to link at current master
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
Cc: openwrt-devel@lists.openwrt.org, Felix Fietkau <nbd@nbd.name>
Content-Type: multipart/mixed; boundary="===============8737749495875986916=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============8737749495875986916==
Content-Type: multipart/signed; boundary="Sig_/aBo/22NV4Hr/AfvkLy38uf2";
 protocol="application/pgp-signature"; micalg=pgp-sha512

--Sig_/aBo/22NV4Hr/AfvkLy38uf2
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi Arne,
=20
> I'm getting the following liker errors trying to build hostapd-full or
> wpad-full fpr x86_64 at the current master, and tag 19.07.1:
>=20
> The last error also appears at tag 18.06.7.

thanks for your bug report.

I've looked into it. It seems a Makefile dependency problem. I've done
a quick dirty hack to fix it. It builds now. You can find in my staging
tree under the branch hostapd.
https://git.openwrt.org/?p=3Dopenwrt/staging/lynxis.git;a=3Dshortlog;h=3Dre=
fs/heads/hostapd

But it needs further work to check what's the best way to fix it.

Best,
lynxis
--=20
Alexander Couzens

mail: lynxis@fe80.eu
jabber: lynxis@fe80.eu
gpg: 390D CF78 8BF9 AA50 4F8F  F1E2 C29E 9DA6 A0DF 8604

--Sig_/aBo/22NV4Hr/AfvkLy38uf2
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEOQ3PeIv5qlBPj/Hiwp6dpqDfhgQFAl5VxJUACgkQwp6dpqDf
hgTKRBAAqv/6Hrjzj8xQ8NaTvQnqljqPRE+lqBK9XRdXOq6yvNxVCizv10uZQXtU
OGYV/0OZVtrP9iuBJvbtHTEOoMaX5Musy6B87QFv74/rtP94mrcVGPzSPeDBbQzx
8pN1e3MKO4n/btHQ5yrpQLyCWgnIKlfloIC3u/LFBGTFlqj8E6wtoOCeJA6BL6C+
OiVXVKTPK5PKyu36NYRPsuJMnaCqCLMS6c0Owpt0drHBbU9PDSho2fiqyH4jazHN
MbfzCnmZ1kp/8FCMjwAcEnfUXraEXxattqj38ZJ6XK6N+BxyjN2lvE2jcPytyGn6
gYS1V9CO2zYn7ZgzvPVm5nU0E42225yH5h0ZPKTI/wkuE0JoDdpeJ5PmiWAgO97R
q5QW6SAHZFnIxdaR4ZMXXF4XEUSVgiPnp+y9s8EOX+fB2PwJjGTL7yAQg1KmeTC7
5JvsFksEofAnT4YUYDQ1DK99kS53ZFw5Sxj9D35+rpQq8nNiqBsxDZnKYOg3IOIk
cJzSC82ta9WsSCg86GluGPuwqG3vQpd0m+vM2yxmrulHgnf6CC97CF7cpvq+yWW3
ZNgNsgc+Lr8qu7OWdmU65sZc8EKjVY7+G+JUwg6OV8xa0XJCZJ1zlkht42DcbF57
YrV0GpeTDfF9cmIkOQbqLnDAgIJf8U+/QPTSjFohN2y+b/jqTNQ=
=yaM5
-----END PGP SIGNATURE-----

--Sig_/aBo/22NV4Hr/AfvkLy38uf2--


--===============8737749495875986916==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8737749495875986916==--

