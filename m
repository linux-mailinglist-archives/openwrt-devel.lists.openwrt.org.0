Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56DEA88B2C
	for <lists+openwrt-devel@lfdr.de>; Sat, 10 Aug 2019 13:59:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=d/2UPqgJKBudcLjS/1ohdxCQgPJ/hA82TNM1A319PXo=; b=AyZXRUSv7swrlE
	JnnfUepoZmPPRT1sS9ioH8P+zN6pViA/Kns2E56VOQLRXykC+v1kCC9kNJo5oZQtfF0Wcekxwdci8
	faJqquqiTvkXqZoZwZrfJtaC7BQjAVbaQN8yrHcheB7/hfrTJxCo1a6W2RgJ+Od0hxc93q2eKyKd+
	ixiGJyAW+EakoGoFBxefc0o5tI+FOAuMCHPkM5TaS2uk7Jtf466SNQNwU397Sd8EJK/gFhtLCSyN5
	JCsr0I9lxIaXHKJtgTD7xk7c8PXf8ItHI0yfvkcLLQKmlmFAWL62aObLOPw7wxiZhh29ZPTmVJZY7
	699WXFRQiPTbRYmQvprw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwQ2H-0006j3-LI; Sat, 10 Aug 2019 11:59:50 +0000
Received: from mail-pf1-x429.google.com ([2607:f8b0:4864:20::429])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwQ1o-0006ej-OK
 for openwrt-devel@lists.openwrt.org; Sat, 10 Aug 2019 11:59:23 +0000
Received: by mail-pf1-x429.google.com with SMTP id f17so43425585pfn.6
 for <openwrt-devel@lists.openwrt.org>; Sat, 10 Aug 2019 04:59:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=l4jylEA9wEdap51bEIBnyyc3bhl+aJ9dl5JyAOY08gU=;
 b=vVpFbtST+h2cfdCzuNGWgGsnqJ7Ltm6cnz09b69+smxCwfsQY2zm7EJeJFyJuIgmb0
 +Mr6SuDk3T0MsXHqSixdaiBm2VoL/SSSVNQtkugOtNg2pDmSXrvud0e2Y/60yyxjBPuv
 ZD8WMVEsKSTqpW6xrJgYT5aDG5CUAGf8VwKthAdakheZLyL7QUPId1HqwPMAhuE1+j6w
 sDf1OFJeMnBk8FKQYw5cl4mwmWeE+V/DIKDlfbcoxEgy62qN01XL+K089P6yeTV535U2
 zilHrwowJ7FSAZzvK3zDgo9qxOIBItKY9wvj/L7ALdYBse0JMpWuFivimQ0Q3WG0ipMi
 bdGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=l4jylEA9wEdap51bEIBnyyc3bhl+aJ9dl5JyAOY08gU=;
 b=O59+CbtsRv8at4tztXcsFua9/aX2MRjIvpw0evCPZkGgQaW+yRo0TbqvfakoIaKyPa
 pftpksRFNKWEmIhNK0iJNsRDzQTBOECyclwXRJJaxM+nrP9xh0BL62M5H8U1GXW7f56h
 /yeJBJFXfai1vpISGvs9ilYbOEwZou8IqndqXf8Cj+gYkQf4IhTxG7nesoxlz3anKZkY
 J7V/k6Ir1qVm6O6t8UrLrGgkFy4eZ5h9fAxs4iDtcLIULbG1exFEa9Vygt8pm46WKR3Z
 CCiKN67nYDv7F0jotCIQvcXIcvCP1YFjM+KxyNvF3Tqe168dH3A9c2vmV29y54xrA6BM
 /zUw==
X-Gm-Message-State: APjAAAXP+V4etQa1uSAAUzJQvtaIFCJsFAsbuNPyB5hScIkDGrO5S5Z+
 xhPfs/giUZ067ypaRmNe9u+qJpgV
X-Google-Smtp-Source: APXvYqxekC878Dvh9BfQtfChXyEHa/QJmiKKBNEBCqRMU3SxVtkk7jqefnbpSRN/wZxZfPUxJvqggA==
X-Received: by 2002:a62:64d4:: with SMTP id y203mr26454677pfb.91.1565438356034; 
 Sat, 10 Aug 2019 04:59:16 -0700 (PDT)
Received: from guoguo-omen-lan.lan ([107.151.139.128])
 by smtp.gmail.com with ESMTPSA id 131sm123016167pfx.57.2019.08.10.04.59.13
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 10 Aug 2019 04:59:15 -0700 (PDT)
From: Chuanhong Guo <gch981213@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 10 Aug 2019 19:59:03 +0800
Message-Id: <20190810115903.1482-1-gch981213@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190810_045921_300171_9E200639 
X-CRM114-Status: UNSURE (   8.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (gch981213[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (gch981213[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:429 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH] treewide: sync bootcount scripts across
 targets
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
Cc: Chuanhong Guo <gch981213@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This commit made the following changes to sync all bootcount scripts:

1. use boot() instead of start()
    This script only needs to be executed once when boot is complete.
    use boot() to make this explicit.

2. drop sourcing of /lib/functions.sh
    This is aready done in /etc/rc.common.

3. ramips: replace board name checking with a case

Signed-off-by: Chuanhong Guo <gch981213@gmail.com>
---
 target/linux/ath79/base-files/etc/init.d/bootcount    |  1 +
 target/linux/ipq40xx/base-files/etc/init.d/bootcount  |  4 +---
 target/linux/ipq806x/base-files/etc/init.d/bootcount  |  4 +---
 target/linux/kirkwood/base-files/etc/init.d/bootcount |  4 +---
 target/linux/mvebu/base-files/etc/init.d/bootcount    |  4 +---
 target/linux/ramips/base-files/etc/init.d/bootcount   | 11 +++++------
 6 files changed, 10 insertions(+), 18 deletions(-)

diff --git a/target/linux/ath79/base-files/etc/init.d/bootcount b/target/linux/ath79/base-files/etc/init.d/bootcount
index b71fbf9a69..c734fd9d33 100755
--- a/target/linux/ath79/base-files/etc/init.d/bootcount
+++ b/target/linux/ath79/base-files/etc/init.d/bootcount
@@ -1,4 +1,5 @@
 #!/bin/sh /etc/rc.common
+
 START=99
 
 boot() {
diff --git a/target/linux/ipq40xx/base-files/etc/init.d/bootcount b/target/linux/ipq40xx/base-files/etc/init.d/bootcount
index f2d76f125f..b9d625e296 100755
--- a/target/linux/ipq40xx/base-files/etc/init.d/bootcount
+++ b/target/linux/ipq40xx/base-files/etc/init.d/bootcount
@@ -2,9 +2,7 @@
 
 START=99
 
-start() {
-	. /lib/functions.sh
-
+boot() {
 	case $(board_name) in
 	alfa-network,ap120c-ac)
 		[ -n "$(fw_printenv bootcount changed 2>/dev/null)" ] &&\
diff --git a/target/linux/ipq806x/base-files/etc/init.d/bootcount b/target/linux/ipq806x/base-files/etc/init.d/bootcount
index 6a5a6d52ad..d0bf708e66 100755
--- a/target/linux/ipq806x/base-files/etc/init.d/bootcount
+++ b/target/linux/ipq806x/base-files/etc/init.d/bootcount
@@ -2,9 +2,7 @@
 
 START=99
 
-start() {
-	. /lib/functions.sh
-
+boot() {
 	case $(board_name) in
 	linksys,ea8500)
 		mtd resetbc s_env || true
diff --git a/target/linux/kirkwood/base-files/etc/init.d/bootcount b/target/linux/kirkwood/base-files/etc/init.d/bootcount
index 20fb3a425c..478f3d0134 100755
--- a/target/linux/kirkwood/base-files/etc/init.d/bootcount
+++ b/target/linux/kirkwood/base-files/etc/init.d/bootcount
@@ -2,9 +2,7 @@
 
 START=99
 
-start() {
-	. /lib/functions.sh
-
+boot() {
 	case $(board_name) in
 	linksys,audi|\
 	linksys,viper)
diff --git a/target/linux/mvebu/base-files/etc/init.d/bootcount b/target/linux/mvebu/base-files/etc/init.d/bootcount
index 6e8e310849..dd2266bdc8 100755
--- a/target/linux/mvebu/base-files/etc/init.d/bootcount
+++ b/target/linux/mvebu/base-files/etc/init.d/bootcount
@@ -2,9 +2,7 @@
 
 START=99
 
-start() {
-	. /lib/functions.sh
-
+boot() {
 	case $(board_name) in
 	linksys,caiman |\
 	linksys,cobra |\
diff --git a/target/linux/ramips/base-files/etc/init.d/bootcount b/target/linux/ramips/base-files/etc/init.d/bootcount
index 60b93f72b3..807801a34f 100755
--- a/target/linux/ramips/base-files/etc/init.d/bootcount
+++ b/target/linux/ramips/base-files/etc/init.d/bootcount
@@ -2,11 +2,10 @@
 
 START=99
 
-start() {
-	. /lib/functions.sh
-
-	local board=$(board_name)
-	if [ $board = "samknows,whitebox-v8" ]; then
+boot() {
+	case $(board_name) in
+	samknows,whitebox-v8)
 		fw_setenv bootcount 0
-	fi
+		;;
+	esac
 }
-- 
2.21.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
