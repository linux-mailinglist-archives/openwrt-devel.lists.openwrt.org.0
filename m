Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52CCB2B5B0
	for <lists+openwrt-devel@lfdr.de>; Mon, 27 May 2019 14:47:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gAXfFI+PVfQmEzG/pOydkaJs5UxI9gfzGKtgaH483yo=; b=fcjZZAxgzc9n00
	0ZY9xfNi/sbIrFhP/yGhSl8H7GeOHqW5cFjWrh7WKtDOBcFT+l3cgJ7gdVx2+c7tnzwlAh/CZKReC
	52XcDM1RfuUhYhG2f1bJmrt6jV4/NJ2qg2xyo/f89kw+LxquNNsQUQE5Z+dJgHiPyJlt0hYY6n7hq
	ui4IfcRzVcFBM7I9uOexzXlFFm9frviV29IZSsij0BkjavudaByZWHuT8Nx38vcXkDq3U3vNdapmj
	MwegQ3FuVXRasf7pSgpqn0MXTh4lKRpg3NbF+mi/SSDD4uNN+fmMPB0mfYATc84LCGCEhKze/b+mD
	LRXKLFsaKefrXOsFk/Bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVF1p-0003g7-N3; Mon, 27 May 2019 12:47:01 +0000
Received: from mx-out.tlen.pl ([193.222.135.140])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVF1X-0003Uz-FO
 for openwrt-devel@lists.openwrt.org; Mon, 27 May 2019 12:46:45 +0000
Received: (wp-smtpd smtp.tlen.pl 9967 invoked from network);
 27 May 2019 14:46:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1558961197; bh=6uCZ4Ai/1kK5IaFNMMJwdCznJe5rACpGilycW7pjdLI=;
 h=From:To:Subject;
 b=oQsC1DKkb+e1pT8+00dmEODhqSp9ES0qIAXefGI3Qn0D8kmigJYSUS6Y4T0SGm8Ec
 dfNHTDV15evpIvPHBWyMnMHJsVUkOW34NfqeZg1uMjRyVK8FKcT7PY3kbe5gr1Lqqd
 uMJx8rmPdd/JJ4hZkLX6QzQLYQmHohD3AqVagG54=
Received: from 131.ip-164-132-48.eu (HELO localhost.localdomain)
 (tomek_n@o2.pl@[164.132.48.131]) (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 27 May 2019 14:46:37 +0200
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 27 May 2019 14:46:27 +0200
Message-Id: <20190527124630.5042-1-tomek_n@o2.pl>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-WP-MailID: af500367199bdcff713d96b5e4df2fd5
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000000 [EWME]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_054643_843910_02C18C99 
X-CRM114-Status: UNSURE (   5.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tomek_n[at]o2.pl)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH 0/3] x86: upgrade bootloader on sysupgrade
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
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

After gotten bit more familiar with OpenWrt, I found less intrusive
method to implement upgrading of bootloader, instead of rewriting image
generation code like in my previous attempt [1]. It had some value in
itself, so if anyone will request it, I'll respin these patches as
separate series in near future.

https://patchwork.ozlabs.org/cover/1024165

Tomasz Maciej Nowak (3):
  x86: image: cleanup before creating image
  x86: add bootloader upgrade on sysupgrade
  x86: add preinit hook for bootloader upgrade

 package/boot/grub2/Makefile                   |  5 +++++
 .../lib/preinit/81_upgrade_bootloader         | 19 +++++++++++++++++
 .../x86/base-files/lib/upgrade/platform.sh    | 21 ++++++++++++++++++-
 target/linux/x86/image/Makefile               |  9 +++++---
 4 files changed, 50 insertions(+), 4 deletions(-)
 create mode 100644 target/linux/x86/base-files/lib/preinit/81_upgrade_bootloader

-- 
2.21.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
