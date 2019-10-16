Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9300FD9A7F
	for <lists+openwrt-devel@lfdr.de>; Wed, 16 Oct 2019 21:54:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EA02mI1XB7uHA4mR3xCEFoH9DCqx/TaYginVHVMp9UU=; b=afvLIRpSy2AbwNyaC683+3LA/
	rvxUqV/KabnTL1ipwmiper4GKm6bqzuBAh1dA2gZVDUc0QMSmZV7yc77YT58B58zpqAGE4QEfbirH
	oGXosdpU5RbEbN+TBmlt0CYpJm+SFm8FoPKpim8GYcJN0y0xs4pN9xN9Nhxq4pP0Mf3nUcST/wFha
	31glzS/aE8FpbvNZA7X1+a6QnUDyzNIQiVUQFvi1cv79W2obPzk8Aow1wsPRmL5j3B/1D5vNMfqnR
	3MZF2/rqJZXB54OJQH78vn9LpIN6hxIXEnQ9FmkSmz1UTISf52KBhd5FfpXYDmeEiabRYVrqcbGgr
	JCGQXL80A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKpNK-0000VT-SM; Wed, 16 Oct 2019 19:54:26 +0000
Received: from mxout01.bytecamp.net ([212.204.60.217])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKpNA-0000UT-Dl
 for openwrt-devel@lists.openwrt.org; Wed, 16 Oct 2019 19:54:17 +0000
Received: by mxout01.bytecamp.net (Postfix, from userid 1001)
 id E10FB53E4B; Wed, 16 Oct 2019 21:54:14 +0200 (CEST)
Received: from mail.bytecamp.net (mail.bytecamp.net [212.204.60.9])
 by mxout01.bytecamp.net (Postfix) with ESMTP id C1F1853E49
 for <openwrt-devel@lists.openwrt.org>; Wed, 16 Oct 2019 21:54:14 +0200 (CEST)
Received: (qmail 74276 invoked from network); 16 Oct 2019 21:54:14 +0200
Received: from unknown (HELO ?10.11.12.7?) (jo%wwsnet.net@95.90.41.79)
 by mail.bytecamp.net with ESMTPS (AES128-SHA encrypted);
 16 Oct 2019 21:54:14 +0200
To: openwrt-devel@lists.openwrt.org
References: <fca7f10e-0792-91f9-e37e-db6241a861be@welho.com>
 <87v9svtvrl.fsf@miraculix.mork.no>
 <fc77391e-68d8-1e3b-b86c-b01750cd183f@mein.io>
 <bff0c30a-023f-c1b0-ede9-efe46152ddc5@wwsnet.net>
 <CAOdf3gpLvNFJd4iQpsaTg+-C16KuOjteLgCH1bNGyPj3Eq09_w@mail.gmail.com>
From: Jo-Philipp Wich <jo@mein.io>
Openpgp: preference=signencrypt
Autocrypt: addr=jo@mein.io; prefer-encrypt=mutual; keydata=
 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
 yxsOKc06fSVm
Message-ID: <f1a294f8-34bc-87c8-6af2-ba46f8f4169f@wwsnet.net>
Date: Wed, 16 Oct 2019 21:54:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAOdf3gpLvNFJd4iQpsaTg+-C16KuOjteLgCH1bNGyPj3Eq09_w@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_125416_623121_C4771A48 
X-CRM114-Status: UNSURE (   8.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.204.60.217 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] OpenWrt 19.07 release schedule ?
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
Content-Type: multipart/mixed; boundary="===============8742219532761523087=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============8742219532761523087==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="SfjWT1tvuWh4p3DBVUqhyxQypwUidduGb"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--SfjWT1tvuWh4p3DBVUqhyxQypwUidduGb
Content-Type: multipart/mixed; boundary="b1v2l8GycnOFM44kdIlO9f9j8fb1ag1Os";
 protected-headers="v1"
From: Jo-Philipp Wich <jo@mein.io>
To: openwrt-devel@lists.openwrt.org
Message-ID: <f1a294f8-34bc-87c8-6af2-ba46f8f4169f@wwsnet.net>
Subject: Re: [OpenWrt-Devel] OpenWrt 19.07 release schedule ?
References: <fca7f10e-0792-91f9-e37e-db6241a861be@welho.com>
 <87v9svtvrl.fsf@miraculix.mork.no>
 <fc77391e-68d8-1e3b-b86c-b01750cd183f@mein.io>
 <bff0c30a-023f-c1b0-ede9-efe46152ddc5@wwsnet.net>
 <CAOdf3gpLvNFJd4iQpsaTg+-C16KuOjteLgCH1bNGyPj3Eq09_w@mail.gmail.com>
In-Reply-To: <CAOdf3gpLvNFJd4iQpsaTg+-C16KuOjteLgCH1bNGyPj3Eq09_w@mail.gmail.com>

--b1v2l8GycnOFM44kdIlO9f9j8fb1ag1Os
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi,

> Does it impact OpenWrt ? or just some OpenWrt based distributions ?
> (might influence who need to fix this ;) )

it impacts the usage of the kmod compatibility repositories - apparently
they're completely ignored by opkg.

This problem was reported in the forum by a user who was unable to
install openvpn-openssl on a 19.07 snapshot, due to the dependency on
kmod-tun.

I was able to confirm the problem locally here as well.
While this might not strictly affect tagged builds, I still wouldn't
like to ship 19.07 with a known broken version of opkg.

~ Jo


--b1v2l8GycnOFM44kdIlO9f9j8fb1ag1Os--

--SfjWT1tvuWh4p3DBVUqhyxQypwUidduGb
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEoEDjaXEsZv/z0WDyQuLLvzouZtMFAl2ndWIACgkQQuLLvzou
ZtP8eQ//Sj+yv1RMpqhBy8Z9yLm7xhcxO+v3+Ut+f1t9WEWGXdtg0OFZxkvEdrgT
HTJhqHf6glq3wCG6rVCZ8+DT7nlWVCnJ8ORnBZnxt147KzS03fpTuB5X6vZcduhD
Ia9COx1Mmwipg26BTdL8efhI1NujLhm0D8F6CJo9X3lGXQAULzXsWin9Zi8Iew1v
LsLM78xLJy6airWxXTZw/wO7p9rl/14+XFzN1T0N0ANT0Wc0caD92JTy4E2KR+wm
+2TtMzrAnkaJU0zA6uwAueAzggIGYBFJvzP+AB1LHc4RZALZQq3kiKtBZ4Yw3HoR
Knj1Rrsc8hyZAWaG+9TC9WiwfYIAT+xF53iagkocxpnLeymH8R+1wZeh/jE4+LPX
uHoo/aJ1VY1IfTpDco8Qd3aYeXOFUHfPoTtgyFZrO0hpwxd38FmkwyBpkVvEN1kh
3Maxdkz1vn+4duT89jv2hZYsl1Yc5CJE/VOOv4qKErDJbB93bfr73SbhfY0mahBA
c3oXtL1/zNFDGYe8Cp8DCZbXzQQfYLaaq/8k0VxW2ca7yF3NFZt2ITIgyTwHtFJq
XJ3TAoyKzJ+xK1/NdIClf6uLlYN22a0NpEqrY2Z8b9MHXUNcIc27rjDb+FjrcHTq
jVN30Dxk6lFKX6cnnDZp6EUlW/z+tBOgCpolh2rH83oIThks+S8=
=b6dZ
-----END PGP SIGNATURE-----

--SfjWT1tvuWh4p3DBVUqhyxQypwUidduGb--


--===============8742219532761523087==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8742219532761523087==--

