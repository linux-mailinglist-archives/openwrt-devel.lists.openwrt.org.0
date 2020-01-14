Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3420D13B142
	for <lists+openwrt-devel@lfdr.de>; Tue, 14 Jan 2020 18:46:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-Id:Date:To:From:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=b9cPhm3xDEqaICCPbTZSN8tC1wdIDdt0CbSPu6TtEOo=; b=SAs
	Hpj+JDvaL5qDynVAuIcppCYgR7NEm1v/J4+37j26Bp/3S3+2/vrbjFtLQKakRk3eo9tPmCc4NfJE5
	p/J/wx0VVTe8JqslnqUFFxOTM5eBTiZlRUK5YI7m+B58Qp3fuzsYFqBONYNR4OBJdSbKPHc1i7qDa
	8CSgyOI8MjS8T1swd9ys0/nv4dxnEbzkwP1mWtL1OaKf5GIWNE5kKYtki+MRe33hE9EYV4NBzIjsC
	rtz0WqYLF3hoWXD+e+J9UECNinpbdFHA0t0ROJlGLLTST6wGxlV1u+kpS3+ZsUZI+W1PCxvfKkQzS
	meq2G4JuLSzfyCG6cQbn0PYsymemA5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irQGX-00063N-BU; Tue, 14 Jan 2020 17:46:09 +0000
Received: from mx-out.tlen.pl ([193.222.135.140])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irQGM-00062I-1K
 for openwrt-devel@lists.openwrt.org; Tue, 14 Jan 2020 17:46:02 +0000
Received: (wp-smtpd smtp.tlen.pl 6430 invoked from network);
 14 Jan 2020 18:45:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1579023952; bh=awLVuUjUDaYYYhUijorrz1UgPcE3UOb3or8xrIXYn2U=;
 h=From:To:Subject;
 b=M6ipeoYl6TGWiLhD24ExIEN2U/wIom/b9pF4sIleO9z6YnIb9W+6P2glsAkX7izop
 LsHL4o5mnjmNJhP3z/HQkm30zriMY9TVVbVvrtJeHHtV5MW8CA0BmWZWLqCPYlHRQR
 bgXuUD9/uRNVl1SOc2LDzoQSj051KGEJS5rU08pY=
Received: from 131.ip-164-132-48.eu (HELO localhost.localdomain)
 (tomek_n@o2.pl@[164.132.48.131]) (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 14 Jan 2020 18:45:52 +0100
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 14 Jan 2020 18:45:42 +0100
Message-Id: <20200114174545.1514-1-tomek_n@o2.pl>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-WP-MailID: 4cb59284e0aafbf74c708854ba031fd0
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000001 [cfIx]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_094558_402160_339EE1E2 
X-CRM114-Status: UNSURE (   7.41  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH v3 0/3] x86: upgrade bootloader on sysupgrade
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
Content-Type: multipart/mixed; boundary="===============2148200871708151529=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============2148200871708151529==
Content-Type: text/plain; charset=true
Content-Transfer-Encoding: 8bit

After gotten bit more familiar with OpenWrt, I found less intrusive
method to implement upgrading of bootloader, instead of rewriting image
generation code like in my previous attempt [1]. It had some value in
itself, so if anyone will request it, I'll respin these patches as
separate series in near future.

To expand a bit the explanation "Why this series?", please consult [2]
and the conversation in that letter.

1. https://patchwork.ozlabs.org/cover/1024165
2. https://patchwork.ozlabs.org/cover/1000625

Changes in v3:
rebase on top of master

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
2.24.1



--===============2148200871708151529==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2148200871708151529==--
