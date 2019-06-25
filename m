Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D569552CE
	for <lists+openwrt-devel@lfdr.de>; Tue, 25 Jun 2019 17:04:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0UNRLGLIl/y+poy0fjUIHcM7RmOQqlrT+kkK549lQoQ=; b=q+8Cuzpu3aHkB7sXTGh4Ituxy
	NKMYWf3mhxsxaVICoW8axQmYtG17fgMWjADADcyR6QbwrTaNeCifLPDptVp998kAWnCLblV5mSWSr
	ZfoAmvxWf3VDjHAKqKXcPWhQoM+p6KrCUFVqQJydDtPGph8d14AWugSYs7gTizo/kRyQh/peyROXu
	Z/XH0qBHmglo6/bqv3tBIaY94g9CVDmWg7lE2aP6lQoN7w4uKOR7UPfAO0zDn2k7VdBEcxx9yjk7W
	6ae2VszEr2A0A8aS5VPedpfuFr5BNMuWkvEJkY2FhzkTwhrT6oeW06RAgBPtKv8Ci5s8eD2U9jePo
	L6kyiQFag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfmzj-0003kp-TE; Tue, 25 Jun 2019 15:04:27 +0000
Received: from mxout01.bytecamp.net ([212.204.60.217])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfmz9-0003XT-Bs
 for openwrt-devel@lists.openwrt.org; Tue, 25 Jun 2019 15:03:55 +0000
Received: by mxout01.bytecamp.net (Postfix, from userid 1001)
 id B7EDA52C99; Tue, 25 Jun 2019 17:03:49 +0200 (CEST)
Received: from mail.bytecamp.net (mail.bytecamp.net [212.204.60.9])
 by mxout01.bytecamp.net (Postfix) with ESMTP id 753B352C94
 for <openwrt-devel@lists.openwrt.org>; Tue, 25 Jun 2019 17:03:49 +0200 (CEST)
Received: (qmail 86762 invoked from network); 25 Jun 2019 17:03:49 +0200
Received: from unknown (HELO ?10.11.12.7?) (jo%wwsnet.net@95.90.22.126)
 by mail.bytecamp.net with ESMTPS (AES128-SHA encrypted);
 25 Jun 2019 17:03:49 +0200
To: OpenWrt Project Administration <openwrt-adm@lists.openwrt.org>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
References: <20a0263e-aba2-20f0-2850-63ee0ea0dcac@wwsnet.net>
From: Jo-Philipp Wich <jo@mein.io>
Openpgp: preference=signencrypt
Autocrypt: addr=jo@mein.io; prefer-encrypt=mutual; keydata=
 xsFNBFU/gqoBEADOH7rJT9/cMjuHsUqHn38uxtIEPMsaI0zg1t4nU+sraS5aatIjWVouDdUB
 TBvYK6bVgef74Rh4zlnhNxOAQyWmTW1BApe4/et3F69wUpUW38mWYiwXJ1IoXFiK+74G3dix
 yvTl7zabyUzNqjP3MyEXFO0w0mQQqXWqncjD192mTZeN+AldCjIyNpKl3iTQ6mZUGydjPs53
 OBizq+gHOAa0tmxeYbMP5nI9dvgBFunycs2X8MNvAGCOLg24SqTTO0yxmwHlJEKDcxH+H1hN
 v3HkZGfBYtbdEBCiA7Y5trDYD9yjHaVf/u+U9BKnKX8RWQicoSiWT8ZoO9WSmAfwSaTl43W9
 X73QMnsDUQZTwox4c6ApnnhCU8KSAJeg1ghVKp7rH5W9I3YWMDXCVETS2NZYBuzRaGGzoc6X
 g8kAHAEBIJV3eodw+EAi8JOEBfAck8/DHKbX/3Z+1vmT8oU+P16sm9wXRbDF8sAsdu49Tdnf
 aRlVtSDU2sRT6jWms54+Mz0mLdU5UNQZZmC+/H8L8Km+aIpmEsMk0BPSSTs0RlD3+rtbsX+Z
 cbnD4QUU2fHjqmxbuyBxBjDrrbQFiai7iXkJnPxmrX8M7NAQtKsgCaBhL1Vr+Wf+kQ8iOO7o
 HqwmLINZ/ibA/fqq0WK1zbJIXFFFF1spYPobs+pyIhE/F2/UKwARAQABzR9Kby1QaGlsaXBw
 IFdpY2ggPGpvQHd3c25ldC5uZXQ+wsGBBBMBAgArAhsjBQkJZgGABgsJCAcDAgYVCAIJCgsE
 FgIDAQIeAQIXgAUCVT+EnwIZAQAKCRA6ofWzR9lAhjoaD/4+EICs5EdCtyelaMUoJgGu45HX
 d4JBRA9qgrlHtu8DggKBkjww5ouYeEMXaoYdg/FxKiXGqzyAhDqDGyEcBbaG9hoPLhsvK/rM
 8Bp9Fv76Vn67fzG5a+PGbhS9atNUyBwpsaNreJIo51Hm+CGAysCedd+aqz90/rZyqkLkEadY
 aBzFibV5fJJ3/EeWZvPPmh8x/Btky0L9Q3M0NR2OijvLZu7vIudKzRNYb9pcs6/sKNYge1oC
 Ug100nimUtCC12u7YK5T9S66zaa0I84tk8hlBIKGmT3FcQoHEH9SdPSH0zkFL0XRZjjm4G+G
 VZMvWCeooJu7Jm183xvCS5tN5ny4M9dfJwLr4xStuQwGOOZq3ll8v9ftSsHbAvXNQz+L6Mpn
 wdYsGXurtm77YcJUXNNhl1L81A/oW1QIfwIoW9MOqxAhd+8dhULPXt3WWWLRxe/KFakttqrD
 HAnqGUx/LOEBYJwQpqeZzAOgOfOXE6JcCxgNfp1rwj9zIvAa0xKWDdQvHxdoaviYtKNqjmhG
 Z4ZmlZwynBypv0bdx2V8YHZy3oclTkJ3JQ06mwyDfWpi63nUITlRlWxPCu9Ob4o+3vjWnpSh
 5U+TCSwUPCZ61k4t1rEh8/h5pPo1laZ3asSV02YdNhZan9k6300T33U4a0KCsw71O4OQ6r1D
 kSmwKIgqKs7BTQRVP4KqARAAu0n+LOANYoZBw6h/aHjDRYiufOFr3mrRr0R1z/29r9G3CgYA
 R+wREG3d+Eof6Gihbci03SabInFMfp7B0AZ9Y2byEoauLG1GprTD9qIh1KJbnxFCrHTKTERt
 blh14OI0KUzqXOsxIKq0yI4xUg5749eRwEeCtBIoy4z37TXCu+v3TVVJva7Gy8ij1LB/xBVP
 CmoTzVHnOl8DKsdPQ4POX/TqL02tA2PBpQPklpAfkxrmpeQbVrm8EMGQdPOfaFCUfcFnj/8/
 qauZhFgIrMJrxoXzQeW+9AP3K+BeU7yNNvzDNPpLQQ3wp5XmVLmJ0xurqoVbheZiQBtF4MbQ
 xIT+9YiLv514oGK9UG+syBj/nE49AymL6OcBR3/ZfBk5VABKynUtP5LDP0vPErvcKsE9b2Q/
 AqoGiPV3fJ9fhrFivoS56fxLd+sl4le/uuENMDnEg8fjoGoGJ0UQMeEGg87bcI1V5D6YXtJy
 1v5g0Ro8mJ+/yh4RSifn587Juetvub2w6TGqsnASaYZvaoN6udnUu9T90U2zW0yGu/mIrm2J
 jJJYqTpjBLZb5yEd9DKITozQQPlUoy01wldpTgaZZh8nRw20C+UJMUK0JisFBAB0RtPNwCMC
 7ci6H6IoOxZOTkPEedFQ0Gq/W6PtAj4kFBHHoj+oqXzu+USp1fZnyV461q0AEQEAAcLBZQQY
 AQIADwUCVT+CqgIbDAUJCWYBgAAKCRA6ofWzR9lAhuIdEADEld2LwOFSvfpCYoDck4pUEhMY
 r9OxpvZaqQaMM4YB2+wPnVALzs36kQiK8Kf/aNhGEjkdsyXHkDv2nJJVkL7IpspxN7dQ/P+t
 amTEnxQtxX3tEn5oQHj+GwLXmsRa49YXGKV6X8CqBy0PSvQMXwLKvBDHz0p5W9BitOflmrjL
 M1/vDm2qi5dtczfhUIpcKQ2DzJEi3e/r1jGWO0rVA7M/WljsOc1YKbR2gb6/oLURuGwIu/Lk
 JHe9hsENPJ+MxUUxBbGLlddPbAPeLWe0xSle9btlZmEBdtDx+3xVr6Wzggnr/SZxiVqRJKe1
 2ySAwHBgAuH2u6QL4m35CZ7VHgOKiXtp/7lrW56Q7aVQdByutNjwXbqjBcRCTHrF4t/lFOYO
 jBBi4TvnHMT2/2hUDBm/XDBhdlE0w6Pai51pSvYqlt6WXRPoUH8Kra1YOJ0plGDC2s68FMKi
 UyjHjvFBOsZ0m2uuhPJO9kaMJvohES2VqohUJDBMAqBjmmvCpySy6W037y1sdr8z8fXZVmb3
 BPsre6PGA7a1gXwPeTfUFMw0pKFhpPZO7XnPSgnRNDNI42Ldcoz0xI7Qg2zCsQR4YHwnu6o8
 pzadX6sSiW/la5oFlktj+IN1Avgqf5YenhKX8hj0d4uhJB4w5S+vQEySwmiZ1HWmYLcHHR9f
 Xx5IapIyoA==
Message-ID: <65e023e0-4927-45f3-1dee-d649ab2b4fd8@wwsnet.net>
Date: Tue, 25 Jun 2019 17:03:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20a0263e-aba2-20f0-2850-63ee0ea0dcac@wwsnet.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_080351_592603_1111392B 
X-CRM114-Status: UNSURE (   9.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.204.60.217 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] Problem with "base" release repositories
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
Content-Type: multipart/mixed; boundary="===============2590093087042005587=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============2590093087042005587==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="3aTX6vc4Z1RKoo9kxvRRDdV9j4tQYnSph"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--3aTX6vc4Z1RKoo9kxvRRDdV9j4tQYnSph
Content-Type: multipart/mixed; boundary="cP4dCnnapqUDUTBtup7uqbdkLsrrVqiBJ";
 protected-headers="v1"
From: Jo-Philipp Wich <jo@mein.io>
To: OpenWrt Project Administration <openwrt-adm@lists.openwrt.org>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Message-ID: <65e023e0-4927-45f3-1dee-d649ab2b4fd8@wwsnet.net>
Subject: Re: Problem with "base" release repositories
References: <20a0263e-aba2-20f0-2850-63ee0ea0dcac@wwsnet.net>
In-Reply-To: <20a0263e-aba2-20f0-2850-63ee0ea0dcac@wwsnet.net>

--cP4dCnnapqUDUTBtup7uqbdkLsrrVqiBJ
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi,

some updates.

I managed to track down the root cause to some bad interaction between
buildbot and Git.

When buildbot tries to switch an already cloned repo back from a
previously checked out tag to a branch, it performs this series of comman=
ds:

git clean -f -d -x
git fetch -t https://git.openwrt.org/openwrt/openwrt.git $BRANCHNAME
git reset --hard $SHA1
git branch -M $BRANCHNAME

The last command currently fails with:

error: refname refs/heads/HEAD not found
fatal: Branch rename failed

=2E.. leaving the Git tree in detached HEAD state neither pointing to a
proper tag, nor a proper branch.

Eventually, during the SDK build, buildroot will call "git rev-parse
--abbrev-ref HEAD" to determine the current branch name which will
simply return "HEAD" in detached head state, which is then subsequently
filtered away, leading to a branchless base URL getting emitted in the
SDKs which ultimately leads to the broken base repos getting built.


It appears that an unconditional "git checkout master" before buildbot's
native Git clone/pull magic will solve the issue for now, I am going to
implement this workaround now and see if the situation improves.

I'll also add further checks to abort future builds early in case the
problem ever resurfaces.

~ Jo


--cP4dCnnapqUDUTBtup7uqbdkLsrrVqiBJ--

--3aTX6vc4Z1RKoo9kxvRRDdV9j4tQYnSph
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEoEDjaXEsZv/z0WDyQuLLvzouZtMFAl0SN9EACgkQQuLLvzou
ZtOWSw/+Ly9Y/hR2EJDafhISkOJdXDGlg2f3aJ7Bzd21DBiRqZEjo/vLUrokC9Xt
7ikej/f7oW4GiuYo/hN+NdxyqsGbRaasGvoxQ9He3rkK6NgRdPxUJnKa/4FT3PKK
5G+qS949RPtcIw/5Av8Y43Z4X5oDWA5A0zZFScniy23E6noolNT9o/VtN+i0KB7R
M+WNdEEIonieZXKG3CRdDGn2jaALgOoThEH4QgKGnQ0khCivzFpylgRXXMZ1EQBG
hCT0K25ncRZdEOZ5T1YVGIC4MRjIsbMy8+sK0qOEObfHC13eRtBMud/uMVhhZRdl
7oBlwxVvbclgUFfSIkqz7ty6Be2jRtM57RnvkG9kpiUQ58zFWo/i3jSqfS3lNuJC
3Cwtsq5qxEvpkftpt7Y8rGGKE5AGw6v4dQjH1JBFTlRJJwzsGkiDfz1p53awwttg
goYdhBD6f4HiFEvtUHTp8d2FM9T3oBP2WlfNZtRtqO2GlemHbOChoQtFJr83t+E4
yrzIAR4dba+EqdP2/5wUUlHSkZn830mASXKQZTCOCCZJC2hdNFyYYeOj2AQGYc7R
x2svdYtCPUwy7tsh7sM/ORghqUdEb4q+M6dbY7pkWEY7ZCMkzuiWH7hNvEXweWQw
CMN6qX7KuNfKGLp+Yfu4+z05/6eNzaeg38FtS5FYW9qfO1wtZSk=
=dt12
-----END PGP SIGNATURE-----

--3aTX6vc4Z1RKoo9kxvRRDdV9j4tQYnSph--


--===============2590093087042005587==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2590093087042005587==--

