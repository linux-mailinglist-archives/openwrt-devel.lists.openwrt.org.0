Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45B6712F848
	for <lists+openwrt-devel@lfdr.de>; Fri,  3 Jan 2020 13:35:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:To:From:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=SpUta2ZHPfv8vC5MiuiKakyoahl+zDFIOk7IgpfB3K8=; b=pec
	HJpBNJxxJcwSMK00nV/oOVwBEI00XjlrbcmQXiO912YUrK5ZO4uqtXHDo/bUG8PG0dvRLvfGvhFXZ
	a5am34MRbVuXeBBNDL9lbOqmNpTB3EMepbdXnnpdtqIvs+u15iwyppU00TPZ9Sx8ZKzaoWWzESjqA
	oS5YM8flwTrk6Mhnwbp4caz5Vja+FL0D/CYlONtj9gX7sw/Aguu98G4Q7xpcELpw0G2ebFXocTFy3
	r9t+YdX0ulDcM/+gFouM44sOrLbDrOrTZK8MsLupkjTGWakFxoDhdDzjNngXXvpzvMtA6QC02Jzvq
	uv+OYZIrf4l7MqVA8KZwK3BNClxRYLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inMAK-0007wa-H0; Fri, 03 Jan 2020 12:34:56 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inMAD-0007ve-JW
 for openwrt-devel@lists.openwrt.org; Fri, 03 Jan 2020 12:34:51 +0000
Received: from desktop ([188.194.105.26]) by mrelayeu.kundenserver.de
 (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1Mn2Jj-1jTWvj24NL-00kAjO for <openwrt-devel@lists.openwrt.org>; Fri, 03 Jan
 2020 13:34:44 +0100
From: <mail@adrianschmutzler.de>
To: <openwrt-devel@lists.openwrt.org>
Date: Fri, 3 Jan 2020 13:34:43 +0100
Message-ID: <006901d5c232$2d8630a0$889291e0$@adrianschmutzler.de>
X-Mailer: Microsoft Outlook 15.0
MIME-Version: 1.0
Content-Language: de
Thread-Index: AdXCMit8Kcc+KHScS5GWCjdMjBXtHg==
X-Provags-ID: V03:K1:t8Ih0TYUj4pEZpJEK68g7feWTQECbR/z4FgfGok8c8d8q7KiZEB
 pOCArmd5NHNbIGVdP0b3sTFuX75Gzktr0TbaEQ/OfqLE3b6TRzZrxvD0pxDY3bFNjuPOY/I
 uLccqL+eKpBUcN1K4igsJcvl6U7obo5xNUNFSTn0xqNMeLJ3L8Laf4BLDLow08Ad3Nj6unf
 lCF+Hc9XcUSasmsb/qEIw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:+QMbpu0vxLA=:8bBK1rlWm+6WHwBoFnZJJJ
 1PKis/iLZmKgnpOJfjyJ4AlVzWDzxpnrGlcGjlC04pfEnXQiwRTEP7lmXcwOJiwP+4QxTjpzW
 1a3echOM8cZxFDH1Qha5R94IAGAEM8qPBft6qDcM/6JmHmZQAbWQ+x8M/sCh76481JzI7GWLK
 T2x2OTsictE1iW4+qqN18JKMq+w4n0lrKiOL8UzzaV5zPTtGT7Ba56MJ8dEmQGcZqEMTyGmmP
 IkRmAbTPHIPOIAoIetnH/eWDBsoEoM8QrCsgvRQ6l9mLJ4wArx3Z8dzR5IDDxEJeoxWUx7E1w
 FYD2Kn0SxJhqqBReWAkHlVgvdEPofiTsGmi7F+H70yRgpDtwktXj8QnlpUiJY3FFp8zoGQqvh
 Nz4vwpoUkWfraGQmDmh/AFp8McdzuO0gRL5biDZKL5DZumOpePp4ITIVKPj6jGCMtIlBeWqMT
 0DByk7ymLE544ve3dVwsyxKEyf5mxgqBy/IN2fyCI3U0+2uGKq2R79kb3EdzSoBYAfFsY38Rq
 FGiSHlZakO4hfj9wLU1+kHX1Xl3UkVnofNIcV7A0VlvtSPLHp21wyvJUQWkmWUYedhyoFlWq7
 XIe0SaCWF5uEIKN7SvzzjrN6FJrsRY8b849UcszmkH9He/fifdlrX6HsM4yEyC5BnHBldLJnW
 /wZsjmw9CMJBihlNGF9O0JogXz+HGQ8TjIyN44gVuzzQLiGvMo3EWTE/C5Th49WUD4O5J9+eW
 Wo5xPxRfbP0roYkAeJWQPeG+/nvKJO87gpz5datCpAIVIQ8wC3JWK5krFjjbcgKGGxyJiyE0h
 Xp0DInMY5m4YwQf7gxFwl5VuOdgASdylb0MhLcqHeb0g3dEPrWuW3ykdIkctbVA4y0RK2ip6V
 J4nuI4T4O/6NH3QyMYXRURHde0aIhzf0OSfpjSK70=
X-Bad-Reply: 'Re:' in Subject but no References or In-Reply-To headers
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_043449_935704_19744BD0 
X-CRM114-Status: UNSURE (   4.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
Subject: Re: [OpenWrt-Devel] [OpenWrt-Devel, v5,
 2/2] Allow sysupgrade restore on ER
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
Content-Type: multipart/mixed; boundary="===============7432426558046156569=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is a multipart message in MIME format.

--===============7432426558046156569==
Content-Language: de
Content-Type: multipart/signed;
	micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="=-=RtukI5+SblDl80=-="

This is a multipart message in MIME format.

--=-=RtukI5+SblDl80=-=
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I do not have the old e-mails for those changes, thus I cannot respond corr=
ectly.

Still, both (very old) patches miss commit message and, more importantly, S=
igned-off, so I will mark them as "Changes Requested".

[OpenWrt-Devel,v5,1/2] Evaluate board names in alphabetical order
[OpenWrt-Devel,v5,2/2] Allow sysupgrade restore on ER
https://patchwork.ozlabs.org/patch/1008838/
https://patchwork.ozlabs.org/patch/1008841/

Best

Adrian

--=-=RtukI5+SblDl80=-=
Content-Type: application/pgp-signature;
	name="openpgp-digital-signature.asc"
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEESgN6p2H3WoMOAf81oNyKO7qxAnAFAl4PNOEACgkQoNyKO7qx
AnBxow/+JNDeofc1XXxosQRQuI73C6jN/mchRUQy+KZagG0wk/eieH5LzTh8XDit
tPGj6vd8r4pQj4y/2dZxdqlx2pxRkcCAvfyBu/TK7G+IB0CaWn9Vev9O9ijkby2d
6twv7UcYsKv6gpVshAuT8w0sz2x9sGAvTaremO7iqK7xWO6BzS9sNEZLhRSPokz4
bbRSVeASRVcAecbMUAPRe2HZambFLqR5Oph4uoR/1h0RRdRN/roxWWIzn1yQgbEP
Y3AXmhxK0p1Ku4cwuKxwqJ6mdIKNLaAKsSEDUNYbd+ZoibRWCY3ArmO8Po0GiDKg
acjgne2fPx9RZeht2Noj03b8zCRaKh+QTjqb8nVHjH620iQyxgVK9mwssdeJZSl0
E+AM/fm57WPbUqhz3XSNsPr0osOKUwcab3u3jVbH7dTJ7a6xPM/kLbult02zhWjz
8aOc+0GaWcDKc0Ra6I6tFYPcjzurj8eaQiUN0QNzTfWEBe0Wtjng5DTzdumWSSgk
T4qyh9uUYagHhOTavOeDvZKIoWqDumyuLa7oFYalDYj0JMXUei8Em78tjnZZKBOe
dzgar5cGgogHHfM2UokWLq8q49zb6C9FJbSN06/JyE1ZxOaQ4A57EZ8l8BdXrvWh
QOaozwWIN4/8WXMJgNNeLP0otqdw4DSfKeNbmv33igcZiiL5Hps=
=fMsa
-----END PGP SIGNATURE-----


--=-=RtukI5+SblDl80=-=--



--===============7432426558046156569==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7432426558046156569==--


