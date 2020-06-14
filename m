Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E4C61F8899
	for <lists+openwrt-devel@lfdr.de>; Sun, 14 Jun 2020 13:28:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:In-Reply-To:References:To:From:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=D8PUbn9xgKZk0es9eGxfSBX7/l/v0g//ZbwT0h4vlsc=; b=bkZDn30Qk7ncU2Tx3yhsNnfIV
	j9z0Jk8g1B+WcRsdY2EDL0gbJQv7c0EONpZ8NY0XZtUyVNpGLKu+5PrDYr8uZTIJFokmHqAf9FYni
	1CV5oDqxIvH/LTwhz63SdHxssm6glcoN8tJ/5UK/ViLIN9mPvnm23YtPQ1IdHf/t3Ua9ZXtM5C3i1
	yi4mQciSQ9Xcfl3Xnyc+SVLCnOgp4uC/8vEFOoGS29ONk3GrZIeTMXFOKDl+Z3UoGXvWOhj6xKw8n
	CnTBjTW3JG5b925sBMe4NJjcbLEdMAvzJFEcVxFmy9vAHZzttqNEFkYRqst/l6fKAVcba5khSNwVp
	rAKVDQeeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkQo0-0002LT-Eu; Sun, 14 Jun 2020 11:28:04 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkQnt-0002Kv-Ji
 for openwrt-devel@lists.openwrt.org; Sun, 14 Jun 2020 11:27:59 +0000
Received: from desktop ([188.192.134.246]) by mrelayeu.kundenserver.de
 (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MCKWI-1jb7OU1MeY-009Qk1; Sun, 14 Jun 2020 13:27:44 +0200
From: <mail@adrianschmutzler.de>
To: "'Roger Pueyo Centelles | Guifi.net'" <roger.pueyo@guifi.net>,
 "'Joe Ayers'" <joe@ayerscasa.com>, <openwrt-devel@lists.openwrt.org>
References: <CAALvt2M_WP6N+gDARrs_OU3pAyyuaGQfb-rDk3gAyA6-+OGwwQ@mail.gmail.com>
 <5b7684ce-e7f3-d6e9-7bfb-ff9f1923a63c@guifi.net>
In-Reply-To: <5b7684ce-e7f3-d6e9-7bfb-ff9f1923a63c@guifi.net>
Date: Sun, 14 Jun 2020 13:27:41 +0200
Message-ID: <00ad01d6423e$d2a45940$77ed0bc0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AQFM7pLIRRuaZ2ESI6XrD7MvZId6tAGAv1nlqd6aQnA=
X-Provags-ID: V03:K1:gTI2J9YXlUVnQsy12cCkIaADVtl8uz8PO8YUtXxFHzqoi2quaHl
 xu1W543mPE8WZDo8fnmbFOSPd/jk+ZBJgYDOc4/MJZpQrytWodGinWml4yYJaixA7nTQN28
 mWsrFpfNOryf5DqevYPJdXgpmCiwy9Mzi6y+5ZJVvS2qH0rD5WGsnVXS6J2Y263gv770XmC
 s2OcMHjlYgib9xWLN2n4Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:uujvgM9O1VM=:/8hSpqAmMVnoUr7Zc+Klh8
 YoqOAgl7pUh3KASLWZCs8BtiZhY1w9X3bgNUp/ttNtToYDgfsv4NTAFQr7to2fhaXfc6Oa6Gl
 biXuvi5jnOmLH8eJbUwKfR93VUaDlh5SaY/5Itnb9shWZJMkCf0RwJ4HhZADU2PS/TDWeeyOG
 xqcvlGnwGxoJWkLfiuaCBQCMUN8aOCBYF51FbFbvBBGe3YQl55T+M2Rop09mjSLWjAVwmhvfc
 yIt9t8x3Fkr/XQWYYc7aSpY40mxzt7r9vEX11k6pDJe7DcWiyb93NwYlismP3+17uaJPxgWhd
 bFrHFboBvzLJM5IPuOMmiL/ks5D1O4V2QtQ5DRIO07oksqXpkpsNkRRVmoA1I763Q1uf3Hubc
 pSV1+IjZ+s0YtAUBXGoMgoelPMD47cWuuKp0Y0AaKNiWOq52XHXL3/3xz5i2NlRVYcTz+JnUl
 wI/TXyunBjKctfgq7GeSJYmCyGRIbPF24+i7OJ0bzlWnJXf8m3pkA/gQNmM7HiOVDVvKHX7Yl
 c99Y9yoIcLUK31i1puhH5yvCHSgE+rO9orvZqd1SNOoxghSCDcNYgMGPTMbV/yg9uECfP+z6/
 qFn6VU4jPCDoqEmJ4Pf/sMeHzPyupjIyh+m4mk5XpwvH42BTNwXTiyj0VYU9QkPSBsVL35a2l
 3Gzt4Y3+uL4h5HWyb220HHo6gCA7+soiMmLoDT7wyloS68ZgDMO5ncQThkBlKjLe7tA0KMeKl
 XAVsS5X58OqoBvhTsjZLEW9eOoXU2kmXJJ/BhbbcVj3WkM422qdBLVtNxr1+Kkr5gN6MeBl6O
 rQHRlWKH15vHkhoidAYhpVO6d2CYQam/XEER77tGOZNOZ2jzCYy7rcjnqRD3pxoyJP73k7V
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200614_042757_935189_52F7DDC9 
X-CRM114-Status: UNSURE (   5.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.133 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] newer mikrotik boards not booting?
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
Content-Type: multipart/mixed; boundary="===============4453569279644422559=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============4453569279644422559==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=4NMHgjk4mHVMwa=-="

This is a multipart message in MIME format.

--=-=4NMHgjk4mHVMwa=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

> > Sending TERM to remaining processes ... crond uhttpd xinetd sh dnsmasq
> > sh ntpd netifd hostapd [  146.589174] device wlan0 left promiscuouse [
> > 146.593957] br-lan: port 2(wlan0) entered disabled state sleep sleep
> > ubusd urngd logd rpcd Sending KILL to remaining processes ...
> > /lib/upgrade/stage2: line 126: [-x: not found
>=20
> This last line does not look good, but I can't locate it in the source co=
de :(

The stage2 file is here:

https://github.com/openwrt/openwrt/blob/master/package/base-files/files/lib=
/upgrade/stage2

But I don't see any -x there ...

Best

Adrian=20

--=-=4NMHgjk4mHVMwa=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl7mCa0ACgkQoNyKO7qx
AnCprQ/+NuHeVCNAFb9mZgtx1UzzTNcoyY6PW6xxwwZDs700A9rJHIgONlIxlL0z
+Z6ar7ePJI3MiJACuCcF5C7U+G+FWoM+SCSTLeeGwBTPlo8mAPEVt/iWOvD5Uovt
A2NyEs8KNq+CDAzrelRYmyE0o4zceKHLAtTtUfrW5MAsOs64050BecK0bEKg6K3S
ZVNyC4h/+vr+7TVCW/3vnmgS7p8zOqPxJDLuFlzuRtw3I/EGms8j954TG8/GRu5E
QLgfHiWwXWTP+Ng+noCIDtYQMFUVOC29iRUc9WG3PYcoGnV0rdDq6s7ctKXEl6gE
T1HeY15wMUXVeFx91lDryzmfKTgHJ15auEsPtsqp4trer5DdO7PRdUZHPlmxf8UG
4pNSR0UbWCvdHugl7bIn9FS2ckxeX8CXiahV/Km2we8l/pWt86HEnakLxhT3b9uq
m+zSdv6hHckTtlm0D15ndkCPnTo1pD48OLxlhqcGVejtaOWdDr/VCBBvSRDCY1fk
GNu/V+PJfm8H4EKNSbIk4huIIAkTig8GJGROzcxlPdqSYqb6HD6AchdfevnjV4V/
Dka4+Pb6NP+g1EEzXV1fcIUBrTWmvdXOhaWgorSex5a1aXH1d+vKXuuFsbSRcyKm
KJ+YpiAij9N+SkS+MLqtLxHmx1AMV3omgrnRDrRplwxvMMxARPQ=
=BiCx
-----END PGP SIGNATURE-----


--=-=4NMHgjk4mHVMwa=-=--



--===============4453569279644422559==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4453569279644422559==--


