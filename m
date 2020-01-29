Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 918BE14C785
	for <lists+openwrt-devel@lfdr.de>; Wed, 29 Jan 2020 09:30:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=edJdeoSyhyfJY9zxlpS7nm6UqMUwY5Tu94V78Xn7dJM=; b=QJD8n+ovaFat1m
	l69iKHo+/FjxnuBUo8Moa6BLBCqgo8xT05dlE7hbPWBEfiuDtNnUG6426XTLXXuM9F9Rh8GbKG2FM
	Joi0VOC1otFq1nJE9bBenDNPrEO4kC4OQBKCXLR9QSRlsa6jzWOilwjB3g8cz5rXjm23GOkC4lOoR
	apf3chxjhicMNtukQESW/KlicFSkvYYKk6WJZMMZnQOsVMHlY8yzl3tSy//DYfTQOEscckcdypvT3
	yz9To0JVZuBT0tw9rPNA9p7uruHBEU3/5ClP5DxwIcGbXBnXvymL/onJb8fSnmws3GEPfMLpKhn2o
	MPhkd/AIFnGyle1XeBIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwik1-0004Ma-OB; Wed, 29 Jan 2020 08:30:29 +0000
Received: from lmr1.uibk.ac.at ([138.232.1.142] helo=smtp.uibk.ac.at)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwiju-0004Lx-W1
 for openwrt-devel@lists.openwrt.org; Wed, 29 Jan 2020 08:30:24 +0000
Received: from localhost.localdomain (ip5f5ac5ee.dynamic.kabel-deutschland.de
 [95.90.197.238]) (authenticated bits=0)
 by smtp.uibk.ac.at (8.14.4/8.14.4/F1) with ESMTP id 00T8Twv6005167
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
 Wed, 29 Jan 2020 09:30:14 +0100
From: Peter Stadler <peter.stadler@student.uibk.ac.at>
To: openwrt-devel@lists.openwrt.org
Date: Wed, 29 Jan 2020 09:29:50 +0100
Message-Id: <20200129082950.239999-1-peter.stadler@student.uibk.ac.at>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-Spam-Score: () -15.0 ALL_TRUSTED,RCV_SMTP_AUTH,RCV_SMTP_UIBK
X-Scanned-By: MIMEDefang 2.84 at uibk.ac.at
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_003023_362518_3B342D9B 
X-CRM114-Status: UNSURE (   8.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [138.232.1.142 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [138.232.1.142 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
Subject: [OpenWrt-Devel] [PATCH] libubox: use const *attr in getters
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
Cc: Peter Stadler <peter.stadler@student.uibk.ac.at>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Change the signature of the following get-functions to accept
the `struct blob_attr *attr` as `const`:
  - blobmsg_get_u8
  - blobmsg_get_bool
  - blobmsg_get_u16
  - blobmsg_get_u32
  - blobmsg_get_u64
  - blobmsg_get_double
  - blobmsg_get_string
This allows to get the values instead of calling blobmsg_data.

Signed-off-by: Peter Stadler <peter.stadler@student.uibk.ac.at>
---
 blobmsg.h | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/blobmsg.h b/blobmsg.h
index be3c7ee..a76bc87 100644
--- a/blobmsg.h
+++ b/blobmsg.h
@@ -260,27 +260,27 @@ static inline int blobmsg_buf_init(struct blob_buf *buf)
 	return blob_buf_init(buf, BLOBMSG_TYPE_TABLE);
 }
 
-static inline uint8_t blobmsg_get_u8(struct blob_attr *attr)
+static inline uint8_t blobmsg_get_u8(const struct blob_attr *attr)
 {
 	return *(uint8_t *) blobmsg_data(attr);
 }
 
-static inline bool blobmsg_get_bool(struct blob_attr *attr)
+static inline bool blobmsg_get_bool(const struct blob_attr *attr)
 {
 	return *(uint8_t *) blobmsg_data(attr);
 }
 
-static inline uint16_t blobmsg_get_u16(struct blob_attr *attr)
+static inline uint16_t blobmsg_get_u16(const struct blob_attr *attr)
 {
 	return be16_to_cpu(*(uint16_t *) blobmsg_data(attr));
 }
 
-static inline uint32_t blobmsg_get_u32(struct blob_attr *attr)
+static inline uint32_t blobmsg_get_u32(const struct blob_attr *attr)
 {
 	return be32_to_cpu(*(uint32_t *) blobmsg_data(attr));
 }
 
-static inline uint64_t blobmsg_get_u64(struct blob_attr *attr)
+static inline uint64_t blobmsg_get_u64(const struct blob_attr *attr)
 {
 	uint32_t *ptr = (uint32_t *) blobmsg_data(attr);
 	uint64_t tmp = ((uint64_t) be32_to_cpu(ptr[0])) << 32;
@@ -288,7 +288,7 @@ static inline uint64_t blobmsg_get_u64(struct blob_attr *attr)
 	return tmp;
 }
 
-static inline double blobmsg_get_double(struct blob_attr *attr)
+static inline double blobmsg_get_double(const struct blob_attr *attr)
 {
 	union {
 		double d;
@@ -298,7 +298,7 @@ static inline double blobmsg_get_double(struct blob_attr *attr)
 	return v.d;
 }
 
-static inline char *blobmsg_get_string(struct blob_attr *attr)
+static inline char *blobmsg_get_string(const struct blob_attr *attr)
 {
 	if (!attr)
 		return NULL;
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
