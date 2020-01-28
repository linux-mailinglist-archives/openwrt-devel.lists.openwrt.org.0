Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0FB914C1FC
	for <lists+openwrt-devel@lfdr.de>; Tue, 28 Jan 2020 22:17:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aStAz/BeCUNCrsJrWer2BOSxHk7hGNNMCrAmG3ahfpA=; b=f53LTO0J4MRasx
	uFhG4EUpt7WCIcr1T12vaI/DeVFzXs3PD8h5+9lNa3DYBnnXzSlNvRQCJLT/C1cbxUNf1DWw16nzk
	KB4sFBSyD0BumD1NqAGVnmDBMz/edqsntjKQeTbF0SfVX+HsQTlcQZUGEyFx5599uWzoH6SZ6Yc5V
	WkrvHkdzBfqDFSlTpfJRwOJQjfzhvF3tz3JjtmY4JPW0yGXGMuVRWST02nMh+lYNha8ESyX6FgYpZ
	Cwexj9De6A7hAKB09R+k0M0kyrwTyJRr899n3+0iRsg3BQu0B8uhgWMA3gru3FoMMlOZnFnldtFPc
	OmhHxUSx7b82KgQdZFzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwYEj-0003SS-TM; Tue, 28 Jan 2020 21:17:29 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwYEX-0003Oi-Ut
 for openwrt-devel@lists.openwrt.org; Tue, 28 Jan 2020 21:17:19 +0000
Received: by mail-lf1-x142.google.com with SMTP id n25so10259437lfl.0
 for <openwrt-devel@lists.openwrt.org>; Tue, 28 Jan 2020 13:17:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hTOM/mdUl6LvWxEb2LmyJQG32ev5ZbVyy5sXn6PC7l0=;
 b=Dxawie+ezGpJ3U5wGvM3LZX143blzax05jhF7pdOMxpQIm9+gHwBhTEX+UbByOUVk6
 8C1ofDtvxkorG3B1AoauEEXfl+a/PrBvtNVQf4TXDv2TXb+7ILFfop9kE8rGa4CCYhcf
 g/vfh60O6ylqIm+0rt/1fdHv4n5YOvxSR4czwgV6kjevz3kwmpMSOhS+OXXJYalrz78p
 YrAUQHPjI5Nfr9cE5IKCeUKD+vUHp1gBqp+gAA93VJzACIwFzA+NA7eJGuvm7e5sxL9i
 bBKeixR5DvDK8iqAf/GWciMLnfP1+jRpTsTp7o1Jee53HfxyLs6gUkQPepH/L+jauqXt
 oxBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hTOM/mdUl6LvWxEb2LmyJQG32ev5ZbVyy5sXn6PC7l0=;
 b=kOS/PE6T8wJJYkt8XXpYYRI9QmgdtIs9AvjihbSu7bEgVo+8/dt/4KHGrjSgP9b3DE
 kZD559gYF2krhQXQgrvUlKPmTdXQ4tXMTSnBzLBVZMvaUNC8Fk5N6mvB4M3meEbuUQ6z
 ST58/RokJulL8eN6UifMPNe6D6AGtoUzXeHYUZKm6qT8VPcTdn7sv9R7j441yyjSzIp4
 2PVQjnBc7tMiUr/+WKS86UPxrDpNrsK2gcmoGyPxvBRgldlm+3I9Wvz2CZAFD/wM472x
 u3mrDC8NQ/zeRBLfzRsTsykO9mIfvncqf1RO0Vec7GDA4PwYG0K5E0D/rQx3oG2UU+jz
 G9nA==
X-Gm-Message-State: APjAAAWgLTjTnQtdLE9g/HY4KUeg++Z8JmJTh3d5tCEaQO81ek1qDN0C
 kaFFEdm1j9CM88Nr/3Kh28bB5C60
X-Google-Smtp-Source: APXvYqyw1YcdlymG7dXd+7klhptmNw+rbKRofkBkgF+8dN6Xl9eChFFih2gIeAfk7kwGSrlRdzBBbg==
X-Received: by 2002:a19:c6cd:: with SMTP id w196mr3562491lff.79.1580246235627; 
 Tue, 28 Jan 2020 13:17:15 -0800 (PST)
Received: from krolik-desktop.lan ([185.188.71.122])
 by smtp.gmail.com with ESMTPSA id w3sm6776104ljo.66.2020.01.28.13.17.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Jan 2020 13:17:15 -0800 (PST)
From: Pawel Dembicki <paweldembicki@gmail.com>
To: openwrt-devel <openwrt-devel@lists.openwrt.org>
Date: Tue, 28 Jan 2020 22:16:44 +0100
Message-Id: <20200128211644.14161-2-paweldembicki@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200128211644.14161-1-paweldembicki@gmail.com>
References: <20200128211644.14161-1-paweldembicki@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_131718_016105_D9BAF406 
X-CRM114-Status: UNSURE (   8.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
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
Subject: [OpenWrt-Devel] [PATCH 2/2] iwinfo: add device id for Atheros AR9287
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
index cb66b6e..c1fe8f3 100644
--- a/hardware.txt
+++ b/hardware.txt
@@ -146,6 +146,7 @@
 0x168c 0x002a 0x168c 0xa093    0      0  "Atheros"  "AR9280"
 0x168c 0x002b 0x168c 0xa091    0      0  "Atheros"  "AR9285"
 0x168c 0x002d 0x168c 0x209a    0      0  "Atheros"  "AR9287"
+0x168c 0x002e 0x1a3b 0x1121    0      0  "Atheros"  "AR9287"
 0x168c 0x002e 0x0777 0xe0a2    8      0  "Ubiquiti" "NanoStation Loco M2 (XM)" /* wrong offset! */
 0x168c 0x0030 0x168c 0x3114    0      0  "Atheros"  "AR9390"
 0x168c 0x0033 0x168c 0xa120    0      0  "Atheros"  "AR9580"
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
