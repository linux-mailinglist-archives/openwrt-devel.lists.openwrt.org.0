Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB8601B1611
	for <lists+openwrt-devel@lfdr.de>; Mon, 20 Apr 2020 21:42:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:To:From:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=3z/3zxPX+meOzWR/VcH0zZGgEIYQT/CkPh/Gsbe4nSI=; b=ucP
	iWN6gxeHMdeRTpArdq+N/FK5VLp5ShanBkSul7mIoi/7s6Vv7NkF/ygzK3W+W3DK2wE66zXZsZdA7
	lB5DBakg1GadycfYX3bJMrJO3YVFv4/x7FFyPKgh7FCeuyYkBpQ84lMOknTlv33zkPLUiouJE1NkU
	73AEKNrAUNSJMrfgLIaVbUpCCK823xWHQibMg7j0yIM/aN2F48ldeR+qfy7EpQWnJtP9YPUBQ8Kqx
	7QZerXvaPH3xBB41xA1anWjATPWeDKpYZqiKzM7kSZDf82vfpoRN9TX/4Mpg3/RggtVQqA31vUrcy
	y6VnsOIPv6/YdZMdvMAoUx62Z5O5+iA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQcJW-0000Us-Aq; Mon, 20 Apr 2020 19:42:42 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQcJQ-0000U3-2L
 for openwrt-devel@lists.openwrt.org; Mon, 20 Apr 2020 19:42:38 +0000
Received: from desktop ([188.193.229.114]) by mrelayeu.kundenserver.de
 (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MtwpW-1j5Vaf46zE-00uMu7 for <openwrt-devel@lists.openwrt.org>; Mon, 20 Apr
 2020 21:42:34 +0200
From: <mail@adrianschmutzler.de>
To: <openwrt-devel@lists.openwrt.org>
Date: Mon, 20 Apr 2020 21:42:33 +0200
Message-ID: <02b901d6174b$d6a6f3e0$83f4dba0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Thread-Index: AdYXRxv5Onlq5qscTL6uZ6UFMJ6zZw==
Content-Language: de
X-Provags-ID: V03:K1:fquHdvaaKRFakblAkZTDhzGt/OyrruAhcNaONZaR1qg4tzoCeDp
 vxt1z/ZTL64FYpkOmBmsKU6BB8mwhTmwGodZmgrvq+N22gS8sRRbQJqh69dmrF4kmKwraof
 /1/R9XKLdoe+PuJNX91zWnU3ZS0fvDaUtoFjaOAve199QsCXutifQX7YOTIApHvQvM8j4P2
 EtXXVBMyE3NnvmBZcGWSw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:znv86Id4buU=:bb896HfTh5U+6j8niRXgvk
 0PJy0PsQo7Seo/eVQASC+E41eMWKRdPx/ec1jAlEro+P5CrsHWHhCzKJ7MRjg1c4a5Yx6XkHt
 RrLhBrgi892gGDEXUiOc+Pg4zcp1/K4qDcQglEoU/NvSJMwGL3spM+DSsEv3Bep0dtcxbM+BP
 cpaP1wbio9wLmIRz/QxINQKN/Ojv6B2Pdoq6LUFovy+85n9KOU8fl018/uV0L0fP8vge+5ExD
 iCfwS4OCh0pKBm0QWWBzbeYRVpnQn2yKBG8s5YcRgRQCtcATMu67fsPOjIUuRbg5LHH3b86N9
 SrSCyqtaXsKCM3HKp7lOdBHO2DhCA8M3NSveqvOTGWzCkYya6xY4ATrwyATfw/SPqXO+RZSHS
 r7CDlAxUY4LUfHSXa0J0VA+Ht/zGEs4dJmY7fojVJbavhzc3HqkHi/gO83JpwAtsUbFFJ2zBJ
 wmD79dR1IoP7fioRWTpZcX+KaYvdomFuMK5szzvcJ3UQlstM6IiDkjFMq7eI27TQ+PUCef8CM
 ts4c+S73EW/9Yy36ZAooNehXB2vVJpgJkq53Dn4CH/XMal4V8z/k6tKF6aUHA8nF/dk0yti41
 8dw4k4rIE+MrLewMZCvAc3KBpXMokNfXMUq3w5ETPxKkOnREK5THN3AnMVJOA3pkZIntzm/X5
 UOFxs/kESK7+4f6pc89vEj1sQuDnhQSpXEh4De0k/b7ZyARbP0xrvPtgYQ3u2EUNBmplk46T3
 GfweIbgHyLJkj/LioXGDRbjw4pWucbdr2rSTWUsqsGB5Zc+dF3cuTIWf7S9rCspTC46tpO4cN
 0kk53cNzRpj8i8/50xTvystKr9VkM/1BqXtDlr9AWtIgs5wktGfvlKSUPhsO4pxWTYTI4a0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_124236_400257_1198AE2B 
X-CRM114-Status: GOOD (  11.08  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] Port labels for DSA targets/devices
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
Content-Type: multipart/mixed; boundary="===============5270119762907807702=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============5270119762907807702==
Content-Language: de
Content-Type: multipart/signed;
	boundary="=-=uHrmxL/Kjg7i8y=-=";
	protocol="application/pgp-signature";
	micalg=pgp-sha256

This is a multipart message in MIME format.

--=-=uHrmxL/Kjg7i8y=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi all,

recently, ramips/mt7621 has switched to DSA and mvebu [1] and kirkwood [2] =
are waiting for it.

On ramips, port names have mostly been chosen to be lanX (lan1, lan2, ...) =
and wan.

On other targets using DT files from kernel, there doesn't seem to be a par=
ticular rule. Sometimes the same pattern is used, sometimes "wan" is replac=
ed by "internet" and for kirkwood, we had two cases where ethernetX was use=
d for lan ports.

Being a pedantic person, this bothers me. Despite, having the conversion on=
 several targets now seems to be a good chance to agree on a guideline for =
this _before_ it is done differently everywhere across OpenWrt.

Currently, I see the following options:

1. Stick to what the kernel does:
Where the kernel defines names, just use them. Add them to 02_network and h=
ave them exposed to the user.
For "our" targets, we will still have to decide. For other targets, just do=
 what similar devices have done (though kernel might be inconsistent there =
even for related devices).
Adjusting them in kernel seems no option, as we've learned from Linksys nic=
knames discussion that labels might be considered ABI.
This will be the cheapest way.

2. Use a common scheme
We may define a common scheme, e.g. the lanX and wan names as used on ramip=
s/mt7621 after bump to 5.4.
That will require to change corresponding DTS files with other names from k=
ernel and keep those patches forever. They will be trivial to make and very=
 easy to rebase/refresh, but we have to keep them.
On the plus side: User experience (for most users) will be improved. While =
there still is inconsistency between swconfig and DSA, at least DSA won't h=
ave subspecies then. So, the average user could expect a lan port to be cal=
led lan1, lan2, ... etc. instead of having to look it up. Our user-space co=
nfig files (board.d) would be easier/more unified.
Of course, some advanced users switching between distros (where this is pos=
sible) would have changing interface names, but a lot else will change for =
them as well.

3. Care for vendor names
In particular cases, e.g. for EdgeRouter X [3], we are currently using labe=
ls following the vendor scheme (eth0 to eth4 instead of lan0 to lan4).
This could represent an additional option, both in case of using scheme 2 o=
r for our own targets if we stick to scheme 1.
This would break the "unified user experience" as in scheme 2, but would fu=
lfill "what the user expects from vendor", like we do it for MAC address, L=
ED behavior etc.

Personally, I have a preference for 2 (and am unsure about 3), as to me the=
 user experience is the most valuable asset in this context and I do not wa=
nt to have to stick to some name the kernel have agreed on in a single case=
 10 years ago (exaggerating here, no offense ...).

Please share your thoughts.

Best

Adrian

[1] https://github.com/openwrt/openwrt/pull/2935
[2] https://github.com/openwrt/openwrt/pull/2944
[3] https://github.com/openwrt/openwrt/commit/5acd1ed0be0d78847cd7d9d559952=
6f59babaf4d


--=-=uHrmxL/Kjg7i8y=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl6d+xoACgkQoNyKO7qx
AnBolA//RmZMITzxj9BrhGvMoh0u4BnOtA0Syaq8tIv3dOsrBkzfLy+XK7ZuBRMg
q53ziaXieoKkRc9J0hVcFHcWOil7p0IFkeimPQsR8f1t8Bz7y348dKQAE7CKvvkm
9XhbafIoJnCBKkmBsN43RW8uqcbYZnXAtbELyNS77v8BeAoJS0/o/hYye3jn1745
9+PvQWUtpvFUhn2Vs3nhXltYcinsKuCS7VntqPcMWcTpreKL4MD5cuQi+vMTAznC
xl3A+tn8Dr1giazoJh3JnJjwBmEoU8s1cWiIE2qiLa9ypFclIMLKXQftrAJAgbyd
T6cQRsFtR/jCXP1DAgUF+EcEwnN6JU+gAnX5ghMlMPLqKEzUM/Oj68bSnbZ+JQXd
gbwaA07Zx4GmgHcdZIUA5ObGWTIIi6GFYn9I0gqKugl8nFrWoaqVDoCOMnWGlF32
FhZhl5dkWmlMeuHat0UGr3MptiPdk1yjaHFekhki6ElLpMppFnuF6ot94Ky3/YeN
ZfcSQPEopRhj4ek6vUaXwWXlTTuKR0RXRXY+qEhCoFONbgDNzojoKmWUBeSjGnXq
yMPz7S8ORqKNmB9B1QW3t/lOByntwXLQNMcaA5RPBqGIDnpgNEtnscD/e8xICrZb
VYaFO15lfATpQT+o/GzhFWgyKx5/WzBymm7zacDfm7pfe5EiA5g=
=sZFL
-----END PGP SIGNATURE-----


--=-=uHrmxL/Kjg7i8y=-=--



--===============5270119762907807702==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5270119762907807702==--


