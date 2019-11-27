Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BB0310B47C
	for <lists+openwrt-devel@lfdr.de>; Wed, 27 Nov 2019 18:30:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BzOKl86qktgL/1KicS2SaEeFLoIlYLTs+qXTlp2/uH8=; b=FbuNToxs9EK4yf
	kh9z7/xoHLYzFfvVr1is+VXN2Ph5PyjG/MQtPghCDAWTnScqTKPLfweL8FMz2k7Fe0Y67djnm9TjG
	rRfnBgHOS3gp48okkXapnQHI4P/ngV8HR49V1BoapWtOknbIWqxXUidlFpIXMvPu8vmtLZm0PN10p
	aBxoKS5jtWNLNt2bm9KidkQGHn4VBPBhHmIcHhSzXHewofrzPogRYA13wqb5V3XewNc89WyEaO4mJ
	HH8v7N44Zmpqb3ReDU9URn48QRsxj0DCRU1VZoHPvz5jIOW8gDeWs1cXGCwaj/gCQO3D7XnTQXPBH
	uB3PEruzAid3i9yUPs0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ia19I-0005Ah-28; Wed, 27 Nov 2019 17:30:44 +0000
Received: from smtps.newmedia-net.de ([2a05:a1c0:0:de::167]
 helo=webmail.newmedia-net.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ia18m-0004kr-BW
 for openwrt-devel@lists.openwrt.org; Wed, 27 Nov 2019 17:30:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=dd-wrt.com;
 s=mikd; 
 h=Subject:Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date:Cc:To:From;
 bh=CuM42KdBbLnrISOGsCqSnr850lm6eDfQhk51lD4Yi7w=; 
 b=Pi5fA2dpTcb68FKtwXWpY0PmfQL9aOsMmuV1Ab7WQW7l3ZaJscVLH3dI0JP6IqTCmOzwqMNbTubDvQhFQzkCX+pQ58BBru1YnjGUgMJ8Cji/laDFqqefsIlzJ9f593Lvpouh4UD0THwXcBOGJ4GA4qm7X0/Iw53vEPM8Hs9HVWU=;
From: Daniel Danzberger <daniel@dd-wrt.com>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 27 Nov 2019 18:29:51 +0100
Message-Id: <20191127172952.2143-2-daniel@dd-wrt.com>
X-Mailer: git-send-email 2.24.0.rc1
In-Reply-To: <20191127172952.2143-1-daniel@dd-wrt.com>
References: <20191127172952.2143-1-daniel@dd-wrt.com>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a02:908:2614:35c:440c:a968:e99d:d1b9
X-SA-Exim-Mail-From: daniel@dd-wrt.com
X-Spam-Checker-Version: SpamAssassin 3.1.9 (2007-02-13) on
 webmail.newmedia-net.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=4.0 tests=BAYES_00,NO_RELAYS
 autolearn=ham version=3.1.9, No
X-SA-Exim-Version: 4.2.1 (built Thu, 26 May 2011 15:22:33 +0200)
X-SA-Exim-Scanned: Yes (on webmail.newmedia-net.de)
X-NMN-MailScanner-Information: Please contact the ISP for more information
X-NMN-MailScanner-ID: 1ia17T-0002FL-Sf
X-NMN-MailScanner: Found to be clean
X-NMN-MailScanner-From: daniel@dd-wrt.com
X-Received: from [2a02:908:2614:35c:440c:a968:e99d:d1b9]
 (helo=localhost.localdomain)
 by webmail.newmedia-net.de with esmtpa (Exim 4.72)
 (envelope-from <daniel@dd-wrt.com>)
 id 1ia17T-0002FL-Sf; Wed, 27 Nov 2019 18:28:52 +0100
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_093012_692998_B2357E90 
X-CRM114-Status: UNSURE (   7.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH 2/2] iwinfo: add current hw and ht mode to
 info call
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
Cc: Daniel Danzberger <daniel@dd-wrt.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Signed-off-by: Daniel Danzberger <daniel@dd-wrt.com>
---
 iwinfo.c | 44 ++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 44 insertions(+)

diff --git a/iwinfo.c b/iwinfo.c
index a76b72a..7f46e3e 100644
--- a/iwinfo.c
+++ b/iwinfo.c
@@ -290,6 +290,48 @@ rpc_iwinfo_call_hwmodes(const char *name)
 	}
 }
 
+static void rpc_iwinfo_call_hw_ht_mode()
+{
+	const char *hwmode_str;
+	const char *htmode_str;
+	int32_t htmode = 0;
+
+	if (iw->htmode(ifname, &htmode))
+		return;
+
+	switch (htmode) {
+		case IWINFO_HTMODE_HT20:
+			htmode_str = "HT20";
+			hwmode_str = "n";
+			break;
+		case IWINFO_HTMODE_HT40:
+			htmode_str = "HT40";
+			hwmode_str = "n";
+			break;
+		case IWINFO_HTMODE_VHT80:
+			htmode_str = "VHT80";
+			hwmode_str = "ac";
+			break;
+		case IWINFO_HTMODE_VHT80_80:
+			htmode_str = "VHT80+80";
+			hwmode_str = "ac";
+			break;
+		case IWINFO_HTMODE_VHT160:
+			htmode_str = "VHT160";
+			hwmode_str = "ac";
+			break;
+		case IWINFO_HTMODE_NOHT:
+			htmode_str = "20";
+			hwmode_str = "a/g";
+			break;
+		default:
+			htmode_str = hwmode_str = "unknown";
+			break;
+	}
+	blobmsg_add_string(&buf, "hwmode", hwmode_str);
+	blobmsg_add_string(&buf, "htmode", htmode_str);
+}
+
 static void
 rpc_iwinfo_call_str(const char *name, int (*func)(const char *, char *))
 {
@@ -341,6 +383,8 @@ rpc_iwinfo_info(struct ubus_context *ctx, struct ubus_object *obj,
 	rpc_iwinfo_call_htmodes("htmodes");
 	rpc_iwinfo_call_hwmodes("hwmodes");
 
+	rpc_iwinfo_call_hw_ht_mode();
+
 	c = blobmsg_open_table(&buf, "hardware");
 	rpc_iwinfo_call_hardware_id("id");
 	rpc_iwinfo_call_str("name", iw->hardware_name);
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
