Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75546140313
	for <lists+openwrt-devel@lfdr.de>; Fri, 17 Jan 2020 05:45:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=I3A3947yA0rUdp/QsPKBtyQ1wk6XgYCZbcefJts17d4=; b=FIJW1j9fN5OsJhB+9es7D5rkeH
	c6walpui29+OuQkpl1XMg69+a22gdnP7cdXuo5Dr/iODbv8HqPDEhfzKp2eOWLhbp+onPPfy0PfAY
	USzleixy0uLdeidBFGfRqvC/ouVZ9YmPIW/s1V2Ju7BsajhnqGB2sP3lDwWzdWpg+AER/Y6J6+HjA
	4dXtNcb/a/O9cMabGbUEr+mJwvBDWqtmbJRLrRlyf7C9BTd5Oh81hyqWmIh0n74ZaK1AhUyM3Co5T
	KcGx7YdV5QhqOgLc4wLKQZs201Ym+EAYl5IT/JFTJcW4y3+ALDvUPU+9fw4pt6j5TpLN4awL/Q6nV
	CeILNcAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isJVU-0002nv-TC; Fri, 17 Jan 2020 04:45:16 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isJUN-0001sd-6v
 for openwrt-devel@lists.openwrt.org; Fri, 17 Jan 2020 04:44:08 +0000
Received: by mail-pf1-x442.google.com with SMTP id z16so11352109pfk.0
 for <openwrt-devel@lists.openwrt.org>; Thu, 16 Jan 2020 20:44:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=X+1UR0PSjge5FeWj/SOgTrHkH17YtQVMiahjDQcda6s=;
 b=IDQuO9af9VbOD4IXY9QN3CfJJBfHpPEyMrcGHkDUE/I42M9cZP+5FTqXJL1z3lzewV
 Uck5dLp4hMGm5JlyukwAAXOA+KvB2V6eLoy22hc9FXWObzDlKn8knlNuuYfihO12cZRI
 CkM+AmOO6IvWt2tt77b+DVXFJoWdghSaS1FuMm//E0LdLMtL1SSmt2PrhbKJ1a/coLjx
 HlVgFYxg/EHMICQBC26nEiImxR/P+022ovxRKXGSYG6cDlRtuwnfHHSth9icMZH0ijqD
 kFPPvbNFXyWmmcTse2mA8BGbhSI8c29mJ4URmbBnzX7xYx8hZOc960kX+jBUtu0lSHNB
 LAVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=X+1UR0PSjge5FeWj/SOgTrHkH17YtQVMiahjDQcda6s=;
 b=TUh32bv0x7SSbxHfi/VljzulxT9VHBUtkxn03fD48l39d0ALR7eNsqoL4LGCvl97Ar
 o5C9LdC+i6nTibd7k9f5FwEPbLkFXO7gZJS7TDdDL9ziWIUMDv9nEs6UL7fjWtsEaxQT
 XigbObTqIjlSptPj3Wwinc744+w+OnueAgOdut8BnnX3Q1GO5tThQ9gnSlEWW0vnSOqx
 HbRKERnr4lFrn2Dn9DJlaCdi7ujHWF8syC3kHvz2ZWpb648rFQbqnp9QvyNTAl46hOnm
 Zy0O3uzvNIvzsxlFTf/MdbZWAFTh8QEuVBx0Dw4jERynn+klwHMMk3D6giTvuQ0P5tQ4
 VYPg==
X-Gm-Message-State: APjAAAVhKKG6Mi9iNZay6TxMF4Mlyh1srae67eRxEEOvmqrO6o/B87FG
 er3DIEhgud9PgHzzbkfsSPlcxTPA
X-Google-Smtp-Source: APXvYqz0Lmtfoyw9dA3PkbHWM3AEvhqe7xaWKFLE/6cY5asC69AS5GZzVo/Ip8uKsaeeZhl/U822iw==
X-Received: by 2002:a62:5547:: with SMTP id j68mr1166223pfb.6.1579236246229;
 Thu, 16 Jan 2020 20:44:06 -0800 (PST)
Received: from localhost.localdomain ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id c184sm26790055pfa.39.2020.01.16.20.44.05
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Jan 2020 20:44:05 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 16 Jan 2020 20:43:57 -0800
Message-Id: <20200117044359.1923979-5-rosenp@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200117044359.1923979-1-rosenp@gmail.com>
References: <20200117044359.1923979-1-rosenp@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_204407_253099_D6715E27 
X-CRM114-Status: UNSURE (   9.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH 5/7] base-files/functions.sh: use && instead
 of -a
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

-a is not well defined.

https://github.com/koalaman/shellcheck/wiki/SC2166

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 package/base-files/files/lib/functions.sh | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/package/base-files/files/lib/functions.sh b/package/base-files/files/lib/functions.sh
index b7a230f829..82a2169260 100755
--- a/package/base-files/files/lib/functions.sh
+++ b/package/base-files/files/lib/functions.sh
@@ -143,7 +143,7 @@ config_foreach() {
 	[ -z "$CONFIG_SECTIONS" ] && return 0
 	for section in ${CONFIG_SECTIONS}; do
 		config_get cfgtype "$section" TYPE
-		[ -n "$___type" -a "x$cfgtype" != "x$___type" ] && continue
+		[ -n "$___type" ] && [ "x$cfgtype" != "x$___type" ] && continue
 		eval "$___function \"\$section\" \"\$@\""
 	done
 }
@@ -374,4 +374,4 @@ board_name() {
 	[ -e /tmp/sysinfo/board_name ] && cat /tmp/sysinfo/board_name || echo "generic"
 }
 
-[ -z "$IPKG_INSTROOT" -a -f /lib/config/uci.sh ] && . /lib/config/uci.sh
+[ -z "$IPKG_INSTROOT" ] && [ -f /lib/config/uci.sh ] && . /lib/config/uci.sh
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
