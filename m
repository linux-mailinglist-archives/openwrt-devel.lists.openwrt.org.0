Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3447140310
	for <lists+openwrt-devel@lfdr.de>; Fri, 17 Jan 2020 05:44:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=DPs3U/SbfANXbhFT5n0SzjzW5SYvHzwFQq2dJs9Zow0=; b=WIIpKWxE1TzFTusmBsVEPz20DL
	DwL2V2g4r6mkszcgctCsTrL/bl9pkoEQpbXFu3clm/nBjkNZgwrCL2SFc6Gxf2Rb4mN+3wtYRM0KK
	gtb2wlpMpsGx1qPEUg5ZT88lwciEmf6bx/ZszbSJVWml9V2KO4AFI5mnj9qFbXUVqYJwcr9mbl8ln
	up0P0GmbvyOgKcbeXGeC9+C1GuJZ2N3U8HxNuaMxjYsG1rGsj3idpxmUCqot2bsHZriWWBqtkLLYV
	25ERGZMGWcCR29/aKtG/d38qiszx3kJ6+RuXna/wgLo+RnhzPGRhIE/eeTb3QeoJzyYwLiZXwO+6q
	PHGuOfuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isJUk-00023s-U5; Fri, 17 Jan 2020 04:44:30 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isJUK-0001rg-UC
 for openwrt-devel@lists.openwrt.org; Fri, 17 Jan 2020 04:44:07 +0000
Received: by mail-pj1-x1042.google.com with SMTP id n59so2711689pjb.1
 for <openwrt-devel@lists.openwrt.org>; Thu, 16 Jan 2020 20:44:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=vLWMMc0Myp1d6/fSvMy2PFrXhkGL6NKhshoCuYWrex0=;
 b=Wk1sKqdK4puvYrTHAcHb3X4NqTh/PLlhe/iNsN/CsEn9YJPgkqB6c+M5Fika3/mmhv
 ioT2ysQeCmmfC1K4KI3ZdPWXpNXmMWAV9k5yokOwdlP+JVr1+ASQ0o/102683D0TglGs
 GnfBLBSWI8SA1fVCTWQNnTePvsQMs3sAhcPQwpOTWJssZEaNNzl7/ud5tYi+6ZGkZMZd
 GloFrtpywa+UAv6kInMh+G0/i7ZeGNqB70RKdtj7WFcieIozrUWSEGUkIiKyDjEX/7vZ
 2lW/1m3sOtswhU0WNa+deBBHZ/aPjiVbd6v8rzRpPQoKBxiF0FlDzmvTVBNbNEIKkXEp
 ZyVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=vLWMMc0Myp1d6/fSvMy2PFrXhkGL6NKhshoCuYWrex0=;
 b=VFvSFSOiDI/koZKT7qceWdprn4QGloUNRFAJdDwSU73B8L0MbFc/D4ZTodhaRjM1ZZ
 zoNWMvXtb5mStn/Yq3olFwxYswuQa4QmAgibmhMeQkyR4RHhnbZgn/R5X2Tgr6Vr5Yaw
 Vh0F1iAMQVqoTQ1pIdXOS3znaLRUY42H0VSQYMmIhDJZ1jTjWiH0UFh8r6pl8u/XzWAL
 UJAsHcQb0R2uVkTlXeSolsBTTSyTW4G+7e0H7grDI9ng2/B+lQeilmeHVih542CuTBcz
 Pp/Qol2YxOLOQ1r5TszTJReEz6Af0RvYHrnxF9QzIDEe3FTG/tSvpFaJ7u52G34BNQZ9
 wuGQ==
X-Gm-Message-State: APjAAAVZam41pz9rau8MtZHwTFul+9GipLNS5w6nX+lP2Ipg5Thqp+Rx
 2nTZ+w/kP4hA1dG6/eP7EHn15tbt
X-Google-Smtp-Source: APXvYqw9e1NpBTnCsNVwtAMwVKS+FRwZSyxKye4x0IMPv+ZJ2dbRwzQWvMNCKeghK9VLXzksLJoOKQ==
X-Received: by 2002:a17:902:242:: with SMTP id
 60mr2430247plc.240.1579236243096; 
 Thu, 16 Jan 2020 20:44:03 -0800 (PST)
Received: from localhost.localdomain ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id c184sm26790055pfa.39.2020.01.16.20.44.02
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Jan 2020 20:44:02 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 16 Jan 2020 20:43:54 -0800
Message-Id: <20200117044359.1923979-2-rosenp@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200117044359.1923979-1-rosenp@gmail.com>
References: <20200117044359.1923979-1-rosenp@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_204404_969464_C33A7DDC 
X-CRM114-Status: GOOD (  10.19  )
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
Subject: [OpenWrt-Devel] [PATCH 2/7] base-files/functions.sh: use grep -q
 instead of []
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

It's cleaner and faster as it does not need to do extra work.

Also removed $() to avoid executing the output. The shell can handle it.

https://github.com/koalaman/shellcheck/wiki/SC2143

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 package/base-files/files/lib/functions.sh | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/package/base-files/files/lib/functions.sh b/package/base-files/files/lib/functions.sh
index b118c8368c..0e94162a1a 100755
--- a/package/base-files/files/lib/functions.sh
+++ b/package/base-files/files/lib/functions.sh
@@ -326,7 +326,7 @@ group_add_next() {
 	fi
 	gids=$(cat ${IPKG_INSTROOT}/etc/group | cut -d: -f3)
 	gid=65536
-	while [ -n "$(echo "$gids" | grep "^$gid$")" ] ; do
+	while echo "$gids" | grep -q "^$gid$"; do
 	        gid=$((gid + 1))
 	done
 	group_add $1 $gid
@@ -336,8 +336,8 @@ group_add_next() {
 group_add_user() {
 	local grp delim=","
 	grp=$(grep -s "^${1}:" ${IPKG_INSTROOT}/etc/group)
-	[ -z "$(echo $grp | cut -d: -f4 | grep $2)" ] || return
-	[ -n "$(echo $grp | grep ":$")" ] && delim=""
+	echo "$grp" | cut -d: -f4 | grep -q $2 || return
+	echo "$grp" | grep -q ":$" || delim=""
 	[ -n "$IPKG_INSTROOT" ] || lock /var/lock/passwd
 	sed -i "s/$grp/$grp$delim$2/g" ${IPKG_INSTROOT}/etc/group
 	[ -n "$IPKG_INSTROOT" ] || lock -u /var/lock/passwd
@@ -354,7 +354,7 @@ user_add() {
 	[ -z "$uid" ] && {
 		uids=$(cat ${IPKG_INSTROOT}/etc/passwd | cut -d: -f3)
 		uid=65536
-		while [ -n "$(echo "$uids" | grep "^$uid$")" ] ; do
+		while echo "$uids" | grep -q "^$uid$"; do
 		        uid=$((uid + 1))
 		done
 	}
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
