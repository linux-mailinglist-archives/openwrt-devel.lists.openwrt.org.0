Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEB771A8D76
	for <lists+openwrt-devel@lfdr.de>; Tue, 14 Apr 2020 23:15:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ELq4wXJWsuZ651XaAyix7xhmjVBKjelX2IZdNo221Jc=; b=YGVRcTCA6HnQ87
	FodUtcZsfpHp+JKlBxREPBeqEAcTqPV1Vx3BdGzpS89JNVzbF3+bGRnw254CJEtTBdUIlf2wxl4xe
	SbHFtDxflYCDT6MDC57ElitzO2MZSx9itDU20KxAD7zwQTzgW/elFz8OkUEj7SltVXdt09XdYn+Iy
	D4i8KCoE+ChJ952dV1TfOQPCgoP6qPLNPSHiMSeTpOyx8N3+th2u28qOXQhdprYUDB7I83GiQT5zD
	EteyIjob45smnkn1pEFXeTLsuSUc/3LlQAxFRq9P7FUMurUYHbmsTC2qPp45IIfRy2W1KV6EeBq03
	2S0TJy8i1LOyfxJVPr7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOSti-0006Z8-2A; Tue, 14 Apr 2020 21:15:10 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOStU-0006YE-4p
 for openwrt-devel@lists.openwrt.org; Tue, 14 Apr 2020 21:14:57 +0000
X-Originating-IP: 72.234.141.215
Received: from tb.lan (udp224251uds.hawaiiantel.net [72.234.141.215])
 (Authenticated sender: mail@aparcar.org)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 9F741240002;
 Tue, 14 Apr 2020 21:14:52 +0000 (UTC)
From: Paul Spooren <mail@aparcar.org>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 14 Apr 2020 11:14:47 -1000
Message-Id: <20200414211447.324042-1-mail@aparcar.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_141456_322640_40C125EF 
X-CRM114-Status: UNSURE (   6.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
Subject: [OpenWrt-Devel] [PATCH] build,
 imagebuilder: Do not require libncurses-dev
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

The buildroot and SDK both require `libncurses-dev` to be installed on
the system, however the ImageBuilder uses precompiled binaries.

This patch changes the prerequirements checks to skip the
`libncurses-dev` part if running as ImageBuilder.

Signed-off-by: Paul Spooren <mail@aparcar.org>
---
 include/prereq-build.mk | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/prereq-build.mk b/include/prereq-build.mk
index 830a9eff9a..72fb6ad97a 100644
--- a/include/prereq-build.mk
+++ b/include/prereq-build.mk
@@ -51,10 +51,12 @@ $(eval $(call TestHostCommand,working-g++, \
 		g++ -x c++ -o $(TMP_DIR)/a.out - -lstdc++ && \
 		$(TMP_DIR)/a.out))
 
+ifndef IB
 $(eval $(call TestHostCommand,ncurses, \
 	Please install ncurses. (Missing libncurses.so or ncurses.h), \
 	echo 'int main(int argc, char **argv) { initscr(); return 0; }' | \
 		gcc -include ncurses.h -x c -o $(TMP_DIR)/a.out - -lncurses))
+endif
 
 ifeq ($(HOST_OS),Linux)
   zlib_link_flags := -Wl,-Bstatic -lz -Wl,-Bdynamic
-- 
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
