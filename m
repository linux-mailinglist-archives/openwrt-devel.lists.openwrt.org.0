Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B2ECBD4FA
	for <lists+openwrt-devel@lfdr.de>; Wed, 25 Sep 2019 00:35:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=m+fvOP3Rv0dm9u8XKm5wgsiqtw98Hgyy/rPZkcSMpMs=; b=Hv+k6wzWrgezpcOcTIvHv7ptVb
	TdJywxmJPKRZC5vBEE/iNy5soavMtwdS095J+xH0FV1z1E/l9tTno5NlpDaqaz8oaUrP2hVZmMIyj
	zqBdyBQW6Skj7Z3UIyZPk8pRJNZsNInwrtip64xUdBxKTromCqXs5lbt5UEaoL6T5EHj+jlvc1xkJ
	Ebe0KiI0bhW00y47Fm7skBR5s+UM3TipVxrJX2Na9OlJZTmqvXkMDrWrIbEiv8A6kj1NaxPpe5MHY
	CYnkAjY4+TCgZc4LIbIwFxRJe0LR+m3rIlTGI5pOY0FJvkz0dKBD/YKMkepa2qFE93nMJVq5/DAvG
	WmUOtkCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCtPA-0008FW-5R; Tue, 24 Sep 2019 22:35:32 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCtOF-0006ly-Bu
 for openwrt-devel@lists.openwrt.org; Tue, 24 Sep 2019 22:34:37 +0000
Received: from localhost.localdomain (dhcp-grp2-01.ics.hawaii.edu
 [128.171.10.79]) (Authenticated sender: mail@aparcar.org)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id C650120000B;
 Tue, 24 Sep 2019 22:34:31 +0000 (UTC)
From: Paul Spooren <mail@aparcar.org>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 24 Sep 2019 12:32:56 -1000
Message-Id: <20190924223254.24160-2-mail@aparcar.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190924223254.24160-1-mail@aparcar.org>
References: <20190924223254.24160-1-mail@aparcar.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_153435_700767_F03C6481 
X-CRM114-Status: UNSURE (   7.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: [OpenWrt-Devel] [PATCH 2/2] build: add script to sign packages
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

This script allows image signing indipendend of the actual build
process, to run on a master server after receiving freshly backed
images. Idea is to avoid storying private keys on third party builders
while still beeing to be able to sign packages.

Run ./scripts/sign_images.sh with the following env vars:

* TOP_DIR where to search for sysupgrade.bin images
* BUILD_KEY place of key-build{,.pub,.ucert}
* REMOVE_OTHER_SIGNATURES removes signatures added by e.g. buildbots

Only sysupgrade.bin files are touched as factory.bin signatures wouldn't
be evaluated on stock from.

Signed-off-by: Paul Spooren <mail@aparcar.org>
---
 scripts/sign_images.sh | 27 +++++++++++++++++++++++++++
 1 file changed, 27 insertions(+)
 create mode 100755 scripts/sign_images.sh

diff --git a/scripts/sign_images.sh b/scripts/sign_images.sh
new file mode 100755
index 0000000000..c41b21e091
--- /dev/null
+++ b/scripts/sign_images.sh
@@ -0,0 +1,27 @@
+#!/bin/sh
+
+# directory where search for images
+TOP_DIR="${TOP_DIR:-./bin/targets}"
+# key to sign images
+BUILD_KEY="${BUILD_KEY:-key-build}" # TODO unifiy naming?
+# remove other signatures (added e.g.  by buildbot)
+REMOVE_OTER_SIGNATURES="${REMOVE_OTER_SIGNATURES:-1}"
+
+# find all sysupgrade images in TOP_DIR
+# factory images don't need signatures as non OpenWrt system doen't check them anyway
+for image in $(find $TOP_DIR -type f -name "*-sysupgrade.bin"); do
+	# check if image actually support metadata
+	if fwtool -i /dev/null "$image"; then
+		# remove all previous signatures
+		if [ -n "$REMOVE_OTER_SIGNATURES" ]; then
+			while [ "$?" = 0 ]; do
+				fwtool -t -s /dev/null "$image"
+			done
+		fi
+		# run same operation as build root does for signing
+		cp "$BUILD_KEY.ucert" "$image.ucert"
+		usign -S -m "$image" -s "$BUILD_KEY" -x "$image.sig"
+		ucert -A -c "$image.ucert" -x "$image.sig"
+		fwtool -S "$image.ucert" "$image"
+	fi
+done
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
