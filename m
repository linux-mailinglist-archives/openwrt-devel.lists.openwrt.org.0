Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5EF3BC5D1
	for <lists+openwrt-devel@lfdr.de>; Tue, 24 Sep 2019 12:47:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YmnHrRXDjMmoogY/m3cfjtVOPsqR6ljzYmpHyUFIOWI=; b=k7SJ3ca9pLoU16
	Gxv93ziKxA4V312wz04rU1ohh8RyaaMxybrCiXw2K5KO5iLzD72NlYkc+pReKpWGppmWXjOkZ1zSz
	T1MQBFJxuviOLI0UYGqVWcmbWKc84zZQFFFWHBQ7DQdPgILOUpV2Lq5l9BjH6tmQWmCiPdJKfROH/
	mSM9HCIdzYeff2I3ucBH9kxa2PFu8m4/fIuy3tqn9nYNx3QiS8NNYQH4j44J+IXCuPRj7Kq2ZEewy
	EdRqZUjrhevPfLdTXhPbojM9YtiLqD16fFAm1iM86IHAQdHoDyJFH5Ikd1wIDdfCLTZFtDpHHYEAk
	XBlC0m5o/efT3WhfsNTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCiLs-00081n-AR; Tue, 24 Sep 2019 10:47:24 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCiLl-00080u-UZ
 for openwrt-devel@lists.openwrt.org; Tue, 24 Sep 2019 10:47:19 +0000
Received: by mail-wm1-x32b.google.com with SMTP id m18so1501155wmc.1
 for <openwrt-devel@lists.openwrt.org>; Tue, 24 Sep 2019 03:47:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1c64V1ci1g7fb9PomFBCTR41Y6FtbnJHwI8b9BnASIw=;
 b=itQwcPr7mBT2gpdX44vRiUTUtdN4rYZTMOwKk8Kpw6yTqKP5i1EqGxc+4Dihvww8ar
 DrnSOZ55YpIcFrZL7P0Urtkv7PTwICakhW2D5YFN8z7Es5GE0pVJALdTeq0PA0JGAku2
 tHUXXR1hc+uZsqwduwDagWMW/FPTCSwiOjHT650UCs1FAIzsFWBmmx1S+OLIpCiQSU1G
 vIwMtywja6IdO69+6W9FyEj/LrH4i7+cG9z+I34duBJi98V8tKCCdG99G6NJIF3GQLQv
 t/XpLqvwLXsTLqfOyJr17oKHbU178c3CmBYCC36ycV9bazlESeTD9Zut4MVEIvESFyoa
 C8iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1c64V1ci1g7fb9PomFBCTR41Y6FtbnJHwI8b9BnASIw=;
 b=iPsGUbHVLFx9KA2sAawM69+akCeXR8GiYzuoaZH01JTnKTt3XMbSDsE0otJII+niNN
 YlcySrA434f3q4oNZA7t/7f8P169vYKSwCV56Xihsso6AHHPM3HkWWV9jcbbEB5RVbQ7
 sorc5iPMNaZa1TbM54LQFb/MU5smNKm7amHb4v8xtQfJucftKBcLfhNPO6/xDBOrDWCX
 /dErEWZ50BMo4Wt3mifZDOgri6GhyKs+fZ55i6A5twU7b+ETRHYGLgSHHyqdkp5U/FR6
 bAMgWSbFWFduxcXZXOlQLzutrJd+Ul9FmDXFs4uGirOnH3KBm/rPSOsElXvmXiQng/aG
 6YwA==
X-Gm-Message-State: APjAAAVWYgzvwA+abFNzsaLAbOKibNvdavmzQievtx+m7STCBl0XGEA9
 jJ0F2T2uaIrgyxZFk8/vxOpy4cytysk=
X-Google-Smtp-Source: APXvYqyKgJnNr8cPl14e8aCMhr5IykLDb98sExWrjNAj+4CflmHtRvFuJblvVFCZ/93ZkZKMsBHxIA==
X-Received: by 2002:a1c:48d5:: with SMTP id v204mr2234906wma.109.1569322034445; 
 Tue, 24 Sep 2019 03:47:14 -0700 (PDT)
Received: from kristrev-XPS-15-9570.lan ([193.213.155.210])
 by smtp.gmail.com with ESMTPSA id f8sm1681490wmb.37.2019.09.24.03.47.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Sep 2019 03:47:13 -0700 (PDT)
From: Kristian Evensen <kristian.evensen@gmail.com>
To: openwrt-devel@lists.openwrt.org, dev@kresin.me, monkeh@monkeh.net,
 musashino.open@gmail.com, ynezz@true.cz
Date: Tue, 24 Sep 2019 12:47:10 +0200
Message-Id: <20190924104712.19812-1-kristian.evensen@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_034717_979831_DC13A50A 
X-CRM114-Status: GOOD (  10.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:32b listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (kristian.evensen[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH v2 0/2] Add support for the ZBT WE1026-H
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
Cc: Kristian Evensen <kristian.evensen@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This patch series adds support for the ZBT WE1026-H, an outdoor AP with support
for adding an internal LTE modem. The first patch restructures the DTS files for
the WE0126-5G slightly and adds a WE1026 DTSI-file, containing descriptions of
the components that are shared between the WE0126-5G and the WE1026-H. The
second patch adds support for the WE1026-H.

The main change between v1 and v2 is the addition of acked-bys on the first
patch, triggered by the re-licensing of the DTS'.

Signed-off-by: Kristian Evensen <kristian.evensen@gmail.com>

Kristian Evensen (2):
  ramips: Update ZBT WE1026 DTS-files
  ramips: Add support for ZBT WE1026-H

 .../ramips/base-files/etc/board.d/01_leds     |  5 +
 .../ramips/base-files/etc/board.d/02_network  |  6 +-
 .../dts/mt7620a_zbtlink_we1026-5g-16m.dts     | 77 +--------------
 .../ramips/dts/mt7620a_zbtlink_we1026-5g.dtsi | 90 +----------------
 .../dts/mt7620a_zbtlink_we1026-h-32m.dts      | 14 +++
 .../ramips/dts/mt7620a_zbtlink_we1026-h.dtsi  | 42 ++++++++
 .../ramips/dts/mt7620a_zbtlink_we1026.dtsi    | 99 +++++++++++++++++++
 target/linux/ramips/image/mt7620.mk           | 12 +++
 8 files changed, 186 insertions(+), 159 deletions(-)
 create mode 100644 target/linux/ramips/dts/mt7620a_zbtlink_we1026-h-32m.dts
 create mode 100644 target/linux/ramips/dts/mt7620a_zbtlink_we1026-h.dtsi
 create mode 100644 target/linux/ramips/dts/mt7620a_zbtlink_we1026.dtsi

-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
