Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6281A6CEE5
	for <lists+openwrt-devel@lfdr.de>; Thu, 18 Jul 2019 15:32:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-Id:Date:To:From:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=SR4Od8K9nlfavHUFHuDLUxRJoit741qsjrz7HkmfpSA=; b=Xkf
	7WNtCMkNgyOpAiaUWMnbWPHJPXBbDcKSNIrIrSgfukQUJ4a5I3AcIx2JJLwV74CP+vFeL2+XAMzAA
	SelUt2alMhmhdhGqRBZFKdJ9jPYYwdEoU5GcBf7rlnSFKdruDKLpake/uGeebn0AgtiitRX5dyNTv
	3WVeMR98gMlt0ZIqGKbrT2ertQ6WOW/fDIMua6ovPJJvyKaXR1qmAac77sAsquIAanwgWG8OE+NQv
	chEgj4L9m25qoYNzyDp2XKorW5niMMzPO9cimpjgVNDAxlMwGwCqNBLQcPuq7P+S9XrSQS8UQGm1M
	fIUZUaZ66v/dS7imJiWW2cgBAPilp1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ho6WS-0005jW-QP; Thu, 18 Jul 2019 13:32:36 +0000
Received: from mx-out.tlen.pl ([193.222.135.142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ho6Vi-0005VQ-8X
 for openwrt-devel@lists.openwrt.org; Thu, 18 Jul 2019 13:31:52 +0000
Received: (wp-smtpd smtp.tlen.pl 5783 invoked from network);
 18 Jul 2019 15:31:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1563456704; bh=aCczxUeqKSvn4bRQm80pqwc2kaSs2fQcHNdjUufMZZ8=;
 h=From:To:Subject;
 b=k7q+wOCWl7XIHu0VVblPtDbODCGpdPQo/OlGTSbsfIWa/fMdQUIKW5eW0HMPAYFjV
 AC8j0qYtDe2kGgU0yPQAHql7qxXn2nuD+bkTm3M1v6nKUC6FBCOwHJ/YBrrBy4AqFu
 iLTJ8mJ3aQltX3JjSWuUYAvxftjR21WEYkRV7h8A=
Received: from 131.ip-164-132-48.eu (HELO localhost.localdomain)
 (tomek_n@o2.pl@[164.132.48.131]) (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 18 Jul 2019 15:31:44 +0200
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 18 Jul 2019 15:31:32 +0200
Message-Id: <20190718133135.6474-1-tomek_n@o2.pl>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-WP-MailID: a14074f5272e241fa284deed8b8dd456
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000002 [QdH1]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_063150_628340_0320358B 
X-CRM114-Status: UNSURE (   5.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tomek_n[at]o2.pl)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH v2 0/3] x86: upgrade bootloader on sysupgrade
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
Content-Type: multipart/mixed; boundary="===============3336207818053940161=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============3336207818053940161==
Content-Type: text/plain; charset=true
Content-Transfer-Encoding: 8bit

After gotten bit more familiar with OpenWrt, I found less intrusive
method to implement upgrading of bootloader, instead of rewriting image
generation code like in my previous attempt [1]. It had some value in
itself, so if anyone will request it, I'll respin these patches as
separate series in near future.

https://patchwork.ozlabs.org/cover/1024165

Changes in v2:
x86: add bootloader upgrade on sysupgrade:
move bootloader upgrade to function as suggested by Petr Štetiar,
extend commit message

x86: add preinit hook for bootloader upgrade
rewrite commit message

Tomasz Maciej Nowak (3):
  x86: image: cleanup before creating image
  x86: add bootloader upgrade on sysupgrade
  x86: add preinit hook for bootloader upgrade

 package/boot/grub2/Makefile                   |  5 ++++
 .../lib/preinit/81_upgrade_bootloader         | 19 ++++++++++++++
 .../x86/base-files/lib/upgrade/platform.sh    | 25 +++++++++++++++++++
 target/linux/x86/image/Makefile               |  9 ++++---
 4 files changed, 55 insertions(+), 3 deletions(-)
 create mode 100644 target/linux/x86/base-files/lib/preinit/81_upgrade_bootloader

-- 
2.22.0



--===============3336207818053940161==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============3336207818053940161==--
