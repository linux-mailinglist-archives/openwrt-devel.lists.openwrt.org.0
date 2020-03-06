Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E0F317BB1C
	for <lists+openwrt-devel@lfdr.de>; Fri,  6 Mar 2020 12:04:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=v0MlMXS7LC30fkxGSNEp07AUY03+324Pj44M8O40siM=; b=kGeULzijIJxqet
	vCc9cHHiUlvsZg1C09975LOEW8g+FEHCivDB+w4G3P0Hd31Gmdrzf3Eb/BmSAucYSeDxIHKvbuq++
	bpeJLa8Zd4M0cZV9e3lSKfu0km0L0MgwcNOh3I3ovVDiVYIMP6KjGZF3hnSHmRPtomkl/ISw7doXn
	vU4hfgvXYaC7zc3XQKIm1SXrHLOQUYzCRuBaquSE9pPv4WELS+NA3gDh2E7s7K78ROMulrr15v/oP
	ojDv/+JVByrHIcuo0YnSeZpjBPw210au4YZJoZrQXHLmotMS1L+tPbfwzM9/M1nKrjnJtD8lsPvk+
	yXg9/SrgcfxPnQoadgXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAAmN-00055c-7L; Fri, 06 Mar 2020 11:04:31 +0000
Received: from mails.bitsofnetworks.org ([2001:912:1800:ff::131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAAmF-00055F-Tr
 for openwrt-devel@lists.openwrt.org; Fri, 06 Mar 2020 11:04:25 +0000
Received: from [2001:912:1800:0:2bb9:b551:caa7:dfa9] (helo=lud.localdomain)
 by mails.bitsofnetworks.org with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <baptiste@bitsofnetworks.org>) id 1jAAmE-0001Jf-9J
 for openwrt-devel@lists.openwrt.org; Fri, 06 Mar 2020 12:04:22 +0100
Date: Fri, 6 Mar 2020 12:04:21 +0100
From: Baptiste Jonglez <baptiste@bitsofnetworks.org>
To: openwrt-devel@lists.openwrt.org
Message-ID: <20200306110421.GB3750892@lud.localdomain>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_030424_144038_07CFA72C 
X-CRM114-Status: UNSURE (   4.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] OpenWrt 18.06.8 service release
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

Hi,

The OpenWrt Community is proud to announce the eighth service release of
the stable OpenWrt 18.06 series. OpenWrt 18.06.8 brings security fixes, as
well as the usual device support fixes and core components update.

- ---
The main highlights of this service release are:

 * fix a ppp buffer overflow vulnerability (CVE-2020-8597)
 * fix a libubox regression in 18.06.7 that caused umdns to stop working 
 * update Linux kernel from 4.9.211 to 4.9.214 and from 4.14.167 to 4.14.171
 * device support fixes for RB912UAG-5HPnD r2

Additional release notes are available at 
https://openwrt.org/releases/18.06/notes-18.06.8

For a detailed list of all changes since 18.06.7, refer to
https://openwrt.org/releases/18.06/changelog-18.06.8

- ---

For latest information about the 18.06 series, refer to the wiki at:
https://openwrt.org/releases/18.06/

To download the v18.06.8 images, navigate to:
https://downloads.openwrt.org/releases/18.06.8/

As always, a big thank you goes to all our active package maintainers,
testers, documenters, and supporters.

Have fun!

The OpenWrt Community

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEjVflzZuxNlVFbt5QvgHsIqBOLkYFAl5iLjUACgkQvgHsIqBO
LkZynRAAhK6HiJIpeEE/N214bqdvQyMQigMBqC5bG6afi+SPmFYueWD3dR3UhKSh
j1vi6Kk06XQhUcMlzoyDwetRygQQCgP8Mf9L6hRtYQMa5DdcCXy5jKvVRN9LLwzm
LVWnEx8Mxyz/zeahvdfTJFyRIwYcZBKlbAe8HeeMTGfs8tC//53vzgaw1Kf4iVXP
BZ92IEIx07LmCNH1eKZJdRA6AYM/N08Ouy7rRuZ1jM6tSjYxLlVg2pehBgYpbcXV
KInSavdMzPKAeNPSbTiGCR8L8qApotEI5u3yYIIVWfUs0gxoiGqLsWzRqzM2ej6i
0teXz+jtkWR4OHnglJkInvCUHjiSCBPAK/EmljblrWEu9uCEa5LKOPtSwf8ZOq4q
ACq80tFrZoyJjezM7LELZZXaDxamrdB7p0m8PVjC84MVDu+PGBX3Hp8O/CJkuvXf
SnC7eesuRc3yUwCiUhEZ2IMobOwjtqO6u7zHm+xuEgnzEkwRJo/z/RkzeEtg3ihE
IxkXYqjnuTwFdI5Kl0x9wIXJ/AtaEPAdd97VXVzcFt5U57Ven6DI5FB8COBenOOh
6leg/CcpRmEm4wsDFjuFI/X1hgFTQbmtGP/kZ9vEU2dvKoaWjT8AgcHQkIrqw/og
FuKbC6YyUCR9MgO6Pdvz1nwfoZY7kOJir6iQ0Lk1cl6L20t5Tjo=
=ZLwX
-----END PGP SIGNATURE-----

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
