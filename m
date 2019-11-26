Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1183B109E94
	for <lists+openwrt-devel@lfdr.de>; Tue, 26 Nov 2019 14:10:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4hj+RvLkxgRzJuWhTxDCZW5PdI1OiFTF50aB/PanhZg=; b=ZnjQ1VR13Ocs6P
	kxHuqsxYOZ7d9V5+HJqvMtwCyP3NFcCsa3YV3aDzTIKOAs8eloEWPQfWuvYfFeSUh6O1U1kEOZDJs
	XKWU+qwue/gIUungQxkwyV6P3MVrqA/gvziN7Zc3xOfbiwNq+PjMUWYppYAm1KyNlTv5boXCB3GVU
	J+ClM+DUIGaguoNGSuZOJYGXkng90cJALsk9esvDuBEH2q+HNU+d/hnCWt0qc2aWNCLhiMG8aWYs4
	UWuSP0VPMDy2eMn+QXvsyX31cNDp6s+uerHA3zQS0rvPldJ8JTkGVLN8Th3Pb6lq/a2Hk0PYTa2AZ
	4SK+QmSAGGkYuhd2Z/kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZac1-0001Gf-1Z; Tue, 26 Nov 2019 13:10:37 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZabj-0000Yk-7C
 for openwrt-devel@lists.openwrt.org; Tue, 26 Nov 2019 13:10:20 +0000
Received: by mail-wr1-x443.google.com with SMTP id b18so22375474wrj.8
 for <openwrt-devel@lists.openwrt.org>; Tue, 26 Nov 2019 05:10:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5nZ4x0CkiqWIgcaOpoPLJZvUny4ibPdkP28FgQd0MYI=;
 b=UQFibo1StdYQAQGIln30Ogg1UZYlgzpeHOJZKYMO1wrlYiOVCYEQZ/VvM0SOJcBs6/
 lcfFSBZE7pUU/VVk5MVmMBNdt/WHFD6kIQ1FboISGgTdXrdDt3ck7za46A8r9AMpaElQ
 SOWvQDghSpIrlj/Qe8VviKpx4+Xw4F5H63BlCy+TKdA8J7boeBsbbGJ22H7NAj/TdGx6
 5c2o/GXyTZpXDCx+c+0peI5MNGpxPpGXrnUpGALpTYi642N5tVJQs+b5XcGixrJFMMKV
 6zt3C0GXWrncLxc0/SGGFlYTWOdH5sY4uv71/d2E4QtZ9ya11TMuVvi3mduLvqCrcswv
 cg3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5nZ4x0CkiqWIgcaOpoPLJZvUny4ibPdkP28FgQd0MYI=;
 b=h0Rc8i9rJ+KESZDfkq6Hc0ULOzSlb9oU1HoQNUXeyOLDHkcJ2ogeCogByanzeNWbsA
 Uy+x8KkRRAqqgZy+76N+GFKXTpnX0XLf8HDqRNYt38IGudRLoLpnoBioKjzVyR5lVcwD
 kiOq7K3F9HZegkCVXQOCy9KpXB/7kPxzwv/zEa+1pU69Oonpnk6CS9wPhBWnjTZvT7gx
 6wUH8bLzbhfMsqrGwzpybJPEJoqnZ17AgAqMLe2/zK5ZWnMFVrXtxcwhs7Tbs5sISN0N
 gSxVzbjJNzCZ9TPMu9UYM2+dF6YmjFrFMKKeznktn599fW9idywsleYo/+jWkF/A326f
 BH9g==
X-Gm-Message-State: APjAAAVrNRIusNLEWT3QV2RRQIlvMihER9D4z0Nh2VN0knzfplj+lLud
 5811r3q4dgV2pgC/q9NhMyYgKWTj
X-Google-Smtp-Source: APXvYqy9E92zvRt392wtLp1692zg5rVNF3RuaFa2QGDOhvklytZWFPJyjQb4OALYNRqRb1pK52gTHQ==
X-Received: by 2002:adf:806b:: with SMTP id 98mr21582118wrk.31.1574773814725; 
 Tue, 26 Nov 2019 05:10:14 -0800 (PST)
Received: from gavarga-5590.lan (catv-80-98-141-192.catv.broadband.hu.
 [80.98.141.192])
 by smtp.gmail.com with ESMTPSA id e19sm3066519wme.6.2019.11.26.05.10.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 Nov 2019 05:10:14 -0800 (PST)
From: vargagab@gmail.com
To: openwrt-devel@lists.openwrt.org
Date: Tue, 26 Nov 2019 14:10:03 +0100
Message-Id: <20191126131003.324777-1-vargagab@gmail.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_051019_300273_2C7375F6 
X-CRM114-Status: UNSURE (   9.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (vargagab[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH] mtd_get_mac_ascii Return first occurence of
 $key.
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
Cc: ynezz@true.cz, gch981213@gmail.com, Gabor Varga <vargagab@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

From: Gabor Varga <vargagab@gmail.com>

 For example on Asus RT-AC65P router (and the identical Asus RT-AC85P)
 the et1macaddr string has multiple occurences in u-boot-env partition.
 So, the mtd_get_mac_ascii cannot determine the WAN MAC address
 (called from /etc/board.d/02_network script), and with default 
 configuration the WAN and LAN MAC addresses are swapped.

Signed-off-by: Gabor Varga <vargagab@gmail.com>
---
 package/base-files/files/lib/functions/system.sh | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/package/base-files/files/lib/functions/system.sh b/package/base-files/files/lib/functions/system.sh
index c4dc3cc3a9..067157f53f 100644
--- a/package/base-files/files/lib/functions/system.sh
+++ b/package/base-files/files/lib/functions/system.sh
@@ -72,7 +72,7 @@ mtd_get_mac_ascii() {
 		return
 	fi
 
-	mac_dirty=$(strings "$part" | sed -n 's/^'"$key"'=//p')
+	mac_dirty=$(strings "$part" | sed -n '1,/'"$key"'=/s/^'"$key"'=//p')
 
 	# "canonicalize" mac
 	[ -n "$mac_dirty" ] && macaddr_canonicalize "$mac_dirty"
-- 
2.24.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
