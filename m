Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25C9DD0DF0
	for <lists+openwrt-devel@lfdr.de>; Wed,  9 Oct 2019 13:48:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dANPmUMEe05bdvzEk0bWiEh/8dQ/PtC40Fx1hAGF+Gc=; b=WVv4Wx+aXU8KBd/K0nWpk70M0
	Ndz6c8tbIK2he76AJlG2A+oBwhMdjzmFwcJ/RvQLOXZRfrR3hWzgGacznKsNiAhpvHaykr+BmAI1o
	kT6sCryXsctQbdRPzhustdqOIh/BVznO89FzvBAEso/C4SbAQVQNkImoTqvLV6Y92trUIkOzxhU8e
	yVMb3IgnfEba6QfK8u8Um3piIv8/XznsPRXT1ur8qzXdn3otnp8+m2gTq/jPXIIA6fdl2G0QQDp+b
	K4Ndy3HzIeVb4c5lA6KiBG4fsFzuGIj6dLcwSUbwLMs6175AGZoWYpP6emnTxM6L3mY/LlITySttX
	MlDeYwpdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIAS9-0007oB-R5; Wed, 09 Oct 2019 11:48:25 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIAS2-0007nq-CG
 for openwrt-devel@lists.openwrt.org; Wed, 09 Oct 2019 11:48:19 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue012
 [212.227.15.167]) with ESMTPSA (Nemesis) id 1M1aQN-1iGElv2EG3-0034Nq; Wed, 09
 Oct 2019 13:48:08 +0200
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: =?UTF-8?B?J+S4lOWQrOmjjuWQnyc=?= <wurobinson@qq.com>
References: <1570526416-4180-1-git-send-email-wurobinson@qq.com>	<007b01d57dd7$3c9228f0$b5b67ad0$@adrianschmutzler.de>	<tencent_B5943D7D59BDF02DEDECDDCF96F8B195E40A@qq.com>
 <tencent_9FE34BB6D83E73909E2AAD98F8D27710EF09@qq.com>
In-Reply-To: <tencent_9FE34BB6D83E73909E2AAD98F8D27710EF09@qq.com>
Date: Wed, 9 Oct 2019 13:48:08 +0200
Message-ID: <00e801d57e97$6b6dff30$4249fd90$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQIor5UgF8SBG3V7TBwz+nbhV6RX4wGufM2HAhlo0c0CLmuKSKZ8Gpaw
Content-Language: de
MIME-Version: 1.0
X-Provags-ID: V03:K1:6axAiOGFT3pPQVQ/3O7OQ5WewmRp4oFT1TU3z0vjzjksvild2f0
 vElHB641IafpDoKWphxDFQwjOuG81mXRpcu/RbW1SMQ80PsztE+5gn5d54Ym9B3Yvk9KF+K
 nEEfYtg7kFigS5w6A076ELxBFfBTqfZWkoKVOmcIIFGF7lOQ76YKHpaw24Oi18KbEL4nnzw
 Y5xxy5j/YfTSPf2At0CHQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:afURSgwlueo=:G4Tj9zYG94BQ2fOzSR+t+5
 Sj4AQ0HEDV5P+bTbSarcgn+HdM5+yyOtlGwdL7h6mljiKKv8pIOUNMElhCtvmGrb0Q49ZCSGn
 0z5JVo0GHicbOnGwCAHu6tefrph+aEyqK0lOuH6IF5j8L/K4x1GpJGxvKp5+H4kfxo3sfqgsj
 73pCcVvaA3KgfflfWxRW1woVhY2h/GNeW/PxB6hyFlndQdlpCa15NzM7771yo5ggvHppH3Nb0
 n5GF4sFOz7uPdNlA3fS55z5D9TVHQHRsIb/XZ9s21lM+rJHjOUbsOrNHB9GFyCG79nDf0wBL8
 uW5zGXVESleUDzTwmIrtVUJfU4mtbp0lT1C1mPN4NO6KY9pTlzJZmxZkP+fYUDSgC6B/aGcPO
 NzwClanRrto3pBSxEJF6M8Nx5HBxFYkEVjM05fRTi7efoQcto8zWcWFY2RZfYsINcII2ohKwi
 atYEFNFhYA/v7hzCCLW+n13FdUCDAzmHhTbzCyrPBi48jXJEXPcU+DvQooS8KbJJEdZlr8kzd
 tVA04PyLCa2XzUdpMLfV3LbDD6bHHYiSmXsxWTBVyzcG/OI5sdMffceT+Uy4WT5Aj+/WzK1G+
 3sVhxtSkXmK73trtwi2Uu/ZB9wdUw8A9ESXPQg7Jub8/zaNbqd7chaFPNr+N5ZEcSotW6Mb+Y
 aypS3curFOTbSQg5JcpBUD8HvvnZBrKqb/KSDOvnaBdelhGZt1dDKTk3UzguMTqWLa9RspAJW
 9a6DyPL0eXW7vJYR+OguAh4sXMQLTXVvctaXyHnQA170r1Jsh7LEq0PsbvEFRfM3zJlwsnfJk
 CsHjFsh36aBoNpdShuLfjP8oRelGgYaSnLhSWu5nvkzSrT+xx4fzQgXGNM4wl4job/ow/El6V
 GgP28KnUMRbm2XOI0+xDJHMR54lEV5sSUupiBk1U4=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_044818_713502_2163C9CB 
X-CRM114-Status: UNSURE (   7.67  )
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
Subject: Re: [OpenWrt-Devel] 
	=?utf-8?b?UkXvvJpSRTogIFtQQVRDSCB2NCAxLzNdIHJh?=
	=?utf-8?q?mips=3A_add_support_for_JS7628_development_board?=
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
Cc: 'openwrt-devel' <openwrt-devel@lists.openwrt.org>
Content-Type: multipart/mixed; boundary="===============8412639572493750958=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============8412639572493750958==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=+H4zNQ+C+bCGBr=-="

This is a multipart message in MIME format.

--=-=+H4zNQ+C+bCGBr=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

before you resend you patches, two other comments:

1. When we introduced DEVICE_VARIANT, we typically removed the "flash" refe=
rence formerly present in the DEVICE_TITLE.

So you might update your DEVICE_VARIANT entries for consistency, e.g.

DEVICE_VARIANT :=3D 32M flash

to

DEVICE_VARIANT :=3D 32M

2. Currently, you set up wan MAC address to eth0 + 1 with the default case =
in 02_network (line 731).

Do the boards have a wan MAC address on flash (0x2e or somewhere else)? If =
yes, please add it to the ramips_setup_macs() section (starting line 516) e=
xplicitly.

Same would be necessary if the wan address is _not_ different from the lan/=
eth0 address. In this case add your boards to the "empty case" starting in =
line 584.

As those are development boards, they most probably won't have a label with=
 a MAC address on them?

Despite, I do not have commit access, so expect comments from other people =
or further waiting.

Best

Adrian Schmutzler

--=-=+H4zNQ+C+bCGBr=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl2dyPMACgkQoNyKO7qx
AnDmNw//YYTwQwvk8J6isAYmZdtckLYJmFJvlro+ddWHF/s05/JgxENWfaP4cKIR
XIqiNdGgdH6fwe8Zzuy+zeac9Ej2jEOKWjpRsg5Dn/+8pnXGBAm7iWHVJGw1Mbe5
2HnjuA16cd7g2/Hm4F5unEsLCAOu1oUsiFzh17tY3NXALaUA83Ate32mOPIXOIFh
FdL6/8wwxIdl62+gzR7CzgO7x4VxHnaUp1DHVVAYomqNLJJFQkpRW6n+2RIIkHMW
rMSkNxINUUYoBTCIgYUOuPCHunICEO2GJujW01aaLBHnmkleX3u07XtcLhLhjuAB
ArB1RHb7GOGiHx+uevee5KKVXefIHxsyQJJz/5L5Art8re7XAdWpqbn2jtFNRC2N
DlpgVAOvABVwQuJrO//w+2iZNIqDwVGebaCX2piD9x8VLeBZT/DtKPPr3zGnb+Zb
Zb8dhsqAfw58NaD8KgAzjclO5OgwGB1OHmrtfWCKYca3chukA//z3oP07n+ufXkJ
NivKxjGmhnHHd0bLr9BcrDW4qzjXew6eMpknnC5w2auCSGNwqZA0Wr5VJc6ssLAT
wYWwyPAlAroq6A3NOMou7p9cWKh1tm5sn8VrbSCyt+UNaB8OwljlWkqLrHkANYaR
SpUAuUqNdHcX17kQoVFlvBH9GhYUHch/TjUAg0ogY11jep5CBxw=
=6jL5
-----END PGP SIGNATURE-----


--=-=+H4zNQ+C+bCGBr=-=--



--===============8412639572493750958==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8412639572493750958==--


