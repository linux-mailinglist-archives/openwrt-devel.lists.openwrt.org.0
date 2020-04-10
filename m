Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D1121A3E08
	for <lists+openwrt-devel@lfdr.de>; Fri, 10 Apr 2020 04:11:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=mZ2dbZHbVkulrq/S1/akCZW94JjF0cHuRW2oKq+nQKo=; b=CqTYIbpXikNEtFUByKDchnhxOw
	ftk2yZ49U8pQgR25e1HWdusCgGEyrLHrdYcnuMtAH7907MIMLDr5wd23qZ3dL0ZAhTrvZBwCxdIPE
	ugaAUv5CW5vwWGailb53sT2KjigZ9gnVTg5uFNE2mUkW5CwkzmTNumzGG3844RyyOnqbRavZ2VZxQ
	Nu3FZJlzxvrQ3j5dPl+JFjbCFy0wqt0kv2j09Kh7vQp1bBj8QIQzLEMm12MClDnYFuowgKRFavQVW
	SDcZBv0HcQ/bs5fZ+ucKYxfameChnRHWyrzsSGqwPXlZ5ZvFSaJ3bQzDOGkwBJtcmfmQFwdDxIlP6
	Cl7EmvrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMj8l-0002sj-PY; Fri, 10 Apr 2020 02:11:31 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMj8V-0002kT-4X
 for openwrt-devel@lists.openwrt.org; Fri, 10 Apr 2020 02:11:16 +0000
Received: by mail-pg1-x541.google.com with SMTP id k191so364270pgc.13
 for <openwrt-devel@lists.openwrt.org>; Thu, 09 Apr 2020 19:11:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=xIvZLMP6vJMyWVTeGTJp3apXVxBBSPMFgG8ZMJMs5nM=;
 b=jkA96IsPDljHIblYstDtrb+KLyDZPw8Xhv96/bYEQONyb60qlQ3Qm3Nc3MsFkpXl9l
 U3IlSKNVWgsavNhwb60A4ukv5vZA4s5PJaGfzK9VUgL85aosGlugg5RabcWrmKzVdPVm
 qe1Rm2FF4GSGYM90EbRKRz0kHXwYdkFCVYmKri8k6ynFr0BVFmWdD9dKJzsXj27kFbUN
 VddWVFiOzVPcRfgGC93AF2zBzrSANyRzlz6vVEPtZWkyUf4eub6B1LsjXd6tUCS3k7bL
 nXCQNtngnlmVdSsc28QNsGHT2l6rnJ6fyE43AAMQQ2ugwMBxU1OnklU2LXDMDtHgFVXu
 HQIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=xIvZLMP6vJMyWVTeGTJp3apXVxBBSPMFgG8ZMJMs5nM=;
 b=o2E/oUUZ5CcrV3+EEQzGx3GJUHq1jIu9f+xNFaZ77c4rm2sOBNl4dFVtgJ/zpBbC62
 su0/ElaKAVFGhW39Ag35V/HZMUSPdbD+hq1Re6YX2Y/eQUpCwAb24HiPV7HNVATM+GQV
 N7XLK/i8RqUVft0YpkU3ncpcTPOp1RkRnnraiUqG8DtlCbqp+scvmAMm23AKk23GQNNw
 vZaWK+xQlv3nxMBETJ6ikB9rpGhCMfkBP8Txz+YVPyXhD7W+Oc1VGBjey0iiKscSLITV
 haZn1WcX46/bj/2QlsodsgSFiafAGlQr47qOQdw6a/6Cq58gXO9SWMr6mU7fLRyn3qoC
 lFFg==
X-Gm-Message-State: AGi0PuY1CsYPmJ1QzeXrMiNYYY0kBjRtg2uSilHO9PWOoy78Nmkq497F
 tdicqsNKonh0oS0hib2b71NHui6J
X-Google-Smtp-Source: APiQypKf6g7uMXQIm2C8UeXG0mMdj3msUD8QqdC1h6iDiDLR8mjIfGXnBy+f2sA24VWi2se9Jv0U0g==
X-Received: by 2002:a62:2684:: with SMTP id m126mr2605263pfm.153.1586484672839; 
 Thu, 09 Apr 2020 19:11:12 -0700 (PDT)
Received: from mangix-trapnet.lan (astound-69-42-19-227.ca.astound.net.
 [69.42.19.227])
 by smtp.gmail.com with ESMTPSA id f64sm419666pfb.72.2020.04.09.19.11.12
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Apr 2020 19:11:12 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu,  9 Apr 2020 19:11:10 -0700
Message-Id: <20200410021110.1594846-2-rosenp@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200410021110.1594846-1-rosenp@gmail.com>
References: <20200410021110.1594846-1-rosenp@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_191115_171398_1F4B136E 
X-CRM114-Status: UNSURE (   8.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rosenp[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [19.07][PATCH 2/2] wireguard: bump to 1.0.20200401
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

From: "Jason A. Donenfeld" <Jason@zx2c4.com>

Recent backports to 5.5 and 5.4 broke our compat layer. This release is
to keep things running with the latest upstream stable kernels.

Signed-off-by: Jason A. Donenfeld <Jason@zx2c4.com>
---
 package/network/services/wireguard/Makefile | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/package/network/services/wireguard/Makefile b/package/network/services/wireguard/Makefile
index f90209fbef..30e6af5c73 100644
--- a/package/network/services/wireguard/Makefile
+++ b/package/network/services/wireguard/Makefile
@@ -11,12 +11,12 @@ include $(INCLUDE_DIR)/kernel.mk
 
 PKG_NAME:=wireguard
 
-PKG_VERSION:=0.0.20191226
+PKG_VERSION:=1.0.20200401
 PKG_RELEASE:=1
 
 PKG_SOURCE:=wireguard-linux-compat-$(PKG_VERSION).tar.xz
 PKG_SOURCE_URL:=https://git.zx2c4.com/wireguard-linux-compat/snapshot/
-PKG_HASH:=7c0e576459c6337bcdea692bdbec561719a15da207dc739e0e3e60ff821a5491
+PKG_HASH:=7dfb4a8315e1d6ae406ff32d01c496175df558dd65968a19e5222d02c7cfb77a
 
 PKG_LICENSE:=GPL-2.0
 PKG_LICENSE_FILES:=COPYING
-- 
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
