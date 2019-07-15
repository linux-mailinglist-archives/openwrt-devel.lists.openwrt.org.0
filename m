Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 584446998E
	for <lists+openwrt-devel@lfdr.de>; Mon, 15 Jul 2019 19:09:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ONs1Z5Tdoc+xDiIr7bO1fZqTVGefJG6jU7s9VfOms/k=; b=CVP0zkS0eWZ+Xc
	TIufher/EbvlqJZLqO+REcGzcyn0PFFXjcmxItHB55o1snNAYjDBA36q4Z8gZiT6z5Ya6qhWfM116
	SSIO10QUu8sbvfYVQIjVrysQ+LjuQHHjscwQiET36Rwm9rhTVLV/IHOBaJrCin5xiVPfHE2hp2LUo
	kv1zpQoZ0u+kaHLHO8Dog6fvjp7YzaG9KQ67pmxno9fC2WBiAw4SHwqcS+6TAYAbeKLq3mRVOm0tx
	SujPtVjubsz+5MQXcbfeKQtF5qJRlrYDpB2Ld4hc43/+PeEnhYFfic+rFBKAdIIBhXY7D+RWVSpj7
	etVhec+OeGyNjCZzbRfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn4TR-0008VL-6d; Mon, 15 Jul 2019 17:09:13 +0000
Received: from mail-qk1-x72b.google.com ([2607:f8b0:4864:20::72b])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn4Sk-0008JA-Rs
 for openwrt-devel@lists.openwrt.org; Mon, 15 Jul 2019 17:08:32 +0000
Received: by mail-qk1-x72b.google.com with SMTP id d15so12198829qkl.4
 for <openwrt-devel@lists.openwrt.org>; Mon, 15 Jul 2019 10:08:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=l6L0oYqMsfAcdibxJIqjkUfwyBb8rVlHSfg8iwigZ20=;
 b=vL1O5OdHPqjNIwlqLqkLQLBO3qlMBDBRreK2ZdLWRBIZ1ZwAuKAfoGUIQnRzs/pFMY
 0fVEl+D2NKYQgC6AM5Gm2jqiARhpaxgfUscRitxjFxDW+8F7u8FoIK7zOUCqUFSveIFb
 vnlkcw5RsJfNkQXdyJuOZXeJTTP4oy9Est/m1OT8Fy6m6pHwEU26tOY3LKCgwtyRqjBR
 yF/PS9xbG++lnVIIwCGZe30ZjQHOF7HnYwFnDfpUt3Eydd90UcP24CX6e9tpLtguxt24
 zpdNh7ga2qGFjPRBj/Pm8+aDnpm871Sh4i6dEgGcAU7rEku3BzEQF2Arow603Hjf9HAU
 JkJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=l6L0oYqMsfAcdibxJIqjkUfwyBb8rVlHSfg8iwigZ20=;
 b=Oh6dE89LGfqwks6ZxKkXhrU03e4NIkWeqgYLduNWsXvEcrjshwH/tbRjgRy0NnIR/L
 9ALAxwemEotzM2i62JfLfwz0b3RbjQtrBGd5qfRiC2o5/TuwCJve8+7xhoTkproiaK1p
 udZG2i796sZBIztj/n0RmGqn+g8caUi6rYeSjim7YtsB2UM33Muhylkh9lsAPJLmlLLR
 HVX1ElDVxEh1Q5wo+nacGpJE69eP7HzAmAPYejc6t3WlXaVTtIF8xNtwfIPg8duhfuB5
 Kso1bhERj3vUTb8Br2y08qL6MTvg41D2OXwsmN47u1tQCRZewlUSHqHF2XLHTqDZeFVG
 U/+Q==
X-Gm-Message-State: APjAAAWBSId5YP5tikLl5UuburjrXHNjZF/OmtZmRn0Uz4XalokcjDnE
 aLmX0cAppQCQC/qMKzzLWC5aIzE/
X-Google-Smtp-Source: APXvYqzLrkLEHPPmLcPOpFoocMy7yXVWuhfenmIPVQQ+DacBsXru4CiDaL7iXc0e0WuVt5wxZyGwQw==
X-Received: by 2002:ae9:e845:: with SMTP id a66mr17291163qkg.451.1563210509593; 
 Mon, 15 Jul 2019 10:08:29 -0700 (PDT)
Received: from gateway.troianet.com.br (ipv6.troianet.com.br.
 [2804:688:21:4::2])
 by smtp.gmail.com with ESMTPSA id z50sm9714081qtz.36.2019.07.15.10.08.28
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 15 Jul 2019 10:08:29 -0700 (PDT)
From: Eneas U de Queiroz <cotequeiroz@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 15 Jul 2019 14:07:59 -0300
Message-Id: <20190715170801.6785-2-cotequeiroz@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190715170801.6785-1-cotequeiroz@gmail.com>
References: <20190715170801.6785-1-cotequeiroz@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_100830_896232_B7C5CD39 
X-CRM114-Status: UNSURE (   4.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:72b listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (cotequeiroz[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH 1/2] libs/toolchain: remove eglibc remnant
 file
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
Cc: Eneas U de Queiroz <cotequeiroz@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This removes package/libs/toolchain/eglibc-files/etc/nsswitch.conf.

Signed-off-by: Eneas U de Queiroz <cotequeiroz@gmail.com>

diff --git a/package/libs/toolchain/eglibc-files/etc/nsswitch.conf b/package/libs/toolchain/eglibc-files/etc/nsswitch.conf
deleted file mode 100644
index 981c425da6..0000000000
--- a/package/libs/toolchain/eglibc-files/etc/nsswitch.conf
+++ /dev/null
@@ -1,13 +0,0 @@
-passwd:files
-shadow:files
-group:files
-hosts:dns files
-bootparams:files
-ethers:files
-netmasks:files
-networks:files
-protocols:files
-rpc:files
-services:files
-automount:files
-aliases:files

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
