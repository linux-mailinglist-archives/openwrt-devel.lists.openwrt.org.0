Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67134DDE46
	for <lists+openwrt-devel@lfdr.de>; Sun, 20 Oct 2019 13:27:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ql7T8TC11dPkjTDSgd+7wkdDfF9DEB6Asr1M6qbtxv0=; b=HL1BQqoVvEH4Ih
	eGipcBY91rmWnm07aK9pLbItclsbjdlXoT7Gzpe+V5RMmBVBkR0MeT+b8NE+SyOsar7SKfLshR40S
	cxRAJdAkKKvV2bpFY02CgphT9whtzV8+6gAxw3OKPxN9n/fssn5E1sgm34y1Zp+6cCsfw5F6nv3tV
	UqFTMeqf57wGs4/VQdZaP3e3W9ETl1ftJ3jUvDEmrJz0vxRuSCdFQflNuLt0ro7lEMIwLX6vebWcm
	sWKrGs2SpvtwTKRfqZoMPPUeiYZMSEOACCIE9dlO0IRJX7KKOFQ8KvjcL2iY5KAXSIl6dUUFOZo23
	lT7YHZ0nKRzdhQZs4dVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iM9Ma-0005N4-O9; Sun, 20 Oct 2019 11:27:08 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iM9M9-0004uj-7e
 for openwrt-devel@lists.openwrt.org; Sun, 20 Oct 2019 11:26:42 +0000
Received: by mail-pg1-x541.google.com with SMTP id k20so5919851pgi.1
 for <openwrt-devel@lists.openwrt.org>; Sun, 20 Oct 2019 04:26:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ejY+PPDeC6zoFnTQsHsb6CWTJLNp3GAskceRPkj6Yh4=;
 b=Yd2eiZuLEM8Q2DK+Qlb1Tt5zGHKUkwc6ItiqLAjS1EfmXwTzD0qd5iqWzyE9w5hXzW
 3vcYhxT/oJTTAsrTHpGTqK6IEaKs+syKdywsgDCfqZh22ubvDQa32Iwox62SMW6G2PO6
 yA+CWBLVzjLZN4RMWOX6useBaEmN1MbI/mbJh7NHAQtrWG25AClcPCzrxAOUoGimFDBn
 9W6m4wlJ3A1azv69YKVMnKdWD0QBw2QGGTtLkagukutwkRwUueoFxqPsS3udJU2WeqIx
 akD8iZGMZYEJ0zDLjeFESrs+wbGlN1lrvCfGktJGcME21kdysgu9yogh8sPsCetcov/n
 RtQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ejY+PPDeC6zoFnTQsHsb6CWTJLNp3GAskceRPkj6Yh4=;
 b=Ixv5kOYRzSogvdzV2ioR1TavzqFds+0QozDIzBN9SjGnviThIF1cBdeq6sc3qBxlC4
 hpAIB38h3I9uf/Uj0piSinMD2sPwNyWyxmF+g5sQNTBHNYJ4DTN+2Po56YvuyAEl3cZX
 90Xw2tNs0oH16Dr2zVvb+MyotCkm548Wd+4m9YyHhhXdoLgtbncHmWp4l6YfJxqZr6HW
 ng6B6AggLgSzhFg3gTzmSpOUT/d0Xg5S6bQAkI5vRmjgwhXi9CebGqJmiuV2fKaNTej7
 iIS6lGsTz1JV9uR6RIbrxw1JZIT1qnwIaPuxdy1pYBq/s9BKDiFbhOWDRYE8QXYuYM68
 9Lnw==
X-Gm-Message-State: APjAAAVxGSmq9Q46LjNcwWFJSlQ7E/J4OECAoUVX+8BqAH9vK5mhYOg9
 DRM56UT6R9xAX3hseEmlkXg=
X-Google-Smtp-Source: APXvYqwcbB5+rcv7yukWQRW2u3UYwT5Dh2acXuHtoEvGr7+6bxxGZH13HnD8Jhkxp6VgAkUBSN+Mow==
X-Received: by 2002:a63:3c3:: with SMTP id 186mr6471525pgd.285.1571570800281; 
 Sun, 20 Oct 2019 04:26:40 -0700 (PDT)
Received: from titan.hq.cloud.yunionyun.com ([47.244.19.249])
 by smtp.gmail.com with ESMTPSA id q42sm13008983pja.16.2019.10.20.04.26.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 20 Oct 2019 04:26:39 -0700 (PDT)
From: Yousong Zhou <yszhou4tech@gmail.com>
To: jo@mein.io
Date: Sun, 20 Oct 2019 11:26:07 +0000
Message-Id: <20191020112608.129703-3-yszhou4tech@gmail.com>
In-Reply-To: <20191020112608.129703-1-yszhou4tech@gmail.com>
References: <20191020112608.129703-1-yszhou4tech@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191020_042641_293172_27A62132 
X-CRM114-Status: UNSURE (   8.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (yszhou4tech[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH rpcd 3/4] exec: alway call finish_cb to
 allow plugin to free up memory
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
Cc: Yousong Zhou <yszhou4tech@gmail.com>, openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Signed-off-by: Yousong Zhou <yszhou4tech@gmail.com>
---
 exec.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/exec.c b/exec.c
index f490ad7..1b05a91 100644
--- a/exec.c
+++ b/exec.c
@@ -131,13 +131,12 @@ rpc_exec_reply(struct rpc_exec_context *c, int rv)
 			rpc_ustream_to_blobmsg(&c->blob, &c->opipe.stream, "stdout");
 			rpc_ustream_to_blobmsg(&c->blob, &c->epipe.stream, "stderr");
 		}
-
-		if (c->finish_cb)
-			rv = c->finish_cb(&c->blob, c->stat, c->priv);
-
-		if (rv == UBUS_STATUS_OK)
-			ubus_send_reply(c->context, &c->request, c->blob.head);
 	}
+	if (c->finish_cb)
+		rv = c->finish_cb(&c->blob, c->stat, c->priv);
+
+	if (rv == UBUS_STATUS_OK)
+		ubus_send_reply(c->context, &c->request, c->blob.head);
 
 	ubus_complete_deferred_request(c->context, &c->request, rv);
 

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
