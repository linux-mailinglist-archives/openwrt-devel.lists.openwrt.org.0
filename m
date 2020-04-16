Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C14671AD07B
	for <lists+openwrt-devel@lfdr.de>; Thu, 16 Apr 2020 21:39:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Date:To:From:Message-ID:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=6jFcbYBypEswSkDsZ4zk3rSJe6+rBja3OL53BaehwV0=; b=MjM
	colQP9jDp0XU3A+DMuOPsyoV49VcFn/D8CoV0B5/T0YmRcsGo+jLmtR5RLws2hSCkFRvj144FkG6P
	ludXq5527inAhobCCmyLtcPMdHamid9Rk8/22ihK4t0UXJQ81p/Q3XeV+PXweZ8mPjm/aBMI45Afd
	KytX0w70CECl6i/Xueif+i9+rSgn/yRZXHVLqQFJINXCn3/PpD4RIygE8mwjA9Ne3UkoNn5YrW1Sg
	HyqnyJMcrKIWAqCW3wRtwBqlovFH+lwv2PYZhhRqDJAKIIAIiKESgTWwnVQ63+pnEXIIIvkLOGKVR
	gqnlRUzbCAmfPeyuLUzQpQmnHXDTjOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPAMT-0004jl-61; Thu, 16 Apr 2020 19:39:45 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPAMM-0004jP-9w
 for openwrt-devel@lists.openwrt.org; Thu, 16 Apr 2020 19:39:39 +0000
Received: from t480s.lan ([88.152.169.61]) by mrelayeu.kundenserver.de
 (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MqJZl-1iv0Wj0iCR-00nPmO for <openwrt-devel@lists.openwrt.org>; Thu, 16 Apr
 2020 21:39:34 +0200
Message-ID: <b5d9b15401d3137037fa5e7a59b3a25f732a8931.camel@brenken.org>
From: Dirk Brenken <dev@brenken.org>
To: openwrt-devel <openwrt-devel@lists.openwrt.org>
Date: Thu, 16 Apr 2020 21:39:28 +0200
User-Agent: Evolution 3.36.1-1 
MIME-Version: 1.0
X-Provags-ID: V03:K1:TMqLRBnSFAqCy4yWDPNqf/buHUUNeVwsPXS9qQa1BSdh3mGscUG
 6e06y903quhs1GxCus0KtS6BsArAD6i3aiqLRhNTtmRQ792okI3EE0ncOJBhNszUTVYdxSW
 fpMLrB0lZvBt+6RXF6SZKiFoQScGiZhgSxXzEpTYrApA7+XqLSojoViPspVGvE3Vs3m4VZE
 CQozqiWplvfJlcFJqi6wQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:h4v9D06EER4=:aFiIb7DShDj/xwE1oBoFP4
 UaTlrxgNn16vGuVaoYwNQZx21ruGlqrdUdpV8XD4PmXSALbxhm67dU1BHecx1OBI+bcDmG/Ya
 oc0RhzFsFvrjZrQOA6pGNlExbs9qFJClMbN0CE4EOB7G5JkwQCazCqzhzkUFH5ePRMXr0SmlL
 pRPY47qqmTKKil0jyr8hVEHToMJSxKRAUPu4Ts5JB+h4lB0dYlWGXgRYirdq8ou9ykEiKlYx9
 FDQiy+PVOwojXyGtJm1MZ+2i/+3BRUCsv71VIb4+3YE92EVh83YICIUeEdUjrWPgpb4u1jIbQ
 DdngY6VrzYAReXTdf3KaaKOQutOQMT1iMY4ZWuVoUVh77eHBpL+hH1AEeaC0k+F7w8gQVGVpg
 HjUfijc+W+eG6cUz4UoMk215FkaM9gO+BY3svssD22XhZoTtO+YscSWNk3ehj0sGBGnFSag3b
 gUqmy3Y3jaMT0KiQaSF9SyqTmJMYPSipk2D9wne+vNQzJFPgHPUFmV0u7/GwSjogywDMxxcVg
 Wtq2daAe4LSI1baBAAl2mk5kyxQtroN1I2fmijey+GsZMdeiqagQ91e/Nn5DMcMgqruCVNSgr
 Yhjr3+N6yVKaA6gm00s9q9bsubnMw5GYppziQUlKZZ/uCgMZifrsbraX4srwybJIGiaiWSK8h
 8MIj4cOuSTtUTc28+omSldnLNHlUwpiASvsOpbyguC9t+M99++9eOdv2p2FTSBYGaI8OVTxFI
 5C/Kq+KDo/iY7Pu58HWp7d1Nb8UfY08F508+qLEicFX8KFzfaNaxUDW875isWruQfKgxTysFY
 RptTJtOaPYXMj8PV32n3JcXLpHPyyfY3SXH1oG4YOMEzAV1TB1Qd65C55cSfxpDOkbecVot
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_123938_642976_E6D95559 
X-CRM114-Status: UNSURE (   4.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.73 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] aarch64: elfutils 0.179 no longer builds with musl
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
Content-Type: multipart/mixed; boundary="===============3719507663190564893=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org


--===============3719507663190564893==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-tAJRFzIUXBE4HFTFZQ4n"


--=-tAJRFzIUXBE4HFTFZQ4n
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

after the last elfutils update I noticed the following build error,
e.g. for raspberry 4b:

[...]
make[4]: Entering directory
'/home/dirk/openwrt/RASPBERRY4B/source/build_dir/target-aarch64_cortex-
a72_musl/elfutils-0.179'
[...]
aarch64_initreg.c: In function 'aarch64_set_initial_registers_tid':
aarch64_initreg.c:85:37: error: invalid operands to binary & (have
'long double' and 'unsigned int')
     dwarf_fregs[r] =3D fregs.vregs[r] & 0xFFFFFFFF;
                      ~~~~~~~~~~~~~~ ^
cc1: all warnings being treated as errors
make[6]: *** [Makefile:682: aarch64_initreg.o] Error 1
make[5]: *** [Makefile:499: all-recursive] Error 1

Best regards!
Dirk

--=-tAJRFzIUXBE4HFTFZQ4n
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEvk9F2uJ4OsaK+T5unXHNVHv65oQFAl6YtHAACgkQnXHNVHv6
5oT2mhAAluP1sagnQWPxZPNPA2bc89DkR1pGbRdwM1j50x2TkbyVGm0JAhAgaK3c
YT5Fniav3U7TkekJAoLtv2/b4uw6+rqi9e7/f/SLsSE1hWLQV0CLyrTaSU1YlVMJ
RJULqH/JnhAgJG7bgpeyZD9Yk2JrKhJlGj+ODegFwoKsGBK7Mj84nY76zwbLIlmS
vl/wnfCLTpDCy6RC96yr8P0HlWIQbb8NFflDAqOS6kh2rPsxcloNORoPP+gZ9QiC
CB8nShffNUr7G7wIUm1RNKfLoZGxW8Bum8XYxk120QXem9Uo+swf/ZBbPZniipp1
x4yMNqv/vv9C9Tp+2OPxQP44cXivyIVqVP20aehiG0LxuF/MHL99XXshlffgOlF3
KiYJvZv3LpEsIS73hLP2tMucX7/1W9Zs+G3ss0hWb3+x+CVyVb71/51TBMyVg35n
hmbHIa7Rr8xN+ZEtQS6pphDMvEy/uKfN6RbDRGs/DDZ1Ze6KmnErB8qoriDI9s/M
XRkRHeDX8uMuaz1CV7QSBE3hBFcjauyfyTUyL28aA2I3cbKpZIJ8cnL932VZ9UFR
qA1mHAs1QGSiGNNb4O2fW/RDsScRWfpM3ILCWIufD1XXJ3xeQSGEVCwK9aL/k62Y
K0VU5z7q9Xm2TJGpSkQnn6RjX4vndo+jskgaieKy20mklnpW/48=
=zCrB
-----END PGP SIGNATURE-----

--=-tAJRFzIUXBE4HFTFZQ4n--



--===============3719507663190564893==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============3719507663190564893==--


