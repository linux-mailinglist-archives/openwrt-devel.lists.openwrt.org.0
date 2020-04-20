Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C52911B0E36
	for <lists+openwrt-devel@lfdr.de>; Mon, 20 Apr 2020 16:21:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nM+CrkS8FAch6VzCk78qIIQjpM/NHi2hLNG2CJd8cXk=; b=ig25KlMHMK6fLWdYFU/EIWdgs
	UQijJZ2hYuj1b5RF2M4OudKYUaie3ruUG2NDV0qoPiIXhIdXelO2GMAnNp1Yet2Z8rYE87RGyW6Py
	RidUN7uAsC8QrIYottaBlfeXkN67u4r2awM9VvW5u5QgZBxyrUBrLNh2HSV7dVTqeRGAJBITVXsho
	yvTuHPRk+jhihR7scCusMvAofeTZxaFwhFFs/AAqMrBaP+sIaflR5VCkUfptzV2ec/J6qwPPQ3I1J
	krMUblXfeBpkhDFdhgguovf+18Tad3B47ZFrKOJCxi8vSd/JOXRe9kvf5+ID4oeT0udLptngh7s5N
	um6uHowrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQXIl-0005s1-QP; Mon, 20 Apr 2020 14:21:35 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQXIP-0005gz-Hq
 for openwrt-devel@lists.openwrt.org; Mon, 20 Apr 2020 14:21:16 +0000
Received: from desktop ([188.193.229.114]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MAchM-1jX5oc0uYC-00B0mA; Mon, 20 Apr 2020 16:21:10 +0200
From: <mail@adrianschmutzler.de>
To: =?UTF-8?Q?'Thibaut_VAR=C3=88NE'?= <hacks@slashdirt.org>,
 <openwrt-devel@lists.openwrt.org>
References: <20200420133503.18700-1-hacks@slashdirt.org>
 <20200420133503.18700-13-hacks@slashdirt.org>
 <017701d6171d$f5c35d00$e14a1700$@adrianschmutzler.de>
In-Reply-To: <017701d6171d$f5c35d00$e14a1700$@adrianschmutzler.de>
Date: Mon, 20 Apr 2020 16:21:10 +0200
Message-ID: <019101d6171e$f0a9b5c0$d1fd2140$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AQH9rhEV/dFWOkGBLi2xOlxjqT5TbgFvtKNSAfs2Le6oF4l2sA==
Content-Language: de
X-Provags-ID: V03:K1:9DV2scDmhJxJCIaC3MY9YbEGbyDt0/tKJTuP4wmGPXYLF7fRxqQ
 Erq2szPluCKDrBq+6bSvs1OyERc/7EJBYycGYaBIFDjSPandU8LqUr7FiwlBy5pCnNMeQf6
 4BSGzJu7HCh8JGUyNhnMeFQcbLW+Z+Dm4kC9rQZsC9cWIVExi+wsh+VTz8o65umA+HmehBc
 pCNURRqYFzYoAv73BzZZA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:pEak0vjazng=:rXhqyp05E1vniais0yJ8ow
 8/JYVqGFDwYeahlS2sg1VvjAo+OiyAPdpCcQ6jXpMKr5QtyUF4Nrl9xc9YhM/VoZnyTAWjq4S
 yUlKqF8aOauFl21eufU7ykXYrqjJre0Z2DXX1pi5kSi2z2PJgGe6IeH8TJpboMP64jJ7ANkjD
 +AJhfOtK5yDYaFvfiigO7EuKUAjaqJDiiHXzKss/YJIXsGkv3yP6oj342X9ei/xH7Q9rKSB9c
 Vio1YE1HoRPSaHFmAa9jgurWUJzITrVFy73kxzqexSKSFAy+is6nnggzs0oM/LY54PAvm6P2c
 VRLGC2Yc902NksSwfumAyZqRbTlH2Zdgvt1eKk85Bbe/WNUd07kC1CTjfva4qIkMUertgXnSi
 YbtyfiiNrXGozirWrNbFWpisAJ+gEYoLTdXXM3HHg0P9qUKLJjoty+aHBTTJEc6UMi01qVuwc
 isTnT4pBDKsDswiJWHszYsyMmOkpileo8cDTeV28IRtbqpvRNzX66nYMv+92fJo/BRq0MRE0j
 ehi7Qf2+goBu3Kkn+4cDygKc1nWAX8oTrmSAG1+nXrEJvw5pV7n/l8+yb41zNtZaWQegxkYBA
 nr7L0gMpcMGl1V4sCe5au/O8IoNXtfTX5ANtknaHkTsnqI8AH6fAJejEnNdwfJ4+uyOEqlx23
 32C1nPcw5pQGk19oVk2TQKiT614HmdR7QolR5LKaE4kvf1YuM8R4A6flp1mVzTaOTbBzOz1R9
 eE/Id/xiIa9O5Gg6G05Nyxmg1QAGd4MeULMMhAGAyQcNLQI/6Efgpk+dnML8Ai/yEHdPCg+/3
 lY9aUl7MWhhYPXcTNqANKAfKGzaMW9OsJDI510/72TdjWk0LBHgPD71wAq4hMgI0SsRL/fR
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_072113_909168_B7FD7914 
X-CRM114-Status: GOOD (  15.55  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH v2 12/14] package/base-files: add
 caldata_sysfsload_from_file()
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
Cc: koen.vandeputte@ncentric.com
Content-Type: multipart/mixed; boundary="===============2092328729865577726=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============2092328729865577726==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=O9KFcvllpEwevc=-=";
	protocol="application/pgp-signature";
	micalg=pgp-sha256

This is a multipart message in MIME format.

--=-=O9KFcvllpEwevc=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi again,

> -----Original Message-----
> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> On Behalf Of mail@adrianschmutzler.de
> Sent: Montag, 20. April 2020 16:14
> To: 'Thibaut VAR=C3=88NE' <hacks@slashdirt.org>; openwrt-
> devel@lists.openwrt.org
> Cc: koen.vandeputte@ncentric.com
> Subject: Re: [OpenWrt-Devel] [PATCH v2 12/14] package/base-files: add
> caldata_sysfsload_from_file()
>=20
> Hi,
>=20
> > -----Original Message-----
> > From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> > On Behalf Of Thibaut VAR=C3=88NE
> > Sent: Montag, 20. April 2020 15:35
> > To: openwrt-devel@lists.openwrt.org
> > Cc: Thibaut VAR=C3=88NE <hacks@slashdirt.org>;
> koen.vandeputte@ncentric.com
> > Subject: [OpenWrt-Devel] [PATCH v2 12/14] package/base-files: add
> > caldata_sysfsload_from_file()
> >
> > This routine enables loading caldata binary via the kernel sysfs
> > loader
> >
> > Signed-off-by: Thibaut VAR=C3=88NE <hacks@slashdirt.org>
> > ---
> >  package/base-files/Makefile                       |  2 +-
> >  package/base-files/files/lib/functions/caldata.sh | 15
> > +++++++++++++++
> >  2 files changed, 16 insertions(+), 1 deletion(-)
> >
> > diff --git a/package/base-files/Makefile b/package/base-files/Makefile
> > index
> > f1f0f17a60..d8e7c31878 100644
> > --- a/package/base-files/Makefile
> > +++ b/package/base-files/Makefile
> > @@ -12,7 +12,7 @@ include $(INCLUDE_DIR)/version.mk  include
> > $(INCLUDE_DIR)/feeds.mk
> >
> >  PKG_NAME:=3Dbase-files
> > -PKG_RELEASE:=3D219
> > +PKG_RELEASE:=3D220
> >  PKG_FLAGS:=3Dnonshared
> >
> >  PKG_FILE_DEPENDS:=3D$(PLATFORM_DIR)/
> > $(GENERIC_PLATFORM_DIR)/base-files/
> > diff --git a/package/base-files/files/lib/functions/caldata.sh
> > b/package/base- files/files/lib/functions/caldata.sh
> > index e9349c7eee..a64f07778d 100644
> > --- a/package/base-files/files/lib/functions/caldata.sh
> > +++ b/package/base-files/files/lib/functions/caldata.sh
> > @@ -68,6 +68,21 @@ caldata_from_file() {
> >  		caldata_die "failed to extract calibration data from $source"
> >  }
> >
> > +caldata_sysfsload_from_file() {
>=20
> Didn't get that at first. Maybe choose something like caldata_file_to_sys=
fs()?
>=20
> > +	local source=3D$1
> > +	local offset=3D$(($2))
> > +	local count=3D$(($3))
> > +
> > +	# test extract to /dev/null first
> > +	dd if=3D$source of=3D/dev/null iflag=3Dskip_bytes bs=3D$count skip=3D=
$offset
> > count=3D1 2>/dev/null || \
> > +		caldata_die "failed to extract calibration data from $source"
> > +
> > +	# can't fail now
> > +	echo 1 > /sys/$DEVPATH/loading
>=20
> Maybe make $DEVPATH or /sys/$DEVPATH an argument?

On a second thought: That's not so much different from how we handle /lib/f=
irmware/$FIRMWARE in this file.

Can you comment on whether the implementation of /sys/$DEVPATH will be as g=
eneric as /lib/firmware/$FIRMWARE? (Then we could keep it your way)
Or is this dependent on your driver implementation, and thus specific to mi=
krotik? Then, we could still keep it in base-files, but should reflect that=
 in the function name.

Best

Adrian

>=20
> Best
>=20
> Adrian
>=20
> > +	dd if=3D$source of=3D/sys/$DEVPATH/data iflag=3Dskip_bytes bs=3D$count
> > skip=3D$offset count=3D1 2>/dev/null
> > +	echo 0 > /sys/$DEVPATH/loading
> > +}
> > +
> >  caldata_valid() {
> >  	local expected=3D"$1"
> >  	local target=3D$2
> > --
> > 2.11.0
> >
> >
> > _______________________________________________
> > openwrt-devel mailing list
> > openwrt-devel@lists.openwrt.org
> > https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--=-=O9KFcvllpEwevc=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl6dr9UACgkQoNyKO7qx
AnBGDw/+MS+rv1oFKREJiPrEjoBkWz5/QG7WZ4d6iVtypeY+knqrb33mUTGryAGd
ije9S6RFDzfhmCkD21vH9ZBx8AEVfVV7iYdPGdoFEMgah/kn2CGKxd6Y3VvZXamy
gGkY16l7ULFBE/IFXhPhNFw48WAzQdq4nz0Cc3bwZQPGWOUA+fjSSqol6BvwnwOB
yuroT5FwprDgoErztoFPsKYKfbdgAdp44+KQwRnIh2jpklbUNmS7z3T4Eo5V9QaN
4GwQ3F7YL3iIj6jEJup6/HVvlcgAG6Ur6Z/nAy6ZNlXY7/BrLLV3NSqD3uQMjYAs
sstCA/FoIptGD6FOLhe0WmzbaF5X5QFzJEBA7ueKAay9GLd4nV4P2UkH8cimsZIK
HjQrJYu97TgzkXdq1D6I6j9JAjXxLCrB8fbke05FvAonMXzSKp3c/agIROI7i4lU
q9wg4SJjmJW4ho0hRyC63JFZBL/jSunG+QAJX0gG3ywGeDX3dW4ZL8arO/x3EAkq
dfp3OpyUQdsxvKol44fiAjr58m6UhxIgtM63e/8y8JBesm5MOVALoblgC+BJjoAX
6mOppvr4370ZqcgujSxfpzNLrEhhwIBpD31OXL7+zt7BdaytscU4tpxGEYhZN6SD
p+35nW1obSCtOudqQkepfvWIhDU3xqLhgotXd3dADlCi1mrVMAI=
=enhx
-----END PGP SIGNATURE-----


--=-=O9KFcvllpEwevc=-=--



--===============2092328729865577726==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2092328729865577726==--


