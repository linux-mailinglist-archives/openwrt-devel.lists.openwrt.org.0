Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A5DF118AC0
	for <lists+openwrt-devel@lfdr.de>; Tue, 10 Dec 2019 15:24:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KRuE0BHgx49P1qtZebqf7P7+wMqrTItx6wT6pjyfYu0=; b=aHTIdC3h/9OwF+
	0muRiuw/ZDucsAbrdkTSqdfyt9Pc8E7azzYC4kL9OovOB2ZgQfOkJtlAQeGMj/Vfo+oO7n69P+f6e
	TdzEy4tSVJaNIgux0IAr0/sd4N+g9XccL9pLuc6G6xQKMlMp4cb75GEsUxS0vWDkvdYM62aDxKhU+
	XnLZ1z9J7EF6oYvW4DzYWzUBf5mScHmzxwjDDzVxUxrLoUjbCHC48r5oh61UynEC+XeSQFTcttbIX
	Y5pdOGqQoaYgQz0wg0dJutF8z7yM0FxRbGWRn/kJYnDB2IVxKf+bVGpF72Pm24xb2bcSIStHX77yf
	orU/k41ovuK1rTuoVkUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iegRI-0006ku-VD; Tue, 10 Dec 2019 14:24:36 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iegRC-0006kP-2M
 for openwrt-devel@lists.openwrt.org; Tue, 10 Dec 2019 14:24:31 +0000
Received: by mail-lf1-x135.google.com with SMTP id y19so13827415lfl.9
 for <openwrt-devel@lists.openwrt.org>; Tue, 10 Dec 2019 06:24:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DxUL/tcOPHbKoJWUo1wyEZ4xLjBMTarQ+B7ViB0EU3M=;
 b=eciO/N82tHCHrhoZmBYHBCv66iPi3yO8T93DdyQwD0fIpH/moH9sIfQtrNXNypS/L0
 TByRyIChX8TYhmF2PHe3jZWirdIZGjzKY+lwU2PPeXcNDTBD6mxDq/XpdbMQ+x1V2Mct
 5fq9YfJixtecZGnlD9Dhk1MuC2RnYfNebp9U7mQIsiZdjv4hHyHc28LIm2c3lkeTOB4Y
 VEvwEjYJwQ1byUgtqj9kgrkeu1KLunyNgRs0M8albSBzkAS7DwlmPeZQcFs38CHV7h7x
 RpPxzwB5M5hWPCNeULtJ8vHh/23xf72XlhGMTMu7keBvRBB5QOz1Stzj+fCCGxiBuMLv
 qHng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=DxUL/tcOPHbKoJWUo1wyEZ4xLjBMTarQ+B7ViB0EU3M=;
 b=s/tlrtPxy8jzUN63K/MarHulfbjVhPDhDwL6+QYUdunxepG4FQTMM6N8vH8CtnAbdB
 uhhxJlydwaXWC/tcL8DYEtYddC+bVObJ2jzeXU+4odIlZldQbgicL4mpMeuzt3mg+WwL
 9D3oI4NAkfXC8B0+o6n3IDMYb7sShGx2p/1U9qbFyPIZ0B7r5VR7iGg7Xo/lm+ycKFcS
 7jaL0W24xniQy8rxsRPT/BZmx4sOecW8OcwCl6xtlQmmKZxcjnPlGBYQ0hOlA/38hnws
 nnzLlLEH2mQBmIBUCH17hPB374MUkZ8WBQ8mfjlp0sGWp7tnmlZrmHEUCUEoDvRnjwhM
 ElFQ==
X-Gm-Message-State: APjAAAXz7V6c5Tolc13dW3LghlriHbvHwz5AeeZXlEIRZ5zckviJ+U4N
 tQH0d6q/mS8hFwfPEL5+EywP3X6B
X-Google-Smtp-Source: APXvYqxl4Xz2tVKEPnbIb8AqBGmCmBXUQPedqPwoD7CpjZ7qb5uL39ptC9sB/MSk/YL1goOmF1FSxA==
X-Received: by 2002:a19:4208:: with SMTP id p8mr18546440lfa.160.1575987867929; 
 Tue, 10 Dec 2019 06:24:27 -0800 (PST)
Received: from home.paul.comp (paulfertser.info.
 [2001:470:26:54b:226:9eff:fe70:80c2])
 by smtp.gmail.com with ESMTPSA id i19sm1986609ljj.24.2019.12.10.06.24.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Dec 2019 06:24:27 -0800 (PST)
Received: from home.paul.comp (localhost [127.0.0.1])
 by home.paul.comp (8.15.2/8.15.2/Debian-14~deb10u1) with ESMTP id
 xBAEOOP7030790; Tue, 10 Dec 2019 17:24:24 +0300
Received: (from paul@localhost)
 by home.paul.comp (8.15.2/8.15.2/Submit) id xBAEOONN030789;
 Tue, 10 Dec 2019 17:24:24 +0300
From: Paul Fertser <fercerpav@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 10 Dec 2019 17:24:20 +0300
Message-Id: <20191210142420.30748-1-fercerpav@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_062430_137295_64A97281 
X-CRM114-Status: GOOD (  11.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:135 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (fercerpav[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [RFC][PATCH] base-files: send informational UDP
 message each second waiting
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
Cc: Paul Fertser <fercerpav@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

The preinit network initialisation and failsafe informational message
are inherently racy as the interface takes some time to become
functional after "ip link set $pi_ifname up" command.

Consider this timing:

[   12.002713] IPv6: ADDRCONF(NETDEV_UP): eth1: link is not ready
[   12.008819] IPv6: ADDRCONF(NETDEV_UP): eth1.1: link is not ready
[   12.118877] random: procd: uninitialized urandom read (4 bytes read)
[   13.068614] eth1: link up (1000Mbps/Full duplex)
[   13.073309] IPv6: ADDRCONF(NETDEV_CHANGE): eth1: link becomes ready
[   13.080445] IPv6: ADDRCONF(NETDEV_CHANGE): eth1.1: link becomes ready

Since the UDP message was sent prior to link becoming ready, it was
never seen on the wire.

The default failsafe timeout is set to 2 seconds, so with this patch
there are two attempts to send the message, one spent in vain, and the
other visible in tcpdump on an attached host. Of course, in cases when
the interface is brought up faster it leads to two messages, however it
should be harmless. This patch (almost) doesn't affect normal boot time
while still allowing to enter failsafe reliably with a single button
press, matching the official "generic failsafe" documentation.

Signed-off-by: Paul Fertser <fercerpav@gmail.com>
---
 package/base-files/files/lib/preinit/30_failsafe_wait | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/package/base-files/files/lib/preinit/30_failsafe_wait b/package/base-files/files/lib/preinit/30_failsafe_wait
index dd9c7e2b59..85dca398fa 100644
--- a/package/base-files/files/lib/preinit/30_failsafe_wait
+++ b/package/base-files/files/lib/preinit/30_failsafe_wait
@@ -31,6 +31,8 @@ fs_wait_for_key () {
 	lock $keypress_wait
 	{
 		while [ $timer -gt 0 ]; do
+			pi_failsafe_net_message=true \
+				preinit_net_echo "Please press button now to enter failsafe"
 			echo "$timer" >$keypress_sec
 			timer=$(($timer - 1))
 			sleep 1
@@ -88,9 +90,6 @@ failsafe_wait() {
 	}
 	grep -q 'failsafe=' /proc/cmdline && FAILSAFE=true && export FAILSAFE
 	if [ "$FAILSAFE" != "true" ]; then
-		pi_failsafe_net_message=true
-		preinit_net_echo "Please press button now to enter failsafe"
-		pi_failsafe_net_message=false
 		fs_wait_for_key f 'to enter failsafe mode' $fs_failsafe_wait_timeout && FAILSAFE=true
 		[ -f "/tmp/failsafe_button" ] && FAILSAFE=true && echo "- failsafe button "`cat /tmp/failsafe_button`" was pressed -"
 		[ "$FAILSAFE" = "true" ] && export FAILSAFE && touch /tmp/failsafe
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
