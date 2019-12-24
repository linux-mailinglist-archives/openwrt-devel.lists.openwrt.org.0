Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD15212A341
	for <lists+openwrt-devel@lfdr.de>; Tue, 24 Dec 2019 17:49:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o5koQJGknVoQ/mjH6bXlu+1CxmbGhDnGI2ZE8b38HT8=; b=kmeYGhCFZwao6r
	Mm2VgIsD1RlaQiOmJlxx8AlZiyE4KjFgHVui1A+OXAbZVUZ5xjzem/tfuT+JB5mMlGp61eqKh62Xs
	nCAckbwArie9xVKKPWMI9mrixfHqdFcWclivk40a1zZl4Fy+pxTjDmG96WVk8NsjSIWdUuWjRPSb5
	JEdfBrY4b9S5SYMRYNf1gugH/noHv5ACoxGSbBRhyDSg8Nc35rxz/1ZevHgss9XjXFO5NvE7UrxwN
	zNHXeM3ISuGmoEvFjJI3ig5Tk6DJN/DnzVvQ6vouw7XvzqYyU7eJIILAQon7T0DW+sQPV38SsOSb+
	wRdCyzLoikk0nBXeU7eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijnMm-0004St-JF; Tue, 24 Dec 2019 16:49:04 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijnMb-0004S5-Nr
 for openwrt-devel@lists.openwrt.org; Tue, 24 Dec 2019 16:48:55 +0000
Received: by mail-lj1-x242.google.com with SMTP id k8so21240210ljh.5
 for <openwrt-devel@lists.openwrt.org>; Tue, 24 Dec 2019 08:48:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Cg6Dw0ipkGsOdiR3g7IpDEP348PN/CytH8L5qOvOEDo=;
 b=QIZCVsSqnt9RTw2uijKhqKKQwLnRPk6e5obCx2otKAZdMX1h706wDfKkaxSmbMHHql
 3oBx2a4TgRInU4uxffsdG1rnFt40tNevVWitYa4ljx8N5OWC6MQFKWKPttqPOmZd9ieq
 ilfDnLRBLZ/1I5Qc/PLVmed7UB4aeaYwgql/Vg3T4XVGhgFSAjPcumK+vlkJQVIBaDTs
 9XuMORpIGTebRhKgxI7vsHH3V5QyLGL/EonMjQetpIAn+Pzxvxj+SZKklTqkJXMULS9s
 CfhzfvnB4O/R1VRVPFD37Zabn8aGsuUWuHuvRigrhJYFrg9O/5BVcF0XrYLUY9Lp8ZZH
 H5Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Cg6Dw0ipkGsOdiR3g7IpDEP348PN/CytH8L5qOvOEDo=;
 b=m9a4clKZVRkN0A35ppkfhdpg3Vl1nYjaaajeSQV5pAz8eH3oKsn/8rBBdj27lh8/jV
 ZgX6hPHneLjTmSozXsHH/Ra646+zxqz5sQsB2zXVRZzfHD5f2B9WZ/j/s7syapfd5sSP
 T0AdKkMdcj2SZs7Yk+jzWjoQ/zIo37KUPvWKOL8avJsa8mFp6TuofmqgwLTug2KUbUku
 7FuieV/7JHWRvUdf3M2d64KDyyqslNdh0kOSR6U0oa5F6WdwYCsoS+V4lcvoQZC63dHB
 vad96plbq76jZitwAdxhNZgWhjCcZjApy/u9Zlpd713S3Z2s+6rEC697C21pwhIbBU0J
 d3mQ==
X-Gm-Message-State: APjAAAXDA701BTYToZ2N+svmhHgHX8eAaVzyUsVNPn5EQnA4fNCv0KYy
 L+jrv1WyuQk3b+ZFsQDqJouEak3L
X-Google-Smtp-Source: APXvYqzE/DHUcjg+Sy0hIWBoQz0QFAZyWt8jS3c9HaKUhtJrc8OZALYMgCC75TdC/WNP07BrWZm8wA==
X-Received: by 2002:a05:651c:30a:: with SMTP id
 a10mr21601093ljp.101.1577206129320; 
 Tue, 24 Dec 2019 08:48:49 -0800 (PST)
Received: from home.paul.comp (paulfertser.info.
 [2001:470:26:54b:226:9eff:fe70:80c2])
 by smtp.gmail.com with ESMTPSA id n14sm10302858lfe.5.2019.12.24.08.48.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Dec 2019 08:48:48 -0800 (PST)
Received: from home.paul.comp (home.paul.comp [IPv6:0:0:0:0:0:0:0:1])
 by home.paul.comp (8.15.2/8.15.2/Debian-14~deb10u1) with ESMTP id
 xBOGmjot014285; Tue, 24 Dec 2019 19:48:46 +0300
Received: (from paul@localhost)
 by home.paul.comp (8.15.2/8.15.2/Submit) id xBOGmj9W014284;
 Tue, 24 Dec 2019 19:48:45 +0300
From: Paul Fertser <fercerpav@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 24 Dec 2019 19:48:20 +0300
Message-Id: <20191224164820.14245-1-fercerpav@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <4d6e1b57-d2f5-0f53-b118-4b999d4f15c8@hauke-m.de>
References: <4d6e1b57-d2f5-0f53-b118-4b999d4f15c8@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191224_084853_819416_8EBF0180 
X-CRM114-Status: UNSURE (   8.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (fercerpav[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH] ath79: tp-link: use ath10k-ct-smallbuffers
 for 64 MiB devices
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
Cc: Paul Fertser <fercerpav@gmail.com>, Hauke Mehrtens <hauke@hauke-m.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Signed-off-by: Paul Fertser <fercerpav@gmail.com>
---
 target/linux/ath79/image/generic-tp-link.mk | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/target/linux/ath79/image/generic-tp-link.mk b/target/linux/ath79/image/generic-tp-link.mk
index 8a030492c5..f4e16e6e43 100644
--- a/target/linux/ath79/image/generic-tp-link.mk
+++ b/target/linux/ath79/image/generic-tp-link.mk
@@ -195,8 +195,8 @@ define Device/tplink_archer-d50-v1
   DEVICE_VENDOR := TP-Link
   DEVICE_MODEL := Archer D50
   DEVICE_VARIANT := v1
-  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ledtrig-usbport kmod-ath10k-ct \
-	ath10k-firmware-qca988x-ct
+  DEVICE_PACKAGES := kmod-usb2 kmod-usb-ledtrig-usbport \
+	kmod-ath10k-ct-smallbuffers ath10k-firmware-qca988x-ct
   BOARDNAME := ARCHER-D50-V1
   IMAGE_SIZE := 7808k
   TPLINK_HWID := 0xC1200001
@@ -366,7 +366,7 @@ define Device/tplink_re450-v2
   IMAGE_SIZE := 6016k
   DEVICE_MODEL := RE450
   DEVICE_VARIANT := v2
-  DEVICE_PACKAGES := kmod-ath10k-ct ath10k-firmware-qca988x-ct
+  DEVICE_PACKAGES := kmod-ath10k-ct-smallbuffers ath10k-firmware-qca988x-ct
   TPLINK_HWID := 0x0
   TPLINK_HWREV := 0
   TPLINK_BOARD_ID := RE450-V2
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
