Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDB4D4CC4C
	for <lists+openwrt-devel@lfdr.de>; Thu, 20 Jun 2019 12:52:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WVZYGvlrHzP3FSNe92p2/jZvodM6v2hbz6O3l5z04nc=; b=lAuS8M4LhSRY2u
	3XfrfKjaJwbLO+sypgnecbj/Z/C96Mnv29YmfCsEID0YczQpt5iNU8XXtt+aF1qD6piHd+2zBGEBl
	d7A3viSxvL39XmCbmp2WSdJwiRZJiDdjJyBv9TC/okN3gTEE02Ul3w7ZFNExTBXvBr/cyhl6zfqeR
	WkWIqTS45qaqIzXLBkofkL7cgZvS+KHHAADXNMNvr8JXjDnD/4x6MDT17/X9GJxewcSbNMRxlUHK0
	y9N1GdYCJBZ/8zOfVj/jkcCNstswqKXO7drfxqq1ET/g86T9oxeYPPGrbjLbq4aYwlQas8h2ifsp8
	kcvdoPt2rUFIRMSlsfUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdufe-0006Ls-Eq; Thu, 20 Jun 2019 10:51:58 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdufJ-0006Fe-Jf
 for openwrt-devel@lists.openwrt.org; Thu, 20 Jun 2019 10:51:38 +0000
Received: by mail-io1-xd41.google.com with SMTP id e5so857491iok.4
 for <openwrt-devel@lists.openwrt.org>; Thu, 20 Jun 2019 03:51:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=8devices-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id;
 bh=DweS3Sy1Cth3wIkOT2od3Q3pTLxbWpxYE4jRgJwUKS0=;
 b=c+Hk2LUOcy/Dcot5M3aZCgbDqD4pnYmKbPItH0Zdlee/fx+cAsc3Z3+9ejLEZmR6z0
 G67KNFcPMad4hDq2URijmioleoY4gtCwCnbE0tog16MN6do2hCGm2zFaxL7AgeYePUH/
 yeOlP4vfiEl328KBoDPAFEI4D2LBNef+nvd2r2atZ+bRKHszJO67qkF2+lvVH7/saPUv
 j34PLJ/XvZIs0Aimy/3WhXGv8iFGPNL01Xbw5IE/XF1HaDwJG/OsaCMD4Fz3gUNElWsg
 tjSWX6oqdtElBhquxHhKH+SMoxArU+PQvgV50Bm+b0bb1fZGICfK0pjsUjjNBXE0oePd
 N2Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=DweS3Sy1Cth3wIkOT2od3Q3pTLxbWpxYE4jRgJwUKS0=;
 b=C7Y+EYro1Dmcj6QtckmOS4tnMToIVEvrwsYzG/W0vDwOvq5qXeBhK26XZBABWrXE53
 eQpwNP3nxeXi6HkOwKUB2FQgWpBCUvwLyzJLHbODdl2P9s/S4j31C/FqoJZJu+PX8L9Z
 zLk3I6MTH2KeNtRmle74EUdbzivZNAUXT3h0LcP3wYDDD99EuZSszpcYCKUELm+mnmEM
 vE/d5Ng3dF9WPhhS7fNE+e261vipYDzxTCPdyOxKssfytQKoPqOvwt1cPzBBJQdCZtcl
 4+L+OxM8NImihFfpKtMD2xdTlHGU4OCbUvq5ftPQTZKdI2WYNw5hZtoj0pknEXWdMU++
 /p9w==
X-Gm-Message-State: APjAAAV8qINaevQfxlkrgcd9c1ouiSlrUGEWXcMzPLfnfF1O4FbWfLS3
 Ga4GtKs+6eflDDoWhgW4wgnwARoCLkc=
X-Google-Smtp-Source: APXvYqzIxB62lPLle9rxFGqOl/iBB7VqOESk54NyNmFAsyHJHYorfFb3gOGOm+HC7IB5ieuyYp8KnA==
X-Received: by 2002:a02:c952:: with SMTP id u18mr79391536jao.23.1561027896910; 
 Thu, 20 Jun 2019 03:51:36 -0700 (PDT)
Received: from TAUTVYDAS.peraso-corp.perasotech.com
 (88-119-50-40.static.zebra.lt. [88.119.50.40])
 by smtp.gmail.com with ESMTPSA id t19sm15312504iog.41.2019.06.20.03.51.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 20 Jun 2019 03:51:36 -0700 (PDT)
From: Tautvydas Belgeras <tautvydas.b@8devices.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 20 Jun 2019 13:51:29 +0300
Message-Id: <20190620105129.17756-1-tautvydas.b@8devices.com>
X-Mailer: git-send-email 2.18.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_035137_645313_6773C2D6 
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
