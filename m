Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0412A157ED8
	for <lists+openwrt-devel@lfdr.de>; Mon, 10 Feb 2020 16:34:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/eHvpcEomQai6oz9ohGNRXjY0lHBmFFbrYcbBhywYk4=; b=VrBCm1G0qO7WsB
	eM3a3Jw355caMu0q5Ye19OlR7Ar1PK1vboZvEyVW7awxlA4td1szfqJ05htBDbscOab4n29HEkH9N
	/TPbwrFV+AW7QOf2GySAizE8/k5eU9eHDUceq+JxPGglf2uv9e8rnUwPoeRNHJdKmcdmANBGR0qO6
	b15674pXaZyo+qRB5C0jWvS9ofn8+9vGQn/m2wRuicM9vhGJypV1KsIIjfjvFLanFGSxrcN6gpsBN
	SXH5quixZH9V8XCofsyZdYZWZE293Vfgjftj9mtbn+WSLzelYsVpMHgrbV9Ej2gkjnstIdZijxgsa
	TCntL+Ox1ewath1FBtng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1B4q-0001OW-B8; Mon, 10 Feb 2020 15:34:24 +0000
Received: from mx-out.tlen.pl ([193.222.135.175])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1B4I-0000tV-Da
 for openwrt-devel@lists.openwrt.org; Mon, 10 Feb 2020 15:33:53 +0000
Received: (wp-smtpd smtp.tlen.pl 9803 invoked from network);
 10 Feb 2020 16:33:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1581348823; bh=qbRsRUW0I+rhYDje8E26UPFXOCA8adKppX2Zclche10=;
 h=From:To:Subject;
 b=GhlKWVezqvqxKLN8V1CSJnSIOmbcaLxEZHjdxBlnn5R5DZYN1iWU65/UJM4Ozuuvx
 Ro3xQKtfm6/zNdHdZiXeWR0+2C+Ac9NW9jUeLDrqbI/6tcD0udQ66424MPviZa9Z3c
 daan68URlQUyyfq43XRIfwiFBys85Ob5ClfD6jdI=
Received: from pub-15.183.29.194.multiplay.pl (HELO localhost.localdomain)
 (tomek_n@o2.pl@[194.29.183.15]) (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <openwrt-devel@lists.openwrt.org>; 10 Feb 2020 16:33:43 +0100
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 10 Feb 2020 16:33:22 +0100
Message-Id: <20200210153327.3443-1-tomek_n@o2.pl>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-WP-MailID: b73a964548cf02d0007f417d08adcdb7
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000002 [IfHs]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_073350_807474_83EEE0CE 
X-CRM114-Status: UNSURE (   4.47  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH v2 0/5] mvebu: Second round of clean-ups
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

Changes in v2:
- drop merged patches:
  mvebu: image: sort devices alphabetically
  mvebu: image: align subtargets makefile names

- drop rejected patch:
  mvebu: image: drop empty variables from default profile

- add DEVICE_DTS_DIR variable to global profile, as suggested by Adrian
  Schmutzler
  mvebu: image: keep global DTS_DIR intact

Tomasz Maciej Nowak (5):
  mvebu: image: keep global DTS_DIR intact
  mvebu: uDPU: clean package selection
  mvebu: image: rework uDPU-firmware recipe
  mvebu: uDPU: drop patch compiling dtb
  uboot-mvebu: point to UBOOT_CONFIG when setting options

 package/boot/uboot-mvebu/Makefile                 |  8 ++++----
 target/linux/mvebu/image/Makefile                 | 15 +++++++++++----
 target/linux/mvebu/image/cortexa53.mk             |  6 ++----
 .../530-add_armada-3820-uDPU-dts.patch            | 10 ----------
 4 files changed, 17 insertions(+), 22 deletions(-)
 delete mode 100644 target/linux/mvebu/patches-4.19/530-add_armada-3820-uDPU-dts.patch

-- 
2.25.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
