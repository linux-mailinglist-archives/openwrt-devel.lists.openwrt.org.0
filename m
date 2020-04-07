Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3C0F1A04E4
	for <lists+openwrt-devel@lfdr.de>; Tue,  7 Apr 2020 04:28:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=a/zqjXcmcdKB5iOe3QloJVsatAyvhCDfcEmkvgq44ZA=; b=EH0Q5KFCTcsHJE
	qtIQxR++A6aXeu4QqIroj5PUVaxEmALdynUabOtK1XfSeCXT/YXEKrYNsbwuAAqBYj3jxqujI6Zl/
	V2s3+YE5qR7z2MNZXpSPb6ndOvldj4EMEZ6hEx0sGSzE1X+g8BrMyORjTEQoMVkh1IJlsNNxYzYBp
	YuQcsPJVU8lmkEfAb4uLb76ROslU/M0XgcZ+e9sUMoltEFejK7NPkyGhuRdFh6ZhM6OSwFjIHzgIZ
	6WNQd+c0PmhXv1xrM8KqZFknMNICsJBRHXqnlft4oRfbVLuGe4cy7TSC6OjmhZVq8k9SdrUg/Tkqx
	ueyTvYIz3YmZ40dRNLfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLdyF-0005AV-A9; Tue, 07 Apr 2020 02:28:11 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLdy8-00059s-3Z
 for openwrt-devel@lists.openwrt.org; Tue, 07 Apr 2020 02:28:05 +0000
Received: by mail-pg1-x542.google.com with SMTP id c5so999245pgi.7
 for <openwrt-devel@lists.openwrt.org>; Mon, 06 Apr 2020 19:28:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Eu2hrkfu6rOAxYCRLG4Qi+J+C7CIM+i3QTIDQUe45jc=;
 b=WAaPKz1y7wKEX9Jp2qA2Ax0WGua301cp82W4wx024eQzSk+YuVzYs+uD/MuQLH9+bT
 zXSAH1V0sVkH2E2Z0P5m/ZNxGvuYLK6/aIaWwuFZSIfH9AxLMzIXxTmu7s4NSs2aj8I4
 MBra5eIuQlw9kC1WNPRzYPtK77XaoJ12aAZ+SE1FbO9VSY6sv6hBg+KTFMS6wqBs0uad
 QhkBvybHYKOhVMqYtYRXkVi4zLjqSq6sxRjDctEy6io6rCIwgDj3RQKVPWzFAE3ra4a9
 XumkMf1pFKb/nJMcKvuFtwqoXMb+CtCMfxXwPEgHX+HDAGUY8T0//xzoqsaEywoS5LiU
 nOuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Eu2hrkfu6rOAxYCRLG4Qi+J+C7CIM+i3QTIDQUe45jc=;
 b=qYweniBt64H+NiunqY45vVH8sGk6Z9qi2K15S+eavo+u7FIqA3ABMpF2mwuuRz7Xr+
 8fns7YMBBgCAs24x+a9TX2v3PC8foBAw87g3CyC6KSzxS57vhxVbDOcVte8bNP9jYwLU
 PEJU9FM3DMXS/SGAgvc1rpfSUX3nqYvJKPB5Hxdg9icrq4/eSpD2SRNSxUVng2jKGnUx
 qOjQYw/fuhVXN12sEIP0uxTAHn6919+IPI66PEeKs/gkav6FwoKbZVOyCd1O6FntNgoX
 EwgHQZExWfx55q8zT9Baxv1XprxeU3Nc+/vEnawUEt+frHW9Ed/eeM80XQPqepY/Ezmd
 VhBw==
X-Gm-Message-State: AGi0PuYeOfqOnEJjxpLttr50cmMUgcUTGrwFxf5TGBDMI/itPME9Aenp
 PFGuH3P0Sde0v5w3Uu21HbFABLi9x4k=
X-Google-Smtp-Source: APiQypIpj6CZ7SQ+WhYl5cHiYfP5Jh8KqzJsPcPEgDutlWIyWDB708XCdL7GX/ahF2K7sELyMqVuLA==
X-Received: by 2002:a65:4504:: with SMTP id n4mr37658pgq.374.1586226483264;
 Mon, 06 Apr 2020 19:28:03 -0700 (PDT)
Received: from guoguo-omen.lan ([240e:379:94b:b009:ed23:f8ad:f2b0:761c])
 by smtp.gmail.com with ESMTPSA id k4sm12988553pfh.0.2020.04.06.19.27.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Apr 2020 19:28:02 -0700 (PDT)
From: Chuanhong Guo <gch981213@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue,  7 Apr 2020 10:27:21 +0800
Message-Id: <20200407022721.249622-1-gch981213@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_192804_169898_28627FE2 
X-CRM114-Status: UNSURE (   8.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [gch981213[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [gch981213[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH][RFC] Revert "ramips: mt7621: disable image
 for mikrotik_rbm11g"
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

This reverts commit 838f1fbb50e91ebaf1d34f9666ae6b65eb49df5c.

It can be guessed from Mikrotik GPL kernel that this router uses port0.
And even if it doesn't, RBM11G has easy-to-use tftp recovery mechanism
for users to restore their firmware. Let's enable this image and see if
users complains.

Signed-off-by: Chuanhong Guo <gch981213@gmail.com>
---
RFC: Should I do this?
If I don't do so, users will complain about missing image;
But if I do and brick users devices, users may also complain. That may
not be a big deal as users can recover their devices easily.
I have no idea what I should do at this moment.

It's even better if a developer with this device can spot this mail
and help testing the firmware :D

 target/linux/ramips/image/mt7621.mk | 1 -
 1 file changed, 1 deletion(-)

diff --git a/target/linux/ramips/image/mt7621.mk b/target/linux/ramips/image/mt7621.mk
index cdae42f3e4..a4484b408f 100644
--- a/target/linux/ramips/image/mt7621.mk
+++ b/target/linux/ramips/image/mt7621.mk
@@ -497,7 +497,6 @@ TARGET_DEVICES += mikrotik_rb750gr3
 define Device/mikrotik_rbm11g
   $(Device/MikroTik)
   DEVICE_MODEL := RouterBOARD M11G
-  DEFAULT := n # disabled due to unknown port assignment
 endef
 TARGET_DEVICES += mikrotik_rbm11g
 
-- 
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
