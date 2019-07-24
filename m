Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B400E73594
	for <lists+openwrt-devel@lfdr.de>; Wed, 24 Jul 2019 19:32:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:Date:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=97OJ69tsIoDJux5g7XG4Z9fGGj+sVkewfAJjCjasAkM=; b=l14GfvTRY+uZeg
	ENEdYnmyPjUhaYIolk7Kn0kA+uFmylSSm41/0J3eTBD1oK4TqpHRkayO9IU/BBHm1pbpPmpEB1b9x
	CPB9k0AJ2AxBrspNsmonSDb7lr0eT9io8afHEFlpf1qCdisebATNpYKgXLSLGpjHYwi2AwI7XnaBn
	/2o+CnyIWESJNucRRxjfKSNnNJq1fj/aqB0ZN1LxjbAvSie/dCkfvpHSt9ubgvASJNcKUol0q+rUh
	5VkAoZ+STes8ZMrkOZhFg/c1aZ+8UyIFUELCQpLJxgmin3V4xRvLEYsn3VkHrC1boqu9lxVpPEvUS
	3K0KEviYRZZSWQQkjHaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqL87-0008L8-NH; Wed, 24 Jul 2019 17:32:43 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqL7y-0008Kp-Fw
 for openwrt-devel@lists.openwrt.org; Wed, 24 Jul 2019 17:32:35 +0000
Received: by mail-pl1-x641.google.com with SMTP id c2so22246926plz.13
 for <openwrt-devel@lists.openwrt.org>; Wed, 24 Jul 2019 10:32:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id;
 bh=xscEOh4bJL0w1am9evvgtfJs0cqWLGdvL4/kMpxN8cs=;
 b=P0lb0lXIZfuHX0ZI7x7rtJUFQT6Mw8fzVKjcYdAEY+AXcoTMCz+TgVRxGSLEynrORe
 T7yDuDT136hFSzM4eoSvXCatnxyOpBlgSP9Vu6TOmVWxJF9IFcvf9szfT3WWjr/cb+UB
 5A/i+LGOWcWGGoKtHPwxO2G+m1liuNATXnXowviqSUCFqxtKct7gY8KY29ABYke4viyh
 721GJSORTzYUYm8kylbTJV2TL6XMBWLtvXGAQgBx4BAOh/ZYUgcYrEG5zP9MwJvpqVWw
 cQrhQNuXo4BRoLxQFw/AAOtQrBvgzL18hQdaa4P1pp73Uo0nUYP6CXLZzMy01tCzQpS3
 0XoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id;
 bh=xscEOh4bJL0w1am9evvgtfJs0cqWLGdvL4/kMpxN8cs=;
 b=m9z5Ozfj5pVBxF51T9PipFF/kxR9TDZRPdaNZZWUH2q3Ekg/3bE4/ErqtW8Ys+pUV+
 ttLUackJiQHP9rezVUfw4EokbEj1rFOwg7xs+nr48UDxNYUMckTNpxB9zMoaJkpz6a91
 x/vhIC4HqricQu1WRWC/OeDW4Wp0GxR2MJzx0GnlwypFP2Fshg89T8t5IkB9E3UdDUpS
 ER/macR2Rngtm56A0hcY+HJG6c+s+YoqqC8mlJf3xNch49SxqGR0RKdM/eqhotBhsB80
 D+0/kpiWUXd1Z8WlQoFeqzO/cPOO7fCvLqyc98ukq+ENU+lCRWt5LPGAX0lymIQyXk1k
 s0ew==
X-Gm-Message-State: APjAAAUAQkC44DbphF06tFFl12pR+JwsArihTnlqRQWpz3hIeD3zpq0k
 7HnHsWp/YACVuqki1kux7uB7kHGeCPo=
X-Google-Smtp-Source: APXvYqw9fT423Qa5jAPp0YmJHeApGaMFxMiLsWXLYN4tVfqZ6DaVGiOjtZkPETQ/jxbRu9BqYqx1Zw==
X-Received: by 2002:a17:902:42a5:: with SMTP id
 h34mr89638184pld.16.1563989553019; 
 Wed, 24 Jul 2019 10:32:33 -0700 (PDT)
Received: from localhost.localdomain (76-14-106-55.rk.wavecable.com.
 [76.14.106.55])
 by smtp.gmail.com with ESMTPSA id q69sm65545082pjb.0.2019.07.24.10.32.32
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 24 Jul 2019 10:32:32 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 24 Jul 2019 10:32:31 -0700
Message-Id: <20190724173231.9467-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_103234_536136_73EF2209 
X-CRM114-Status: UNSURE (   8.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH] ubox: Run init script through shellcheck
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Warnings fixed:

SC2004: $/${} is unnecessary on arithmetic variables.
SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 package/system/ubox/Makefile       | 2 +-
 package/system/ubox/files/log.init | 6 +++---
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/package/system/ubox/Makefile b/package/system/ubox/Makefile
index 6e67951929..d303603c0d 100644
--- a/package/system/ubox/Makefile
+++ b/package/system/ubox/Makefile
@@ -1,7 +1,7 @@
 include $(TOPDIR)/rules.mk
 
 PKG_NAME:=ubox
-PKG_RELEASE:=3
+PKG_RELEASE:=4
 
 PKG_SOURCE_PROTO:=git
 PKG_SOURCE_URL=$(PROJECT_GIT)/project/ubox.git
diff --git a/package/system/ubox/files/log.init b/package/system/ubox/files/log.init
index ba9c124c8b..32821c4920 100644
--- a/package/system/ubox/files/log.init
+++ b/package/system/ubox/files/log.init
@@ -32,7 +32,7 @@ validate_log_daemon()
 
 start_service_daemon()
 {
-	[ $log_buffer_size -eq 0 -a $log_size -gt 0 ] && log_buffer_size=$log_size
+	[ $log_buffer_size -eq 0 ] && [ $log_size -gt 0 ] && log_buffer_size=$log_size
 	[ $log_buffer_size -eq 0 ] && log_buffer_size=64
 	procd_open_instance
 	procd_set_param command "/sbin/logd"
@@ -43,7 +43,7 @@ start_service_daemon()
 
 start_service_file()
 {
-	PIDCOUNT="$(( ${PIDCOUNT} + 1))"
+	PIDCOUNT="$(${PIDCOUNT} + 1)"
 	local pid_file="/var/run/logread.${PIDCOUNT}.pid"
 
 	[ "$2" = 0 ] || {
@@ -62,7 +62,7 @@ start_service_file()
 
 start_service_remote()
 {
-	PIDCOUNT="$(( ${PIDCOUNT} + 1))"
+	PIDCOUNT="$(${PIDCOUNT} + 1)"
 	local pid_file="/var/run/logread.${PIDCOUNT}.pid"
 
 	[ "$2" = 0 ] || {
-- 
2.17.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
