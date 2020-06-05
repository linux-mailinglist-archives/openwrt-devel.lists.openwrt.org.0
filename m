Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C52721EEF4C
	for <lists+openwrt-devel@lfdr.de>; Fri,  5 Jun 2020 04:07:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sH4ZT56f7PnooQg5w0YwWm9sR+34AqW82MKPoF/F8Ik=; b=t8BRmMYddRe+jP
	AyUTULHLhi5AiE1b1HbYxUEzc7vMoDyBwhnR6D6feBlJI3SPVrD32mulJQyZ5XtmuW97UPozktx4I
	Qt4vIqd07iFqX8HLRqwhdR/kztZRvtDk3ImQvzJmzRFPsHcOvnWcIpNmcnx1T0eJ60S9d4bEteftN
	7RY46SthKBBV1TaRj7kavySYZP+6r50D7BONnP930C/mFHGvmziqZ2aNZlcGZGkti4Q+TOZvhv415
	diAATx9WS7eRJ16mMFVTrXPXD0yZHF9fP4xLi6fZDh1g7/rndsempp5dQDUasRjviZfiKu2jkra4U
	GG9njdMkdR4HzID2FwSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jh1l1-0008MD-SH; Fri, 05 Jun 2020 02:06:55 +0000
Received: from mail-m964.mail.126.com ([123.126.96.4])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jh1kv-0008Lc-PB
 for openwrt-devel@lists.openwrt.org; Fri, 05 Jun 2020 02:06:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=126.com;
 s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=Q+WxU
 taK6F/xUcmROrIyNRhstcF8KWCyIXWUuR4TQ2Y=; b=N80MyfYsiyAaMCsYAcQgl
 JkIvjLGhuaxAAOioeZ7u7HH5qBUcxsMAfXt0+UjoVeH/hSt6Xthb5iGjDwkckLfb
 FAUEalj4Elysj5wF9fbcO29PgoqSOh8t8GeHJi9hnmfF0njdYE59GuJuztaBzOij
 oJItPuVu+YzrSDveVooFk0=
Received: from localhost.localdomain (unknown [221.221.151.179])
 by smtp9 (Coremail) with SMTP id NeRpCgDHbNGYqNleDxPqQg--.155S2;
 Fri, 05 Jun 2020 10:06:40 +0800 (CST)
From: kai zhang <zhangkaiheb@126.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  5 Jun 2020 02:06:09 +0000
Message-Id: <20200605020609.1371993-1-zhangkaiheb@126.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CM-TRANSID: NeRpCgDHbNGYqNleDxPqQg--.155S2
X-Coremail-Antispam: 1Uf129KBjvdXoWrKw47GFyxCr1rCr1xArWrZrb_yoWDGrX_Cw
 4xG3s5GryDurWjqryjvF1fKry2934FyF1DJF1fKFyakF1UCrZxK3s7Cr10vFW0gFn8Xrs3
 u3WfJrZ0gr9YgjkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
 9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IU1loGJUUUUU==
X-Originating-IP: [221.221.151.179]
X-CM-SenderInfo: x2kd0wxndlxvbe6rjloofrz/1tbi8xE6-lpc4UmLkgAAsR
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_190650_334179_7B952A90 
X-CRM114-Status: UNSURE (   6.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [123.126.96.4 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [zhangkaiheb[at]126.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH] build: svn: remove the check for
 trust-server-cert option
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
Cc: kai zhang <zhangkaiheb@126.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

The command:(svn help export) does not display trust-server-cert
option by default even if it is supported with svn version 1.13.0.

Signed-off-by: kai zhang <zhangkaiheb@126.com>
---
 include/download.mk | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/include/download.mk b/include/download.mk
index 9c8ada052b..6c7b5f6371 100644
--- a/include/download.mk
+++ b/include/download.mk
@@ -167,9 +167,7 @@ define DownloadMethod/svn
 		cd $(TMP_DIR)/dl && \
 		rm -rf $(SUBDIR) && \
 		[ \! -d $(SUBDIR) ] && \
-		( svn help export | grep -q trust-server-cert && \
-		svn export --non-interactive --trust-server-cert -r$(VERSION) $(URL) $(SUBDIR) || \
-		svn export --non-interactive -r$(VERSION) $(URL) $(SUBDIR) ) && \
+		svn export --non-interactive --trust-server-cert -r$(VERSION) $(URL) $(SUBDIR) && \
 		echo "Packing checkout..." && \
 		export TAR_TIMESTAMP="" && \
 		$(call dl_tar_pack,$(TMP_DIR)/dl/$(FILE),$(SUBDIR)) && \
-- 
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
