Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8839833E3
	for <lists+openwrt-devel@lfdr.de>; Tue,  6 Aug 2019 16:24:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MSfUsC6NI5hHCs/d3gkO5KXnDd/EKr2xbsStcWrL904=; b=kPvsNMQGxrh42NxAwpTfmBSAy
	9cundFhJb+Ab5dcz3x2OWAqfmzCAUWyaDG86ip7cvgeZldpMkdUo09XiO3gE2bcz2XC9Roki94mhv
	z5FT00Sqt3KDkNyfxtH+9uInPUp2U3ndoiRw5RJ5R4lHB2CXJamvUbV3uCr+jM10xq1X74O7q3DtT
	CGY+m0FJDPVjcCDGwx1YqiOJ3fuXB71sjJ5yhIOs+8e8LueD6Bgyyw34PTMCT7Lzc8moiWmOx8fkh
	Dc5mCB6XH60ifWbWgHQqXkpX3yvhTfJl2lFCFy1/zvha4FNnX5pqKah0O95tx47eU/riE9sx2jdAB
	RFsvICjkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv0OR-0001wD-CJ; Tue, 06 Aug 2019 14:24:51 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv0OI-0001vw-Ce
 for openwrt-devel@lists.openwrt.org; Tue, 06 Aug 2019 14:24:43 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue107
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1My3In-1iG7DM1AFT-00zU0x; Tue, 06
 Aug 2019 16:24:39 +0200
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: "'Michal Cieslakiewicz'" <michal.cieslakiewicz@wp.pl>,
 <openwrt-devel@lists.openwrt.org>
References: <20190806155540.4e27407b@kosmio.komorska>
 <20190806160347.2a851c4d@kosmio.komorska>
In-Reply-To: <20190806160347.2a851c4d@kosmio.komorska>
Date: Tue, 6 Aug 2019 16:24:39 +0200
Message-ID: <012501d54c62$ae580e10$0b082a30$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQOL7QHnymnlz/3+5VSVADj4hR324wKE1QMbo2zEgmA=
X-Provags-ID: V03:K1:J+99L02UhmFtf3vvtu6YbkgnSBam+iZcQ2DqIOFQ7NUdOptyOqm
 Q+usbHSZkwOs+NlYfMf1GdX38PiJXXc+1nbrGanYfGAZennJcVChLBehUV/4qnNtdZ3yIuR
 lFCiZhX5aasWx2xZ9I/TDvCq3myeOnrJd21W227AlBw3nP2194x2+4ow/+q/vNUKPCHuyHM
 Qk/G45QzQnvrMBjVNprlA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:DmRyJj2a0k0=:omvS7+0M3VuKyujnScPLSf
 98EdB5760q54d9rBJ8NzbRIyN3uIRnZRvI//GOUeorxsm0nokTc7E2c9+Rb8W+nfIwHQyHO0P
 LoGM7IvRE/+i9ctYtC7mi7ENIVQ2lmuoIZu+j7YYs4qwP4MZ/lG+h5BwNyxN7kgxYuQot6io1
 Czal0wACJfx9A3TkOXmAFPC0QaHmBAc3STSVpGRPklvXklQtgK1zNSUyKFeAcc+7/w3CQ9Qb1
 Yf+Chf3ROf5cCQrZ7WOjms6JGc10e1ywIyK8Jv43H8ILDcRj7SjapsD9xIQqDkeRRDUk4mMq+
 410Lc35JcDWYGDvislE2ljliyYx24TXMihD4EXlhSQm3OClShJNn6g/SNv6H365+lswmNKKEh
 PlujNmF15MHMPkfX6PVDrnQsWgZvzjzdXAz7W6lCAFDYO4PQbVnvZyxMEFN+1xsS83nelbe3T
 9Nf97RVZI6YbIX8Bg30tHyRjY76t5jRDh2FHbFKZ1sXZ9kaf5B0XJXymHXTngeKD0lrlmqnvL
 d8INA/WPYHN51xFoRMLdJj9vRApL1K4ETwOBNrJVsdTCUJ8p18QI5naPsLvvb7EM0F5TKxI2r
 PNB+bkhWf0PTclLkyGhsYV3AUUWh36ZlVi4UcU9ahAC5CGxDiiyCbQ4MvvmfUCyPLfYoEeWPb
 QSyUVXQIgcEjbhccT6N/FjYZMsnA1XqPi6bqPnIs9AWSlGyEv4YqXcITIZZVRo5uu8pmNnvhN
 L0nuJgehqA5Qu0N5I1Bq4Ep1OC0MuOQe44a1uw0bTObXqxveqMIzNtNcwVc=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_072442_724631_688E1233 
X-CRM114-Status: UNSURE (   5.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH v2 3/5] ath79: add support for Netgear
 WNR2000 v3
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
Content-Type: multipart/mixed; boundary="===============7674395954353550287=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============7674395954353550287==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=ybBg/cLd2pJ0CV=-="

This is a multipart message in MIME format.

--=-=ybBg/cLd2pJ0CV=-=
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

> +	model = "Netgear WNR2000 v3";
> +	compatible = "netgear,wnr2000-v3", "qca,ar7241";
> +

please put model BELOW compatible.

Best

Adrian 

--=-=ybBg/cLd2pJ0CV=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl1JjaYACgkQoNyKO7qx
AnCLeg/+Nsb+8EnPtZbRCCwUwCbUBvtq2z7SjiCGe1kHuZao5/Oy1dFae7n8hL28
IPMowgv4PY1ZNkJLr9S+7YB5Y+++Hpu3To2El9eO7t/Zj7eCaFacwYOmkxZ2dcer
XWD0Qp6/f4KzlC6Y25QxmnMJt3HjE+bCCbRogecTt+SIGWrRXUYMKO5MsP4Tr5O+
2r8lMBlQgMplwtCqYMoQHL0/2vsp3VJxs1iDLuK8FnsgrKa4Wf5l8fWomJybv9Gz
5vVsv3Klsay6gS1FT/hBNgJ+LdqJHQ5TOaqB7lRiidG4SVsIXDqhXRswuIpW34A7
ad8fJhWSA/TMOZOmr0HGYzOOMwrfDYEYfDzAvImPDiXfwAwZ1N0YHlBUK1ewZEmY
8H8/ivUFCn2I+ftS5/IIQqYG4vjm7mlA1ftu+JyRmUnmgJJEgs7tO4bBnSJQRGsj
0NOPunk9ciHqtt+R7+ad45BbyDzqC6M7oGoPu8cbQtMDruFFqIXKMIhQraTARNFy
8lR8CrmGJ1CNncmxvw99zHp0XVvMhoa/Y11ZgOXMpqCyQa5f5j5Z665AIsCrV91H
BdEPEtQbLCjvJQQ7Z/81kvYuuKtMMdD27t2DiLMFNJdPiZbaeSA/eInJCYUqXB2b
mTl+CtPcMq7ZUPmbrSvwapUj6aoP64ldnEYcB584MymEwPnyHqE=
=ycO0
-----END PGP SIGNATURE-----


--=-=ybBg/cLd2pJ0CV=-=--



--===============7674395954353550287==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7674395954353550287==--


