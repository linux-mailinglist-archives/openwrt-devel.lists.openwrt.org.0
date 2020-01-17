Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02CE114030F
	for <lists+openwrt-devel@lfdr.de>; Fri, 17 Jan 2020 05:44:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9quBK+0H19r1ODO8YTo3JizKm5+nQ+lTnWEJ/qslD+U=; b=DICeB6QyaN85Hf
	ffsu0LAcGejSWWFQDrwbjkLHe8nsppz9dAuB57KTddcW3RcibYxsZTD/X8f8qd4grqkw+NKy5RB2Q
	Rs0gwHaPQEuq1oCEOOzWhpkPQXibjVQycR6sBljww8OlwlRC8xELP70P8oVeaccAahxzCAVlLtNfV
	rp/gcdSWwZPwEHCanjDYGmXyswrZa1/JBrVarmqrrjfKKvEVO0IbZ63vykc+KOL2Hx9iRtGs4gAo1
	zmNLNynj35ZNi9HnPI/IjC7IlOWNJkZmWDtrbIe+OAsBqAnCEC8FvDovBhZpsFOFYBSrZ1hPEv6ZF
	g92fpv5iatf5yW47lDEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isJUX-0001sq-Kz; Fri, 17 Jan 2020 04:44:17 +0000
Received: from mail-pl1-x629.google.com ([2607:f8b0:4864:20::629])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isJUK-0001rf-S1
 for openwrt-devel@lists.openwrt.org; Fri, 17 Jan 2020 04:44:06 +0000
Received: by mail-pl1-x629.google.com with SMTP id ay11so9339636plb.0
 for <openwrt-devel@lists.openwrt.org>; Thu, 16 Jan 2020 20:44:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PDSUeUNW/XQRAaWRAewnt/nQXx53TwmsdfnT5DnqCuI=;
 b=qaJUKPtj6heTaxfhsOo9UhqcEPUdgqacMP9xtRxBzKUYf7/2PXHfzApUo0+aopOVtZ
 PnQiIfhOlsj1rIUxGQ4tayTFndOs9xehfOwzLSGNgx1+Dlo0uSt4s2vVCPFMVKRqxqje
 t9QMCnRACHiI0dKl5QuMlsmI1w1rQTu2lfBxcmmw7ihpYuvtO2eMjP+b9+BJvCaPrfMM
 jm5s7bFYZsvdCDGsjQj7hg8Bk72AUNPIIp35WeyXlZSOj3WMZzagXC0OaZGwHgeXDTNt
 eYfj97GvnvB7VpDgmUL/VozoCYI1vLi/kwJCvqlAl1tM3PjZCfqopcsktJDB0PLqDaZ1
 OnFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PDSUeUNW/XQRAaWRAewnt/nQXx53TwmsdfnT5DnqCuI=;
 b=cYjKvA0KNoBjIcAGCGCBTJD9Fjl2SBpMYaYSq+BYJI7m79lEdMogvjrny3nAtnbClU
 3EF/jhzXaav14piHYpNLMhrYUlWd2BzVOlLuVTZgXQg9C0pq5qS44/n5+RMY/c8Yyals
 ny21vXicdFD2xFHpLNSrpkT5sZqjTJ8jKvm7XF2T0QYkstktW9tUy+pFz7Ivk/TvdFJJ
 SfemPwYWk8IJaBkbXv+IIjniLQQscyldOmcT8iYx3CdggcVl9Jlac1yjv3rd7G8d6F52
 PtIZ/VPWh/jWtoiyce02yEFWLlJINQHWeM5gFTQ1yLmF83CZ2gdlRD6s2XiP1gr/gAUg
 5BDQ==
X-Gm-Message-State: APjAAAVnRWN5zB9BRNWNu/F4BaiN2QeOm3ao2zsJHB5X/5N3sH4E7C+9
 M7QR2Y6Q4abOlcX4676oqs8pF5GQ
X-Google-Smtp-Source: APXvYqwohHK27cZ4SCP5M61gCB8qH/p8TIfePKjPhQZThHLsOSu4+GaO1fg65MTr3EZSo/bXvZR/Qg==
X-Received: by 2002:a17:902:8eca:: with SMTP id
 x10mr36423169plo.248.1579236242091; 
 Thu, 16 Jan 2020 20:44:02 -0800 (PST)
Received: from localhost.localdomain ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id c184sm26790055pfa.39.2020.01.16.20.44.00
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Jan 2020 20:44:01 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 16 Jan 2020 20:43:53 -0800
Message-Id: <20200117044359.1923979-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_204404_909997_3F362E7A 
X-CRM114-Status: UNSURE (   9.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:629 listed in]
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
Subject: [OpenWrt-Devel] [PATCH 1/7] base-files/functions.sh: don't use $var
 in $(())
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

It's not needed. It can also lead to subtle bugs.

https://github.com/koalaman/shellcheck/wiki/Sc2004

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 package/base-files/files/lib/functions.sh | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/package/base-files/files/lib/functions.sh b/package/base-files/files/lib/functions.sh
index 81176431d1..b118c8368c 100755
--- a/package/base-files/files/lib/functions.sh
+++ b/package/base-files/files/lib/functions.sh
@@ -70,7 +70,7 @@ config () {
 	local cfgtype="$1"
 	local name="$2"
 
-	export ${NO_EXPORT:+-n} CONFIG_NUM_SECTIONS=$(($CONFIG_NUM_SECTIONS + 1))
+	export ${NO_EXPORT:+-n} CONFIG_NUM_SECTIONS=$((CONFIG_NUM_SECTIONS + 1))
 	name="${name:-cfg$CONFIG_NUM_SECTIONS}"
 	append CONFIG_SECTIONS "$name"
 	export ${NO_EXPORT:+-n} CONFIG_SECTION="$name"
@@ -93,7 +93,7 @@ list() {
 
 	config_get len "$CONFIG_SECTION" "${varname}_LENGTH" 0
 	[ $len = 0 ] && append CONFIG_LIST_STATE "${CONFIG_SECTION}_${varname}"
-	len=$(($len + 1))
+	len=$((len + 1))
 	config_set "$CONFIG_SECTION" "${varname}_ITEM$len" "$value"
 	config_set "$CONFIG_SECTION" "${varname}_LENGTH" "$len"
 	append "CONFIG_${CONFIG_SECTION}_${varname}" "$value" "$LIST_SEP"
@@ -162,7 +162,7 @@ config_list_foreach() {
 	while [ $c -le "$len" ]; do
 		config_get val "${section}" "${option}_ITEM$c"
 		eval "$function \"\$val\" \"\$@\""
-		c="$(($c + 1))"
+		c="$((c + 1))"
 	done
 }
 
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
