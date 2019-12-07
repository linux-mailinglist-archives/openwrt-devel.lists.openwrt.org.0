Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98941115F56
	for <lists+openwrt-devel@lfdr.de>; Sat,  7 Dec 2019 23:36:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8QjTHx8Gw5OAVNo/r+m3NH3tdgZnKboks4Xf4sne8OE=; b=mHF81kzE5YRtCGSX9QF6kA5hF
	6HqeMZxsJV2S92I5sBZKoeamu0f97mlY0R6l+cnuDFLED9YpqUdfpT2M4cNyACzsqXwFhNjq7vd8X
	+yUiNjAiQz1sUoafxM+4XwL4Jv5RF7wtuSjPSvR8aJ5J+nNgdcnvOoBtklNHL/WmKq8yVlxgckk65
	Kq/Qa+H15JrqxTKT2r22sRx+Thsy63cTuwEimC3vqbqDMF0vPLDT9EsG/ZefiESusuULJa/WPmjZZ
	GbVuBibHdHzEBlTrcZ7cqnKypVxwvLzWFKOUvfXvrz9YeVkKXEKa5O0eD1YkIs/0hDQIA+QXHM6mL
	MWLx/uiDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idigW-00081u-4O; Sat, 07 Dec 2019 22:36:20 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idigP-00081W-T2
 for openwrt-devel@lists.openwrt.org; Sat, 07 Dec 2019 22:36:15 +0000
Received: from desktop ([188.193.231.72]) by mrelayeu.kundenserver.de
 (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1N7AEs-1hfPOg2dh6-017TPM for <openwrt-devel@lists.openwrt.org>; Sat, 07 Dec
 2019 23:36:10 +0100
From: <mail@adrianschmutzler.de>
To: <openwrt-devel@lists.openwrt.org>
References: <20191207222826.47389-1-freifunk@adrianschmutzler.de>
 <20191207222826.47389-3-freifunk@adrianschmutzler.de>
In-Reply-To: <20191207222826.47389-3-freifunk@adrianschmutzler.de>
Date: Sat, 7 Dec 2019 23:36:10 +0100
Message-ID: <009101d5ad4e$b9620200$2c260600$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQIg8uL5W0LbU13NgEjaIr76/4apSgJ0476ppwUQIXA=
X-Provags-ID: V03:K1:Xlmndy5p8/QPDaRZ1/34Y5IviKDPZhgP8KBt85sDi2yCbOxTrwQ
 djril2RB+LDw69TPJ+GPLkgBmzSpKwFEmw1rUcz7F/iT4lm/9Hn/U00zFC0ZdgaBekFQC+m
 BxUOraLKDj+EeVuStX56MsWuKow/dnu3YsUtI2zrxjV+V30B6IgRAjChppUfTyj6uR6z4X7
 9aJpDyLXfWCrC8z9Gwqjw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:wWHL+bMTTv4=:UpU+CqdKSYlrCdsvjdcC5/
 u9FNvBYtHE/UvLBezs1kOSeLNMr7iJoevRF0ubJtcgMaiIgHWFsOiCNfwMPdG3aIq095xEKGm
 wCYFIGShI3vY3uys+Wo8wv0RWbcULLgmtRsmzzbfH/WjSdjfqvbBTLpyjhvZtkRDsbObt9oeg
 3T3SO6/yJl/kQ7+IkD3+nUvvuMJ4EkKLZtX3mdCtR7yffZUpw5rVTlmZyF+tWD726Lx7D/nbd
 /Qt5Mqtrd3Znbj1jc5RDn7frTzxcZwiycox3embKPB1GXrbgo2NAK8+xtMr4cxslyXfcA20NO
 HYoUV8+CZJJGcHLzi0LK8/1Io63cnkB0BPW4ucA86LP+yquPlDObnTnC5VamDrgnA7yEZew/U
 i/gWdsBaIMRBgCbkFkrmTnJm1O47RzBhKwF0x+1PjIgf+1hCWbZYI+fXpPK5wfDiTE+KZmgH9
 2nsBc2Yn1WU9sZ0210OrLe85dnQRpFgjrbcW4dNZAEFeqeMzLRfr9LlkQuWhN9j5ZjcKMHr3E
 ha0EsfefUSAGCSS/h8FJRAr1Rw194tDjBSI7JgsTByQBX1B4gFAKukFRejjM+rEnXsvXRfhMJ
 KccQukij5mBVTUA6vZQBFcmV7fb1MN0tfdB8HA7Ed3jNRUvpZng4GHKdHmiJccGyL1GxP+upd
 wcp4TdFEBua3+adB/BVXJCyXop+AmmHtMcypTXTsxg1DNraWp5FcZs6RjbLxfqiBgcEteP+Gm
 qOCgdUOGxsdP/8cDxDef67UZu89s44Ri5I0K5jENrbeHC63pF3tiSGXEfR+XS0pjzbvhatHkG
 hSMUVv654V+LvLbsuxsm0m3qKU98m2HMj43nVrHQB4kMYfft7sMtwU+GDDUik1MaEJe67PbZw
 hoPOuI/oCJS62muYqNr9/VlLWt9DHuDXrS77qg0w4=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191207_143614_233480_5FC3CD1F 
X-CRM114-Status: UNSURE (   4.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH 2/2] sunxi: construct DTS name from
 device node name and SOC
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
Content-Type: multipart/mixed; boundary="===============1266363079867015952=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============1266363079867015952==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=XMvxVdaVBbhA+p=-="

This is a multipart message in MIME format.

--=-=XMvxVdaVBbhA+p=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

> -  SUNXI_DTS:=3Dsun7i-a20-olinuxino-micro
> +  SUNXI_SOC :=3D =3Dsun7i

The extra "=3D" has already been removed during my build tests (just forgot=
 to commit it). If someone tests on this device, please remove it manually.

Adrian=20

--=-=XMvxVdaVBbhA+p=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl3sKVcACgkQoNyKO7qx
AnA3Aw//ZdNNBxE9xfY/cgSsMKraiobRRLAsaJtkHzOpUPwQZqcC6rmE3B2OhJv6
yzjflVfMy6Onu9rNZrxz5FjbrOD1ueKbR7lY88qS169kQ/GSRYWE895WYKN7uwvo
8gZgYFunDC534hvxywAfiw/R2XqXNeFzmzcgogWiOB9XUfprrnJHz3HTZNfa9yBK
mqQ/SwKbGF/J0dCECpUcaCeUeWh3MwA76/CkqPYdFh8ynzgngEQVKxw/MWioM3dp
nHPK/Cm7FB1g+B65bgs8fZQqWYr/srarnO4i9JZLDoqYVT6bPIM0V7cfsE1JMBL4
vCGDNBhRzxkB60t8BNEDwNmWms1MIScM7Rj9/tiMQHu1gRReYfN6TRdXPYUosFFx
esymKKpLMGT6fDmUsPdoF69EkMjnfuaXZznre5PeVgwpsSDX+hzYTh/07Uoo9Xhb
7EA7FpOk8PPMkk4CRSup7/A479N6mrSIYEo0ar20xTt9Y8LWatGnZZBv/PVAUmIA
bIYrqXc+lc/yx/skXjqhKxqM+yTmrkpoE6TIX6HEbdspUQa6PC7tHGNDkh+/nJQ0
YZPTqpDyIFrryV/R4vQ6R6shfEKB6eS+ksz1gN5MDjwlRxkxuARdEdLAL+UIFFxU
W4HLMkYtBwgovIxF2sdCjlMb5rm9H2/t/5MqtBWni6DAx0x4ix8=
=BFqy
-----END PGP SIGNATURE-----


--=-=XMvxVdaVBbhA+p=-=--



--===============1266363079867015952==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1266363079867015952==--


