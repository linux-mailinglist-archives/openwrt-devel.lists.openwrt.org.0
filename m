Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 710401432FC
	for <lists+openwrt-devel@lfdr.de>; Mon, 20 Jan 2020 21:42:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uhCrP95q0BCMUBjnolkS0IJQTiGClm4Q/Xh4La+7wLE=; b=fez5hr8t0y9RsX
	tM+8/gv2O1rof2ipQlgVIYnpQEUzj7SVQgQ+mKuJcRcdrr7NhX/7x/VPFiz6jcsea7zBnhAUp6pJY
	dhNsxIBg0QZ1SObiXPv+tsfIOKRizWvDmk1VMeHRPwRFM2PxhkWdiRhtbMgQ1YF1AW/SGaIXLXo4t
	qWwYq712cb8v/Qfbi1kvzxOb5bnfdQVT6GqHrQzNKcfUBOCxQ2eX7Lj/nmPjfjytYHrN6yKK5pnxR
	277OS2ch9qDfNLTz1vec00XZV+viJ2x2YR3UpTqwKHI5W9LLXGdtJhhRsQXZuwtxhwxT9oJs4ZdvZ
	lGkBpa+iKeh1j25q29XQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itdsq-0004us-RJ; Mon, 20 Jan 2020 20:42:52 +0000
Received: from mx4.wp.pl ([212.77.101.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itdsK-0004R3-Hf
 for openwrt-devel@lists.openwrt.org; Mon, 20 Jan 2020 20:42:21 +0000
Received: (wp-smtpd smtp.wp.pl 13319 invoked from network);
 20 Jan 2020 21:42:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
 t=1579552938; bh=QiwO5K3TQjIoGCMGRVLrd2jl5sPDo6IfmZU23pv74rE=;
 h=From:To:Cc:Subject;
 b=wN4XeXTQng+VjKWIFsgMpyi3Og77irixh8pcfYa0ej0SjYGqkrGVnH082K+N+fS0S
 ORc6yagCZzioetVqXdzNauw7pmo7mioxg1vPnh9wv4g0hyWpJmelR8hosU4EO8a7ET
 2QR8BDe/+eQfRNnpQxSfKyBKtbA8EdDDMWMTyctk=
Received: from 89-79-49-72.dynamic.chello.pl (HELO kosmio.komorska)
 (michal.cieslakiewicz@wp.pl@[89.79.49.72])
 (envelope-sender <michal.cieslakiewicz@wp.pl>)
 by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 20 Jan 2020 21:42:18 +0100
Date: Mon, 20 Jan 2020 21:18:11 +0100
From: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
To: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Message-ID: <20200120211811.22199957@kosmio.komorska>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
X-WP-MailID: b8b9edd16765394e8ebce8dea6007cbf
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 0000000 [0SMx]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_124220_761999_072331E0 
X-CRM114-Status: UNSURE (   5.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.77.101.11 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [michal.cieslakiewicz[at]wp.pl]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH v2 0/2] ath79: update device naming for
 Netgear WNDR3700v2
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
Cc: Adrian Schmutzler <mail@adrianschmutzler.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This patch changes device string to 'wndr3700-v2' (adds dash before
variant) making it compatible with naming convention for ath79 target.
Then board, under its new name, is added to uboot-envtools.

Changes v1->v2:
 * SUPPORTED_DEVICES fixed to allow sysupgrading from older ath79 builds

Patch list (2):
  ath79: WNDR3700v2: add dash before version in device name
  ath79: uboot-envtools: add Netgear WNDR3700v2

 package/boot/uboot-envtools/files/ath79                     | 3 ++-
 ...etgear_wndr3700v2.dts => ar7161_netgear_wndr3700-v2.dts} | 4 ++--
 .../linux/ath79/generic/base-files/etc/board.d/02_network   | 4 ++--
 .../base-files/etc/hotplug.d/firmware/10-ath9k-eeprom       | 4 ++--
 target/linux/ath79/image/generic.mk                         | 6 +++---
 5 files changed, 11 insertions(+), 10 deletions(-)
 rename target/linux/ath79/dts/{ar7161_netgear_wndr3700v2.dts => ar7161_netgear_wndr3700-v2.dts} (85%)

-- 
2.25.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
