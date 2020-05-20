Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12E191DB8C4
	for <lists+openwrt-devel@lfdr.de>; Wed, 20 May 2020 17:56:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HSt0l6hQ08xlJxNUNhTEVlftUCW/PfsALyRDaJfhX8A=; b=ADoJjTqUpfVDCb
	1PP48uvb4fKHHEkFm1fFqud+n/HizWz8Mqx4DnbRiMoTkCIF2dWIeL76wXKj7gmyjo1O1NjUCSso3
	FfHq1u3NfTQQgO/VR0fqisxILOZPWod3R/Z2R44VMmJLgPdF4hVVPbBtpPifAWJ+oa9VTvqnqyBWW
	9VKmd5XQ729iSEtBsfoefQC9z/8rsCwaoEVjUtt1mlg7shZDKF+sz10ReL+RYVmWpRpoyXeaGOO5Q
	sEHvyKPggVN0gCQnD2T59blAaz3GYuEqZzB65ITXVA88TCMZ26MndJuSC3/i5zb/HxKytDV4IE8Nc
	r4m8wAkjeOH78f/3wkzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbR4X-0003wi-7n; Wed, 20 May 2020 15:55:57 +0000
Received: from mails.bitsofnetworks.org ([2001:912:1800:ff::131])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbR4P-0003vM-Tb
 for openwrt-devel@lists.openwrt.org; Wed, 20 May 2020 15:55:51 +0000
Received: from [2001:912:1800::5c8] (helo=tuxmachine.localdomain)
 by mails.bitsofnetworks.org with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <baptiste@bitsofnetworks.org>) id 1jbR4J-0006Rg-2I
 for openwrt-devel@lists.openwrt.org; Wed, 20 May 2020 17:55:43 +0200
Date: Wed, 20 May 2020 17:55:40 +0200
From: Baptiste Jonglez <baptiste@bitsofnetworks.org>
To: openwrt-devel@lists.openwrt.org
Message-ID: <20200520155540.GC1264779@tuxmachine.localdomain>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_085550_132921_063C81FE 
X-CRM114-Status: UNSURE (   4.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] OpenWrt 19.07.3 service release
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

The OpenWrt community is proud to announce the third service release of
OpenWrt 19.07. OpenWrt 19.07.3 focuses on security, stability and device
support.

Selected highlights of this service release are:

 * reduce opkg memory usage
 * allow to configure WPA3 modes in the LuCI web interface
 * greatly improve loading performance when using LuCI with HTTPS
 * update core components (linux kernel, mac80211, etc)
 * many fixes and improvements for device support
 * fix security issues in umdns (CVE-2020-11750), relayd (CVE-2020-11752), and other external packages

Security fixes for packages can also be applied by upgrading only the
affected packages on running devices, without the need for a full firmware
upgrade to OpenWrt 19.07.3.
Nevertheless, we encourage all users to upgrade their devices to OpenWrt
19.07.3 whenever possible.

Full release notes and upgrade instructions are available at
https://openwrt.org/releases/19.07/notes-19.07.3

In particular, make sure to read the known issues before upgrading:
https://openwrt.org/releases/19.07/notes-19.07.3#known_issues

For a very detailed list of all changes since 19.07.2, refer to
https://openwrt.org/releases/19.07/changelog-19.07.3

- ---

For latest information about the 19.07 series, refer to the wiki at:
https://openwrt.org/releases/19.07/

To download a OpenWrt 19.07.3 firmware image for your device, head to the
Table of Hardware:
https://openwrt.org/toh/start

Or navigate directly in the list of firmware images:
https://downloads.openwrt.org/releases/19.07.3/targets/

As always, a big thank you goes to all our active package maintainers,
testers, documenters, and supporters.

Have fun!

The OpenWrt Community
-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEjVflzZuxNlVFbt5QvgHsIqBOLkYFAl7FUvgACgkQvgHsIqBO
LkZphA/6AgbPY+hKZDuohZNaAkde1HMEu5y5aqEW91zAuQXR/NMJCs/5gdmvWwqL
FUz7SPNI6Qi5vDn3jQ0q0VdMAITJmw3+kljmUZL2bo1TJG6Kc5pC65LtjB1cw+Zv
6YOAdNw/9whlUH0NnzPRsgibgs3iEZBJqDQK1a+kgc9Dn7XRx5QP1iP0v+bHXKj4
/XaUTwq1FlksSrkLJMLwBPqNkzkvZ1crvPA0fOkkpJnSnny+AIn/ti4VhQ6BSm9a
mJHhgxb3sl05JN8NM+JbVBBzNUzj3PjXcaF+2fJcEl6J/xYyxnw1hSVZBdt9jHAv
K/wVHyZ4YLbSQ0kKPla2egQ7Z66xU3dVBNTCJvVvRHelIdKh+Dp0rmowLnyDvKeK
dCX2MLCT9CxDJL//0aFVlbXySysWUDKfHSew/jdnVhPZ6D5hyV3IwuJ/AjAK9Zmj
8YycVUEu3oSiJPjqctoXIoY6EaarPGaBAR2XGGU4TZlvdD1rmM6RCmk6zITSbtdy
kajISNPBemcQhQi7HpEgCnIZKyPjMmMK5P8PydC26YjHHXxg1osYsB66QCQU1IsX
apjanXLRzCeU6d6zVAJ4hmr7Y6MEHni6ECwXpd3JFIROvzCVfJEk9Wq3jUpBAAjh
XtvekmxMzkQ9AhX196vlzhL1HhZohEh8vTzCQsVxh7dpvo7TXNU=
=cpgp
-----END PGP SIGNATURE-----

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
