Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A5DA140312
	for <lists+openwrt-devel@lfdr.de>; Fri, 17 Jan 2020 05:44:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=hhWbJlY+ciiYRMjK9k4PN4nVkeBMve6G5ji769xchB0=; b=S3RozNQusajJsGoq0Im6P8mPyM
	u6vkXUY9a3BAUf5jjZ/PIWqJIoGRrpdFFec2VP3iCQVYBDOOdbO3pDUFmbC18LZdBd/AXzybx8rvv
	tiy5rclrbRlt5+CX0apaQwPB9lHcvVQlfjS/HdBZGHYsx3Aikg5Gd3bpJHrfA8MB9W4k3umK3UqHe
	qi6q8dszAvIXQ+K36P5PaUacRMfQC5M2/nd9NA2xblc7+2VQAwM1SS71kqObjfb9+HqwinQpj2O3O
	3JTPVzXJWvnjd/wuc3yPqK9+7iOFQ30v8dtB1wlqRuxMqHETM9jOiVSAK3I9FYbclP15S01BvHFXC
	DENRnzFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isJV0-0002Jb-TY; Fri, 17 Jan 2020 04:44:46 +0000
Received: from mail-pj1-x1034.google.com ([2607:f8b0:4864:20::1034])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isJUL-0001ri-7A
 for openwrt-devel@lists.openwrt.org; Fri, 17 Jan 2020 04:44:07 +0000
Received: by mail-pj1-x1034.google.com with SMTP id s7so2714555pjc.0
 for <openwrt-devel@lists.openwrt.org>; Thu, 16 Jan 2020 20:44:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=JA86Pdnz5zZO80HML2tNfIKeiL+ed8vfSAtLvHCPqpk=;
 b=r4tv6QaCw6aziXhEcANhDezbkbx0Mr9GcQemCk+t1YulvcLq3zrawuTUr3IpXI/pOG
 k6hgeTvdxe8E3ih+BdsIplBSB0bb7+jAAY4IxMArX98AMdJsNpUUBCa22dM9VPKMkP2q
 GwuBVrJfw9WFwim2NUqkIj2gBiM6QX/ipvL/a5skrWgDn/1WCE6mTaP1k0HN19oS05w1
 3X1ry7pc20MUTu+yX5STXzVG+MdkbdPo9FhGmw06UD/2caYYeTp4XjNQTBlcyrfFoo55
 rQlBlQkxxuv30nTs7F8hHCSMZlqzIi9FX00UdZhCNwlyIA6/L7ONcSQeclVgqpPQkqQW
 nzvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=JA86Pdnz5zZO80HML2tNfIKeiL+ed8vfSAtLvHCPqpk=;
 b=EqiagoGGf4mpbZ0jXTEr/AGQ0FxVEBaroi90N9kV0UY0Rx+TAdVsVrz5v2GEU8K/AF
 TG5bskMeFvAdzjBGKrDpVIr0mR+k1HYmR9GRCzZSWSGbHkwHOymYcRjAr/CSQD68uDw0
 CPQfS1IdCBvOC4j+Poa+6wMNFRvd0fOQglbcEog05TJtOJOrDw+N3NyGhCPPS7ih+6ME
 XufvFVt53daXdaK6x5/FRHK74/Lv3YVFKw2JoINT6FQQ+L4GU3MA4qVDAnJgVsKjMMRR
 fmVVhnKV6LC7WoIRirgcRNfKE80+gfy0gcqFBH2i9IyF5qlaLZmno5URmqHM67CE/Xzg
 zNQQ==
X-Gm-Message-State: APjAAAW2y2GT5S1d/lDAWx0QXeEShI9OHIZX8t9lx5Mu9mDn4MXL3eeB
 QA9dbQDBAh09x6Wuz4JTXdamywJ2
X-Google-Smtp-Source: APXvYqworxbAU21KeExJgdwAo3GKxOyw009RDwt/7Yk1cQbiKXsdyIyVUDcWqNd8MPZjkkxHPZTImQ==
X-Received: by 2002:a17:90a:e646:: with SMTP id
 ep6mr3596782pjb.58.1579236243998; 
 Thu, 16 Jan 2020 20:44:03 -0800 (PST)
Received: from localhost.localdomain ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id c184sm26790055pfa.39.2020.01.16.20.44.03
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Jan 2020 20:44:03 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 16 Jan 2020 20:43:55 -0800
Message-Id: <20200117044359.1923979-3-rosenp@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200117044359.1923979-1-rosenp@gmail.com>
References: <20200117044359.1923979-1-rosenp@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_204405_252562_79BAB828 
X-CRM114-Status: UNSURE (   8.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Subject: [OpenWrt-Devel] [PATCH 3/7] base-files/functions.sh: use command -v
 instead of $(which)
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

$(which) must be executed. command -v is a shell builtin.

https://github.com/koalaman/shellcheck/wiki/SC2230

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 package/base-files/files/lib/functions.sh | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/package/base-files/files/lib/functions.sh b/package/base-files/files/lib/functions.sh
index 0e94162a1a..a8a4734413 100755
--- a/package/base-files/files/lib/functions.sh
+++ b/package/base-files/files/lib/functions.sh
@@ -176,7 +176,7 @@ default_prerm() {
 		ret=$?
 	fi
 
-	local shell="$(which bash)"
+	local shell="command -v bash"
 	for i in $(grep -s "^/etc/init.d/" "$root/usr/lib/opkg/info/${pkgname}.list"); do
 		if [ -n "$root" ]; then
 			${shell:-/bin/sh} "$root/etc/rc.common" "$root$i" disable
@@ -265,7 +265,7 @@ default_postinst() {
 		rm -f /tmp/luci-indexcache
 	fi
 
-	local shell="$(which bash)"
+	local shell="command -v bash"
 	for i in $(grep -s "^/etc/init.d/" "$root$filelist"); do
 		if [ -n "$root" ]; then
 			${shell:-/bin/sh} "$root/etc/rc.common" "$root$i" enable
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
