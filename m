Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7E2010588B
	for <lists+openwrt-devel@lfdr.de>; Thu, 21 Nov 2019 18:25:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Wo5gtbhNXn56zaGxD4ZQYV6CPJmtYYX8yR+Oonf4fSw=; b=jU8543oWJPZPxK6BV95WJL63e
	lObBSvwyILgrCQqoUAmwoIBmzUZJ0rwzFrMpDJabmPyoL+cQAxm9MH1vCdCsH++S7gzfbr41SkR99
	WE/GMmv6wkKz7853Jz51vlBz45k2ISCP3XzrXJXxMLERi0oY/MYtu7kltyW34gCC58eMJqgHYMmJi
	4aF77Tsine//51IFvsb2HmeD9LrjnUi9Q6TY7wFUa4d4lP12hePFp72Q5cX01xrukSJLeWcxoE0nd
	feyQrAjZaMJslxfZLS5Zc1LKYGsaOrF/37359wZE8YiIvrVE8MxtLWjHTS6Exk7GXKctxaRJRnAFx
	fGBXdsATw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXqCy-0006CF-Ku; Thu, 21 Nov 2019 17:25:32 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXqCr-0006Bk-4R
 for openwrt-devel@lists.openwrt.org; Thu, 21 Nov 2019 17:25:26 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue107
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1Mo7eX-1i4sOJ0cCx-00pfs0
 for
 <openwrt-devel@lists.openwrt.org>; Thu, 21 Nov 2019 18:25:20 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: <openwrt-devel@lists.openwrt.org>
References: <20191108114841.1343-1-freifunk@adrianschmutzler.de>
 <f05be16b-83ba-6640-c0e8-04e03877e589@gmail.com>
 <005601d59cd4$df89af80$9e9d0e80$@adrianschmutzler.de>
 <2465eaaa-d05a-197f-cdec-362b67ad7bc8@gmail.com>
In-Reply-To: <2465eaaa-d05a-197f-cdec-362b67ad7bc8@gmail.com>
Date: Thu, 21 Nov 2019 18:25:18 +0100
Message-ID: <003901d5a090$a6353fa0$f29fbee0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQHcF0zWbuS5TMQDT9hgqXlDJybg2QG/kbkuAir9fVUB+W6aAadZ0jHg
Content-Language: de
X-Provags-ID: V03:K1:fP8sxBRrOqv0S8sYihozs3lHK+TQxOKEMssvn0zGSVs7KAhq5j5
 WwH6tmEQckzVoXnqb2rZqPo9a4r13eocAlmj1gIUs9WrLteI1txGcvdy9HzqwQblKMScclC
 xq81/wtwJfXBqIwvN6wwBgH293guyRFwKZtEwTToxqPaZ9wJe5TbgJqNPxY7ffQlEG5vbh3
 45D4kt3sWUh3SFAZLrtag==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:ToZ5xfyhhDQ=:Pg3y/uaF5RtDNZ9zP6fBhT
 71utkMhEQTB+CzGhyqkDkDyVCyR5wCA2YcR3sZFwl1uLwWwydvksMAdpavc7XoGI4ppcmvla8
 MmfMwrfu+015TJnFpJzWUlRhl+TMlLiFgQB25E1LgIwkqxA+UB33B9cZYhYlTbMc9nBY7avbE
 h3vhMDjt+L9f4+2Y6BTVSM+kRRaRPL3ltUUkeXab4rgAcQLTJEyon01jFBewU16kjJ2LQJDmR
 XXm3EzoMqQWYzDZMUf/4b44Mm8VNRjeKVCSomOL70bl3gurYwp0vWlOOhTmx2Y58Xe9QCbaSI
 wzR0wJvjPZ1q+RmYx9y24H8XrYrobvTOSRsqGFfpooH6SY6wr9ULefMXfwNoyx1db+Ywe2zlR
 Qqos0/1smo8n8daErkXaFg1jhgcIt/V7wEMe53+0+0vGtLVl4xEk/UjtGIZufYJB1eLLNU92W
 fw9qbaGSNDIavbATH8pKwGTvtW0CRRoo4erd1grIB3NhQ694FaNXiHQo61yBhiWQ7Qv5l6AGA
 vgINcXWeEUPPRQ6tlFimDHIO1DqsQeeJor6WlQcgVFGef1GH45HqqfyL6ddEUUzr17AjbvKId
 IYrV2h81XWK6ht9s6of5Bz018WNzNVrWQTeZ8PcX2XDJxephhRGg895xaf3TnIBKAR8G81hqe
 EmA5Ia6uApVmIIauOP/qwYSIaWlh1XRt5LAt/aYqX1knPijqbKOGVqxK6xc1LrJg+DiJYlVIF
 QApLjZlxkFWi0wFqamia++HWuupzjt+G9ZLRNC8qSthR6klqeibGh/AX5lP0PDOWZajOEl0ap
 6+ihuNvh4qByGtC0lNsBIY5i9p6hStnaZg81izhlPgiBSmGG/ny4mnbugsTMkO0KjJF755xZA
 zCj7txgw+Ldmvnq1MXOXwkgEbUf81GK2PWw/xKL08=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_092525_467759_D5C824F5 
X-CRM114-Status: UNSURE (   6.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.10 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH 0/2] introduce label_mac into hostname
 and SSID
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
Content-Type: multipart/mixed; boundary="===============6235526088400803332=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============6235526088400803332==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=b0Hl4qGJpC5624=-="

This is a multipart message in MIME format.

--=-=b0Hl4qGJpC5624=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On
> Behalf Of Piotr Dymacz
> Sent: Sonntag, 17. November 2019 14:19
> To: mail@adrianschmutzler.de; openwrt-devel@lists.openwrt.org
> Subject: Re: [OpenWrt-Devel] [PATCH 0/2] introduce label_mac into hostname
> and SSID
>=20

Based on the feedback I've received on this, I've decided to bury it and co=
nclude on the patches by marking them as "Rejected".

Best

Adrian

--=-=b0Hl4qGJpC5624=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl3WyHsACgkQoNyKO7qx
AnDANRAAgz4vW+y8jOWxqBPVcpYyJTBpSstS8bRu95hZNURCQkLwCl85aKKXD1Az
bIqSOKutQb2txNLqygNVCwy7Eej0Ph9sRa5prd7YwcYNMYhvg8g8spu/uyGMF11l
1ba2S/QtVpW4amIeUYLbo2rf/4O9+NpeGCwDDPlIcj0iwlgPIOmW93Ewoyyb/UrZ
4Kc3fdQPbSgYJQCoB0xPfThbmne06k1IMS3oh5rdjpi883kBZIAf3Flpm0bXNLpD
o8R0bu/Clq0lvyhRKwL/9HlZwNTfoHkpmLr5KC0t1xbFRkmXgPMvNb6DTrlJlB4l
Zp8FoDg1KDYE7wUIBSfSH8jfXfEw+AnmwgG6aPP8LUevuX1cCqoRXaN7IhjIFnxg
bIhjzovvdBsfJLeVkUNo2sXHDBBh3tcQrbnMioDpM7d4kyXhVoSAgagqK9LwozgQ
ecDrYhsB3ZXQmU8BrHqdL28cGjuVY7cte9Z/cktgCI0vUpUYcIyrGYLXwWeeEotm
v3eGke7tTNSehMusxjDnn7vbhKM5reelOFxVVwLAlCFO57gi2iI69aIDCuX4pCHO
k/7M0g0sOrMZ42CjPsRAHhgMe8q/A2ccAtPk//k29LroPC8DGQXuuAp2S8NFPO7Z
/hgeFB9C4Th2hrhwRdhIB/Fqk+jKGXpVwqO0h0Nw3YBZ1IM+mC0=
=rjq0
-----END PGP SIGNATURE-----


--=-=b0Hl4qGJpC5624=-=--



--===============6235526088400803332==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6235526088400803332==--


