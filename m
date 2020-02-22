Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A282416923F
	for <lists+openwrt-devel@lfdr.de>; Sun, 23 Feb 2020 00:18:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ThXvJPw7aE2IyLAlFsQw8cUhiOhRTfAVjem9wZ0hpbg=; b=F7/9sbMmEkpArPbpthE/jJcyK
	v8xmROVuFRJ0MNtSQvN6zwQM1ObbMgmuX38lsZ0/C1K/8XcRUmnRegn19HZiJLKsCCQBSYW0W9mWr
	16fxaniossAGyQcxUEh0BN6RDExnZXH3eX4+utfmbjjVk3BpuxDpVdy34lITUB6iI4SzdwECFrcMk
	lpykM1NgewvI1sHpdyLt53LEYr5k6zIa2GflGcCztVjzK9K7q6Cc8QfNv9S064BuzZQb3JHHfiyge
	PuzHz5586mXhlO4+Sm5H+CJ7Afasl1VEhfpr2gjLPm65/Ufqrml8CegmkrCjo8G5u8lYKlJlf2oWy
	uWqxLfB+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5e22-000293-T7; Sat, 22 Feb 2020 23:17:58 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5e1w-00028a-ER
 for openwrt-devel@lists.openwrt.org; Sat, 22 Feb 2020 23:17:54 +0000
Received: from desktop ([188.193.230.10]) by mrelayeu.kundenserver.de
 (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MeTwY-1jfnf43bjY-00aX4G; Sun, 23 Feb 2020 00:17:46 +0100
From: <mail@adrianschmutzler.de>
To: "'Joe Ayers'" <joe@ayerscasa.com>, <openwrt-devel@lists.openwrt.org>,
 <gch921213@gmail.com>, <ynezz@true.cz>
References: <CAALvt2PXRSyLhCwYo3_m8yd8xxAdeNnZNa6wZ7jyu4bp4Nb86Q@mail.gmail.com>
In-Reply-To: <CAALvt2PXRSyLhCwYo3_m8yd8xxAdeNnZNa6wZ7jyu4bp4Nb86Q@mail.gmail.com>
Date: Sun, 23 Feb 2020 00:17:41 +0100
Message-ID: <012401d5e9d6$4b15f120$e141d360$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
MIME-Version: 1.0
Thread-Index: AQG+XcS1OJAlHbDR4LY5qNoejkY8hqhW8J1w
X-Provags-ID: V03:K1:seZ18q2RPNxl/6yBtHisbWGX+5GWi4b0WO3WCJyyibzl3yDmwiD
 hGujplUxHrUvqOMtL4/vnmKOfhAFAbb5fZNsGbk16qKsLuHvb/ZsBpqSlPoXsMHC0qZX8uL
 ooEZiM/NTVqBQcb/5GevkwG5joyJltGdf/7vI371A2kZSzPT4JIomQjzGU7VlOnasFS8L8u
 a9UL1CMO0y4FNoHuFKG6w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:JEyUvdoZuqs=:6MhocR7Ig7gPeBgv6gTKAy
 Ka/byKtn+Z3QGTXANPJsuoualoHhhiYN2DqPnFe9a+gNA80//aT5/zFOrfPjQhTIkumGI8koA
 eL0nAJ/3YcCAbDT+CbXPUFfh36E1VbZcQO2ziDAPbAJG52ede476H7sWTFfGQ8PnpScTr21lC
 5uXpApfff9Dybvjq5JQ62D7Kc/s5Btrc+BYEIuN5+MT50lm1hRRIhTVc9UhHP1lsoTvXmbr0q
 uP1BtegcbQVZ6WhLBOhoaM4XSdetv7NDOhzb6tlIom1v5d//ns89c9X7xQ3YJgv8Mda9A/oyA
 DnmzR6TRnLN+hXrmfICdpZyyF5aqRmZL3+R8ml9LYE5Y8PrwDjaZX3YTQWattN0VkPdqD2+yZ
 FnT6qLay43hZXFLukVFv1P1mC9tz/QRLNGw07vDhrgaihbCpAzFC8B6gv26HjAnBhEkhR8b5t
 4qWKx2S8bFNO7kYJr0GllAHGfyWN4+JmS8DqLyZYIihzUgfFSUvRama3KIJWocvyi3GqEmN38
 ISU0HE6FNo24qnEh5ZDJ72Pm2A1IGdzBTWo55xVwZqpU8UmrKiF4HoFadXtlp82f882eDW9BG
 exTNJRRqGU4kuryFhFOZe2uQ8dpeUDjN7YKBxyxXJfDe3cniCUyI/bKOU5+CS+ukNYhPvuzmP
 uXFXcspHLTd1zInMcLaKRIxJ+C65Ju2oR21rTv6mbsHWrykpxeIgvbFMomMW22qgw0Dyr3FEh
 dxLP+Rklwd/Px4r58Do8q7Jk7ZLpnyBnMyUE5ll7Z8+Xm9HlkCFeBSnnQ4PTb669uJIIDRs55
 ksB4F1Ap3UFETBw3RUsLwrkoTHYDQFN6CvVAfO6tJa4FbwjzeiKpaDqz6aA0Dzz2WsjhxTy
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200222_151752_784400_2E6BE90A 
X-CRM114-Status: UNSURE (   6.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.10 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.10 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] tplink and gl devices accidentally removed from
 02_network?
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
Content-Type: multipart/mixed; boundary="===============8859508850743623019=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============8859508850743623019==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=TQpkRetLBlSo/i=-=";
	protocol="application/pgp-signature";
	micalg=pgp-sha256

This is a multipart message in MIME format.

--=-=TQpkRetLBlSo/i=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> In 19.07.1 and master, I don't find definitions for a few devices in 02_n=
etwork.=C2=A0=C2=A0
>
> I'm debugging an issue and did not find a definition for gl-ar150.=C2=A0 =
It appears a few devices were accidentally removed:
>
> - comfast,cf-e5|\
> - glinet,gl-ar150|\
> - glinet,gl-ar300m-nand|\
> - glinet,gl-ar300m-nor|\
> - glinet,gl-x750|\
> - tplink,tl-wr810n-v1|\
> - tplink,tl-wr810n-v2|\
> - yuncore,a770)

I haven't checked all of them explicitly, but those I know just use the def=
ault case in 02_network.

Best

Adrian

--=-=TQpkRetLBlSo/i=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl5RtpAACgkQoNyKO7qx
AnDY9g//QssGhLl1gBp+tL8AVvDpKqmK9n0Shm57Pijmo7XmDzf8Iq8+We5RPQ3k
p05Rkfet7VuDwdmwfT15uZNnYf9QvG4k1ATV9b2ecfMM4LhUFem3Hkfn8LhKYDjE
yBCK7wtjwr3k4z9nWaIGLTyICOiCPaDMW1/d8DnVj9zGt9Tla2ZK4v9QJ75VvxCD
WZ77HcJBA0j6klM57G2d5Ccm+lxXF8ebGdlRjns1Bw58VdG9nbGjfC6GXLIlEIO1
kWUyxCkQPPUaeLVk0QAveR5SYll34D4CZQq2s+zeXOnyKdXubinaIhQ3JIPFM966
a5VcU+gvenUf4o+bY3z0KpHg9XmKwkczqG9FZvl+RbziEnSDA8ozZqGTy3Pyn4gA
hae3VxfJ0bATj0mhGrD2X3wuhzAqe4EldakeN15jP7jLekoNxhJ0tzcQex0tCjHq
ZPbLhs3CrYepq7R9psbSvc98Uc+lMr1quV7Dwz3LZxxahwRbyVMh3iRJ6TSpimsP
XU71Z7dyG0og+7m3FdmyYwtpDZPviXtIaXssCcY/bO0XsWFZ8U1RKmetScekNCoq
jgxP0JovjPumwxeIQUmsFvbHlEMay8Y6SONsVPFrncXrw+TFXvlt/yEA0pZ9KsI2
/4R0nY21X4AWnnHG+cVcf4yguXeXlw/Nn+r6M8HwNwFUhxCVf/E=
=GrOr
-----END PGP SIGNATURE-----


--=-=TQpkRetLBlSo/i=-=--



--===============8859508850743623019==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8859508850743623019==--


