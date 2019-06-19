Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C58C4B51C
	for <lists+openwrt-devel@lfdr.de>; Wed, 19 Jun 2019 11:41:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hbwlJJOsQ7UNdzFuuxJPJO42DaHZEFVKc8deq1PbC7M=; b=mpfdv4ItXSENxB
	Kqoaxsgl/n3+a7ySuP4dfooTOXUnIYER1OHZIBowv/Jn1UjH3JJXaoluKrTYY9UtY402jUm023O51
	mR1nVPuTNTwiw9slL7vquTqe/A+BCkQjVJ0tsYEQPMzewNXer+sZC6kylbZn2u9k+61CSRcldl9nu
	9cgPPDYCTS8LogRtqUMbi2/YaSLvWVD3DMVl6PGDNzS2Re6j7wNeB1DsI6OT7jol6xHMw2ud5O344
	sbrd4NtNmmKC8DnxiMBIb+M5wIsZ5cWbA8PLlM7eR5lGOy+dOMFctJ0wUt4kSNOtAkboNhw1ikalV
	CfArT0lKwCiJ4gZr2lZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdX6I-0001cF-7e; Wed, 19 Jun 2019 09:41:54 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdX6B-0001bg-Hn
 for openwrt-devel@lists.openwrt.org; Wed, 19 Jun 2019 09:41:48 +0000
Received: by mail-io1-xd43.google.com with SMTP id u19so36601671ior.9
 for <openwrt-devel@lists.openwrt.org>; Wed, 19 Jun 2019 02:41:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=8devices-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id;
 bh=39qXC65CrfvbqhJScsIgHVFP/KKMwIA9vIQofW/Jzjo=;
 b=CkBgNFHOHxQrXBPUdDCU/u4xp9a80s9Ag4nmrwDojCZkuFcT8k5iHJUUJD4TgrIFgv
 21uDoSw8ASJTLfcI/J4j3bCim89mXqT2EVrENbWSqwMLuie4CJLJi64/B2B1D1bROPPm
 sKpS5umWnTQoFfASbSDddbZYObgsxUxxZo/KBGTYIISRVm+d/DP6FnzWQUDQqcIlv8h2
 +zaH1tiIddz99P6Su2g9qMcgF916Uo/2A9ivhp6XjG1lzyMPrdhcO6aHTMKRvLTOwRDf
 DiEBLz++ZrjIAQ4yncijxz4BPEK2HXRZYNj0nVFdOQBSPNQIi4ser2Emg9EqL1GcHEnh
 Mvrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=39qXC65CrfvbqhJScsIgHVFP/KKMwIA9vIQofW/Jzjo=;
 b=bLwdxFLu7qvizLYiFfpmiKnvITVqdaIIBEUdtQQ//2gSVLaLrMjjCSdhX5RN1hcKeO
 UsiWDIm3m4zyqkrPZsmxAKOC3oPcGqc6iEcAlazrAoo4U/Y6+uSiLecmanvxhaSdsKMZ
 wR/HNXWZwI0ae1oST4RUev6d/1qYrqsgH25p/wbKwhYKigVXleknLTHA64ujPxmjpvWf
 A13vki0RAkvAA0TAhOd+CPZD3AA0pGa/gkqZq2Dqg25gWReEjnHPUQV4K+VvsB3+16jW
 ueMlTtOrRmX1VBgtL6Od2L87O2fyUyjptM8Il1p0RdR/UPMiFEDPBkx0SYKCKQPcpVk+
 9P0w==
X-Gm-Message-State: APjAAAUoUS90Gcl9hk3T1N2k5iNaMHKdsfwr4LKR7CFSWRh7xMB2/WGk
 sXRb2zc1irFbGYIFCVIM80X82IxR1Oc=
X-Google-Smtp-Source: APXvYqxRfIh5vpRIW7+qtf5Da+/FJtyxa1Bfw+R3qd23A3+kd3kIJCsn4MQNgWFW2mNuatAlX66XEA==
X-Received: by 2002:a5e:cb06:: with SMTP id p6mr7344062iom.79.1560937305603;
 Wed, 19 Jun 2019 02:41:45 -0700 (PDT)
Received: from TAUTVYDAS.peraso-corp.perasotech.com
 (88-119-50-40.static.zebra.lt. [88.119.50.40])
 by smtp.gmail.com with ESMTPSA id x22sm14386374ioh.87.2019.06.19.02.41.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 19 Jun 2019 02:41:45 -0700 (PDT)
From: Tautvydas Belgeras <tautvydas.b@8devices.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 19 Jun 2019 12:41:38 +0300
Message-Id: <20190619094138.5431-1-tautvydas.b@8devices.com>
X-Mailer: git-send-email 2.18.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_024147_651371_803DE919 
X-CRM114-Status: GOOD (  11.57  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH v2] uqmi: add explicit check for message
 type when expecting a response
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
 
+	if (msg->service == QMI_SERVICE_CTL && msg->flags != QMI_SERVICE_FLAG_RESPONSE) {
+		return;
+	} else if (msg->flags != QMI_SERVICE_FLAG_RESPONSE) {
+		return;
+	}
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
