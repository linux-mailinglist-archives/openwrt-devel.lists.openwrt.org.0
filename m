Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98B06F9F37
	for <lists+openwrt-devel@lfdr.de>; Wed, 13 Nov 2019 01:21:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vjA6AF732zvsF6TB6E3VTnVlcVIwRO8lpkODh5yM/iQ=; b=T0D7cqiCurJr1tkHRmJDRPP+G
	nPlkmIn7TyHMBYrEKg49lQ8HADVAJIEQW1QsgwSfreo5ZVnBwW9Mzks4rTplUobJEioyrYUMHKqqh
	4S7vxmzSTTHSuXAv7eogHmEfXMMieoNadTDfaaTzKeSas/KcRtYiruhamdN3bdGl5oAp/9RNVUXlI
	AwhJWMC6eR6P/ELEOnEJkEzQGJ6oUfg4zFLD7ovWEGJ+hjoTITAf1XrjHP+8Xbgj1v9FXJ3qJkGvn
	sfJJl1ecJf14Aaw3UBerHk6RyY2oF6IDcA2NCrILDkefSGVRdrAWc0Fed7J6z8FYmajej51SjhamJ
	Zqec5trrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUgPn-0002kJ-CU; Wed, 13 Nov 2019 00:21:43 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUgPf-0002jU-C4
 for openwrt-devel@lists.openwrt.org; Wed, 13 Nov 2019 00:21:36 +0000
Received: from desktop ([188.192.135.195]) by mrelayeu.kundenserver.de
 (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MqK6l-1i83Fi3wG3-00nQpO; Wed, 13 Nov 2019 01:21:30 +0100
From: <mail@adrianschmutzler.de>
To: <openwrt-devel@lists.openwrt.org>
References: <20191112235709.60227-1-freifunk@adrianschmutzler.de>
In-Reply-To: <20191112235709.60227-1-freifunk@adrianschmutzler.de>
Date: Wed, 13 Nov 2019 01:21:29 +0100
Message-ID: <000001d599b8$4ba73860$e2f5a920$@adrianschmutzler.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQMN4a1P2QgwYCyaVUnUIGPvgS8t8KUXrMBQ
Content-Language: de
X-Provags-ID: V03:K1:Z+kTZvzfXmcaovKUv9Ij3Lr8xAXx9I5yWOAn/nxZcXh3H0R5FtD
 juW/GBowRvSlxCvaqL8gfBaUUb3ki+gZ8IWsNbqKp99JNpbW0wNCn/ADBNgGFWudEs1Occ+
 4wzR7C8/+rs2ZXqLE7jDE4FR/BDSFV7VZ0BcUNeheZJE21cQ/51v7ffiQagvkFH89eXvKdV
 1iPjIMLSW7BX6n8n0W38w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:O/M7nsQPmig=:hsu11FDjOjsHVs8FGdEVBZ
 jctqJ393a9V8NqpE+VO7Oe6Bu5QdV5OOLeupvAt956Js4nX0OoaR7PAJZf+IP0tmQ4LCaFjaG
 7DYYpt4RnK0DSIOWfyt7cSSA9LYxRFZZrJVcb+MWYhY2hYR0jyAKu1snCPBsC0qx1NyjoRmgU
 GJu6FrEPX9J+27yH3b/dl6MlKpYyY8RtbcLofECEiSGoVSCgrSslrN+aL72i629Yr91aK0I84
 uE30Cv91yjJQXy9OmZ62zT2vHhA6ozAnVFUfzkxmXLUHADcLEgAwATYGWDA173jYTPXA+TDJE
 PTOBllNm6OebphFkWJzQPjnkpOnvRVYz3H/W01xdHkkgwyGjlsqtXJSoaD3aIPx6K6jyxz7e8
 w1SLfIFAcwgGLkQO1/N8yS8tXcHgDa/VRt06IqpuDuem0a2ohCYFaXf4nIJJOTp3rs3GvqzP0
 +l5k1J0L98jyn7vWqGnG209o811nQu5z7ytW1fmeGxaVo5PRGtHhw/f1GJXZcKlWFR6JFWTBT
 rPKCl63evlUoS8nKRX0L9h9tCioWtvSZw2hDodaH1uW2wkT6nNJ1yV7VjsrsoJocaAG75Pukh
 9ctDL3T1xO85q/gep4KMuCLG0879der04gV3WTW58AEkDgu2N2yaT6PwPjr9TXl4zyPet6iBs
 I95p0FGKy/DJlFwAFOVLsHN5m9GbOyd2Gvsq0LOZUenvPrwttv8FwITBOw9Dm+yWuKg0cD1V7
 iQvHwHnw7Sz2hUgffkun/SPty5tXAteofySeOlF3uRrEp4tB32CVntteqs4yGFDUoogOBcFsR
 ED6gZQf28l/NikZ9Cv+7vtaArxmIokFIQO89hG7CbMgO+lIHqwZDn3duIHVoT8eCwR1CDZ4js
 YQIWUuOxdBf+jx4GWDtq3MxGKl0Dm314MBZQkFuXE=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_162135_704810_2064D50B 
X-CRM114-Status: UNSURE (   6.26  )
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
Subject: Re: [OpenWrt-Devel] [PATCH] base-files: config_generate: split
 macaddr with multiple ifaces
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
Cc: 'Sungbo Eo' <mans0n@gorani.run>
Content-Type: multipart/mixed; boundary="===============2068916649390053810=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============2068916649390053810==
Content-Language: de
Content-Type: multipart/signed;
	protocol="application/pgp-signature";
	micalg=pgp-sha256;
	boundary="=-=LmfDa9J4lfdUL8=-="

This is a multipart message in MIME format.

--=-=LmfDa9J4lfdUL8=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Adrian Schmutzler
> Sent: Mittwoch, 13. November 2019 00:57
> To: openwrt-devel@lists.openwrt.org
> Cc: Sungbo Eo <mans0n@gorani.run>
> Subject: [OpenWrt-Devel] [PATCH] base-files: config_generate: split
> macaddr with multiple ifaces
>=20

base-files package version bump got eaten up by the latest rebase. I will a=
dd it for v2/before merge.
(I will also add the version bump to my other pending patches ...)

Adrian

--=-=LmfDa9J4lfdUL8=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl3LTIUACgkQoNyKO7qx
AnDUdA/+POm/pRkRV7FNTX0PnrAhfPnqbeBWNwDk37EjBEF5ypwNJxEtta2AmUYO
nAwqfcyTinzWmsDQs+qaY9ZCgyI/ITezMu4ZmyzNxZ58OlrDkUwYp9lGQwfSf6g1
p4SvzwYy5e/kiYXkTLXkS1g4icqPbKtjd2TWeOmUPyukY0L5Y4kZU9LmvHbADnYh
AYLpdyu5Zg4pzn4D+i7b/xxANARJhB0SOF6jDdDIBSc30Atj41YRKql87K4zlMqK
oL95kpR/A+ROl+Q0ne7G3WcoIsrfXj40PfP0q0t3uvvUmLU21m/ZjyRqRBP5kzm6
muMTPcFLFwl0LuDZezDm5F6sL2a1TxhtfTyb1jzhYVAehhXRipr80E+Ohje0DBWF
2FVAEO3WFigjczsrslXPkOQ368fIHkMklpWPtaLvvS3pZO4NgYbhMwFwu38v7hya
/DY0p2Lu7XaVEX/jIKJ89A/zPJYxiTpAlkMVn/CFqEI6UBLvcTV3CZmLoBK96urg
WeL4u/XBothLYwMHzZq2xMw1J7NWZY6usJm2gmW9MaEPLp0sd8Cs6Exb4LYTTdzl
58ZmlCOEPHDPXMi1MlY5nF24LhF0TfJYXIptZSjZTd5FSIQyyNtTFz0Y0m58FjaI
w0cHKKu++i1sFvReT1vDJ5pcs/d2WczCUzcA/qjEbb6wcovZKOQ=
=vyLD
-----END PGP SIGNATURE-----


--=-=LmfDa9J4lfdUL8=-=--



--===============2068916649390053810==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2068916649390053810==--


