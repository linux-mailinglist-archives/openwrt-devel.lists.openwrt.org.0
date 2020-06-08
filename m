Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 726F51F167E
	for <lists+openwrt-devel@lfdr.de>; Mon,  8 Jun 2020 12:14:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:To:From:Date:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=BrmRYUi+JIbeui70tf+X0aRmlApg/fxr9Olkj2Vhf6M=; b=Eoi
	BZ0YhsHWe3e4psLbtC8lLdPrV7kqgsdc/S2hFw51OmnP0Bw1vgZRzzufiYUPzaLyuzrKAIWjpn+5J
	SkF9M4u5MSA6ScjM6Yao4tA2gr+S5zfUdinSXbWfb4Z4VIAbIXHmXYGCsvdNTYb2H921Ipa85zvNq
	oEEestZx06c6jSfGQ8LS3+nL7rqxpxoheFxY5OpbVA2E64OLbbfPt2l+/RF36mA1MVTvAnkc3ir+U
	W+gcFfYNVDXyFM1BoLlGwSoqCqXN6XY9TNfmdpuX4kVXw5RRi6qZ1fGgpdft6hNjXVDppxHFCbwSt
	Ze1zcIOa6LzMHi61kiXkOR/POsP4Mjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiEnU-0005gL-JL; Mon, 08 Jun 2020 10:14:28 +0000
Received: from mails.bitsofnetworks.org ([2001:912:1800:ff::131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiEnN-0005fY-Hc
 for openwrt-devel@lists.openwrt.org; Mon, 08 Jun 2020 10:14:23 +0000
Received: from [2001:912:1800::249] (helo=tuxmachine.localdomain)
 by mails.bitsofnetworks.org with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <baptiste@bitsofnetworks.org>) id 1jiEnA-0006Nc-1c
 for openwrt-devel@lists.openwrt.org; Mon, 08 Jun 2020 12:14:08 +0200
Date: Mon, 8 Jun 2020 12:14:05 +0200
From: Baptiste Jonglez <baptiste@bitsofnetworks.org>
To: openwrt-devel@lists.openwrt.org
Message-ID: <20200608101405.GA102675@tuxmachine.localdomain>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_031421_737070_A1483A92 
X-CRM114-Status: UNSURE (   4.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] Google Season of Docs projects for OpenWrt
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
Content-Type: multipart/mixed; boundary="===============0618032799752674456=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org


--===============0618032799752674456==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="PNTmBPCT7hxwcZjr"
Content-Disposition: inline


--PNTmBPCT7hxwcZjr
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

As discussed previously, OpenWrt has applied and been accepted for the
Season of Docs.  We have three mentors (me, Jow, Thomas H=FChn), while Hauke
and Paul are "project administrators".

We started proposing projects here: https://openwrt.org/google-season-of-do=
cs

Feel free to discuss the proposed projects here, especially if you plan to
apply as a technical writer.  The goal is to clarify the projects if
needed, and make sure that we provide a good match between projects and
technical writer applications.

The deadline for applying as a technical writer is July 9, see
https://developers.google.com/season-of-docs/docs/timeline

More information about being a technical writer (requirements, stipend
amount, etc) is here: https://developers.google.com/season-of-docs/docs/tec=
h-writer-guide

Baptiste

--PNTmBPCT7hxwcZjr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEjVflzZuxNlVFbt5QvgHsIqBOLkYFAl7eD2kACgkQvgHsIqBO
LkaTqBAAjxb06AG1G1Sqdugtamc9dKRn4F49DCGzVCmv/b3fpO8c3knaNkmV3l+w
I+hT7JydoW4YMOlJ+NIRIU33h6YS7Gpb4oBcnq62TAL4uxrM1QupPdwfZlnsU0ej
sNV73fSe6HTfc6UTjPHVrgBmKVlayOsa3TIgMbccqNZ5qnbeeGHECXzal3FhJBPv
1ophCfj7tfXdLPHAVdd053kKr9Da0Gz6hlXhEsfmXeFr6YxkpnrsnbIzMg54r/RR
/+rk/ivEK667AoP/pwFn1cd64VaZjfWvxStPoD8YmNiRj8H3PsmXltudYz4CJkTf
DNITlWE37f7tx6GrdYnE9q7cfhf2USIZZC6yo68OfjqdvgfdrbcdeYu0nWdHkU27
aJlGenEY59NHZSHPWLIsQ7e6uAHt+MfBwLY6w3VgfOvp5KLeR8EE0YpJuMq2guys
9TnzekBF+itZeCmsByGe321O3ZwTcB0UEh8/lxHU/b4mAYFlofgi6/EXrLVoO/4z
ohxWtLMIc799f7huk5Gn4UiuguckvIcEoVpgHyjXaI7TCga6tJ6G2ese4aK8GSX3
egZNZDbWEQQHMWW8hdebPBrZ066WzLCVL89ewN5QKiPFUDaL6rZZJLZ2QAy8GuEZ
rTcyHLDwCUqLxwgBwpz2err4LpAaEjL4vz7ksC3qkfzMhce9up0=
=/Jh0
-----END PGP SIGNATURE-----

--PNTmBPCT7hxwcZjr--


--===============0618032799752674456==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0618032799752674456==--

