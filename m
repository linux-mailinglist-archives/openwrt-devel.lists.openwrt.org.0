Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20C4C130AD7
	for <lists+openwrt-devel@lfdr.de>; Mon,  6 Jan 2020 01:23:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+3b0/oMD0Z7iruPrhMzEXCqY4e5DRQTPesnEuUAoa2s=; b=E3jXnbXaq0r46y5ggIxaPgyGD
	FTQCsXTikSJ1/IyXYK148dnI+j8IdsjHw0Wh4AY38+bvWfexfpNve00iYq3mcVDPb2Iqs/p6sdqju
	gdUD5tinbu/oJnWuXGTQRsOuPFXC/4d9ISESRzHuBJo+M+JYltJKMHvzuIyw/w1uUOphDrGpuwf1p
	Ge8run+dMnRKXgn4hnziwy9UJOcHI2qcRgxM/00b/6Es1XZu/c4Dr7MhGh95LkfXu6fphB0SCtM6h
	/bgh9lX9z/fkRBKTFS2e4UmuHm4wpXMGtSEhIQUgyVOA5j1411agKYH3iSILVz+IPNofil+UVqUHc
	CtuT2xXcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioGBH-0007gn-Vx; Mon, 06 Jan 2020 00:23:39 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioGBC-0007gK-7l
 for openwrt-devel@lists.openwrt.org; Mon, 06 Jan 2020 00:23:36 +0000
Received: from desktop ([188.194.105.26]) by mrelayeu.kundenserver.de
 (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1N0Fh1-1jbWsG2vnb-00xMsM; Mon, 06 Jan 2020 01:23:23 +0100
From: <mail@adrianschmutzler.de>
To: "'Enrico Mioso'" <mrkiko.rs@gmail.com>
References: <20190917002048.1062539-1-mrkiko.rs@gmail.com>
 <003c01d56d3f$b216bee0$16443ca0$@adrianschmutzler.de>
 <20190917111452.GA9795@moc6.cz>
 <mailman.25352.1568730047.19300.openwrt-devel@lists.openwrt.org>
 <alpine.LNX.2.21.99999.353.1909171854080.1267560@mStation.localdomain>
 <012e01d56d79$a67cba00$f3762e00$@adrianschmutzler.de>
 <alpine.LNX.2.21.99999.353.1909171908150.1267595@mStation.localdomain>
 <007b01d56d7f$a787b2a0$f69717e0$@adrianschmutzler.de>
 <alpine.LNX.2.21.99999.353.1909171958450.1301929@mStation.localdomain>
In-Reply-To: <alpine.LNX.2.21.99999.353.1909171958450.1301929@mStation.localdomain>
Date: Mon, 6 Jan 2020 01:23:22 +0100
Message-ID: <045d01d5c427$81c41e60$854c5b20$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQHPCZHinJawK2ESMIjVbhdD0BHTvgENk/fbAjCsNHICNRzL5QEz+4ZZAglc0CwB1SBFaQHjxa05AgMP88endtRaoA==
X-Provags-ID: V03:K1:COY/3fq8O9S/FwnkShJKfKbkOALbW+NomTP7oOPWKTgHCrb00DJ
 osYNn9DedeleXjd0ltj8nKTItQ4bC8sKI7y6hIANfRG33I27scI0mKUhcrcio304HwGBm4I
 ik7HY6/U64gtTeB9j+6hHhI9f+8uAsxcyn3k6T+R/8D32ufRzbw2nWSCKsG60LVc2Q+jO4d
 xZ5sNZp2pgOTHm80HpVhQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:soMUlB8UQCw=:FNKzxru66xIzoX30zoOgJ2
 FpawSjaG6KtXwB5J2rm51qeRvzJNg55t97QM2CuIG51QnYhegInghYZGOXr4pMpVQCJgITRxE
 MGckluxS1ntfSMXqZv0qil+j2oztEB0EoYjYKLxyL+fsfDwJPqLxIutOL1C1EUJWlFYlkyH+u
 fbbugE2K2kmcHh1JMPmyR1LhiOysUgEe6vFdJaPIZCG8mpM2E53eCioM0u7e5FM9KvCN260qb
 AGMVTn5PWHWz3xKd8F2coJs0aUgm2YOMFFLm2wXKJPyDnDf7IE2MMVqqcWs2ASZtmf75yPT+Z
 WQlKtFXB/EjZ/nmj0ZGKY7SK03HXCcmi0SaNvsJcBJF3hnlMIHOFLKN8DsIDOzcr/GLITLQyV
 FzQAyKZJZjnCVwasVyHhvrfO+aWdWwXTGPu4yWj1U8uweC05iCYcNIlpEVLsfD4H9h95heNXa
 0l2GfSKYKN8t4r2MvLMmfsbA9i+VtlHIIzQNhKbmB3Sya98NZQQeMg5XCDaqaOJeTFEfr6miv
 9seCk/VRRu28y0mVygVq8GMkqxZ8Hj20zB6gcAa6Ua2MRjw5TGiO/W/pEuxz3mUgu6IbcrF9/
 AlXmaVnxbKWOBVexeRgrsNaxfgDAOlHUNEaTU+ftfBS1Pn0npXK/usZqqz564rFdwrkOLlVSC
 MHWOOXNDwjnI5sxcKp8xFqx0s1vvU4PcmhKhkUth/7bNaAKApN//YfDRC15tHZfQ6PyaBKZW0
 Fn2vMyTS0o297UR21ZIspueIlSP918TTc/wRHdJoPGYhFK8QMoHbn7TS7D2x7FS3NaZ+o33q8
 PUY7ZoGdOLcROKnrY+pJHYq3RZL19y1MLbGt3p0bANrDvWUz+DmKQ/XFk+IH8Kmnq3Ifbw2SY
 pWxvY/qrd2jsrBbCoYw5Hls56MIBmzgB82vP2BUOo=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200105_162334_566648_AE3C0BF0 
X-CRM114-Status: UNSURE (   7.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add support for TP-Link TL-MR6400
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
Cc: 'Filip Moc' <lede@moc6.cz>, openwrt-devel@lists.openwrt.org
Content-Type: multipart/mixed; boundary="===============7711949323565245793=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============7711949323565245793==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=KnzVN8eX/DwvR9=-=";
	micalg=pgp-sha256;
	protocol="application/pgp-signature"

This is a multipart message in MIME format.

--=-=KnzVN8eX/DwvR9=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Enrico,

> -----Original Message-----
> From: Enrico Mioso [mailto:mrkiko.rs@gmail.com]
> Sent: Dienstag, 17. September 2019 19:59
> To: mail@adrianschmutzler.de
> Cc: Filip Moc <lede@moc6.cz>; openwrt-devel@lists.openwrt.org
> Subject: RE: [OpenWrt-Devel] [PATCH] ath79: add support for TP-Link TL-
> MR6400
>=20
> Thanks! I'll take a look now.
> Still, something should be interestingly wrong here:
>=20
> root@OpenWrt:/# swconfig dev switch0 show|grep -i link
>          link: port:0 link:up speed:1000baseT full-duplex txflow rxflow
>          link: port:1 link:up speed:100baseT full-duplex auto
>          link: port:2 link:down
>          link: port:3 link:down
>          link: port:4 link:down
> root@OpenWrt:/#

I've just unearthed this topic in my mailbox and tried a port myself based =
on your V2 patch.

You will find the updated version in a branch of my staging repo here:
https://git.openwrt.org/?p=3Dopenwrt/staging/adrian.git;a=3Dshortlog;h=3Dre=
fs/heads/mr6400

(Most recent patch there.)

Despite several minor issues (sorting, rebase, etc.) I've also addressed th=
e following major issues:
1. Use gpio-export again instead of gpio-hog, so LTE can be switched on/off
2. Added adb-enablemodem
3. Removed the phy-swap in DTS. This is not present in the mach-file for mr=
6400, only in the one for the fritzbox 4020 you took as blueprint.
4. Adjusted ports 2 vs. 3 in 02_network based on your assessment. This will=
 most probably be wrong again now, as this might be influenced by the phy-s=
wap.
5. LAN/WAN LEDs still won't work properly, as at least one will need to be =
changed to ucidef_set_led_switch, and I cannot check that without the devic=
e.

Best

Adrian

--=-=KnzVN8eX/DwvR9=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl4SffAACgkQoNyKO7qx
AnDpxA/+NCduOa1LHjbQdfkOLVwXmlG9qswFpn+c6ZXzW9fhNRNPfAxbX+Zkq8RR
in8xpxwkG/uxP0hPOw5aOaxdvpGvj2toOkH94XQABjZBJBA7btXEBlDmgqpq+pHW
xG+DN8zxWrGLwPnQBC18kVdLB/h7Yg2pABLzOl/EXCYuPopcvK9LxhHgVw76VlZ5
vRo9UjcktXWYb61R7lZyHz9N9G8tOYJ9QelTtIhAUS1Efb5xfjh+OgEtU4LJBe85
uGnlsUDVlUgO2bJ/006cMO9V0L/2v5DD3ghsh982ZdmpSJfCtF+G5UwkAFbcsfZu
cp13f64x1Newq+K6VFxKNpU+1iodVnzuH1IRsZsrTCtUONoWigja6K9iuxn3qUGV
+EEPi1pKRka1xeSacFg8KiCqpB+KxxXW1FJEFig0Q06n0hH5PQ7Th95buKAIj1MR
2V8IBKBe8D5pdCmttXG4qGX8E2buRJ6OXrfrynTvGQWwSDG0Vp0md9LOHkb+F52X
sWqlyNLm7SSe/ABSGvp0l1IpFyO0UCXb6L2yVHyZdyhsF0mkmr2X/5pL1tGwDpDW
nTTucU72pPYg7DNuKjbrgd0tj47O8oYjFBpesroU0Tpn4mU2uTtaq3q8QDjhyU+z
G4v3eZpYbAkKeieW6Mtu5bZcbzLU7lZ/s1qv/K4hniaLh4fBpbQ=
=n2qS
-----END PGP SIGNATURE-----


--=-=KnzVN8eX/DwvR9=-=--



--===============7711949323565245793==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7711949323565245793==--


