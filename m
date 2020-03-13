Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9EDD183F9C
	for <lists+openwrt-devel@lfdr.de>; Fri, 13 Mar 2020 04:24:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kTBUsJaAdWAM9Vx5ZdGuoqO+ikj2yDHreT65DddFX+c=; b=fVHZH/8FsF9YZy
	T29OogZ9tXLfL40NLxkgnga5lux2JRIOVo/42ArDlSVGay726vihY0+2nfuSiUutNEzOL1lVH0xhD
	PYrYnd6++urUn02SylVJrWD1ILsNJap8m7+6NSVpPFQ++UpQL0gSJ2ftj9Wt+0fEJG68PLiYtlA9Y
	/LKrZkkH9cP7WHo9MYk4mJ/sMy88TSlX/j0jNMZOwYsqY3C7eQEqxFGBqbgN5TFWNPlJleKmhB/Qg
	BHT5h77crWQ4b7PmnUdqGX4cyf7Kc4WBZ4DyxFzNM2/ri87EdVcFfTimJLFo2OtmWGVRCcApw2Iih
	bRrPlpYZysw0Kujk26KA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCavN-0001oL-7n; Fri, 13 Mar 2020 03:23:49 +0000
Received: from mail-qt1-x833.google.com ([2607:f8b0:4864:20::833])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCavE-0001ni-P8
 for openwrt-devel@lists.openwrt.org; Fri, 13 Mar 2020 03:23:41 +0000
Received: by mail-qt1-x833.google.com with SMTP id t13so6381183qtn.13
 for <openwrt-devel@lists.openwrt.org>; Thu, 12 Mar 2020 20:23:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=e4IZ5id1Ami/A8zZ6Lr+yV1pfryKA1cYuGxPh8dXLT0=;
 b=UIthxMb4zU6gv/F+8TCNEE0mW8iOWCeGlmOLvZQjwJFqUjsidAX67OWtYNdpR6j0X+
 8SWBrLTEaCdak6xAP6S+5VAe19KG97bnSsvLY1WagHPmFVhVQiiem5Ow0I8OMDCISkib
 wa0QeGM4VLXPC2q09TMq6mxby2KbcnmV1K68vWSrTdIjjtmagdn/fje5uDnqtBafLv7M
 qY+BxK0wfTgn7Is3MOeGG9EhRPUzFwg1B5q2YjJMO/AuK1Y6ufzBYKieGj9RwAmc9lbp
 ipklxHXWn+jDNdwv6liJ1KzAwyiCPkBP2kqC0UgrdKcghyWJwt3QWWCQlM3DMA5w9YNN
 plhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=e4IZ5id1Ami/A8zZ6Lr+yV1pfryKA1cYuGxPh8dXLT0=;
 b=cQXAMUF/m0Oh/p9Gwqqe7gvyWM23IXVHfOQvQMC5S5HUepjolVHyS6kXZ8dH9IbQJ3
 VagIs58N3t/eSCS/gHbBdvR0R5SlRdoK6KQeW4otx1FZQOEW3kKgKsJ6T09o44bHNc2x
 avnhGiTzt0+60RW7rMMuVrVZTD6wBH8TyLfcT0ZARM5n5zweTrS39phIRa0HqSfh0QlV
 Bo2TqALBaWWjx8rilTjWFgC1yLJIIQ9B+6RAJ+LFDF+naU1iXqQBpVyjklp1algMvpNF
 DqzMABLywzT1kQM3hatS2s/MzGfVZ8Cdh6SpnND0vfYQetjijcTkZYUn5041cf4GN8dk
 pUUw==
X-Gm-Message-State: ANhLgQ0G2UM3KROIRcYaNm8PFmFEkrHLc5/4On3Fbi8wt9aHJrU+9kvR
 3anjqDc9l0mTQfjvuUHghKnpG/jYfTk=
X-Google-Smtp-Source: ADFU+vvsB9cEl5Mrb6EAL0aXdCI9hUVdhhGuHspYiYPX1czAJp0v1gJU30NchR8TWP1lcwrc4D/Nsw==
X-Received: by 2002:ac8:70c:: with SMTP id g12mr10333331qth.47.1584069818732; 
 Thu, 12 Mar 2020 20:23:38 -0700 (PDT)
Received: from asus-S451LA.lan ([190.22.38.85])
 by smtp.gmail.com with ESMTPSA id b13sm3514833qkk.95.2020.03.12.20.23.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Mar 2020 20:23:38 -0700 (PDT)
From: Luis Araneda <luaraneda@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 13 Mar 2020 00:23:10 -0300
Message-Id: <20200313032313.383555-1-luaraneda@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_202340_840769_687DBE20 
X-CRM114-Status: UNSURE (   7.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:833 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [luaraneda[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH 0/3] zynq: add support for kernel 5.4
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
Cc: Luis Araneda <luaraneda@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This series adds support for kernel 5.4 to zynq target.

Compile-tested: all devices from target
Run-tested: Digilent Zybo Z7-20

Luis Araneda (3):
  zynq: copy config from kernel 4.19 to 5.4
  zynq: refresh kernel 5.4 config
  zynq: switch to kernel 5.4

 target/linux/zynq/Makefile   |   2 +-
 target/linux/zynq/config-5.4 | 665 +++++++++++++++++++++++++++++++++++
 2 files changed, 666 insertions(+), 1 deletion(-)
 create mode 100644 target/linux/zynq/config-5.4

-- 
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
