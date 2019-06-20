Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C73364CB94
	for <lists+openwrt-devel@lfdr.de>; Thu, 20 Jun 2019 12:09:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MvcRAwpxLWsJyMT/PG8EhDytihaJ/piXjsF6PK1Kb3I=; b=HfMy2OtxNtsE5l
	h8iW0TeUBue6i97F94M3IU8he+fFDIbCFAtMu7A5rSHhv9Ob9rJ246hZTQZxqkO3lT1bprnG4wvgM
	uTzCikHTTqbdhr1KPMsWgnoVZfP5V5oZAxI0GRxrdkrR5Aco5OIEWqaxrPP7+wzh61tyu6u6iGT/j
	OYqUp18EG0tVG0DqfkIU8ZZsJbCGfruDA9/DsW7tP/6eLfgv5oezp1cXx652DlwE3IrH+MF7rGV+5
	9g8ZG38z79Krid4xGACTUliK987EriITThAAtuqcsRBT9M0SBX1VBU5BNmm154wUnix/oS930w4yz
	qxHEQamHSGmgZ0C+1V4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdu0X-0006ld-0a; Thu, 20 Jun 2019 10:09:29 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdu0L-0006lA-BX
 for openwrt-devel@lists.openwrt.org; Thu, 20 Jun 2019 10:09:19 +0000
Received: by mail-io1-xd41.google.com with SMTP id w25so81923ioc.8
 for <openwrt-devel@lists.openwrt.org>; Thu, 20 Jun 2019 03:09:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=8devices-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id;
 bh=31ep0IQUMH0pxv7SgT2Px1p3pWCdkBMm6XKuCGfNzQs=;
 b=lzMNwV/nK2aHqX8Q279klYTni8TcUxAwrWdauOR3k7fWHW0EMs5OUvLrLK7NmtdxcN
 dzmQcLPeKbP4urFuSbOYXocQEabm7inmofo/Xz+KgRUDvv0jafDrFrEnubhNfhDPsDsi
 nz5ThAlOZ3zpQN6jYkQMsfCtQGVVtCkmO420UIGhjBC5/zbo6BAZ8gH4XNkUw7ERmVuI
 RtdId5Tes6KsS6U0Y13mnR1gBwxLUtZ2cEsPuUEaZvfdPBhcxxNrvsVwHsqotzb4CjE5
 4wmJtSIYv2P1OrE1uGhZNwMDv7jJxsreDmIgXBqqsxHAtH1HNfKBqOZbyk7lodhgC7gy
 y0HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=31ep0IQUMH0pxv7SgT2Px1p3pWCdkBMm6XKuCGfNzQs=;
 b=P81QIoUH88v3fUV53o2Zzql+rKHFqbx5/jOETfkUlCLMWU11tIPMOhdjkNCmAwoIbA
 RvKJQPOwJffyXvBJiv9EO/KtdrvQKlnj++2xfRpH1KoTxXBH80lznnKZBWPpc6qWcuJN
 hOvm5bw2Y/XF09q/2bGVvkzqMdaUsRqnu2sLHu5CzIGeAODM1t4hjehRxMtERFHqZmJT
 UV0YzI6sA+ZOYxc+dV0WPpYmN/5zyTGuTuTp9HYIJNFbkuVQGKr35pVEVAeC+TKZ/07c
 mdb931C4HMrORzfqavra8Xo9zPuWp51RI7+axm16nd2/UbnpQRTQPO6aG/6+FVsqUNka
 taZw==
X-Gm-Message-State: APjAAAXowED+W0lgTZxcyFkuzw/LiLKsc4On4MsgTyyfRekruEc/xFkw
 ebsL6xb0SW7i8lZjshR/Nu52RnIeQ+4=
X-Google-Smtp-Source: APXvYqwmhtSC9p+qMAS+SxQp28ZgBaL1MF5mZXdgo4bOMk2NMFwwAVMED2gvtR3vD1XecYX4l20WFw==
X-Received: by 2002:a6b:ce19:: with SMTP id p25mr10134481iob.201.1561025356002; 
 Thu, 20 Jun 2019 03:09:16 -0700 (PDT)
Received: from TAUTVYDAS.peraso-corp.perasotech.com
 (88-119-50-40.static.zebra.lt. [88.119.50.40])
 by smtp.gmail.com with ESMTPSA id d7sm15509990iob.67.2019.06.20.03.09.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 20 Jun 2019 03:09:15 -0700 (PDT)
From: Tautvydas Belgeras <tautvydas.b@8devices.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 20 Jun 2019 13:09:08 +0300
Message-Id: <20190620100908.14464-1-tautvydas.b@8devices.com>
X-Mailer: git-send-email 2.18.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_030918_117006_3D088AB1 
X-CRM114-Status: GOOD (  10.55  )
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
 v4] uqmi: add explicit check for message type when expecting a
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
 dev.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/dev.c b/dev.c
index a586157..5f6967e 100644
--- a/dev.c
+++ b/dev.c
@@ -79,6 +79,12 @@ static void qmi_process_msg(struct qmi_dev *qmi, struct qmi_msg *msg)
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
