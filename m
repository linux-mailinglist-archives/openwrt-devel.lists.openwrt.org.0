Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86D45A8787
	for <lists+openwrt-devel@lfdr.de>; Wed,  4 Sep 2019 21:20:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=i1scx+glYZhokjfFslk0/xuDwxhWrr6zk18cgVti7us=; b=q2gdOQtvFAcGWl
	1CQpYcJmqmDVcCeHdhM3sY6m6p0hInUo5LPo/DBYkxp4MqEyvJb6LLY8Y+oya63bqQZxeHhZnGbOJ
	zqhWWoF0GgagrMC07vq4X1rgkzm3/42fosZ7bmq/pHGMfZCBn8LMJnWpzSH4kWCH9rnjK9ISaNXHm
	n9dzjQk4jVoAfzk9VTUtz/nky1pd+LrD+GGyBtcnDD9r9i/bM+fRVos4nuS1pFvYN5l/DLAltYz/H
	cmngDNzjmD3ojwRC3LUZFQvY6IzxBB4fB+8/uPMSMT+7G3pChYrmP77O2If0jyTN6h0Jrm7HflhLT
	/H2UJVeLqxkV5u1l1cUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5ap0-0004zK-BJ; Wed, 04 Sep 2019 19:20:02 +0000
Received: from mars.blocktrron.ovh ([51.254.112.43] helo=mail.blocktrron.ovh)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5aos-0004yv-3I
 for openwrt-devel@lists.openwrt.org; Wed, 04 Sep 2019 19:19:56 +0000
Received: from dbauer-t470.home.david-bauer.net
 (p200300E53F07AB0027559AC9762AB514.dip0.t-ipconnect.de
 [IPv6:2003:e5:3f07:ab00:2755:9ac9:762a:b514])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.blocktrron.ovh (Postfix) with ESMTPSA id AF35F1E3D6;
 Wed,  4 Sep 2019 21:19:45 +0200 (CEST)
From: David Bauer <mail@david-bauer.net>
To: openwrt-devel@lists.openwrt.org
Date: Wed,  4 Sep 2019 21:19:29 +0200
Message-Id: <20190904191929.14455-1-mail@david-bauer.net>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_121954_293024_B8F3ACA3 
X-CRM114-Status: UNSURE (   8.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH] base-files: fix get_mac_address not
 accepting hex offsets
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
Cc: mail@adrianschmutzler.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

The get_mac_address helper methods did not support hexadecimal offset
values, resulting them to break after 75bfc393ba6c ("treewide:
convert MAC address location offsets to hexadecimal")

This commit fixes this by evaluating the hexadecimal input,
converting them to decimal.

Signed-off-by: David Bauer <mail@david-bauer.net>
---
 package/base-files/files/lib/functions/system.sh | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/package/base-files/files/lib/functions/system.sh b/package/base-files/files/lib/functions/system.sh
index 9b9d03df7b..4a97b27f5a 100644
--- a/package/base-files/files/lib/functions/system.sh
+++ b/package/base-files/files/lib/functions/system.sh
@@ -2,7 +2,7 @@
 
 get_mac_binary() {
 	local path="$1"
-	local offset="$2"
+	local offset=$(($2))
 
 	if ! [ -e "$path" ]; then
 		echo "get_mac_binary: file $path not found!" >&2
@@ -40,7 +40,7 @@ mtd_get_mac_ascii() {
 
 mtd_get_mac_text() {
 	local mtdname=$1
-	local offset=$2
+	local offset=$(($2))
 	local part
 	local mac_dirty
 
@@ -63,7 +63,7 @@ mtd_get_mac_text() {
 
 mtd_get_mac_binary() {
 	local mtdname="$1"
-	local offset="$2"
+	local offset=$(($2))
 	local part
 
 	part=$(find_mtd_part "$mtdname")
@@ -72,7 +72,7 @@ mtd_get_mac_binary() {
 
 mtd_get_mac_binary_ubi() {
 	local mtdname="$1"
-	local offset="$2"
+	local offset=$(($2))
 
 	. /lib/upgrade/nand.sh
 
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
