Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 468CDFB035
	for <lists+openwrt-devel@lfdr.de>; Wed, 13 Nov 2019 13:14:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kEL9DHxcsVn3WHyMl0KgpyDSQG1DGbNax6JM4YObQ4U=; b=l+rnq5lFzoeQUtCsr2NhHOKC5
	reGYu1xVR9+8I71Q9ovyRn4PvCHrCqQLqQJ9tHvzOdsKKRaFusrj7vm9swzhOUSKRFEM2OidHT0NW
	vrhyeXOUbuBz6X8cBt2utt1zADJrLrSNPUKfbwNxtUz8YVS5q0Pk5cZIZPqC6zWnNOF18TNB+0IUE
	DlDClLcpzEPU6Tde8qZxx7YHC3tLxZCx0jBR8pgRUp+UvDkqu3b4PxTNlIjM5jdpeuXxIdsK8g8iH
	+xFUaEkBSdASYr0MabmTHypdAfQmLRQVWBEu5TGhqJx6UVPHI6X4/tTUt2t1zAB3I5ygEMVDLjxku
	/cc8tydfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUrXr-0005pQ-Vt; Wed, 13 Nov 2019 12:14:48 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUrXl-0005ov-1a
 for openwrt-devel@lists.openwrt.org; Wed, 13 Nov 2019 12:14:42 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue108
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1MSKly-1iJljR3MXg-00SjFw; Wed, 13
 Nov 2019 13:14:37 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Mathias Kresin'" <dev@kresin.me>
References: <000e01d59954$7241b8b0$56c52a10$@adrianschmutzler.de>
 <e5024ac7-56fa-8a01-6cf8-a62cce2f9dcc@kresin.me>
In-Reply-To: <e5024ac7-56fa-8a01-6cf8-a62cce2f9dcc@kresin.me>
Date: Wed, 13 Nov 2019 13:14:37 +0100
Message-ID: <005a01d59a1b$eb345e90$c19d1bb0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQEDJcfAR4UPDDhzNBsbbmoZJhIbbgImJEqyqRy60WA=
X-Provags-ID: V03:K1:H9f7ClPHClP72fXXgfAzzyyh8nKxYUwYCaDBRx5HYn9DlW7S52R
 3jiJFX80WF+o+YWtUTMajazw2PWfvc1dNGwDv3NESJeRmPl1vlXZ/FDipva9h5qDlJ0et62
 Q9wIG8Xl3xb97LKOpzIkRYU6MgoPBEZ7PuMd09T03UeyClG1FPKs2k2lISpMkdff4MpYCqi
 /pg7xuG8pHg+Tr25EtSgw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:CFRUyFe/fo0=:p6PulEOmbAY60iMWIPmIue
 og3RxsqYQm5xuL8yn5GEzpjSbVNqCrnAOLVKZfNPDcgREYU5t3OlwuUXOinrvLjhsDM3sWo5j
 mIRtCFMPwC30XTN3rx5oN4GyPF+d08UFAiwg1rsl4rpcYTkZLFCrzVwrXWDn5Nil8nWcCbsBH
 Bevv94Tnv6cOLJiGGjiGb4O98jQ1mRmdb7QHufnD2ahQMDVAK9nNgwSmkia9dxQHrOmZLBqyM
 FbmDykQIFwMkdbvZ2FOIyhDSHJ9zF9EGH1verNLpqd7VD1BkeIJf79sSXRN8Kbc4egea37yQv
 BDphmWOsyoRxg2NRB3ytCkTwGHhaBRuu0ZxOwn88FTiVQdzIRAKf1C+zYC7tfJenY/yGDVhYX
 4T5XRjnlMLHq7WbFFgy81FmPIXFdctVBXBWO9fn7seuyYrXepcgnjF6tQiVBUIpcgtRSdEl4o
 GYmDAxDg4H6GZlrdPSdpPlHaNOELPPnIvMUvUGRmd8DJsQ53fw2BVF56S251SMpUOeUMXbqyJ
 ulEmTBFrCxOBKqDSoyhmt4Tt/pSR6tC5iV5MhZ1Y2HLwcNpgn9KEz3RNKs+dK1dtlbNTRq4BO
 zJDXNfKxuNS8F/hA8gW5rU79JlTjdiyQ4mvfs7MBt2LpdC/9qdzDXGN87vpymDLk4l4DZKB+m
 2cyhhOonCFspPB45q1q5ZiLo1rUl0yH1yPOrhxWbxzwS80rsJxBvTEQUQ5HBRgQdouF3KhAkc
 1PwmcqSHdAAfMIVwG5rzK2zsV/v4IprbeUsvxChbGKMWKYYuv95zf4yeqq9kgc9jmeSdJRCyO
 5Sqa8eu6qVmBACVXikBvfU7xeZjdTw4ONhYt/y0Y+GGokTNqfRbcVrC+bExZBI/tT/kaYxtQI
 SgPkYTBJ2dYFjc1Y8QOXppNhfd0wMOiSV0ZGjbebc=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_041441_379887_05BCE730 
X-CRM114-Status: UNSURE (   6.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.73 listed in list.dnswl.org]
Subject: Re: [OpenWrt-Devel] OpenWrt: read label MAC address for FRITZ!WLAN
 Repeater 300E
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: multipart/mixed; boundary="===============5517103751590115214=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============5517103751590115214==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=RoBMWpLHXMvxVd=-="

This is a multipart message in MIME format.

--=-=RoBMWpLHXMvxVd=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

> Hey Adrian,
>=20
> all mac-addresses can be found in the urlader key value store.
>=20
> maca                  24:65:11:AE:CB:6B
> macb                  24:65:11:AE:CB:6C
> macwlan               24:65:11:AE:CB:6D
> macdsl                24:65:11:AE:CB:6E
>=20
> Following the fritz_tffs call in 02_network it will be:
>=20
> lan=3D$(fritz_tffs -n maca -i $(find_mtd_part "tffs (1)"))
> wlan=3D$(fritz_tffs -n macwlan -i $(find_mtd_part "tffs (1)"))
>=20
> FYI, the label mac is macwlan.
>=20
> Does that answer your question?

Thanks, that's exactly what I needed (and easier than I thought).

Already applied it in https://github.com/openwrt/openwrt/commit/d421a8b9448=
968de0e3265f5beb469c210a909ab

Adrian=20

--=-=RoBMWpLHXMvxVd=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl3L86cACgkQoNyKO7qx
AnDKRw//Wq78ZB8j7epIBaZZQeO7LgITTEzQ30a8ghPmHLt6vwje1RLEuQuHV4Tb
X+LCpAr6XM7BXw9HcwuOV6370WY0NimTgZ5YXdL3TgR5lC4kNXVICaC2myQ+1JyG
9OgGyJTH7PD2IP829p+bq7ZGDXB9Qpb88TdJunjRixP2Fd6KYPhjBU4SKCoST2/R
GmPBEm3GVOjF93PY1TWai9oMprqhesQhXZRCf27ocXRsnSzguh99ybgoSY8FtBVW
62iI2uqB3un6CeCRHR8agaDdG9oS4ER3ZQvrDIkKqKN8Lwpy0QN8pVVWx2xLEStM
50jA5JPTQW2N0Eixw+9VKee6BoMG5/5ZEAFGSHnBhHhTnDhjDzz+kvdGzAu5ezyP
mt4HcDivHPH1+IxMgryc53J4mzj6VROLVhYf+0Ls+Co7AUJJk7vr0JDJgXhJ7+eL
nKrrAUvta+PUSq0pNhj4J2M9RI6/h/BYFLnAOUMoVVxk/cfdVutUVmMFlJObmL1z
/kM8wJThvuVG9eyjSv88+GzdeaPVEJHs7ao9SlokSdF7ElGtmLpkl92m8qYrRdCh
CPpcm5d5kuCh+qP1u8V6iEs9bUcMpulnTL58CLzuxtmbAPMf+sXXOwv+bH+GJk13
lzC15HgLC1QapeqHVzHfbaWiA5V3FsZMzTJcOS9UliQKnQ4u3fE=
=N1LR
-----END PGP SIGNATURE-----


--=-=RoBMWpLHXMvxVd=-=--



--===============5517103751590115214==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5517103751590115214==--


