Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F5F14CB68
	for <lists+openwrt-devel@lfdr.de>; Thu, 20 Jun 2019 11:58:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Date:Message-ID:From:To:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=kkhHkXunLUp1rXqn15/JnRKzX5xK5XJdwqRmi6rfV9c=; b=IwT
	8pZvgpeLgRRzW9jTF/e2c8EuDxq4XjhroN1uzL72QAkR3m81TemmydA9tpGw8HrxLFmx0fDxCTqH9
	d5c5UXkcI8rZhDdyd4urcdfga61RvuTBPQQpmupnkG8GdR8mFevLY+RVhTjA3cVcHkB5Fr7rCXgr6
	9hHpvuilhlIuWZ3qWLKezsfizGDmOy1rS25U9C2F7zOsQWsWHxpz/5BsOqjw0s6kYkhMlTPaZS14a
	NzfDaI/5v2qfrhXtE/hoBCbxqqQQGmz+q3OSEMb1lP/INDvEvNEuEdqEhSpVBjFTcmNNiJYj7dQwf
	LOnIeMIBykdXOkPapOtJR0uIko4ns6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdtpH-0002WO-26; Thu, 20 Jun 2019 09:57:51 +0000
Received: from mxout01.bytecamp.net ([212.204.60.217])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdtol-0002Ht-Np
 for openwrt-devel@lists.openwrt.org; Thu, 20 Jun 2019 09:57:23 +0000
Received: by mxout01.bytecamp.net (Postfix, from userid 1001)
 id 994D751E72; Thu, 20 Jun 2019 11:57:15 +0200 (CEST)
Received: from mail.bytecamp.net (mail.bytecamp.net [212.204.60.9])
 by mxout01.bytecamp.net (Postfix) with ESMTP id 608A151E70
 for <openwrt-devel@lists.openwrt.org>; Thu, 20 Jun 2019 11:57:14 +0200 (CEST)
Received: (qmail 75847 invoked from network); 20 Jun 2019 11:57:14 +0200
Received: from unknown (HELO ?10.11.12.7?) (jo%wwsnet.net@95.90.22.126)
 by mail.bytecamp.net with ESMTPS (AES128-SHA encrypted);
 20 Jun 2019 11:57:14 +0200
To: OpenWrt Project Administration <openwrt-adm@lists.openwrt.org>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
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
Message-ID: <7c6e24b6-c832-0cbf-198c-69c902f18f8b@wwsnet.net>
Date: Thu, 20 Jun 2019 11:57:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_025719_971744_BC641079 
X-CRM114-Status: UNSURE (   7.58  )
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
Subject: [OpenWrt-Devel] LEDE 17.01.7 and OpenWrt 18.06.3 deadline on Friday
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
Content-Type: multipart/mixed; boundary="===============7180972122514379346=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============7180972122514379346==
Content-Type: multipart/signed; micalg=pgp-sha256;
 protocol="application/pgp-signature";
 boundary="JrB2RxWbDcSF9rNr0OvgIaMnc6CKNmyPG"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--JrB2RxWbDcSF9rNr0OvgIaMnc6CKNmyPG
Content-Type: multipart/mixed; boundary="iLLPQOZqhDjdZjaAVQedZ8uuyWTPu5ffR";
 protected-headers="v1"
From: Jo-Philipp Wich <jo@mein.io>
To: OpenWrt Project Administration <openwrt-adm@lists.openwrt.org>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Message-ID: <7c6e24b6-c832-0cbf-198c-69c902f18f8b@wwsnet.net>
Subject: LEDE 17.01.7 and OpenWrt 18.06.3 deadline on Friday

--iLLPQOZqhDjdZjaAVQedZ8uuyWTPu5ffR
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hi,

please merge any outstanding changes that should be
part of LEDE 17.07.7 and OpenWrt 18.06.3 into the
respective lede-17.01 and openwrt-18.06 branches until
Friday, the 21st of June at 09:00 UTC.

I will tag these branches then and start building
corresponding binary releases shortly after.

The v17.01.7 release will also mark the end-of-life of
the LEDE 17.01 series - we'll decommission the LEDE
17.01 related build resources and repurpose them for
producing 19.07 binaries.

Regards,
Jo


--iLLPQOZqhDjdZjaAVQedZ8uuyWTPu5ffR--

--JrB2RxWbDcSF9rNr0OvgIaMnc6CKNmyPG
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEoEDjaXEsZv/z0WDyQuLLvzouZtMFAl0LWHkACgkQQuLLvzou
ZtOg9xAAxB6PANTM1WyLFAKgTsk6L0uEj0olgH/srZSQe6d+EpMlkFEo53P9G+vM
1M2sgsZvPQawC6fQsi2JI9cwsixXlN4EUEI3WolM347TlsreAfG70CufHjaOP4th
g/jlGwHReQoKyKBhJoeUUx/YKrBVFieHDC2WAHIsHAGeslV6pxQ/GqVlved+NqtF
wKo63mEViwshbU6iQKspDIPMtrIp4ze/damsnBVbuDqrHUPhz8xckFr3PmSNjjju
1F3vwqy1cY2GbiZb8LC/PzWDBwXmhhiid5qgWlW2ztztjjE88UAVVwgaK21ZNVOE
FhVHKbeLM0NNyVpNFBcC/dXX0S2YhFYBs9w5LKHORS5pfRjQX7kjwBOGAuGA5a41
9+Xlvh4maq2w6UNPo+s20FyrCvl4+FzKdZ0VGAdJBn9bmP2jZe+WaUwlpNGxiuGx
t0EQN2qLrpUzIzFLr1zxYN6OUCc1w/TT8lx6TM4MJPlcjtPlUcvuej9yhOFAPCJI
QiU1OQH4ksv0rJRbdnGBBJeMsSTbwuaFRGwOieKCsHTLeurBIrgFcxcpD5rdr2WY
rp/tiW/xUKwSApYmPFC0SzUJCD5ChJxLmTEymH0ZDLkPtc0DGHWUNfbhRpLsp6ZW
x5c9/I0Q3Sg3AgHQO6C8X69g2ETFSZrWCxR28NXH3ftKcVLy1Ps=
=k1cZ
-----END PGP SIGNATURE-----

--JrB2RxWbDcSF9rNr0OvgIaMnc6CKNmyPG--


--===============7180972122514379346==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7180972122514379346==--

