Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 200FBF091A
	for <lists+openwrt-devel@lfdr.de>; Tue,  5 Nov 2019 23:11:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7DHVg7xPEYR51NjecGL9c1BwIz1wxtXQ4Fb2EOCmE48=; b=jRtvYQcjJ94vWshqWcL+LmoVt
	dniRkIFxO5eqLujHXFN7qO+pOYKannr8Ky7SzHy+o716ItlrcqZlq86ugOI3EOqkNvxPA6lfy9lCQ
	IQgtXA+rToDJcPJ6l+gBID/4Gf7imCS+GF7dzd6RV19GCG//+xkqvgf8zWQse+Hr43pC363LGDOMb
	DIGaiRdLoO+lkPm4aF0y1PWbu+XBfBqua/y/IFsdzGzIELfkhRkBJxE7H2faZcaUAOLSwCFZMtT4F
	8DOy0BoKbuDMpOsZjXTGZlpsRDJvH0/z6HLyVnuWOMDxW8vuoFLbzyOorQqESwV9tIllTtJ1mPC7E
	dLwsVtLxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS72w-000527-JC; Tue, 05 Nov 2019 22:11:30 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS72o-00050i-GE
 for openwrt-devel@lists.openwrt.org; Tue, 05 Nov 2019 22:11:24 +0000
Received: from desktop ([188.192.135.195]) by mrelayeu.kundenserver.de
 (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MGQWr-1iiIRl0Cjd-00GrWQ; Tue, 05 Nov 2019 23:11:08 +0100
From: <mail@adrianschmutzler.de>
To: "'Enrico Mioso'" <mrkiko.rs@gmail.com>
References: <20191105151202.4709-1-freifunk@adrianschmutzler.de>
 <87r22m1dp3.fsf@miraculix.mork.no>
 <002e01d593f8$469ca0a0$d3d5e1e0$@adrianschmutzler.de>
 <F45BEDCE-561C-497C-95A5-099BB15DFF6C@gmail.com>
In-Reply-To: <F45BEDCE-561C-497C-95A5-099BB15DFF6C@gmail.com>
Date: Tue, 5 Nov 2019 23:11:07 +0100
Message-ID: <010201d59425$ec8f1b00$c5ad5100$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQIj3krgsob+/zBNRWrfaNFjtbIbyAGb/ndiAaefjTcBAgsdwqa+YPEg
X-Provags-ID: V03:K1:ds71HAfFsjl2fQtW3cCO87IpLyleuszCxZFFj6p9ttzmg/LYUwK
 ZWOUhvACTrUHtit5qHQev7oC6lixyh4DvaNj3WkCCV1F+Yhl6aOoXjOzTh+W2wJr8Z63+uC
 yVAYcgREsNnjJ/dA4jwCA+Yd3UdihysASPInPmuOvm7q+w3M4PUOOaDut8J7x0u7Gmi52x5
 MD6xAE4EmkTPNzC51ns3A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:9a8rJ74NXGU=:d+wTT3d867CX4o7JyeRoZ2
 kqPsIECy2xMdNr11qFRPVvKgQQQ8/WuezhEKOKvKrEvIUVPwZNadPwvnm07Xky3It1NHkxrPS
 IKxE1HufBOSFo9g6s+4H6QC6Tea8CjrYVT83x1S7mcAeLh+j0xQR2h69Mt7G4O/rIflr8e4nS
 asO7Pm1wD6EhsdHQdCHEYWT30u8iinunQJsMl9so/sdvnVsw+fuL0g5xIIe8m+ldX3sOzRCbJ
 ksqescv6kkSTqm95zqK2JWhYYmaYfVDbwsCZ+L7OhB+YNBvzjySWZmWCl8Jm+4FK665dCOH9R
 mIwT0oqoS6s5UmhSTxuE7Ju11IgyiLSRjDu2oi1LBa+Qv8aZvUDrq9mnjyD7QAV++Gu7xnYIq
 fUE/N8NFMWFYn6JtN9w8E7Ri34FN2I8nhBl+2RZTxTmdIUHNT/PY6ktCNMz1IKUnc/daCfb2h
 956TwCakqNCX0bW7vLSE+Li/rUT08qcAGymeLsMQ++PxTBI+9WvEF8FXpeiQX3hK5t8L0c17C
 YbIW0FTNU8YgU2sHsfF7reLU2Ua1ckvNJw5Fzxus23x+OfGiW1pdCtePlIww6EN4pVRkytnN5
 mDj/Y2Oew5+0ceEYnrVdImjriDY+6vOZrBDuxi9/mPPhOpmVMIbw8Yoo+tCTZmW3rxhJLQcPX
 RiQ8tYxrDpgSK3KoWAPtO8dZSyFhCZW7ccCwqb0C6tiETzh8+b4d4yljrU61Ph0BERefcItbl
 xTjD7g2IzApIjJ4OM2LmRUhN9N2ORK2lSQJN9ef079aTPvQeaZ19UJikU1UN0+pBrswJSjQxR
 F8SVmnNezuAKuSwo4QTxSLUYLf5k2zbhaJldW3EYf2FV1lVr5BP0InIHvQSPd2BWGHrS5Y8w9
 UdJwT1PcpQcVceymTsXPxy23itPdRUgayESjnBIhY=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_141122_838634_CE397AC9 
X-CRM114-Status: UNSURE (   8.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.134 listed in wl.mailspike.net]
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
Cc: openwrt-devel@lists.openwrt.org, 'Birger Koblitz' <mail@birger-koblitz.de>,
 =?utf-8?Q?'Bj=C3=B8rn_Mork'?= <bjorn@mork.no>
Content-Type: multipart/mixed; boundary="===============2513483010892661556=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============2513483010892661556==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=Z9XnKZ2tQCJNoU=-=";
	micalg=pgp-sha256;
	protocol="application/pgp-signature"

This is a multipart message in MIME format.

--=-=Z9XnKZ2tQCJNoU=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

> -----Original Message-----
> From: Enrico Mioso [mailto:mrkiko.rs@gmail.com]
> Sent: Dienstag, 5. November 2019 23:07
> To: Adrian Schmutzler <mail@adrianschmutzler.de>
> Cc: Bj=C3=B8rn Mork <bjorn@mork.no>; openwrt-devel@lists.openwrt.org; Bir=
ger
> Koblitz <mail@birger-koblitz.de>
> Subject: Re: [OpenWrt-Devel] [PATCH v2] ath79: use gpio_hog instead of
> gpio-export
>=20
> BTW, being able to toggle on and off USB power is essential in some cases.
> Can this be done with hog? Thanks!
> E

with hogs, you cannot enable/disable. This is the reason why this topic got=
 stuck in the first place.

On ath79, it seems that usb_power is only used for external USB ports so fa=
r. So I felt that the discussion led about toggling USB on ramips would not=
 apply here, and that choosing gpio_hogs over a user-space solution would b=
e preferable for this case. With any new device support for the last 6 mont=
hs, USB ports were set up with gpio_hogs IIRC.

Best

Adrian

--=-=Z9XnKZ2tQCJNoU=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl3B83gACgkQoNyKO7qx
AnC9eA//dDTIMdV6l9QnLaWnl9NwTh1IJr/dEgCbC0xr4lBej5OPqN9WY/DkW2nl
ymzLnVYgRTwdqs7JFhT7wvNU45Zek3i6LPub2AIomCeFnfvPIaH3X0EpRqdT6iiC
WAR/DjvEmVd0MPElBLAJ46aUNgVaK9asDfnGHWjwMin68vEB9t1oxPpkU1y3DOzQ
3nymNC/AI9xB0M5wyZW85FW59OlgAps+f5uKDrmwE/1+ZnBi75swCR0OFT85h3/R
aEPseFnkOPpm31vWGtmkisKJCDr/DCaICFR1y/YBaKC+wXSezGf6dUGT3CwjO1J0
JfKvw+D1GqriXLEuIvMcxCsRPebLe/VLMXDQNwA8P+InIKrjxiCxTizczyDg3iLA
4qGo/9P2IaRNLEhc6e23Jj9915u7GIcOVdAvi24qj8L+os/w9zp78rCAEVBsaH6+
ghnGU6WCqr/GM6yve4KhExW9XtnWnzlqN8AIu+XttymTorseNojZvunNU2kuHmXM
K87Hl0H+ZjgcEuMWtCQRt9dSNXYKJX0MEw8UUnXFMohAzZrZMkn+cxUSOxtn+At3
2Vawxn25cTawWDIeh6ueGSUmSfIpPSTYGGubYpzEdIhnU9+feycUWHaDURctvnxq
GkTuKLkVXcAss4YME5qFCP/bbuhq8hu/WllpSQNjN2DrOov2Gq4=
=RHcm
-----END PGP SIGNATURE-----


--=-=Z9XnKZ2tQCJNoU=-=--



--===============2513483010892661556==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2513483010892661556==--


