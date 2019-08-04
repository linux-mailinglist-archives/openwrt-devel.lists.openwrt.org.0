Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54AE98094D
	for <lists+openwrt-devel@lfdr.de>; Sun,  4 Aug 2019 06:33:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=u2/2PS39adTIdjAV1s/y2lSIXcxNBqT3LCDmNHfp5hQ=; b=XO5TF30HbdCEdD
	PC7UdbLR2PUA4L2nKAtT378E+kkdFrN5eIAHYDKz27SQSnHwXbF/QYNkl4QhDVfhh/uCXP8/LULmB
	bwVfid9f1OJQamCuw/nPwPqpDK2IKF5xguwA6TJTWf6oVmTkT5Ak5H9yNEHmMqLdATXKGty9R0wLL
	OBYUiTZsKIyfe2Ro7YVyx/r0yCHxPW/sGA7u73KMO+7n1PTv8ft7Dg4ZIT++ciiKCSU406IjxCEK+
	T/Swwmkq5DmsQP0JwY7rUyQzbnWCgs+YDB6SeqxHuiMdZwtfZ8qj252JIPOruReY4eQYFHPXjF8Rx
	7mHaatOSUrqIL/4rUc1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hu8DA-0003S2-DU; Sun, 04 Aug 2019 04:33:36 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hu8D1-0003RD-6i
 for openwrt-devel@lists.openwrt.org; Sun, 04 Aug 2019 04:33:28 +0000
Received: by mail-vs1-xe44.google.com with SMTP id r3so53878170vsr.13
 for <openwrt-devel@lists.openwrt.org>; Sat, 03 Aug 2019 21:33:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5Lar3R5rrpuisZ+fnnNzNzfdgwTx7D/stlZ9Z4KLKSg=;
 b=qDkuHlGkUChjT93yP3SpT6sRjiJyBWEfbu3YxMmio7H/kHAKxoyZ/UiCq/Mii/4Eq2
 lSa99OXtTtLfuopGPLcUR0L22uGrHfB9wbRsVwBoVSGlLJvCc1puexHI/akn8gZfgGNK
 UIdCwlAD3Z419OegfY/yfo1GWn9fUiDXRJ1M8bePAGU1ku/XHSPk+wrTwL9QMu5HbZRy
 O4Mfbfjv6Q4O127Cod82u4DOMLgd3yER4rHSjem+H7x0rhHDZLw8arE4glIpCwgU3FHk
 GTRHTEBe+3hnvuIeM638kcet7+72EF6An57vkbX3EX+6CcxKMI7pdKkhjuoUzuPo7pj2
 ib5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5Lar3R5rrpuisZ+fnnNzNzfdgwTx7D/stlZ9Z4KLKSg=;
 b=Vepaf1j/vw1BZ3Rf/pDWENtvj1HvLuFkXjlFf8Y/SAQlYFl/eTtodUWokwjIg+hDML
 PNoIn+xyocbVK4ivFNVAU2l/7BCLy5B4cpphEgu78B0CE/h2rdWbA/Ybt/yTI8jFhPPq
 dvw7mpz3H/qUG4Be+pCo5AXvnthfHjEQ4qohNqGJEdwnq5FUafLv2eFNLRn1ymXRhdwK
 3cYBKyN5yYYW+h8WvwMz1dKPpJaMWTxsftnQ4fRp1nPdes9YKUtmaXRwDROmi1DIHoM6
 cH6WEn5dzLEivYzxf79+4w5ZkJNF791zqXQfykx7krUkLJimkvDHcpskxf9IIAQPh8xw
 4bLQ==
X-Gm-Message-State: APjAAAVfjA4itNsCY+I/wAOPAMGbubsa4o3747IhWbW0zAtAWyPHkujy
 V09y0RQdaUsIkIIrOMoN81EEJb5b
X-Google-Smtp-Source: APXvYqxKpRuh6f3vTVILxdKPysu/yai9wcJKnZxWYDGt0q9RJM6NAU3NdZaB5oZtYCD646qGigk/kA==
X-Received: by 2002:a67:2586:: with SMTP id l128mr91833106vsl.52.1564893204937; 
 Sat, 03 Aug 2019 21:33:24 -0700 (PDT)
Received: from asus-S451LA.lan ([190.22.31.112])
 by smtp.gmail.com with ESMTPSA id 10sm33314346vkl.33.2019.08.03.21.33.22
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 03 Aug 2019 21:33:24 -0700 (PDT)
From: Luis Araneda <luaraneda@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun,  4 Aug 2019 00:32:01 -0400
Message-Id: <20190804043206.30580-1-luaraneda@gmail.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190803_213327_295980_D3957D18 
X-CRM114-Status: UNSURE (   8.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
 [list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [190.22.31.112 listed in dnsbl.sorbs.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (luaraneda[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH 0/5] zynq: Add support for kernel 4.19
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

This series adds support for kernel 4.19
and removes kernel 4.14 from the zynq target

It additionally adds a patch to fix a kernel panic,
which was submitted upstream and is waiting comments

The changes were compile-tested on all zynq boards
and run-tested on the Digilent Zybo Z7 board

Luis Araneda (5):
  zynq: add k4.19 config
  zynq: kernel: use some configs provided by generic
  zynq: k4.19: fix kernel panic on smp bring-up
  zynq: switch to kernel 4.19
  zynq: remove kernel 4.14 support

 target/linux/zynq/Makefile                    |  2 +-
 .../linux/zynq/{config-4.14 => config-4.19}   | 62 ++++++------
 ...020-v4.17-add-digilent-zybo-z7-board.patch | 94 -------------------
 ...nufacturer-for-ZedBoard-and-MicroZed.patch | 38 --------
 ...25-v4.19-update-digilent-zybo-z7-dts.patch | 52 ----------
 ...nq-Use-memcpy_toio-instead-of-memcpy.patch | 40 ++++++++
 6 files changed, 69 insertions(+), 219 deletions(-)
 rename target/linux/zynq/{config-4.14 => config-4.19} (94%)
 delete mode 100644 target/linux/zynq/patches-4.14/020-v4.17-add-digilent-zybo-z7-board.patch
 delete mode 100644 target/linux/zynq/patches-4.14/022-v4.19-dts-set-correct-manufacturer-for-ZedBoard-and-MicroZed.patch
 delete mode 100644 target/linux/zynq/patches-4.14/025-v4.19-update-digilent-zybo-z7-dts.patch
 create mode 100644 target/linux/zynq/patches-4.19/110-ARM-zynq-Use-memcpy_toio-instead-of-memcpy.patch

-- 
2.22.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
