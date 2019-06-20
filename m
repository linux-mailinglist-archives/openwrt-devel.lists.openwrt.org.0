Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A69B4CC2A
	for <lists+openwrt-devel@lfdr.de>; Thu, 20 Jun 2019 12:45:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WVZYGvlrHzP3FSNe92p2/jZvodM6v2hbz6O3l5z04nc=; b=abaV6VieIZbjYX
	HKmRLxqBFejRSvnqtgkA9NY7w4dP9vHCTPq9ae62wkn7boXeP/ZE1ym+atcH5D9Wc11u0wH7N8Y/f
	u7Bjd303aED+5ZceqUOarUZBFnqeV13IO/gqJUo+qfDICUcyzOPnirW2Bxg75SvNyJQORkEKjEFwE
	C7wwlYtwN7vlC5UJ/LEiKkHy8e+xzbU7M7fGnZX80Gj2bPsazzO9yU5ojlXCP4twAqYhgwyg6HfqU
	Ua+bLrFfsGS9qsMekienOfOhf/IfM4Zea9+iEzrL4nN6RuLDdBS/c2F93yYpTyo/2AKNEfK6OVO6K
	9soU2CvJcjsOz0CHwhUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hduZT-00040V-Iv; Thu, 20 Jun 2019 10:45:35 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hduZL-000400-2s
 for openwrt-devel@lists.openwrt.org; Thu, 20 Jun 2019 10:45:28 +0000
Received: by mail-io1-xd41.google.com with SMTP id k20so832450ios.10
 for <openwrt-devel@lists.openwrt.org>; Thu, 20 Jun 2019 03:45:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=8devices-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id;
 bh=DweS3Sy1Cth3wIkOT2od3Q3pTLxbWpxYE4jRgJwUKS0=;
 b=G0fpRExoeOGT8ETw15lWuyRT0TFf2CSZJ8XnjvCAVg9zsaCTP/4YMbTbCS2QygfR6m
 PIOauE3PGFMXSHvtBNGENqrqSkkOCXU/j2S6tivgnks+lTV0f3DyZoaFAGhR0wW0GCKD
 +8DA1CERmV4Nm/QZ0BiYofQOkkXEMxyaHGs67Oz0EMounI6P2OEDJR5hUwuKuJaqZPcQ
 JyPe3fUnZwEWJHJywxbHy+YMU76qgUx+WG95Q66QV+HFmE/TWuOE2fQWRVHQERxw9ifa
 X3N+JZ5jyCqXxYPN0Yj1qKdFOTmm4+G/qy87mFLt8d0FIfg5oCHq3vCPKDiw1Vp62h+p
 2Uew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=DweS3Sy1Cth3wIkOT2od3Q3pTLxbWpxYE4jRgJwUKS0=;
 b=l1TQ7uds7YwifZMFf1VUREJPz4z14ABIBwqun+A5RWVWNNHxcMd+ADDUDRZBsR60F+
 DdoiNk4KK6NrbmFj0V+TZoXJ4LtYBKajh3N22sjqxD+ltb9F9pJl0a8UpPlzC0SBC02t
 WfsQDHQOIELezEbpXNG/XeGn//AIROFfKzqrNes9z5NSAKAA630OrrjjYj5jrdhwNo//
 bc2ZUyf9J8nRwdg5Xr0kCg00wrgvgNrjfc9ZSp56nxYn1jxbk3wuFW9Z/d8ckW4GyL3F
 cfNu4ehK1IvbW6QWW+Bm4H2C8FCfLHGd1qfN8hr4ofUnokovut0J7NOnHND7AUF3aEG7
 e9QA==
X-Gm-Message-State: APjAAAV6zZmo0byg3GqGnXI7kvMCvLe/PaV/rC4I3YVCyfiPmx9zFRn7
 W8gHZ7r8wp8f0Aqpd3tkVym2zMioG1Q=
X-Google-Smtp-Source: APXvYqzv7Wq7iQqWBtOLOc1AoE7McHfXsO6xDgd5MakNxYux0C8hjhS1lxy2HZjYP6H+exmfVauQvg==
X-Received: by 2002:a02:c90d:: with SMTP id t13mr80424090jao.62.1561027526115; 
 Thu, 20 Jun 2019 03:45:26 -0700 (PDT)
Received: from TAUTVYDAS.peraso-corp.perasotech.com
 (88-119-50-40.static.zebra.lt. [88.119.50.40])
 by smtp.gmail.com with ESMTPSA id v13sm23201033ioq.13.2019.06.20.03.45.25
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 20 Jun 2019 03:45:25 -0700 (PDT)
From: Tautvydas Belgeras <tautvydas.b@8devices.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 20 Jun 2019 13:45:19 +0300
Message-Id: <20190620104519.16917-1-tautvydas.b@8devices.com>
X-Mailer: git-send-email 2.18.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_034527_193402_2DA28CA4 
X-CRM114-Status: GOOD (  11.24  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH,
 v5] uqmi: add explicit check for message type when expecting a
 response
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
Cc: Tautvydas Belgeras <tautvydas.b@8devices.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

When the utility sends a request it expects a response type message,
but does not explicitly check for it. When a device stays idle for
some time, it switches into a sleep mode, and notifies the utility with an
identification type message. In some configurations the device only sends
this identification message when triggered by the utility, in this case by
the request message. What the utility gets is two messages at the same time -
an identification and a response. When it tries to decode former it obviously
fails, because it is not what it expected.

Signed-off-by: Tautvydas Belgeras <tautvydas.b@8devices.com>
---
 dev.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/dev.c b/dev.c
index 4bca429..bd10207 100644
--- a/dev.c
+++ b/dev.c
@@ -96,6 +96,9 @@ static void qmi_process_msg(struct qmi_dev *qmi, struct qmi_msg *msg)
 	struct qmi_request *req;
 	uint16_t tid;
 
+	if (msg->flags != QMI_CTL_FLAG_RESPONSE && msg->flags != QMI_SERVICE_FLAG_RESPONSE)
+		return;
+
 	if (msg->qmux.service == QMI_SERVICE_CTL)
 		tid = msg->ctl.transaction;
 	else
-- 
2.18.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
