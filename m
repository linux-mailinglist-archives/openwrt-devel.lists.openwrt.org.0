Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7821214C1FB
	for <lists+openwrt-devel@lfdr.de>; Tue, 28 Jan 2020 22:17:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZsZCPDlYwJWLeuBH46mnaT9BTPRp6bwdilQVae9k7kw=; b=f4rBMBBj5XPRaE
	FlV7+u8q0DAcVZ/49koGzVtFyl2Z9kJ8DAnXndhL66kPtMgx4BCKFvTFCsUMB03LKy0Jw07G54/JE
	J7u3Sa5wexTBBWo2pyZdQZcGW2cUD7yLB/ReM5E+OjaOvosRFz998qPuiB3Lq2agYq/1GgES43moc
	jX3l/XGtHotXGWFINhA+jfMnKHvaguR9IIjK0GBMm1dk3t4a+o/sHAgMCNe8IeVDbSfSJx8oxVypN
	wkSH/owocygtn09lVAeC+4QW0kN7YIbVp4sp/zlqKbdGoeloaR/s4FRhR2LpiOL8Vt6OspBaRyWQP
	A178Ad0eC3iaj3mVLweQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwYEV-0003GS-GH; Tue, 28 Jan 2020 21:17:15 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwYEL-0003Fl-GW
 for openwrt-devel@lists.openwrt.org; Tue, 28 Jan 2020 21:17:07 +0000
Received: by mail-lf1-x143.google.com with SMTP id z26so10215337lfg.13
 for <openwrt-devel@lists.openwrt.org>; Tue, 28 Jan 2020 13:17:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=nmBguVe8+ftBpAZSnlVKGrTrvVlh+5PVrcxAX0N/tk0=;
 b=X3PveYGbG0kq/zL41b+NTLIDNr88GofCz86mqskrGnMVR9xA7rApG+v0V3EJubsIn5
 Aq36Jh76c3h7Pw8F1zuKuujIYFKaPIef7gdJ4alRL8J+t49G5Y0HzGPgSBNLGYRRowd5
 pwIw6B+iCqcmE2Rbxy1BcmLVgQc8+8ib4HwwnnEeP5JzklIoYAW6t6AqhFJ2lvz/cJ3g
 bcFF54PjKjP7VIf6r8SAD3weHB05k5JF5UMwj5CZ9PMO6nO15iBGYTmraKdi8lo8oJPb
 GaKtfeBafBY0nQ2+CKifkjrHSCaZi2GBNQmZ8Sy788FoFdSSAhd0QoC8YUp9x3AM1FxP
 7j2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=nmBguVe8+ftBpAZSnlVKGrTrvVlh+5PVrcxAX0N/tk0=;
 b=HVP7++a/0H2fBoSUEZni1DQU4CSs09S0/Qb3yAdYmVC5I8ou+myfd/5JEuW/OHweXW
 bSh1p7AVVt0LtP/Igbm0BZFQt5ojbWGOymoQPEqakdyPwM1rgGZ2fdbUK1eyGdI0jFPa
 0L3T/hiCOhjrlswmf81efJdOtAdLS1tIIEdQwoybJIru/A4Nv/NUP+v53SIC1VpPC1A+
 W/9ndd1RNBpgXQ/W1X3V02M7CRxQyAFh5cZ+NTZgVCG9E/zAr+KiWMmU3d63PROdwaNn
 jPnVadEce6T6PWHE7K9s/6xkiDTmnQSopKsZl4Bb8E6ts7PxV3Lw0o2fUHKTy/MkeKPA
 tVQQ==
X-Gm-Message-State: APjAAAWYJbhXyQlttrEKKmOCtr63Tw8VK/9YL2lXDi8XI5ryscaD/Hs/
 d87ZkXP1je/3DK/FypOaDc1KAP8+
X-Google-Smtp-Source: APXvYqwHJA3b6F8gKRTt2kECq2Hnfs39ro7ksJIC1a7m1tHLLAqZzbaE70nDQbJGjm0N8jlJPrm/gQ==
X-Received: by 2002:a19:740a:: with SMTP id v10mr3448079lfe.65.1580246223075; 
 Tue, 28 Jan 2020 13:17:03 -0800 (PST)
Received: from krolik-desktop.lan ([185.188.71.122])
 by smtp.gmail.com with ESMTPSA id w3sm6776104ljo.66.2020.01.28.13.17.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Jan 2020 13:17:02 -0800 (PST)
From: Pawel Dembicki <paweldembicki@gmail.com>
To: openwrt-devel <openwrt-devel@lists.openwrt.org>
Date: Tue, 28 Jan 2020 22:16:43 +0100
Message-Id: <20200128211644.14161-1-paweldembicki@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_131705_579658_2382C2EE 
X-CRM114-Status: UNSURE (   7.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [paweldembicki[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH 1/2] iwinfo: add device id for MediaTek
 MT7615E
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
Cc: Pawel Dembicki <paweldembicki@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Signed-off-by: Pawel Dembicki <paweldembicki@gmail.com>
---
 hardware.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/hardware.txt b/hardware.txt
index 6029fb8..cb66b6e 100644
--- a/hardware.txt
+++ b/hardware.txt
@@ -175,6 +175,7 @@
 0x14c3 0x7603 0x14c3 0x7603    0      0  "MediaTek" "MT7603E"
 0x14c3 0x7610 0x14c3 0x7610    0      0  "MediaTek" "MT7610E"
 0x14c3 0x7612 0x14c3 0x7612    0      0  "MediaTek" "MT7612E"
+0x14c3 0x7615 0x7615 0x14c3    0      0  "MediaTek" "MT7615E"
 0x14c3 0x7620 0x14c3 0x000c    0      0  "MediaTek" "MT7620"
 0x14c3 0x7628 0x14c3 0x0004    0      0  "MediaTek" "MT76x8"
 0x14c3 0x7650 0x14c3 0x7650    0      0  "MediaTek" "MT7610E"
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
