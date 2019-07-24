Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14CEB73645
	for <lists+openwrt-devel@lfdr.de>; Wed, 24 Jul 2019 20:04:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:Date:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3LhbO1bSRLb1mdmPLT6sz0D8dINN8AP0cKjWaMqVYmw=; b=njEA8ne75eB1V4
	ddI04/wZG6KGsjKyKR18IcyWJc8iLfhhSkEJmvCnS9bGU/6OaVZS8zB4ryKu32GPISYMBmi5Cu0OS
	i7/2P27dnNehjoXK9IWZiIGqqvcicNrarI3cGToxUJGPDx4gw9cUjVjAIiJy6P+WXt4qfx2qbN5Ib
	do1XV/7uddqlAIW+3ZdmZbLzi2MeccVNr8/ZsGEmlOJOXB8bLpaYPJ61GdtIXxGmJU4WyVHF88eZj
	My9JzziFpCRtyOYouRGD0g2gdO0kz0TJDEuAvb4jCjwu8to67OZd10YUDxXUd9p/DyPKZ0fH75+lF
	3ehvLeeS8CtOKJKinXNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqLcv-0005ne-7B; Wed, 24 Jul 2019 18:04:33 +0000
Received: from mail-pg1-x529.google.com ([2607:f8b0:4864:20::529])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqLcj-0005nJ-6w
 for openwrt-devel@lists.openwrt.org; Wed, 24 Jul 2019 18:04:22 +0000
Received: by mail-pg1-x529.google.com with SMTP id o13so21592053pgp.12
 for <openwrt-devel@lists.openwrt.org>; Wed, 24 Jul 2019 11:04:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id;
 bh=GHeXquw2wToDBn2jOkI0vAYveErsh2G1A8CysNiSt/8=;
 b=l0KTKwjZ5gfXfEMuXknnIVsYQAbl9ECDnLOLCJbgcOlF+Qe1EiLxXeDQfS0UwX547q
 n67GT0GQu838wNUm+7+joypyFf1SAAa9Dl94jXkW/+hTZSf4yx87WVbYvkM6Q5FDBWXu
 LhSZUnf8HLU355E0N8UopM7rlQA4KPOlcUlTa1HW3x8dP7ucynOU6Dzff8IgU5Qee7Zv
 K3cbRTaBxX9d3zzLKNWzqJS03I/Kxyuvw45iym2Hi1m3e1mUSTVVuRIEiq6buspYlPGv
 6blOXQqFQjW7i6fleRf1MBTPRckV6gevYcJWakWVbuAJGHCgg+U+MS1o1XvhR3WUgBzE
 nyCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id;
 bh=GHeXquw2wToDBn2jOkI0vAYveErsh2G1A8CysNiSt/8=;
 b=ZO5JTpvXYdVkqy8zNYfnIWHOx9PWkLjckOJvqtMA1aY57SbNdxQVPxIpLOe3ZvVCnK
 76yigmRaetD0CeCh3PUU1iHpH/Hj7G++TuoaQDIykd7gGx4OkHPaeMIW0Q7QV3cQ3yTj
 zV1rAyDG+taXPP6+YuiQ5VIwmo8ZKDmAJcAG1gUWM45sAChIuZ1YreOdOPUOAmRNBL22
 RFY0XXePq1F6EPYy6MkviNo1enRVL3189aHeEQ1a8rz5a062VmXuAj7pbhGjDbDIm+9V
 ySJjL10WOe3wZmCrEpaFtvivsv0ifoyLawWTKzqG00pVmyDDu0tIGT74aOAtMWV8v31j
 GApQ==
X-Gm-Message-State: APjAAAXbc0WZWMh1W/p3xy4/tVG4oGJS+XXdnLDojw2+JaupBaAKOUK+
 XQ+HIjz9DVMw4kdKyDDclM4YG0c1wj4=
X-Google-Smtp-Source: APXvYqzKl2Y7PPqc6Qe3bYcrY+S6K0RtfYYox9jN/Ufj5wxTdYh10nrq0S6uk+1zkbOpwvRAsjLLgw==
X-Received: by 2002:a63:f452:: with SMTP id p18mr56752933pgk.373.1563991459441; 
 Wed, 24 Jul 2019 11:04:19 -0700 (PDT)
Received: from localhost.localdomain (76-14-106-55.rk.wavecable.com.
 [76.14.106.55])
 by smtp.gmail.com with ESMTPSA id w14sm53569082pfn.47.2019.07.24.11.04.18
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 24 Jul 2019 11:04:18 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 24 Jul 2019 11:04:17 -0700
Message-Id: <20190724180417.12035-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_110421_301752_476D9345 
X-CRM114-Status: UNSURE (   7.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:529 listed in]
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
Subject: [OpenWrt-Devel] [PATCHv2] ubox: Run init script through shellcheck
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
 v2: Fixed mistake with executing PIDCOUNT.
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
+	PIDCOUNT=$((PIDCOUNT + 1))
 	local pid_file="/var/run/logread.${PIDCOUNT}.pid"
 
 	[ "$2" = 0 ] || {
@@ -62,7 +62,7 @@ start_service_file()
 
 start_service_remote()
 {
-	PIDCOUNT="$(( ${PIDCOUNT} + 1))"
+	PIDCOUNT=$((PIDCOUNT + 1))
 	local pid_file="/var/run/logread.${PIDCOUNT}.pid"
 
 	[ "$2" = 0 ] || {
-- 
2.17.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
