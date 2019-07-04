Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4DA65F24D
	for <lists+openwrt-devel@lfdr.de>; Thu,  4 Jul 2019 07:32:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Date:Message-ID:From:To:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=KnnDjqQ1Vt+p0J9T3neK3Rdfca9sJJlXcYrRvUK0lF0=; b=nie
	+EG6esD4hw8xkOhZo4ACqYFKHAnqC7KWPCnftn46OL6V//fsf3RFfeS5pbAFGZ+Aa89hnePug8xd7
	b4m66xi807AeDfOhfL3vu6fNUKs3cpyF5tI5dTrIzpDItRP1R9ZtsIh8mgfPpavmy0EEU4nhzKkk+
	dG87+eVT2GeW4Qogivt/Anm6uAoE0Figeq/qtGz7lEGQBP+81Gl8zdgPSw7Fy7mdLswdt4IEiVduM
	FabVf+MvG0WcyGwSSTKRYPQ1ZgXwPbA7Z+OwlBcuWp/GrA5yUbPgaGTtenJ0+HndZXZmJzkPZIRk8
	3rn0YdGbzu6MLe2IphRGq8phLnWyp1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiuLG-0002KZ-5j; Thu, 04 Jul 2019 05:31:34 +0000
Received: from mxout01.bytecamp.net ([212.204.60.217])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiuKv-0002Jj-In
 for openwrt-devel@lists.openwrt.org; Thu, 04 Jul 2019 05:31:15 +0000
Received: by mxout01.bytecamp.net (Postfix, from userid 1001)
 id B63B5546C7; Thu,  4 Jul 2019 07:31:06 +0200 (CEST)
Received: from mail.bytecamp.net (mail.bytecamp.net [212.204.60.9])
 by mxout01.bytecamp.net (Postfix) with ESMTP id 81409546C5
 for <openwrt-devel@lists.openwrt.org>; Thu,  4 Jul 2019 07:30:59 +0200 (CEST)
Received: (qmail 98077 invoked from network); 4 Jul 2019 07:30:59 +0200
Received: from unknown (HELO ?10.11.12.7?) (jo%wwsnet.net@95.90.22.126)
 by mail.bytecamp.net with ESMTPS (AES128-SHA encrypted);
 4 Jul 2019 07:30:59 +0200
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
From: Jo-Philipp Wich <jo@mein.io>
Openpgp: preference=signencrypt
Autocrypt: addr=jo@mein.io; prefer-encrypt=mutual; keydata=
 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
 Xx5IapIyoA==
Message-ID: <464124d6-f1d7-8dee-6f0a-1becd2339789@wwsnet.net>
Date: Thu, 4 Jul 2019 07:30:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_223113_812423_5A19870E 
X-CRM114-Status: UNSURE (   7.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.204.60.217 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] OpenWrt 18.06.4 service release
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
Content-Type: multipart/mixed; boundary="===============0120446647880198902=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============0120446647880198902==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="cNcM9YGXszQFmICvBx38pRVBYVdnptTh2"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--cNcM9YGXszQFmICvBx38pRVBYVdnptTh2
Content-Type: multipart/mixed; boundary="xFHyweneWeuKCDYtgv9kzxtUWhrCLzugv";
 protected-headers="v1"
From: Jo-Philipp Wich <jo@mein.io>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Message-ID: <464124d6-f1d7-8dee-6f0a-1becd2339789@wwsnet.net>
Subject: OpenWrt 18.06.4 service release

--xFHyweneWeuKCDYtgv9kzxtUWhrCLzugv
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

The OpenWrt Community is proud to announce the fourth
service release of the stable OpenWrt 18.06 series.

OpenWrt 18.06.4 incorporates a number of bug fixes in
the network and system userland, as well as updates to
the kernel and base packages.

Note that the OpenWrt 18.06.3 release was skipped in
favor to 18.06.4 due to a list minute 4.14 kernel
update fixing TCP connectivity problems which were
introduced with the first iteration of the Linux SACK
vulnerability patches.

---

Some selected highlights of the service release are:

* Linux kernel updated to versions 4.9.184/4.14.131
  (from 4.9.152/4.14.95 in v18.06.2)
* SACK security fixes for the Linux kernel
* WPA3 security fixes in hostapd
* Further security fixes for Curl and the kernel
* MT76 wireless driver updates
* Various network and system service fixes

For a detailed list of changes since 18.06.2 refer to
https://openwrt.org/releases/18.06/changelog-18.06.4

---

For latest information about the 18.06 series, refer to
the wiki at:
https://openwrt.org/releases/18.06/

To download the v18.06.4 images, navigate to:
https://downloads.openwrt.org/releases/18.06.4/

Have fun!

The OpenWrt Community


--xFHyweneWeuKCDYtgv9kzxtUWhrCLzugv--

--cNcM9YGXszQFmICvBx38pRVBYVdnptTh2
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEoEDjaXEsZv/z0WDyQuLLvzouZtMFAl0djxIACgkQQuLLvzou
ZtOWRQ//fszjJu1jMA1i3PUa7AppagN03jCd83/uSklZ9jNElfvHKstpyL53405x
9aTBvZPi/67DhN/1kMqLRubp4SFXaxgzy5i3Zya1JZUvEOuD3I4Q+5PGlMlU2tgS
o6vbPxEqIJys/p9qxM3Ol2a4bl3xCwb0f3fhpq1U9NY7++F7sdmLEIuDoeDw8gsf
0LX1VraPj9j1fR1U9kY3RmG3oR4SnW5qoSLTNWOnWn6K04lbPjpCPuSseZxlGTHa
rrlGK5w/Ax1yL+jBeq0yLXG25gfK9jxM6C1rMmNhbnVufzC42dViBybn5b0/O5mg
KUjp9wYbLIbJbqW5lqv0wwpuQ7Oi3WWygjqd+MZI6lpg7Czb/2PHmeQ3KWXbPzXq
cq25un0ynwvX6J9bogDdhl+SNFcC8QuEuYOWtFe6g4Gu9GNA94b+NA8ZNczPrfmW
pSn/V5p5/pLEHCSa1Y09d9R/t7L1fg/qQC8VkGViTiQOB+nvjak7YK/rIuKwHh9k
EWB9lAFkkSllPniEIYtWwTzJpwMc5AHyzP6CadGjejcZNyVMDwpcjWEyDPVMD4Us
FopcFm6inK1r6DXaIrIjPkP/1fi39bCOyEvL1KaEMMrMc1eUERckoa+8t45tfY03
96VNd+R9z4E0WLRWofE/pTkLC3X1Yk5gMLIax97c2ECpOO2DKM8=
=F7O8
-----END PGP SIGNATURE-----

--cNcM9YGXszQFmICvBx38pRVBYVdnptTh2--


--===============0120446647880198902==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0120446647880198902==--

