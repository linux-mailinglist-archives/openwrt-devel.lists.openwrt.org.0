Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7218102E77
	for <lists+openwrt-devel@lfdr.de>; Tue, 19 Nov 2019 22:46:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Date:Message-ID:From:To:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=GFuBKLpL4CnZT4ZM1IARK9yVzAl9p98IaazQxAob3WM=; b=oWk
	OKUqVs5neKU7RGmyowDGuL4vIcVxUBaT5MWFO+1RvvxfdtSJ41koeEknm8phfY+jQeA0qHOnPhf5Y
	Z4KHqKrCHqofQQpNoTCU0sMcNxZQ8+QuCJ/3zGkZUYjsA9Myxiz4kIsNNOoUg5EjgUtlxB/Bcmgan
	GBhhU6n3Rq40Nn4eJfq6IroEFG/Y9pBU/HGdXAoHhxnXZyqheop3Xm6yqm6RWGtEHhQ8rTXM35xdV
	jltMNNMbxml3OabbQir4/eak0XjoG+Wzua45HIZ1l52sia8ILfWPIO/PB1T/qkq+SmQAjl2BB0cDA
	Ec5FJYZHc4WM7l2eF5KwI3W9Dp8Sb2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXBKD-0002HT-4h; Tue, 19 Nov 2019 21:46:17 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXBK5-0002GS-Rg
 for openwrt-devel@lists.openwrt.org; Tue, 19 Nov 2019 21:46:11 +0000
X-Originating-IP: 81.6.44.130
Received: from [172.22.0.20] (unknown [81.6.44.130])
 (Authenticated sender: hansmi@hansmi.ch)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id D1E3A40005
 for <openwrt-devel@lists.openwrt.org>; Tue, 19 Nov 2019 21:45:59 +0000 (UTC)
To: openwrt-devel@lists.openwrt.org
From: Michael Hanselmann <public@hansmi.ch>
Openpgp: id=32D9484B34D8A872772012E5710DD762010BBA8A;
 url=https://hansmi.ch/key.asc
X-Hello-World: This header intentionally left blank
Message-ID: <1885733c-b5d5-9850-7fca-f30def787222@msgid.hansmi.ch>
Date: Tue, 19 Nov 2019 22:45:50 +0100
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_134610_035709_B52CB8B7 
X-CRM114-Status: UNSURE (   5.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] Patch for dnsmasq DNSSEC validation not working in
 19.07
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
Content-Type: multipart/mixed; boundary="===============8466097157511792037=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--===============8466097157511792037==
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="OnnLQT5fJ6hYBdGztE6bm16eUiWL3b2aW"

This is an OpenPGP/MIME signed message (RFC 4880 and 3156)
--OnnLQT5fJ6hYBdGztE6bm16eUiWL3b2aW
Content-Type: multipart/mixed; boundary="KbpfI2DCTY99NwqrPqr0uJXCuQVey7K1p";
 protected-headers="v1"
From: Michael Hanselmann <public@hansmi.ch>
To: openwrt-devel@lists.openwrt.org
Message-ID: <1885733c-b5d5-9850-7fca-f30def787222@msgid.hansmi.ch>
Subject: Patch for dnsmasq DNSSEC validation not working in 19.07

--KbpfI2DCTY99NwqrPqr0uJXCuQVey7K1p
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hello

To the best of my understanding dnsmasq's DNSSEC validation is not
working in 19.07 due to undesired behaviour introduced in commits
04b45d3 and 0299a4b. The following pull request contains the necessary
revert as a first patch (see commit message for details):

https://github.com/openwrt/openwrt/pull/1812

I'd appreciate a review so we can prepare a cherry-pick to 19.07.

Best regards,
Michael

--=20
https://hansmi.ch/


--KbpfI2DCTY99NwqrPqr0uJXCuQVey7K1p--

--OnnLQT5fJ6hYBdGztE6bm16eUiWL3b2aW
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEENEVC6w7lpobWh8t0Yy8zJpbbY3YFAl3UYpMACgkQYy8zJpbb
Y3akaxAAiLvwCUus8rIhOpbGS2dgzjyrYnWO1DF60M8IhveyWd6H3QR4k/SdOXD8
4DEp1J949x/r9LJQqe1pb53lFsQ3eVSkzVPNLX59t0cBx/lXEmbNsB50+ujhcjRb
BtdDJUCgomGjFSBk+Z+xymKEkRzDNZKZ9WS/mSI/QU/a/66qP2VWtav8MI/SXHdr
o7DcmhoiZ0jR2uc5D3JWiNHLQLqvXZD83sOPzw0odlIgI8w2ZDZ22ronfdUae0FK
bMOQf3uPemrB4nHFGsZqin20riV6nOX5S/xdDjoWs/U/ZNqADNSh43/ebsm1OiCh
HLfjagO1Vml62N2mMxOXaD9buX4jrakIcnFlCJkZQCtNhBdVsLkMSEDzL57CgIo+
zwKbAoopszXWVplNznl+xW4symQry2pfqg4pDR99XGCZ0Z43pt9Ox9MzgjfJdmfU
I6JyNLADCr6g11fu0fX6lEHSh72rJk50/NA0Le2QeEsDQm34yntFJikxt47dX1Rg
AmhsiQKHSNzzZmJyjP1JKnCVXsL8l3q7FM8u5sVMg++tSmB3yjJkLeUDfdR+oCRB
pXNt0kgvWjRZTw8hvaH2PhkcWseSbC1GBmpBttiH5UEyY5iQsOLiQgsgPCdaPSwl
6E8OLstClsmKH0p+Lf5inV5VeUeeDzURGIn0hKii2w6ieTi1dc8=
=PQsj
-----END PGP SIGNATURE-----

--OnnLQT5fJ6hYBdGztE6bm16eUiWL3b2aW--


--===============8466097157511792037==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8466097157511792037==--

