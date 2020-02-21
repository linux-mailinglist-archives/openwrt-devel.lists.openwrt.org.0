Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 040481683E1
	for <lists+openwrt-devel@lfdr.de>; Fri, 21 Feb 2020 17:44:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:Reply-To
	:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:To:From:Date:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=jbkp835XhnYTHEEucGR8dh9QjTnJFEkn5FGmgW/NOHg=; b=kCRi04vhBdcYmRn9hvXmTA6e6n
	TU1I0n46v2xGnIkAjBSiqKkXBrJd/sVVrXpxvvjnbwcVXv9y3bbGj3YjOjLv0MH2LDx3dcmHedaUA
	uvyRLriufYadsB0+9b1P1k8FL8fiQs3woHq8j5izIi776lfdjw2wrgA6rA8J0DsjLp4WKSzGE5Ubf
	QBikGQweIQCYwViGEC09GhOa5wyqvPGOKz0SaSSK3E+XANKMAjs5elYsan/uylX1vTktdvw6BjRew
	VYmPb40O8G5aNuQdhm757KVnQKOoSz4OAIkJ+L+iQksLFCmkNmw0fJCAt3QgjoWmh7u2H6Koorgqg
	OX7qQjrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5BPm-0003hL-4a; Fri, 21 Feb 2020 16:44:34 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5BPU-0003e7-Uu; Fri, 21 Feb 2020 16:44:19 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 2300B6C58;
 Fri, 21 Feb 2020 17:43:59 +0100 (CET)
Received: by meh.true.cz (OpenSMTPD) with ESMTP id bcbd0690;
 Fri, 21 Feb 2020 17:43:45 +0100 (CET)
Date: Fri, 21 Feb 2020 17:43:57 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: openwrt-adm@lists.openwrt.org, openwrt-devel@lists.openwrt.org
Message-ID: <20200221164357.GA29791@meh.true.cz>
MIME-Version: 1.0
X-PGP-Key: https://gist.githubusercontent.com/ynezz/477f6d7a1623a591b0806699f9fc8a27/raw/a0878b8ed17e56f36ebf9e06a6b888a2cd66281b/pgp-key.pub
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_084417_302434_53F7FE10 
X-CRM114-Status: UNSURE (   6.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] Security Advisory 2020-02-21-1 - ppp buffer
 overflow vulnerability (CVE-2020-8597)
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
Reply-To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Cc: Lukas Tribus <lukas@ltri.eu>, CERT Coordination Center <cert@cert.org>
Content-Type: multipart/mixed; boundary="===============0674259717354403944=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org


--===============0674259717354403944==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="dDRMvlgZJXvWKvBx"
Content-Disposition: inline


--dDRMvlgZJXvWKvBx
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Security Advisory 2020-02-21-1 - ppp buffer overflow vulnerability (CVE-2020-8597)


DESCRIPTION

A remotely exploitable vulnerability was found in Point-to-Point Protocol
Daemon (pppd), which has a significant potential impact due to the possibility
of remote code execution prior to authentication.

OpenWrt by default enables the _FORTIFY_SOURCE=1 compiler macro which
introduces additional checks to detect buffer-overflows in the standard
library functions, thus protecting the memcpy() abused in this overflow,
preventing the actual buffer overflow and hence possible remote code execution
by instead terminating the pppd daemon.  Due to those defaults the impact of
the issue was changed to a denial of service vulnerability, which is now also
addressed by this fix.

CVE-2020-8597 has been assigned to this issue, you can find the latest version
of this advisory on our wiki[1].


REQUIREMENTS

In order to exploit this vulnerability, a malicious attacker would need to
provide specially crafted EAP Request packet of type EAPT_MD5CHAP to ppp
running in client mode and thus overflowing the rhostname string buffer by
providing a very long hostname.


MITIGATIONS

To fix this issue, update the affected ppp package using the command below.

   `opkg update; opkg upgrade ppp`

The fix is contained in the following and later versions:

 - OpenWrt master: 2020-02-20 reboot-12255-g215598fd0389
 - OpenWrt 19.07:  2020-02-20 v19.07.1-17-g6b7eeb74dbf8
 - OpenWrt 18.06:  2020-02-20 v18.06.7-6-gcc78f934a946


AFFECTED VERSIONS

To our knowledge, OpenWrt versions 18.06.0 to 18.06.7 and versions 19.07.0 to
19.07.1 are affected.  The fixed packages will be integrated in the upcoming
OpenWrt 18.06.8 and OpenWrt 19.07.2 releases.  Older versions of OpenWrt (e.g.
OpenWrt 15.05 and LEDE 17.01) are end of life and not supported any more.


CREDITS

This issue was identified by Ilja Van Sprundel and code fix was implemented by
Paul Mackerras.


REFERENCES

1. https://openwrt.org/advisory/2020-02-21-1

--dDRMvlgZJXvWKvBx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEPAej20ekYZCJto32WO4SDzDMAtMFAl5QCMcACgkQWO4SDzDM
AtP31g//c8s24PR9qbsRgOTYLXL2g9kvsY8Z0+cAuP0QyfKpGjjtJE8Ib98fsLzC
zb4i5qpHpJd3CzoifktmZVC5SiKSArYJiMcbVgGSb0425jgdjnesKR3PJVznr3Qu
JJimmD1dQOOjZt2lV3DHqz3BPxGIbKQuUoH3AqOHyobjUTZeylYbW00ZHe7DV8Sn
NFu0rndCBVDO/My3RamlMlekS+JXLlZ+FqvMeBpMLHa+t6HqPSaSQn1Q8K/TxU8e
hWrcjZ1dEC6MrwS+2QOYZcWBxDX9ycdyaTDqeZOMe1pTwjX8gRU3+BMR4vH018bD
mNxbrEw6LqIgd2RNEuraC/DLTcVJfOiIU78W32yd+PgpZjPhSr7LColA5HAqVC2l
wmWHEelQhBepYZfJ41e/bOsBOMejuxbVT0E5gyLQGjYPEiWVbxcqm6CkV4LYr4+b
dxMxiYnb68hN1LM0IkOOB5vL0CbI3MNn/qPe0P7pZ/f6NjaupLJ7/mNNo5+5Kuu0
ScBh1yywnWP5xXKLtemwaZoKVrYwoVmRtyYsWiNSUl5Z8YbECCwDaSdmCh3IAQqr
hiU4nfQliHE5Yrko4xSTSFKCi4c/FBAyOesFRnIeQFSNwSyqjLCN8NGYSCEya2NZ
zUMJtKQ/U90IM1QkBXOGYask5RF+uf1g9E7xiPzWnJ+eDLPinpU=
=gjk4
-----END PGP SIGNATURE-----

--dDRMvlgZJXvWKvBx--


--===============0674259717354403944==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0674259717354403944==--

