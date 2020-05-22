Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BB9A1DEDAA
	for <lists+openwrt-devel@lfdr.de>; Fri, 22 May 2020 18:51:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uJb740bPE4q4HVkcerkqKbTrB9NreklDhL/2UV8o1FA=; b=VK3rCu6imoij9rsoBskRt/X5W
	TQHWDYZmyf5ik44mHYx3nbMOQIOrm8wdRzPegNqVuxKoDuzqnsFtnN4DBYN1ZFJxNVyVMC4WXzyEW
	mEwE3JbgbdLU/jxrhERjh9qH/F6sD5HJSSrwY4z0t/VDv44rjJOO6j7VLoiSs8xaihkqvqJ4Ob9Kb
	v5yiXWi8/4bltwYvM4TySFk2QiMRjrm50hwX8jBxIQ4OzTs/vUMNirEi5aOrLQSQvCNgCbdHp1VFf
	BluVVC4DQUNhYUgGXr2coxzG6e1jYcP/5g4D4z/WqtjYVJKzA0aLJtiW8iqDlsR6DqnW61Uog1Gis
	ofkAt8nhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcAsq-0005MA-PG; Fri, 22 May 2020 16:50:56 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcAsj-0005Lk-UL
 for openwrt-devel@lists.openwrt.org; Fri, 22 May 2020 16:50:51 +0000
Received: from desktop ([178.26.243.176]) by mrelayeu.kundenserver.de
 (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MuUvS-1im8Bx1kKw-00rXdc; Fri, 22 May 2020 18:50:47 +0200
From: <mail@adrianschmutzler.de>
To: "'Matthias Schiffer'" <mschiffer@universe-factory.net>
References: <20200521180109.1667-1-freifunk@adrianschmutzler.de>
 <195d3121-2205-21ac-c646-4c67371d29cd@universe-factory.net>
In-Reply-To: <195d3121-2205-21ac-c646-4c67371d29cd@universe-factory.net>
Date: Fri, 22 May 2020 18:50:46 +0200
Message-ID: <00e101d63059$245e7100$6d1b5300$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQIBE0ox1YRwGEnRNLfljWsVYwJs4QMB6zDIqEZ6xoA=
X-Provags-ID: V03:K1:7gxSpSZc5PGK1sow+W+4LOYAhbtJhe+pKMEur6fVmXx49T4ZxOD
 dSDEFAtYLtlB9gOidglQHMliuaP+spa3jCQslbCC7He/nBwmnZPIJdodweCKsYRCKl2Q0kO
 T6GTtn5O1Ri7Fziw8MCKjjAAcrCVUe2oCNT0hSZ3+WhKsnOMpubChiD30QLpGuk433r+/T2
 FeLjHBmh0MlAFynHp1G3A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:yhML4oRb6EA=:3jevQaM7d1td3LT77nlUqm
 zX1pRwyTPoW9kytaSge40vySm3G0xwXCVBANjM92ZT5E77mSsGFW2WVi60ALdsEUUbWRVXQd7
 t/dUZB6BDttIsS53OIWP06sJBH3C93woOHEqGvS2mZzxE0iHdxnL58oUFgbzTFYPNEM5IUnco
 Mqz+SxeKQwp8+a+TNI/XmXF1PW5IlVlFAy5f881/vdeqh/9qwZc68owmUiY1Z+EWaKeN55WTI
 U7Wy7dybMOt51wyTgaazgI9LSQSHSbyiBQkaocMS1A7Mw1w5ZbLknQFbn4LJhJ1mLCZZW2UU9
 I3GNNaO47mTsDzMNPbhq/0DKlLg20Br1ZftQhG8yp7f7R3CAry0BbdF5AXqQc4GA33Ryz3UCS
 dx4gWVSNMGe/29FVrAozNM56doTY8XiejemIW4mucaaM8KQfzodOYsJGPnKf/fbmCiMbCjkOH
 Ww6QrmBcgwsZB8McHT2Bm3p9+GLfXOvLtchCDLIbFDubPw1TtPoP5Y7nUEjorlg1pRULVlXga
 avoSh+HjOzGq/bcAxMMVP3rs7YhFlaeM6m51X9gugTtrvHHTr7r+Pvw6orh8QH1KqEOXr0spp
 r7HYO+u9twXhGqfnWFN47BGZfTj1KDwRnEqDP2XFJzsvhQslpys0yvJhndlrxCebKICJDFOeo
 3V+U7G3YrwXozoCWP5TxLrr82t0zzyOK8MvFGdDj5yeIGTHBlV4ImHq8HrXwtkDH3YAkkVQ76
 P8miCJRpRMNQ9VPGhWT6HHBk2n2SNPyvYBo9H0K8RX+DIfwwy7RBkZ0mD9m2JjTmDjVkMIe9M
 lH2yFPYQnYzeCbXI3fG0oyTMQyyTxx1Rz9euIRRkvY2w31eCsVxSALeGXvKDb+6jhrmeZKN
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_095050_271823_E63CF870 
X-CRM114-Status: GOOD (  15.11  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.133 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH] treewide: use "model" instead of
 ambiguous "boardname" in 01_leds
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
Content-Type: multipart/mixed; boundary="===============5247485776316290882=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============5247485776316290882==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=81K+9fJKBb94Po=-=";
	micalg=pgp-sha256;
	protocol="application/pgp-signature"

This is a multipart message in MIME format.

--=-=81K+9fJKBb94Po=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi again,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of Matthias Schiffer
> Sent: Donnerstag, 21. Mai 2020 20:14
> To: Adrian Schmutzler <freifunk@adrianschmutzler.de>
> Cc: openwrt-devel@lists.openwrt.org
> Subject: Re: [OpenWrt-Devel] [PATCH] treewide: use "model" instead of
> ambiguous "boardname" in 01_leds
>=20
> On 5/21/20 8:01 PM, Adrian Schmutzler wrote:
> > At the moment, several board.d/01_leds files use a variable for the
> > model part of their label. For historic reasons, this is called
> > "boardname", though when a vendor is present in the result of the
> > board_name function, it's only the model part of this result.
> >
> > To signal this difference of the variable compared to the board_name
> > function, let's just rename it to "model", as it contains the model
> > part of the board name/compatible.
> >
> > Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
>=20
> I don't think model is a good choice for the variable name: "model" is
> generally used to refer to a human-readable device identification, both in
> device trees, and in OpenWrt's sysinfo.
>=20
> Maybe simply call it "device"? Or leave it as is, I'm not really convinced
> this needs to be changed.

I've thought about a better name (actually more than the subject is worth .=
.. ), but to me the only really appropriate term is actually "model", even =
more now that I've considered other options.

After all, that's exactly the term referring to the part of a "device name"=
 excluding the vendor, and there no other one close to it. As stated earlie=
r, that's also why we used it for DEVICE_MODEL.
Even device-tree specs admit this in their model property section:

"The recommended format is: "manufacturer,model", where manufacturer is a s=
tring describing the name of the manufacturer (such as a stock ticker symbo=
l), and model specifies the model number."

So, I'd like to keep the patch this way.

Best

Adrian

--=-=81K+9fJKBb94Po=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl7IAuIACgkQoNyKO7qx
AnArLA//Q+cGDreOdrv5dFw/WflSJOzzoXccs0sY9mN4/pCr+tr0ZUooX/Pwvchr
4tJPzMQ7c5LXppSJkb9qPlxJ+clEQOINUVngiEnVfqfOVHjo/NHEoh5lLr/VWMdv
KlyXwneiVWC3vP7DA/An4TabRHpCa0gCgkrQYotlFwX7A9vz3H608YC2mJF6xgRV
GhoefYZMm3Xoxkoea53VBVqKZz2WulneEfquqfhpvHiLTwtqTeu4/ME5TKcjrngk
LkP3AX/NOEy+RemawWXMp63k0i1jDXq2KPcKYf8hJSWNEt6FiemUi/YcHmalC7Uu
SJjVmNqs7+zqbtDBwUcGK+K4QtD7Tj/XVCYIuDb1CkInqpsDfFZ+mmS1Fj/NOf9z
89iV7pB4V9tL7L7IVPsFKTbLpEWjI6txkYSnJ290dQVOK4VuF7+/ASIfn4zQ64Yo
la9tY3+CO8C785QjsYr7xHP1EsCjePOGp8JoEYqEOD8Q+i1gSLpq0f4+denUemTs
h5fyADSw8Ob0oEUZWkhX+5EldF4ZN0s9bDOP6zRTB0iXhetTvMOJC5QjUZXScqkB
S/Im6Rd5dTGKfAbaSHKHUIw0MmN+tGo7YefYvMw1C8+qlQUdH/YpU0IIO3O/zUzP
XBnUDHSJ6LUAcw6i5zOrcRrAC4SFScXSW+Fbnn4ksIW1xNfzWgg=
=NyNC
-----END PGP SIGNATURE-----


--=-=81K+9fJKBb94Po=-=--



--===============5247485776316290882==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5247485776316290882==--


