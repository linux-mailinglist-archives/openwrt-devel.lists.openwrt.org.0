Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5270140311
	for <lists+openwrt-devel@lfdr.de>; Fri, 17 Jan 2020 05:44:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Q3PdmuTQMKsiLx+xyM2RBUgHB4XaWiZTbHQ9bLUGj1U=; b=ouROls8Ahlhiscinagz4Snp8Sy
	uhTHDDtg5Ovvmdc4XomK79JXpFVCVS9bPBI3IXEkk+KRSeadOEwa2JgSZax8gDM6RL6pZKPtIuoEX
	vmx4ZsMhaiqBUYPOGMS3NRpV6ZT69GsszZdcGq0wZ+zBAuJiSC73z8Ucc/dBZhQeBH3Jg6hrtpVSG
	R3yLA3MTtqinlpG0wyA8WwBWZRYIC1rrBKWBO852L7hy2HLjvty35oC0xd16fa0oWJCedI65zWJcF
	76PF6BE5SBCfacQGdEacfICaHYF5CyjoN5hd/LhajvrZvAUaWmVfRFfq6slo7Dg5GpuHadj1B4ccM
	4Wggws9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isJVB-0002ZS-0n; Fri, 17 Jan 2020 04:44:57 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isJUM-0001sJ-9b
 for openwrt-devel@lists.openwrt.org; Fri, 17 Jan 2020 04:44:07 +0000
Received: by mail-pj1-x1041.google.com with SMTP id kx11so2595999pjb.4
 for <openwrt-devel@lists.openwrt.org>; Thu, 16 Jan 2020 20:44:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=ygiPfqmyD5SgW0N78xK0t1swOu8YKUoe0Ux8NZj/dk8=;
 b=mUH1/L80fc8FApftkz7yhWJA60UliQDkrQWQC67bMYQX5mLLJanYsSciQ1ArfXXLHd
 jJtSYlHeCQNDulXcWigIHDf6npSGNvCupbaUBXovMhc8bkbi3hZ/56/Ki+LzpduEkem2
 HAebZPEmE/0exg5G4Oz86BKGqdJNzJl/OOj/sRVAJpmW0M1yQFGqlJ5ILSNVyiGBkUsH
 91XCo9NpSXgqb/jK0W9uxcyl+8OJBTuIOGHmPVRJ3aNQ1t7psO9bGfmShI5XUFORc4GS
 7WgOg5wOY7887TzeVhJo8+oIG4xuGKq77/H48g1LxOK3CF8jq1tdvVqFc+iT8Wa4vzzZ
 0XrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ygiPfqmyD5SgW0N78xK0t1swOu8YKUoe0Ux8NZj/dk8=;
 b=eigKsocqjLe0bSI//igkat0Cl1jKPVnTkGZkSvrLuGl8mA2D/2OAFzotkxDcD7O61O
 KEjbBq7tmWq2iNYMsGJFupAaaLAunUyGz0By0ru4lPO/ASv2Bl6Yrs5WtqxhYLjV2hHQ
 DOEIBF2DMPKPyih9pnqxk2qJVVMKvkWMVZ/dMUMR7edsIiAlICn8JJtXD5P673G877FV
 d4RqJprovKv8hItjwdJ9OUT9mwyXsB7zbk7451WNIt+MVudcWG/91AbWnJS4MuZektpW
 2QbPt/oNao65Z2XEHGQOlIjvoS4N++4F2ztpi2vJpTgR4aXwrHDRkJPt+gsxkR7DoEHV
 luxQ==
X-Gm-Message-State: APjAAAUDtpZ+OSi+xRilpkMgnaSTeWZ3LDXsS+1QobmVYfOEsnia9rIq
 Iv+fh+C3cl/muZyXycQ7+5BQz/f/
X-Google-Smtp-Source: APXvYqzTxDzGl2Nx+v47HMVRXkVypJOZtvjPqpZL5u//LHmD1dusjRulPiBHCSvBCsSxvIk8i/CvGg==
X-Received: by 2002:a17:902:502:: with SMTP id
 2mr35925525plf.151.1579236245012; 
 Thu, 16 Jan 2020 20:44:05 -0800 (PST)
Received: from localhost.localdomain ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id c184sm26790055pfa.39.2020.01.16.20.44.04
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Jan 2020 20:44:04 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 16 Jan 2020 20:43:56 -0800
Message-Id: <20200117044359.1923979-4-rosenp@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200117044359.1923979-1-rosenp@gmail.com>
References: <20200117044359.1923979-1-rosenp@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_204406_328385_04EA7A1F 
X-CRM114-Status: UNSURE (   9.37  )
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
Subject: [OpenWrt-Devel] [PATCH 4/7] base-files/functions.sh: remove useless
 cat
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

The cut command can take a file as an input.

https://github.com/koalaman/shellcheck/wiki/SC2002

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 package/base-files/files/lib/functions.sh | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/package/base-files/files/lib/functions.sh b/package/base-files/files/lib/functions.sh
index a8a4734413..b7a230f829 100755
--- a/package/base-files/files/lib/functions.sh
+++ b/package/base-files/files/lib/functions.sh
@@ -324,7 +324,7 @@ group_add_next() {
 		echo $gid
 		return
 	fi
-	gids=$(cat ${IPKG_INSTROOT}/etc/group | cut -d: -f3)
+	gids=$(cut -d: -f3 ${IPKG_INSTROOT}/etc/group)
 	gid=65536
 	while echo "$gids" | grep -q "^$gid$"; do
 	        gid=$((gid + 1))
@@ -352,7 +352,7 @@ user_add() {
 	local shell="${6:-/bin/false}"
 	local rc
 	[ -z "$uid" ] && {
-		uids=$(cat ${IPKG_INSTROOT}/etc/passwd | cut -d: -f3)
+		uids=$(cut -d: -f3 ${IPKG_INSTROOT}/etc/passwd)
 		uid=65536
 		while echo "$uids" | grep -q "^$uid$"; do
 		        uid=$((uid + 1))
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
