Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3714FDDE47
	for <lists+openwrt-devel@lfdr.de>; Sun, 20 Oct 2019 13:27:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dBG0RxFr5kdsaYc5CVQCP92HMIkrkpVOs7BhNNolpew=; b=W//rShwMxk80F7
	kHZGpOhBVxR4p4tsARWLwbmW6HgqUVJ8FSuyOQNNYoZaicS/P7advmwmAG6LmaBcnd4Pt0G+Yth1g
	UhBR5I+6km7kFj/e0JCEemnjLE2CmhV9qeB6gIdWkYB9dQX73LSR9eoFFXtR5y18jQgvecBedtp+S
	TUMFnYTuSX6kBBuX3vaZFsXcq2IIazux2gDHNcjSRGu51l2T95tEdmak6noqgI9l9iQHq5FVtwiIT
	i2ZGPHt5oESfEHU67hZEg3h/0+7o9hYcVlFUOHsfomR+ZQ9/sQlUf9WLNSatS9uXAX3WuG/T9pCBd
	6Ar90z3QfNUXLZui/OKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iM9Ml-0005YY-FA; Sun, 20 Oct 2019 11:27:19 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iM9MB-0004xx-B9
 for openwrt-devel@lists.openwrt.org; Sun, 20 Oct 2019 11:26:44 +0000
Received: by mail-pg1-x544.google.com with SMTP id f14so5890837pgi.9
 for <openwrt-devel@lists.openwrt.org>; Sun, 20 Oct 2019 04:26:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Y+cd/mTDc3lc5WzC6mmSoTRtAxA7VUtk54DyNACU7r4=;
 b=k+1/JZvOgPs5R005e86OaMmf30BwF5Es0bnZiV+WhkSAFuZX6bv6vgXlcmnHYidC0m
 Yggkto0Bxx7n96t1/aBNXMLT5TJ+PPbNoRnmFeif6qTzjF6pgoxauK2/6HY0n8XHFXbY
 IcPxh3EE2t/Nb6Q8w9OizzyygLRijxuiLk+jIsW8Ulz3uLcMmAdJwnQLPUnlMQ3fbmal
 iU051u0lq5kx4d970iV+ssHU5pzndhiQubByP2wCoTLvTK4X5S6aspznfKLZS2uI0aQq
 NJ5QPYihj7F9xGfBKKxHsRIemtMsGxS7bsS1nLI1dM+brD/ztRJp+8u3eRjsIlUzhoGC
 KpQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Y+cd/mTDc3lc5WzC6mmSoTRtAxA7VUtk54DyNACU7r4=;
 b=nbI6QBEFJ6IGFKnq2U1bIYLHFHDHFwAnB7apbcJgrI0RFbgVLrIxz2sWTkLcQlsqLZ
 5X2eJsf8rVtHc+io3gOFfRwdu7CTZt2huvPFmF/P4sF2GNLgzEIHAjXS3qtJFGpee8a+
 hIG7sjTzGXt6XJ9x+U2WXmnQu5Nl7dE50sPQdaS2K4sYFHejWvLBLPkjuoyUzfn2gVuU
 Yx7nowW24Vb0TObmE7YWfHnOgzRmtwbppfOLY4BYFuitAQg0sTMX9yENb8dylGxP0x+I
 sjtaxAMoHObD/OdkHFOLNhYB5IRHV9m0YvbDB5Mg5NigVWT+a6fIc/Ijoxx8fO3/acca
 rfzg==
X-Gm-Message-State: APjAAAWq8q4bjA44GzbuxwWS9PpnWGyK5JytFEMMWM79ikrmwCHSNii+
 Y7NrrLV+hWuui/FXcXeJoHo=
X-Google-Smtp-Source: APXvYqytniWS81KUC8FUNOGYP00MZZwDl8qHXUY44uqwQQ0QAsKlrod4ZQ/T9o7I4m5EoVHq98my3Q==
X-Received: by 2002:a63:710:: with SMTP id 16mr20233360pgh.329.1571570802597; 
 Sun, 20 Oct 2019 04:26:42 -0700 (PDT)
Received: from titan.hq.cloud.yunionyun.com ([47.244.19.249])
 by smtp.gmail.com with ESMTPSA id q42sm13008983pja.16.2019.10.20.04.26.40
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 20 Oct 2019 04:26:41 -0700 (PDT)
From: Yousong Zhou <yszhou4tech@gmail.com>
To: jo@mein.io
Date: Sun, 20 Oct 2019 11:26:08 +0000
Message-Id: <20191020112608.129703-4-yszhou4tech@gmail.com>
In-Reply-To: <20191020112608.129703-1-yszhou4tech@gmail.com>
References: <20191020112608.129703-1-yszhou4tech@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191020_042643_453316_5D4B60D5 
X-CRM114-Status: UNSURE (   7.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
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
Subject: [OpenWrt-Devel] [PATCH rpcd 4/4] uci: free configs list memory on
 return
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
 uci.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/uci.c b/uci.c
index 1587a19..7667505 100644
--- a/uci.c
+++ b/uci.c
@@ -1284,6 +1284,7 @@ rpc_uci_changes(struct ubus_context *ctx, struct ubus_object *obj,
 
 		uci_unload(cursor, p);
 	}
+	free(configs);
 
 	blobmsg_close_table(&buf, c);
 
@@ -1388,6 +1389,7 @@ rpc_uci_configs(struct ubus_context *ctx, struct ubus_object *obj,
 
 	for (i = 0; configs[i]; i++)
 		blobmsg_add_string(&buf, NULL, configs[i]);
+	free(configs);
 
 	blobmsg_close_array(&buf, c);
 

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
