Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FA4D15A880
	for <lists+openwrt-devel@lfdr.de>; Wed, 12 Feb 2020 13:02:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=fNSndlobMrgGdBL12xrP/5WgaY0vBBh8zYZJ4fnBsnI=; b=KH8
	YytB3Jd4JeFLZp0NxKSoZMXo6v2tPb4wUwTQCP7WWsaQpMXDds2rfiSISjNgn7s62WMQZIADrNWqW
	QbAXEhrSTdmUOrdvjhF6if7pA6A78U5Bf6om+0AKgz5gYrqnEh1JFIQPdASOjC+UJcdaWaS/66944
	Kn8lBDC2dzS7oJDxqL5x8TWaosRU8kwJi+qRGmHExB6bz3U/8o9sd9Y3ILpvZUswlbeJUjKB83cKy
	Dec3x75PU/uSuEzl+bOIQGPQbapDbSulMyWsqpUhVjyC2tVDX81beNQJsUpLPN97bemDartb+QKtq
	lvFp6or1RR53Y2J6xSU9YDABuB6UKCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1qiN-000889-8C; Wed, 12 Feb 2020 12:01:59 +0000
Received: from mail.base45.de ([2001:67c:2050:320::77])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1qiC-00087R-5z
 for openwrt-devel@lists.openwrt.org; Wed, 12 Feb 2020 12:01:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=fe80.eu;
 s=20190804; h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:
 Sender:Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=FWrXJ3uqoGUFsKYVt3i6KCRGXGmh0ccEMPrBxbbwGME=; b=Z2H/Ieqb7QfHdXcWAAQBifLDMp
 TEe/GXMIaqrmP3njNyIdUAJjUsqWcAllN7GZ3beuWuizeNxrlAcG50xX6N7kPEHaiojVaGu38hCPE
 k+92PBqcCt0nBEoC2QBFT0cd0Cxdn/DHYSt9M0V0gE70PIgV0wesY80DA2KlZHSRMfiCpMrY3w4YC
 u2/Ski5drI9v18qudKtCRoirfPgyetbJqkeae+BAu90UWrN9UOEPjYBR3J8jV65q5pL4VPfcoYnLF
 +w0BSJ9J+NfTlmGsnLozIAx/Plr2uRJyJ/RTTVhxDgUUDqFbAUFbo1onn+7JNqJMuw8Mfm2rzpM9F
 OrWbXOog==;
Received: from ip5b4268bf.dynamic.kabel-deutschland.de ([91.66.104.191]
 helo=lazus.yip)
 by mail.base45.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <lynxis@fe80.eu>)
 id 1j1qi7-0002w3-CC; Wed, 12 Feb 2020 12:01:43 +0000
Date: Wed, 12 Feb 2020 13:01:36 +0100
From: Alexander 'lynxis' Couzens <lynxis@fe80.eu>
To: dwmw2@infradead.org
Message-ID: <20200212130136.1d350582@lazus.yip>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_040150_939317_D8843324 
X-CRM114-Status: UNSURE (   5.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] jffs2 runs into read-only on low memory systems (5
 eblocks)
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: multipart/mixed; boundary="===============8993147264460783784=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============8993147264460783784==
Content-Type: multipart/signed; boundary="Sig_/xeFzIynKV+peAkjSfY8A3r2";
 protocol="application/pgp-signature"; micalg=pgp-sha512

--Sig_/xeFzIynKV+peAkjSfY8A3r2
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi David,

I'm currently working with low flash system (4MB flash / jffs2: 320 kb,
5 erase blocks).

Some of the systems seems to run into read-only mode, while most
work fine. I've around ~50 devices which is less than 5 %. My devices
runs 4.14 and ar71xx devices.

I would guess the garbage collector triggers to late, when the last free
block has been allocated and moves itself into this situation.

Are there any tools to debug this? Are there any tests tools available?
I've dumps of the broken flash.

Any thoughts how to debug it further?

Best,
lynxis

--=20
Alexander Couzens

mail: lynxis@fe80.eu
jabber: lynxis@fe80.eu
gpg: 390D CF78 8BF9 AA50 4F8F  F1E2 C29E 9DA6 A0DF 8604

--Sig_/xeFzIynKV+peAkjSfY8A3r2
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEOQ3PeIv5qlBPj/Hiwp6dpqDfhgQFAl5D6SAACgkQwp6dpqDf
hgSMkxAA2YWei0BSDYPkBv2rxGIcjQ+CFSm0w/jCNf0LzNBrriNro5vTY0pqXLt4
TfkBIfhuLcXBZNkYOq5iVEr1V1EjDCXQ6EnQ+3Iep6QkRBuSbRPRP1qNCgzYsOxe
+C8O2jWRy6qyJ1vJAk1nKkpzHn9lYvZVbtY2+cROzIBPrFMqCrUJUPW7ba6P29Uf
Xf7royfARPRlBnIIX+L1J4jymeLmIf5MuSxwS/mE5iYcuTG/phWzhcVKwCe4J20G
eX3s0oJjM5nfz9e4vOsNyjSi4wwbjDIz13HlqueM8R1aY01ZzMpOYXSNnBybmQdn
Zc6cuP2d1B88sPUgcPjAvBexucr0b1hR3Ycdvsm/+bN/Fajf4d/u6b9mxYstzfHH
KNKaxFMXfXmSqZC2Hleg6dWJPoupbpl3wbG0IFabsStCl745teJn2mdVsL+kZoTZ
ENecR/R3RB/iH+ahXgmS7vXeL8uSRpJFTOxO7VKxcLshx7FPftAT+kS9m1DA7Gmy
x0kco91nqRtlFzxUGO/hamzWxZM8w7ucMX6YMYYRccIemK2+M73yf9oA8NPStStZ
fO79CaefkGxekWd3iXypv/f//6WRpyH0uw3YMBilRQLz41g44+mt2KM++U/HuhHx
nEMQ113PgdoHwxFq+u52OwhLA+azj8nDcMzS2gNtgVo7GScANFc=
=D3Tt
-----END PGP SIGNATURE-----

--Sig_/xeFzIynKV+peAkjSfY8A3r2--


--===============8993147264460783784==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8993147264460783784==--

