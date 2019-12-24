Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 826D712A3AF
	for <lists+openwrt-devel@lfdr.de>; Tue, 24 Dec 2019 18:49:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bnbij02bUbgsIV4MC9o0GeTu3xykR46bwQEZo/eb0Ts=; b=uf5JX8FVa6yFtI
	KSl3ajYPw+H+FK2jwmidoCGWUe6mBPRFeAdfpjbZlQcrjQDlIpLLym/K0pgEDEFtxdCccmmsduPW6
	pykVM6GtnMeMLXEDIlBp56V5HUJxGjyXvi0tqbJqf2347dHxXZ4EE0jQpk4OL5NRi1S1KMzF+vo+8
	tDcTsn7Ltr+7FjXFaLxDh44P33BtEsNC609jjoEPZEQY+m1N1njnnjAQbqbd8+Nw+krmsMUgQD7IO
	v7yvPHdIsrpmKNxi4TG+wz7WZ2cYOFwknky7mpr+8Onsm/i56ntc3jHRVXqr14ic2c04NtIbEUHOE
	2BgT35V84rIjD1uk0QCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijoJG-0006o4-8S; Tue, 24 Dec 2019 17:49:30 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijoJ9-0006nW-4c
 for openwrt-devel@lists.openwrt.org; Tue, 24 Dec 2019 17:49:24 +0000
Received: by mail-lj1-x243.google.com with SMTP id k8so21352495ljh.5
 for <openwrt-devel@lists.openwrt.org>; Tue, 24 Dec 2019 09:49:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=AzcrIko5rgYgw5RFk9Pw+9wp3nWnhBXGKdcnUMCjLE8=;
 b=h5tZt+Csqd98tQTKFRtYdYsb00tGDNWbSIx+kZVorO6KJ6e52AeTRqJFsENrqN9h56
 zl38EciqActoiE0hKTxShh5QDIRWlHlY1OPnx+I3bXcgswWeKeR0BUwJ9efoWXgSJUUT
 tO7a4jZDrNEjLFXlmNtKNpgV6DI6BH1ZgXb8Vhi/kpHK+KspzvtpbbiksQ16J9FkKWDA
 /UxollkaoK39mRopFSIle4RmnyNFqdEXoGukta1jJBkjdZCsXlSc0W6Sfv4pfL0xE2Lq
 +Si4N0ImO7ddyYg6iLzPgVZ483CeMzYTSSJykArqh/kJEUVCiLDt7YdvYstnJ+pj9N18
 CGVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=AzcrIko5rgYgw5RFk9Pw+9wp3nWnhBXGKdcnUMCjLE8=;
 b=o/1hngxE3aznVfNlHNUsB04fsAl4ECKz2bi8r/6S3Cvkon9p2iRHJ/mNxZQV8cDoMF
 5pQ8bnt3O+mjrHR8f/3b7LEvPWN10icAyrwnzhQHB35aQrQ9AgggFP/qZ8/Q7gdOlDA6
 pfCQC9b4K0FkpbCTbHyCJ+xafrRWRFb+IJJggPJPX9EtDsB8Nmx9JjTC+gSMMVNMTn32
 Ztg41NMYsNtd9H5zZBmdTc7HqpwduVAa+Las1bHExO6LJibYXK8q3eivJoqySqOHWKy0
 5d9/FqG1++D7tiJx6wEc9vyefI4AlodLHPRTNdOFTbFdECDeG+5sSlcuNZQmG7RWFHwY
 iVQg==
X-Gm-Message-State: APjAAAXCHo0jmeXF3QgVFvEeytXvD1T5iM6ClbkMkINOym78b6c15rX0
 vD0UnYkGjEZkQKaamscrscJRe2rs
X-Google-Smtp-Source: APXvYqyfjIPCFr9fi2km2Av/RpQov9y8UjjcethtQ2bZUbS+JirHfioB65V3BPKUn0GwQjfXdVqFOg==
X-Received: by 2002:a2e:81c7:: with SMTP id s7mr21548944ljg.3.1577209757361;
 Tue, 24 Dec 2019 09:49:17 -0800 (PST)
Received: from home.paul.comp (paulfertser.info.
 [2001:470:26:54b:226:9eff:fe70:80c2])
 by smtp.gmail.com with ESMTPSA id n30sm12330458lfi.54.2019.12.24.09.49.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Dec 2019 09:49:16 -0800 (PST)
Received: from home.paul.comp (home.paul.comp [IPv6:0:0:0:0:0:0:0:1])
 by home.paul.comp (8.15.2/8.15.2/Debian-14~deb10u1) with ESMTP id
 xBOHnEfD014462; Tue, 24 Dec 2019 20:49:15 +0300
Received: (from paul@localhost)
 by home.paul.comp (8.15.2/8.15.2/Submit) id xBOHnD88014461;
 Tue, 24 Dec 2019 20:49:13 +0300
From: Paul Fertser <fercerpav@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 24 Dec 2019 20:49:10 +0300
Message-Id: <20191224174910.14422-1-fercerpav@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <4d6e1b57-d2f5-0f53-b118-4b999d4f15c8@hauke-m.de>
References: <4d6e1b57-d2f5-0f53-b118-4b999d4f15c8@hauke-m.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191224_094923_205096_2336F667 
X-CRM114-Status: UNSURE (   8.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
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
Subject: [OpenWrt-Devel] [PATCH] ipq40xx: use ath10k-ct-smallbuffers for 128
 MiB devices
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
 target/linux/ipq40xx/image/Makefile | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/target/linux/ipq40xx/image/Makefile b/target/linux/ipq40xx/image/Makefile
index fada35a49d..1fe563c7a5 100644
--- a/target/linux/ipq40xx/image/Makefile
+++ b/target/linux/ipq40xx/image/Makefile
@@ -128,7 +128,8 @@ define Device/asus_rt-ac58u
 #	string and call it a day.... Yeah, we do the latter!
 	UIMAGE_NAME:=$(shell echo -e '\03\01\01\01RT-AC58U')
 	IMAGES := sysupgrade.bin
-	DEVICE_PACKAGES := kmod-usb-ledtrig-usbport
+	DEVICE_PACKAGES := -kmod-ath10k-ct kmod-ath10k-ct-smallbuffers \
+		kmod-usb-ledtrig-usbport
 endef
 TARGET_DEVICES += asus_rt-ac58u
 
@@ -494,6 +495,7 @@ define Device/zyxel_wre6606
 	DEVICE_DTS := qcom-ipq4018-wre6606
 	IMAGES := sysupgrade.bin
 	IMAGE/sysupgrade.bin := append-kernel | append-rootfs | pad-rootfs | append-metadata
+	DEVICE_PACKAGES := -kmod-ath10k-ct kmod-ath10k-ct-smallbuffers
 endef
 TARGET_DEVICES += zyxel_wre6606
 
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
