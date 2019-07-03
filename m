Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBF9D5DFB4
	for <lists+openwrt-devel@lfdr.de>; Wed,  3 Jul 2019 10:24:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=a2AttdmxgIbcNs4oPyTGTxZpnEGmTY28OePh9vjaneA=; b=fR6RTT9+R2m939
	Kn1P+rx9h60C7JsVtaWPxrAtd72QksPb5rlNU6qsHPpUPXGvJFu0juwwtPDY2Lz+J/8tcCPwCXy86
	rJye8BBrQGTYy4PNOmH3CzlmseWcPpyOvKTHHNCvJDxiv6EATu6jzVo8GGKXkWcp1nk2p2F2iV/nM
	92rt6AoltGI4FlZhtoIqoikEUTXHx/XdZuwOVaNVwHRQflJZNwOktI2F1cPZZr9EiDQFRqrQSCC01
	DQJXt7wjNT8mPllH7m/l4Dm8O7ix4QmBkg+rcYKWovzmi5pu1r5VKqjx0XenXxWdpNpMsoB8jU+Fb
	sWmwpCkCrzRsc8whRNIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiaYY-0007zv-FG; Wed, 03 Jul 2019 08:23:58 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiaXv-0007pJ-4m
 for openwrt-devel@lists.openwrt.org; Wed, 03 Jul 2019 08:23:21 +0000
Received: by mail-wm1-x342.google.com with SMTP id u8so1337761wmm.1
 for <openwrt-devel@lists.openwrt.org>; Wed, 03 Jul 2019 01:23:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=darbyshire-bryant.me.uk; s=google;
 h=sender:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=yYCb1qjSBSK9/j8EXrVRw4743PYEgmZCVnFvyiY96sY=;
 b=LRZzewxAfCq09tGVq49VdyryDjfQpf50AAqot0oZx60YuK8aeWOup884+kA7dJfS/l
 a3DEcYsi7ihtGnQxsi35fjN4idd6BzzyJiLKyjKags5VKwVbhe2znUKCpqv63c6a6jx5
 8bNGXDVFZmS40soPOzX+TTt5KNuwr9v7MV3GI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :mime-version:content-transfer-encoding;
 bh=yYCb1qjSBSK9/j8EXrVRw4743PYEgmZCVnFvyiY96sY=;
 b=sapEXTBBL8J7b3TDyqpdCTxu5JNukRx0xvx77aIlTVefsWykauwM0BdWnKg04kBiQc
 /V5vyHI6sM2pMHau23aoaOrZswIe1nqDYTz8pH77Q+QrZ0dse6UrifbyiIkFVWEhovRF
 jbfZDAyuwDVqZVSA6unlQ9UHjTSPvZf6GT3nPkG8PlaF8Y1qn4QtuuLdo6Hqo54SmQfa
 0EE5NBnurP5h0OzJTZUzkMmYJhxNlI1NjV3Tmj5eZ28W9NK+lSC6E50Tg76OuPBp81Ob
 Cf+4+dqD18zkksb+PZEcOw5oZ9oN5mJ+BIfjeDfsy/6L87crip+YOHeA169KyOees/vK
 CI6w==
X-Gm-Message-State: APjAAAX2SEEGXxKS12qpRAeu77l0ctxBZWZoL8WGrLIHybNAG0orAm+f
 SaXCv0kkHWsuzvOk758bcU/e6vdecDA=
X-Google-Smtp-Source: APXvYqys+CGp8QQJgzypsMqb6Xl1N6IOAIbUR6XellM1PdWffuIr8Aj0aCVUqbEqKVSpLliFbRNObQ==
X-Received: by 2002:a1c:ef0c:: with SMTP id n12mr6544193wmh.132.1562142195182; 
 Wed, 03 Jul 2019 01:23:15 -0700 (PDT)
Received: from Kevins-MBP.lan.darbyshire-bryant.me.uk
 ([2a02:c7f:1268:6500::dc83])
 by smtp.gmail.com with ESMTPSA id y18sm1458738wmi.23.2019.07.03.01.23.13
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 03 Jul 2019 01:23:14 -0700 (PDT)
From: Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
To: openwrt-devel@lists.openwrt.org
Date: Wed,  3 Jul 2019 09:22:54 +0100
Message-Id: <20190703082255.81312-1-ldir@darbyshire-bryant.me.uk>
X-Mailer: git-send-email 2.20.1 (Apple Git-117)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_012319_332316_CEDC0A77 
X-CRM114-Status: UNSURE (   8.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH 0/1] dropping out of tree cake
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
Cc: Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Chaps,

Following patch drops the out of tree cake package from our base repo.
AIUI there's a desire to reduce the number of unnecessary packages from
base and relocate if required to packages.

CAKE went upstream in kernel 4.19 which is where we are.  There have
since been a couple of fixes, some of which were backported to 4.19 by
the kernel people, others are features and hence not backported by them,
instead by me.

I'm 'happy' that the patch drops our package and replaces with a
functionally equivalent set of patches to netsupport.mk and
generic-backports.

It could do with more testing though to prove I haven't stuffed the
build in some way :-)

Kevin Darbyshire-Bryant (1):
  kmod-sched-cake: drop out of tree package, use kernel version

 package/kernel/kmod-sched-cake/Makefile       |  42 ----
 package/kernel/linux/modules/netsupport.mk    |  16 ++
 ...ly-update-parent-qlen-when-splitting.patch |  50 ++++
 ...-sch_cake-Make-the-dual-modes-fairer.patch | 217 ++++++++++++++++++
 ...-use-of-connmarks-as-tin-classifiers.patch | 118 ++++++++++
 ...erpret-fwmark-parameter-as-a-bitmask.patch | 102 ++++++++
 6 files changed, 503 insertions(+), 42 deletions(-)
 delete mode 100644 package/kernel/kmod-sched-cake/Makefile
 create mode 100644 target/linux/generic/backport-4.19/391-v5.1-sch_cake-Correctly-update-parent-qlen-when-splitting.patch
 create mode 100644 target/linux/generic/backport-4.19/392-v5.1-sch_cake-Make-the-dual-modes-fairer.patch
 create mode 100644 target/linux/generic/backport-4.19/393-v5.1-sch_cake-Permit-use-of-connmarks-as-tin-classifiers.patch
 create mode 100644 target/linux/generic/backport-4.19/394-v5.1-sch_cake-Interpret-fwmark-parameter-as-a-bitmask.patch

-- 
2.20.1 (Apple Git-117)


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
