Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0533C1A8F35
	for <lists+openwrt-devel@lfdr.de>; Wed, 15 Apr 2020 01:37:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9J8+BrGmZrP0NP60l6JBdWQ95tUhK/0kHTsFvyT8MIU=; b=HNDLJISEB9VOtM
	eaXErUsJau0R33+P3uBEYpnUBfO/Pu+xhaVCCQn9CATUBV9PYRMv8h7Pu+6/wg1zw/37CWTd5qNMQ
	Q1ivYtzK3yzn+HOH2YaLjydTwwSCEIFkJ4pwLZWybjzYsRlf5lx6++6rtIso7XpVst26hPEfBvQWy
	6owLcbK3UKs+2Ls2C2nARg1x3sDojzZRyh47XFJARejr6KbHrou0GvgEvRVXltrU2RRtb+DJ8HPAj
	5TMKcR9d20K0vlyP3Eqb6nHWERjNzU9A5kgkfJ+D/dgbzuU4ZAWaALrDf2arAEk+Vh+541J/K15rs
	iBT8a8yMmqAjubusz6LA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOV7c-0001Yb-Di; Tue, 14 Apr 2020 23:37:40 +0000
Received: from mail-pj1-x102a.google.com ([2607:f8b0:4864:20::102a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOV7U-0001YF-Qj
 for openwrt-devel@lists.openwrt.org; Tue, 14 Apr 2020 23:37:34 +0000
Received: by mail-pj1-x102a.google.com with SMTP id o1so5059859pjs.4
 for <openwrt-devel@lists.openwrt.org>; Tue, 14 Apr 2020 16:37:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=JyKnTd8J9e0G+GqkbuZ0fwpIMMfKejn50vsZ6GHkrMA=;
 b=WnDrDLGRwwze3ZQ+bBE1HIjOjpNWgNpCzljluNXkSeutK03SZ69vMWcJMpVQhJdyy2
 vYhX2m8oSGryL2YegfclylUZnUng2ncmVBi3LRFSXptk51ZOyhGpScKOt5AUS2hD8mS9
 rS5CvfgCMtLqWOXBlobTyTVLSdlTfxevtO0qrFjLrpdR2LgGbLOPBmjZ+V0hzHQvWG1p
 Rcd4cUWtr2/j+UsAw5EfAY595dcn4OugshxQD47YSuXfmwePQgnUroff8gfk9qJJxKAE
 DkLvqhOhRQauaL5i7dpl7SolJoAzdXye2RsLvw4dUlxjiSe+YdqlT20qQkOcOiaCJYYD
 t8rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=JyKnTd8J9e0G+GqkbuZ0fwpIMMfKejn50vsZ6GHkrMA=;
 b=oE7RmQrF4DmHeksOcExxpV+0mK/8Myg0e76dwA5QGD+NKjQytvSkrnXYexJFU4uNId
 FzDXZNwJ0vVcuemBJgRVPccRtcIKN50pMmp6aduc8/IlrcyLaK1f2A6swATeck3xnTfC
 lAAjh5CHAHGSwy040HzMUTslBkl0QVF53LG6aHh2kPVGnxgxoT0gyy3EbxMgpI8Db+mA
 T1Zat2SwHWKxiaqBqPSWE8wNmQwGcnJIBVpSEdnihoWpd+Edx+vRjGUzX8M+/aoZPMYX
 eM7tHF6J7NT2inMDdoPpE6KjiL9xtX47lbk7P3ClAY+IL2rf1azk9saCIKwP8VmUrYsq
 ymbQ==
X-Gm-Message-State: AGi0PuagQOYaohZK4dnpqTemsETFfkJ9aMlKfR49vgZ/nPmN4fpLE0Xy
 4yDv3Un0OlCqln01ndr2Fb/VzM0z
X-Google-Smtp-Source: APiQypJ9QyyNCIMLIg5scX78R6C5gRFVjZDBriE2f9EMTW1H9bgcpLKo3PvEbUWhHCk1W/qkN4SqUg==
X-Received: by 2002:a17:90a:71c5:: with SMTP id
 m5mr2839476pjs.193.1586907450782; 
 Tue, 14 Apr 2020 16:37:30 -0700 (PDT)
Received: from localhost.localdomain (astound-69-42-19-227.ca.astound.net.
 [69.42.19.227])
 by smtp.gmail.com with ESMTPSA id d188sm11874512pfa.7.2020.04.14.16.37.29
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Apr 2020 16:37:30 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 14 Apr 2020 16:37:28 -0700
Message-Id: <20200414233728.2519084-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.25.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_163732_865296_FBB6F89A 
X-CRM114-Status: UNSURE (   9.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rosenp[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCHv3] ubox: run init script through shellcheck
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

Warnings fixed:

SC2004: $/${} is unnecessary on arithmetic variables.
SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.
SC2086: Double quote to prevent globbing and word splitting.

Removed most usages of ${} with $. There's no need for it. ${} is
mainly useful with substrings and arrays, which are not used here.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 v3: Added quoting fixes.
 v2: Fixed mistake with executing PIDCOUNT.
 package/system/ubox/Makefile       |  2 +-
 package/system/ubox/files/log.init | 32 +++++++++++++++---------------
 2 files changed, 17 insertions(+), 17 deletions(-)

diff --git a/package/system/ubox/Makefile b/package/system/ubox/Makefile
index cfa0b594e4..3970a4fc9c 100644
--- a/package/system/ubox/Makefile
+++ b/package/system/ubox/Makefile
@@ -1,7 +1,7 @@
 include $(TOPDIR)/rules.mk
 
 PKG_NAME:=ubox
-PKG_RELEASE:=3
+PKG_RELEASE:=4
 
 PKG_SOURCE_PROTO:=git
 PKG_SOURCE_URL=$(PROJECT_GIT)/project/ubox.git
diff --git a/package/system/ubox/files/log.init b/package/system/ubox/files/log.init
index 250f805b44..4873a24472 100644
--- a/package/system/ubox/files/log.init
+++ b/package/system/ubox/files/log.init
@@ -32,19 +32,19 @@ validate_log_daemon()
 
 start_service_daemon()
 {
-	[ $log_buffer_size -eq 0 -a $log_size -gt 0 ] && log_buffer_size=$log_size
-	[ $log_buffer_size -eq 0 ] && log_buffer_size=64
+	[ "$log_buffer_size" -eq 0 ] && [ "$log_size" -gt 0 ] && log_buffer_size="$log_size"
+	[ "$log_buffer_size" -eq 0 ] && log_buffer_size=64
 	procd_open_instance
 	procd_set_param command "/sbin/logd"
-	procd_append_param command -S "${log_buffer_size}"
+	procd_append_param command -S "$log_buffer_size"
 	procd_set_param respawn 5 1 -1
 	procd_close_instance
 }
 
 start_service_file()
 {
-	PIDCOUNT="$(( ${PIDCOUNT} + 1))"
-	local pid_file="/var/run/logread.${PIDCOUNT}.pid"
+	PIDCOUNT=$((PIDCOUNT + 1))
+	local pid_file="/var/run/logread.$PIDCOUNT.pid"
 
 	[ "$2" = 0 ] || {
 		echo "validation failed"
@@ -52,34 +52,34 @@ start_service_file()
 	}
 	[ -z "${log_file}" ] && return
 
-	mkdir -p "$(dirname "${log_file}")"
+	mkdir -p "$(dirname "$log_file")"
 
 	procd_open_instance
 	procd_set_param command "$PROG" -f -F "$log_file" -p "$pid_file"
-	[ -n "${log_size}" ] && procd_append_param command -S "$log_size"
+	[ -n "$log_size" ] && procd_append_param command -S "$log_size"
 	procd_close_instance
 }
 
 start_service_remote()
 {
-	PIDCOUNT="$(( ${PIDCOUNT} + 1))"
-	local pid_file="/var/run/logread.${PIDCOUNT}.pid"
+	PIDCOUNT=$((PIDCOUNT + 1))
+	local pid_file="/var/run/logread.$PIDCOUNT.pid"
 
 	[ "$2" = 0 ] || {
 		echo "validation failed"
 		return 1
 	}
-	[ "${log_remote}" -ne 0 ] || return
-	[ -z "${log_ip}" ] && return
-	[ -z "${log_hostname}" ] && log_hostname=$(cat /proc/sys/kernel/hostname)
+	[ "$log_remote" -ne 0 ] || return
+	[ -z "$log_ip" ] && return
+	[ -z "$log_hostname" ] && log_hostname=$(cat /proc/sys/kernel/hostname)
 
 	procd_open_instance
-	procd_set_param command "$PROG" -f -h "$log_hostname" -r "$log_ip" "${log_port}" -p "$pid_file"
-	case "${log_proto}" in
+	procd_set_param command "$PROG" -f -h "$log_hostname" -r "$log_ip" "$log_port" -p "$pid_file"
+	case "$log_proto" in
 		"udp") procd_append_param command -u;;
-		"tcp") [ "${log_trailer_null}" -eq 1 ] && procd_append_param command -0;;
+		"tcp") [ "$log_trailer_null" -eq 1 ] && procd_append_param command -0;;
 	esac
-	[ -z "${log_prefix}" ] || procd_append_param command -P "${log_prefix}"
+	[ -z "$log_prefix" ] || procd_append_param command -P "$log_prefix"
 	procd_close_instance
 }
 
-- 
2.25.2


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
