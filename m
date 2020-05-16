Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC8791D6424
	for <lists+openwrt-devel@lfdr.de>; Sat, 16 May 2020 23:15:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wCYu8yRQgYHvdL1eeOQKVZWnsPCBuepkPtj1LjRLryo=; b=HdthTBqGqixHnf
	421kzM/A3Ger82In8zGg1WnKZ7wuUrgDoL/iwntNmf1tPnRm39HuEY6iLjrdnBTklloeg03v3ABtV
	lG0BgTX6QxJ8md/ozjt/udQwly6TYCdSdGnNlYeYB0K/tJ0DRlzZUxpcoyJG0rNAfkyjijz6M6NyW
	gMVz9zIwtRcrNv0QY5UtDAiiR/rhj97cJVoMqaSHCzSuz/Si4sGAi7KjvUTDfhqkc4Lu2Ygi49n0B
	3oIfcHIjknUf9nLYYmvOqZzAdMqhVee2WrR7vnE7b0qmYsNd5FCYTW7VUiy3a23BO65FgYjTP7NFi
	o6tAzFoAKb4gmT1c+pKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ja49N-0000bX-Q7; Sat, 16 May 2020 21:15:17 +0000
Received: from orthanc.universe-factory.net ([2001:19f0:6c01:100::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ja48e-0008IH-Ul
 for openwrt-devel@lists.openwrt.org; Sat, 16 May 2020 21:14:35 +0000
Received: from localhost.localdomain (unknown [IPv6:2001:19f0:6c01:100::2])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by orthanc.universe-factory.net (Postfix) with ESMTPSA id 2077E25714;
 Sat, 16 May 2020 23:14:29 +0200 (CEST)
From: Matthias Schiffer <mschiffer@universe-factory.net>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 16 May 2020 23:13:49 +0200
Message-Id: <cover.1589663193.git.mschiffer@universe-factory.net>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200516_141433_148542_6B65C754 
X-CRM114-Status: UNSURE (   7.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
Subject: [OpenWrt-Devel] [PATCH ucert 00/13] ucert fixes and cleanup
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
Cc: Matthias Schiffer <mschiffer@universe-factory.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

While looking for a build issue (see [1]), I noticed various issues in
the ucert code (and this should not be applied before [1] is applied to
usign). There might well be more problems lurking - I did not read all
the code.

In particular patch 12/12 is critical: It must be applied before the
attached libubox patch to avoid a new security issue.

The libubox patch is necessary to make ucert verification work at all
again; without it, cert_load() will always fail, and in consequence, all
images will be found invalid when REQUIRE_IMAGE_SIGNATURE is enabled.


[1] https://patchwork.ozlabs.org/project/openwrt/patch/8ead1fd6a61117b54b4efd5111fe0d19e4eef9c5.1589642591.git.mschiffer@universe-factory.net/

Matthias Schiffer (13):
  stdout/stderr improvements
  Fix return code of write_file()
  Introduce read_file() helper, improve error reporting
  usign-exec: simplify usign execv calls
  usign-exec: fix exec error handling
  usign-exec: do not close stdin and stderr before exec
  usign-exec: change usign_f_* fingerprint argument to char[17]
  usign-exec: remove redundant return statements
  usign-exec: close writing end of pipe early in parent process
  usign-exec: return code fixes
  usign-exec: improve usign -F output handling
  Fix length checks in cert_load()
  Do not print line number in debug messages

 tests/cram/test_ucert.t |   4 +-
 ucert.c                 | 147 +++++++++++++++++++++++-----------------
 usign-exec.c            | 115 +++++++++++++------------------
 usign.h                 |   8 ++-
 4 files changed, 138 insertions(+), 136 deletions(-)

-- 
2.26.2


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
