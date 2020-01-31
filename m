Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41E0114F00D
	for <lists+openwrt-devel@lfdr.de>; Fri, 31 Jan 2020 16:48:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WOtqDtfu0oNa3IwrpJ0571jRGw1WS+w10wLjdha7UTE=; b=lNI8966cYeuNvn
	RCR57oikGX3CGxD7EgxosSZVxp6uO8gnMupMVOYVOGzFpd8QPUPNMBNbhvriyJlvSKydcsnjssWBU
	pRjKezK75t/RfJ0YF5BZeFh9CqeEipSPUTMNiMqK2fnOGLIMbTyY7G0tkZorxJB2Qb3Wj/y/yebPm
	1MnveQoySJWEtwkGKR6Jgo2COYVRjv+abgrjMRcKcSgGn9e+zsl8TeXOB2XbjCX/uvQ4lk4h8FVax
	7+ZIkbE2oYuYPb9jkEAMu83YrYqsHUdhjFxkJOdOmhecBarfi0P7OeqFJMUmG7wLs3UEwrDDKMEgY
	oxSYhFJzecBvh/hL12Ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixYWV-0007Fm-0U; Fri, 31 Jan 2020 15:47:59 +0000
Received: from mx-out.tlen.pl ([193.222.135.175])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixYVR-0006Cs-RX
 for openwrt-devel@lists.openwrt.org; Fri, 31 Jan 2020 15:46:56 +0000
Received: (wp-smtpd smtp.tlen.pl 38472 invoked from network);
 31 Jan 2020 16:46:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1580485605; bh=aPtd/LDaEu8KryxFPO2UU+OsxaLP7phgLapUHpSNSRc=;
 h=From:To:Subject;
 b=qRSw+BAQq0mgR/0cMY+EkmCzithK3sn8wvbH9uRifVeXDj3YR6fJ0mw6Q5Of4CSsd
 /1ZheY6a/LCkRP0VMvS+do8ccKj1eDDbrFOO9K2ZLZKXE2oYnU3HsnCfTYQ1/iETUh
 hFSBlbTjdX+L5KBtjNaEYpvFyg9NnS37FJ94gl/w=
Received: from unknown (HELO localhost.localdomain)
 (tomek_n@o2.pl@[5.2.67.190]) (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 31 Jan 2020 16:46:45 +0100
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 31 Jan 2020 16:46:12 +0100
Message-Id: <20200131154620.25773-1-tomek_n@o2.pl>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-WP-MailID: 5b8b8c44cab27d8cf66187657804e9bc
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000002 [cREC]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_074654_072071_870C37E0 
X-CRM114-Status: UNSURE (   4.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tomek_n[at]o2.pl]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH 0/8] mvebu: Second round of clean-ups
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

Most of changes are purely cosmetic, with bigger chages to uDPU. This
will be the last of this type of clen-up from me.

Tomasz Maciej Nowak (8):
  mvebu: image: sort devices alphabetically
  mvebu: image: align subtargets makefile names
  mvebu: image: drop empty variables from default profile
  mvebu: image: keep global DTS_DIR intact
  mvebu: uDPU: clean package selection
  mvebu: image: rework uDPU-firmware recipe
  mvebu: uDPU: drop patch compiling dtb
  uboot-mvebu: point to UBOOT_CONFIG when setting options

 package/boot/uboot-mvebu/Makefile             |   8 +-
 target/linux/mvebu/image/Makefile             |  24 ++-
 .../image/{cortex-a53.mk => cortexa53.mk}     |   6 +-
 .../image/{cortex-a72.mk => cortexa72.mk}     |  30 +--
 .../mvebu/image/{cortex-a9.mk => cortexa9.mk} | 198 +++++++++---------
 .../530-add_armada-3820-uDPU-dts.patch        |  10 -
 6 files changed, 134 insertions(+), 142 deletions(-)
 rename target/linux/mvebu/image/{cortex-a53.mk => cortexa53.mk} (88%)
 rename target/linux/mvebu/image/{cortex-a72.mk => cortexa72.mk} (100%)
 rename target/linux/mvebu/image/{cortex-a9.mk => cortexa9.mk} (100%)
 delete mode 100644 target/linux/mvebu/patches-4.19/530-add_armada-3820-uDPU-dts.patch

-- 
2.25.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
