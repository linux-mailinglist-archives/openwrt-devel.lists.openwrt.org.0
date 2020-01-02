Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85AD712E151
	for <lists+openwrt-devel@lfdr.de>; Thu,  2 Jan 2020 01:31:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=oWSEYEO73qowtKKCEhHBuCDrlT0mSfsuaLodfI2c1vw=; b=ME/NGubStA1sEJ9q4Mx2eQJyk
	r8gzF2d99qrGQJ3egXwic8e3K0NDOYQniaKLNL0tpVyMu5dYgV2JsCx9KGXkP9Iqx5R8nZs8KUVkS
	k7nJfjjFDwuunMNmg0048Sagv5hEWaDW6qhXFJFBh86AcnP4df1eb4Tag+ib2RQndXTaeDna8RLXk
	CojYq9ludG0nrMX+QD1SLdQQEkMETA2IqyvVP0O7RYjiI3XupcwBmCmddSzW9CWO96xUvc04js2vd
	W1XE3FKjGmhKQOqcg8OFmIJ9vlBCAh5fOecCyXyD19x61lXqk9HjKNpajNNqR+hsVeJuKDnygiCIc
	2DaC47NQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imoOu-00036A-TM; Thu, 02 Jan 2020 00:31:44 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imoOm-00035Y-No
 for openwrt-devel@lists.openwrt.org; Thu, 02 Jan 2020 00:31:38 +0000
Received: from desktop ([188.194.105.26]) by mrelayeu.kundenserver.de
 (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1N8GAQ-1jqxfy3S6a-014EoI; Thu, 02 Jan 2020 01:31:18 +0100
From: <mail@adrianschmutzler.de>
To: "'Hauke Mehrtens'" <hauke@hauke-m.de>,
 "'LEDE Development List'" <openwrt-devel@lists.openwrt.org>
References: <a42e0ef1-b2b8-4f77-624d-2a8831fe073d@hauke-m.de>
 <58c97e81-f7bc-f12b-9f1e-d59a086fafc7@hauke-m.de>
In-Reply-To: <58c97e81-f7bc-f12b-9f1e-d59a086fafc7@hauke-m.de>
Date: Thu, 2 Jan 2020 01:31:17 +0100
Message-ID: <017501d5c103$f355b240$da0116c0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQHxRNThZdkkeYQN27DoL2uWc/xPGQLNvsrFp4kQIFA=
Content-Language: de
X-Provags-ID: V03:K1:EDG+BKag7wC7BzknQ/BxaoRwnAyzkQb0KLtHdgCsNX8/T8H1LHK
 yT7xrZQD/Ty4Etb6iyZu6OD64en19nQOG9sWyerUbkgg1xe+AJcZaYnZFUHLMhZdE2KHFZ2
 aWsUUq/UE4b6OHu60m4mxXMWK7zsGP0BDLE3g54QFqYKLyTe8qxD0KTbavg9AgvOul3bA3A
 Hmn1l7go9PFE4/mZIrdaw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:BQNaMLDiwFA=:2k0nT5bnNUppoDodIbBLDD
 pA5pkDBSHzElNJ2fNto31Sc7LX9Te0hQvAKWHs/TO/ftdd67DkBa3DOvy44CV0CbuV9iurnX3
 SQjy7EnjRiSbqg2lABzNUoSdBRlVSO0qPn+IgDJf7c2H068lHHyvNeu6gFQzK1Yn3VU8Bzs6p
 wpoggfFY3AalF0E1zgNPOPigFpILzSeC+R/PDNNQjABLzsJYvRtAN0tt3TpX6fT811eyPPbsj
 iv3enKMO1dun31YfeF1ZQ7ZU6GOjYyGIYnJdLrt0REh6S1YqivkW9Mlz/G9BU4cj2/nXudZvd
 8zVzQmogF/wj6AZzxiLAxjuCx06DbzxYVSq2Uadv+1RWHnyror63jI0JIm00tHdfXtu5+PO3j
 vpxToKqMwczzDdwekElFu3uAQS1Q+O1iZCQGixDU2twgUPID0GfalaFug3L4XO2/K2BYueMGX
 qDwL31ZEAcHjOH5uBIFBTD8q+przydvgYMqPhaer0pl4roLmFL0wa5Nm7Lh+JduPK7KIZ950F
 IW4IaLMFQWt8Oh6odIHvP1qq0vcmtZEQ8bJ6r7O5HLA+aChHmIDKHQgf8unon86uQvydRxP4b
 /8/IL13Yz0Fkt83pfLomof6gmCpHperdGtGHewcXko6XtD/F65G55DSQyvtF15Ib05vJYMT5F
 mS7udctdfyAhYL+j41aTAsWC54KfhokYPKJ27gwVgEvrDJfnCHT7wQSBoOfSx1S7Iko1hL6rn
 ijzz9M0ke9/9kwMgFKvPn1jYxmPmPCkRGBQafCbHQ9hFy4Iud77kYH7xx+irUYKixCeaUAQZ1
 a4p4DDlog+9U7tDZ88YQsd3/4z3EExkkoZ9RmYPh7AYz3xADFJ+qbV25hmVckQ/iQWD5frGyS
 ams9HcOUCyK7TJ6X+V/rmyoAT3L79fhdDzj2elpto=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200101_163137_069866_673CF96B 
X-CRM114-Status: UNSURE (   5.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.73 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.72.192.73 listed in wl.mailspike.net]
Subject: Re: [OpenWrt-Devel] OpenWrt 19.07 final timeline
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
Cc: 'Jo-Philipp Wich' <jow@openwrt.org>,
 =?us-ascii?Q?'Petr_Stetiar'?= <ynezz@true.cz>
Content-Type: multipart/mixed; boundary="===============5825073439756972618=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============5825073439756972618==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=VPThVOa+lnq2Ht=-=";
	micalg=pgp-sha256;
	protocol="application/pgp-signature"

This is a multipart message in MIME format.

--=-=VPThVOa+lnq2Ht=-=
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

> Baptiste requests this change for 18.06:
> https://github.com/openwrt/openwrt/pull/2668
> Could someone please have a look.

I will take care.

Adrian

--=-=VPThVOa+lnq2Ht=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl4NOdEACgkQoNyKO7qx
AnDBgA/9GA/q/Z18fWEoPbh5myPsFxzyUWXxJG4KVVdBOWmjChif0uahUmF1slZd
Raua7ij3p8WdBKdFdpIjwxxroUHOb8P8c1+WW9X/o2RAM8aIvskm40JAij7K1Zsm
Omlz+GPzNCeiRvi+Q8haseYlsfptuwVPHOH6891PUYXRw4ieNU8FyCJzRTWjCja2
imcFW5GaCb3hJwomsInP/Q3CCXhW3Tpbar/A4gcmjuaaIvVF3WT2JKUYvTFFjZ5b
dl/udbsgPH0ySLm6QOJj7mTVSn+stIZ0BMPCOBlXcbmq06AbFlP2nC1h8h6suwqG
qkK2NNsulKhYMs7DFYnIIiNwdYYsUGJpiuwkQqkPcQrrnVRMJg3JDr01F9MCck1G
VgQ98TxL69nukpfY5SU31STS4KPw6Y/sXLGSnIOBuVV/17CgRIMEGbPN61PZklWQ
dZVOhcAvlM5GiQVvE81KstekVfusdXr5etBtPGSCGViI+/rjeUEauW3pvv+IsMTk
M9Qu9Uktl4ShEHSvF1LaPm0jcmrHhv5ml/IbbPQNAceCQQ47eYDRjhaPT1dWIA6D
yv/IaEvBlgjEhbrPsyn+WmSkxi/wHA1QV0BzJ451J+oAK68dGMNK/pk1YheNx4Hp
uHnMPz1tsdxbmO+or1KwsSr4nTak/Xc5fG0EsEM+/yU/idiTO0Y=
=ctqR
-----END PGP SIGNATURE-----


--=-=VPThVOa+lnq2Ht=-=--



--===============5825073439756972618==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5825073439756972618==--


