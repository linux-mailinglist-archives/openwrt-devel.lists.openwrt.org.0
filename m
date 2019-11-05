Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7908F05B4
	for <lists+openwrt-devel@lfdr.de>; Tue,  5 Nov 2019 20:10:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HwtwxTjGqtZFDWHYMTW31VKfpJ3tmy6u6x78hnA12BA=; b=lRRUDnM+3/pFI3sWFo/yxy0GL
	3cArYjL++rMbRf4UgAf4buzXMZZu9C3PcuI8XqlqgYmBWigO6SBSbHOGaI/ySUAifNn/TenRb4IjR
	K37XhQitWlAyyU6Xx4hNRywL+bjtbsnyFEYfK3ou+sKbqs+9aDubkBSDjXJDv82ZFU5MwDe/sHRz/
	6fiq9UnIJ2U16HQHg96L8iPe83b8U8lkwGDczoK9PFgjT1QPQfmo0aMlTuwuOLHqahAg8eUDG6AcD
	Mj498ASIOsMGhPaP4iHdiNLHSm0mtS9fxlEHqVILJiCmeZ1RH/K/Yy5Y4BDk2v8HpAJkU7bzFDm9F
	Y8WPBnUxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS4E4-0005m1-5A; Tue, 05 Nov 2019 19:10:48 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS4Du-0005lJ-5d
 for openwrt-devel@lists.openwrt.org; Tue, 05 Nov 2019 19:10:39 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue107
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1N33V5-1hmuzN2YlJ-013RIp; Tue, 05
 Nov 2019 20:10:24 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: =?utf-8?Q?'Bj=C3=B8rn_Mork'?= <bjorn@mork.no>
References: <20191105151202.4709-1-freifunk@adrianschmutzler.de>	<87r22m1dp3.fsf@miraculix.mork.no>	<002e01d593f8$469ca0a0$d3d5e1e0$@adrianschmutzler.de>
 <87lfsu172n.fsf@miraculix.mork.no>
In-Reply-To: <87lfsu172n.fsf@miraculix.mork.no>
Date: Tue, 5 Nov 2019 20:10:24 +0100
Message-ID: <00e101d5940c$ad5a1ca0$080e55e0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQIj3krgsob+/zBNRWrfaNFjtbIbyAGb/ndiAaefjTcBLxqiyqa8xK1g
X-Provags-ID: V03:K1:RmtF6oklwKj+tqgU3hyouBpegyL+3Eetx+xcg/kVOAFljjCpfa+
 69rsNsHDVKADC8Qx+gFBLpYXNJmKY88l9nr/qP9FJlrBHuUUzRRuZEv2hev8hRJy+1J7zh+
 G0I+IfnV349qmZFOE/TO+ec6ub5nTxs/nNeEdOWi002bVZSyFhTQcPv5mZh3KbVOABUARgw
 AWdKKHRRI/TD+U0hli6XQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:5tXJOtIxjg0=:z5HE67wSmSaDQWVuk7R3Mz
 kBN/fRB2G/1WDgl1xrvHdlfzmLPz9czIfbpTJLeKiP177jKdqOo4p1evjYHvqknuwrha6HkuM
 o6UcAjKpYwAlJqhq+kBwH6AiXUc/oKkP0lOddXjuRbImIHO28ZelQ/7Yzo7qBYMOoJjcM3fmW
 S2Oow2OaAWGaMCkkocTkyG1LO2i/RHtNc1NFaAGTIjg0Z7adgOf596HH7xNIWMxDNdLEAA43j
 h9cjeMrL0zYawtwaZxHcmYDPtlmMB2Ntm2RO58ERBx8402rfCQaiXO2nclDmn4Ng7CmhcM0WT
 u0+DuZSifjod5i0btw3I2gZT3H8dJI+QVx6E8oRHQuxoqESZiF2A+ywAAQJP0yCEh9/9U4cah
 3LWqAhhMjQrUI192Mxh63b6iysUXDvHN6cx+gVn6PlfcVMmsqVS8bgBBD2/CtC4QuA9OdvwBq
 OVLIxvObiOuHPFVqYZ+Ok24b8x9Ad6pO9VKLp7EzUjzz94iuS4QCHFEDAw8H/rmzAiYyCmY9/
 Vt5fotQEw37U3e6pvvVTW4KxWTRbbFhmjAZdma/RVqjoj14SKg48W6ra6uF1kqFOQgqjo/qZz
 0dKFuhghrhi0ukTFFtNz1Hg6+BLNWI22kAMeh03zGFw36gkTgt8GCkUhqldIHDAct1fsoiU4o
 rf2DFs7FGLJb7RdNgSo3zUk4UpckoHBzyck6/804vtW2Po5xTGggCctjS/lDJoniIDWUzVfyh
 P875VNluq4TPVFn8Z1igt2lyv87IDY0+CqfFN9SYsgdy4s5OQ9mVGF3CUy0zNvzPyQdp+Z76U
 Eb1vw6+oszM6hBWTdtBQmVujBqE0yOC5nnKEM0WC2izZzVdarcmc2EeUGvDAnrcC9wHN7Mqfa
 /QmqFmar3LLEKYmdGz2VqXlWsHQnS818CEtSekNws=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_111038_509647_54B8415E 
X-CRM114-Status: GOOD (  13.06  )
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
Content-Type: multipart/mixed; boundary="===============1431707231250774321=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============1431707231250774321==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=05nZC8cB4NMHgj=-="

This is a multipart message in MIME format.

--=-=05nZC8cB4NMHgj=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: Bj=C3=B8rn Mork [mailto:bjorn@mork.no]
> Sent: Dienstag, 5. November 2019 20:01
> To: Adrian Schmutzler <mail@adrianschmutzler.de>
> Cc: openwrt-devel@lists.openwrt.org; 'Birger Koblitz' <mail@birger-koblit=
z.de>
> Subject: Re: [OpenWrt-Devel] [PATCH v2] ath79: use gpio_hog instead of gp=
io-
> export
>=20
> "Adrian Schmutzler" <mail@adrianschmutzler.de> writes:
>=20
> > But, based on the discussion here, the opposite has been identified as
> > superior solution (discussing nand subtarget):
> > https://github.com/openwrt/openwrt/pull/2184#discussion_r342136635
>=20
> That's missing the point. Regulators are superior if there is
> controlling driver. E.g.
> https://www.kernel.org/doc/Documentation/devicetree/bindings/usb/usb-nop-
> xceiv.txt
>=20
> See arch/arm/boot/dts/armada-385-linksys.dtsi for a nice, OpenWrt
> relevant, example using this with a fixed regulator.
>=20
> If you don't link anything to the regulator, then I agree that you might
> as well use gpio-hog.  But I still don't see how you can call that a
> superior solution.  It doesn't suck more or less.  I thought the ath79
> conversion was all about using devicetree to document the boards ;-)

Maybe "superior" was wrong here, as in the linked discussion the argument w=
as that both are comparable, but gpio-hog requires less space.

For the content of this patch, I just want to get rid of gpio-export. So, f=
or the moment I think the gpio-hog is an improvement over gpio-export.

Based on that, I'd be happy if someone would be willing to transition to an=
 even better solution. :-)

No offense, but I aim at the low-hanging fruit for this one.

Best

Adrian

--=-=05nZC8cB4NMHgj=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl3ByRkACgkQoNyKO7qx
AnCraA//RAtKieFax2B2q5uCLh0MfiBbRWdxadwyWbwL9znqPgRRMQBCeX0Ok9i3
HqLBRyyI6N09OSz3QyYuV0Xvi4oOm0pJfWqQM2XUklBZyN6N+gOg512AqW6pu9ny
CuyCeO5afcmBQnPbvA23l9zCB+Fzz9HCXYZWHq36tOkZAKsEEx+LWOcsce0h6DWg
qTBH2xu9dkdo70wHMOQBJMdUQkVKP+APis27wmUsNVuXMHUO8NvCkVXsMBPoRt/d
Z4T66/VXIpPyjoZkR+SmSv8TemHX8egS2YoO598zBCRGH5kH3t/dEjLlwe77LZDT
RmXc7GDAWY7FQQPDKnx3sI70ZdTYImDlIZFTZcxloczj/25c2sPNNYN1x7J+BNfB
q3XpKtXhjysxDY5Jt+SDi5EpUvP/AGpD2+x9hlvjTVSSMILmoE3H2PZG1OwmNrkj
ZN4pJ2zGM0CyLvmrwhLh9OsmSc3CAHEA9u+CoyQttOXpL3N8dm3gw5+EBYHj34Gp
kDReMuZ28f9sG8nUlKG4d/jl1AR17uiBxuLyIKvrBMp56CBaEIvEMyXFvwhoSfQ6
QtTPrXgJKGDNJ7H8U9IfgHGCkjlVPeEphL679wcg8vyPGV9PHT83J3+vXFrlKODW
B6IIG3BBYi+nJ+39QNlH2me/MPO+jUuRC2QIIgvdenvC4o97ErM=
=mGwS
-----END PGP SIGNATURE-----


--=-=05nZC8cB4NMHgj=-=--



--===============1431707231250774321==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1431707231250774321==--


